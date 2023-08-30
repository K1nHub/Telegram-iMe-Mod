package io.grpc.internal;

import com.google.common.base.Verify;
import io.grpc.CallOptions;
import io.grpc.Channel;
import io.grpc.ClientCall;
import io.grpc.ClientInterceptor;
import io.grpc.Deadline;
import io.grpc.MethodDescriptor;
import io.grpc.internal.HedgingPolicy;
import io.grpc.internal.ManagedChannelServiceConfig;
import io.grpc.internal.RetryPolicy;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes4.dex */
final class ServiceConfigInterceptor implements ClientInterceptor {
    private volatile boolean initComplete;
    final AtomicReference<ManagedChannelServiceConfig> managedChannelServiceConfig = new AtomicReference<>();
    private final boolean retryEnabled;
    static final CallOptions.Key<RetryPolicy.Provider> RETRY_POLICY_KEY = CallOptions.Key.create("internal-retry-policy");
    static final CallOptions.Key<HedgingPolicy.Provider> HEDGING_POLICY_KEY = CallOptions.Key.create("internal-hedging-policy");

    /* JADX INFO: Access modifiers changed from: package-private */
    public ServiceConfigInterceptor(boolean z) {
        this.retryEnabled = z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void handleUpdate(ManagedChannelServiceConfig managedChannelServiceConfig) {
        this.managedChannelServiceConfig.set(managedChannelServiceConfig);
        this.initComplete = true;
    }

    @Override // io.grpc.ClientInterceptor
    public <ReqT, RespT> ClientCall<ReqT, RespT> interceptCall(final MethodDescriptor<ReqT, RespT> methodDescriptor, CallOptions callOptions, Channel channel) {
        if (this.retryEnabled) {
            if (this.initComplete) {
                final RetryPolicy retryPolicyFromConfig = getRetryPolicyFromConfig(methodDescriptor);
                final HedgingPolicy hedgingPolicyFromConfig = getHedgingPolicyFromConfig(methodDescriptor);
                Verify.verify(retryPolicyFromConfig.equals(RetryPolicy.DEFAULT) || hedgingPolicyFromConfig.equals(HedgingPolicy.DEFAULT), "Can not apply both retry and hedging policy for the method '%s'", methodDescriptor);
                callOptions = callOptions.withOption(RETRY_POLICY_KEY, new RetryPolicy.Provider(this) { // from class: io.grpc.internal.ServiceConfigInterceptor.1ImmediateRetryPolicyProvider
                    @Override // io.grpc.internal.RetryPolicy.Provider
                    public RetryPolicy get() {
                        return retryPolicyFromConfig;
                    }
                }).withOption(HEDGING_POLICY_KEY, new HedgingPolicy.Provider(this) { // from class: io.grpc.internal.ServiceConfigInterceptor.1ImmediateHedgingPolicyProvider
                    @Override // io.grpc.internal.HedgingPolicy.Provider
                    public HedgingPolicy get() {
                        return hedgingPolicyFromConfig;
                    }
                });
            } else {
                callOptions = callOptions.withOption(RETRY_POLICY_KEY, new RetryPolicy.Provider() { // from class: io.grpc.internal.ServiceConfigInterceptor.1DelayedRetryPolicyProvider
                    @Override // io.grpc.internal.RetryPolicy.Provider
                    public RetryPolicy get() {
                        if (!ServiceConfigInterceptor.this.initComplete) {
                            return RetryPolicy.DEFAULT;
                        }
                        return ServiceConfigInterceptor.this.getRetryPolicyFromConfig(methodDescriptor);
                    }
                }).withOption(HEDGING_POLICY_KEY, new HedgingPolicy.Provider() { // from class: io.grpc.internal.ServiceConfigInterceptor.1DelayedHedgingPolicyProvider
                    @Override // io.grpc.internal.HedgingPolicy.Provider
                    public HedgingPolicy get() {
                        if (!ServiceConfigInterceptor.this.initComplete) {
                            return HedgingPolicy.DEFAULT;
                        }
                        HedgingPolicy hedgingPolicyFromConfig2 = ServiceConfigInterceptor.this.getHedgingPolicyFromConfig(methodDescriptor);
                        Verify.verify(hedgingPolicyFromConfig2.equals(HedgingPolicy.DEFAULT) || ServiceConfigInterceptor.this.getRetryPolicyFromConfig(methodDescriptor).equals(RetryPolicy.DEFAULT), "Can not apply both retry and hedging policy for the method '%s'", methodDescriptor);
                        return hedgingPolicyFromConfig2;
                    }
                });
            }
        }
        ManagedChannelServiceConfig.MethodInfo methodInfo = getMethodInfo(methodDescriptor);
        if (methodInfo == null) {
            return channel.newCall(methodDescriptor, callOptions);
        }
        Long l = methodInfo.timeoutNanos;
        if (l != null) {
            Deadline after = Deadline.after(l.longValue(), TimeUnit.NANOSECONDS);
            Deadline deadline = callOptions.getDeadline();
            if (deadline == null || after.compareTo(deadline) < 0) {
                callOptions = callOptions.withDeadline(after);
            }
        }
        Boolean bool = methodInfo.waitForReady;
        if (bool != null) {
            callOptions = bool.booleanValue() ? callOptions.withWaitForReady() : callOptions.withoutWaitForReady();
        }
        if (methodInfo.maxInboundMessageSize != null) {
            Integer maxInboundMessageSize = callOptions.getMaxInboundMessageSize();
            if (maxInboundMessageSize != null) {
                callOptions = callOptions.withMaxInboundMessageSize(Math.min(maxInboundMessageSize.intValue(), methodInfo.maxInboundMessageSize.intValue()));
            } else {
                callOptions = callOptions.withMaxInboundMessageSize(methodInfo.maxInboundMessageSize.intValue());
            }
        }
        if (methodInfo.maxOutboundMessageSize != null) {
            Integer maxOutboundMessageSize = callOptions.getMaxOutboundMessageSize();
            if (maxOutboundMessageSize != null) {
                callOptions = callOptions.withMaxOutboundMessageSize(Math.min(maxOutboundMessageSize.intValue(), methodInfo.maxOutboundMessageSize.intValue()));
            } else {
                callOptions = callOptions.withMaxOutboundMessageSize(methodInfo.maxOutboundMessageSize.intValue());
            }
        }
        return channel.newCall(methodDescriptor, callOptions);
    }

    private ManagedChannelServiceConfig.MethodInfo getMethodInfo(MethodDescriptor<?, ?> methodDescriptor) {
        ManagedChannelServiceConfig managedChannelServiceConfig = this.managedChannelServiceConfig.get();
        ManagedChannelServiceConfig.MethodInfo methodInfo = managedChannelServiceConfig != null ? managedChannelServiceConfig.getServiceMethodMap().get(methodDescriptor.getFullMethodName()) : null;
        if (methodInfo != null || managedChannelServiceConfig == null) {
            return methodInfo;
        }
        return managedChannelServiceConfig.getServiceMap().get(methodDescriptor.getServiceName());
    }

    RetryPolicy getRetryPolicyFromConfig(MethodDescriptor<?, ?> methodDescriptor) {
        ManagedChannelServiceConfig.MethodInfo methodInfo = getMethodInfo(methodDescriptor);
        return methodInfo == null ? RetryPolicy.DEFAULT : methodInfo.retryPolicy;
    }

    HedgingPolicy getHedgingPolicyFromConfig(MethodDescriptor<?, ?> methodDescriptor) {
        ManagedChannelServiceConfig.MethodInfo methodInfo = getMethodInfo(methodDescriptor);
        return methodInfo == null ? HedgingPolicy.DEFAULT : methodInfo.hedgingPolicy;
    }
}
