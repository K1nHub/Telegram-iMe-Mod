package io.grpc.internal;

import com.google.common.base.MoreObjects;
import com.google.common.base.Objects;
import com.google.common.base.Preconditions;
import com.google.common.base.Strings;
import io.grpc.MethodDescriptor;
import io.grpc.internal.RetriableStream;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes6.dex */
final class ManagedChannelServiceConfig {
    private final Object loadBalancingConfig;
    private final RetriableStream.Throttle retryThrottling;
    private final Map<String, MethodInfo> serviceMap;
    private final Map<String, MethodInfo> serviceMethodMap;

    ManagedChannelServiceConfig(Map<String, MethodInfo> map, Map<String, MethodInfo> map2, RetriableStream.Throttle throttle, Object obj) {
        this.serviceMethodMap = Collections.unmodifiableMap(new HashMap(map));
        this.serviceMap = Collections.unmodifiableMap(new HashMap(map2));
        this.retryThrottling = throttle;
        this.loadBalancingConfig = obj;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ManagedChannelServiceConfig empty() {
        return new ManagedChannelServiceConfig(new HashMap(), new HashMap(), null, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ManagedChannelServiceConfig fromServiceConfig(Map<String, ?> map, boolean z, int i, int i2, Object obj) {
        RetriableStream.Throttle throttlePolicy = z ? ServiceConfigUtil.getThrottlePolicy(map) : null;
        HashMap hashMap = new HashMap();
        HashMap hashMap2 = new HashMap();
        List<Map<String, ?>> methodConfigFromServiceConfig = ServiceConfigUtil.getMethodConfigFromServiceConfig(map);
        if (methodConfigFromServiceConfig == null) {
            return new ManagedChannelServiceConfig(hashMap, hashMap2, throttlePolicy, obj);
        }
        for (Map<String, ?> map2 : methodConfigFromServiceConfig) {
            MethodInfo methodInfo = new MethodInfo(map2, z, i, i2);
            List<Map<String, ?>> nameListFromMethodConfig = ServiceConfigUtil.getNameListFromMethodConfig(map2);
            Preconditions.checkArgument((nameListFromMethodConfig == null || nameListFromMethodConfig.isEmpty()) ? false : true, "no names in method config %s", map2);
            for (Map<String, ?> map3 : nameListFromMethodConfig) {
                String serviceFromName = ServiceConfigUtil.getServiceFromName(map3);
                Preconditions.checkArgument(!Strings.isNullOrEmpty(serviceFromName), "missing service name");
                String methodFromName = ServiceConfigUtil.getMethodFromName(map3);
                if (Strings.isNullOrEmpty(methodFromName)) {
                    Preconditions.checkArgument(!hashMap2.containsKey(serviceFromName), "Duplicate service %s", serviceFromName);
                    hashMap2.put(serviceFromName, methodInfo);
                } else {
                    String generateFullMethodName = MethodDescriptor.generateFullMethodName(serviceFromName, methodFromName);
                    Preconditions.checkArgument(!hashMap.containsKey(generateFullMethodName), "Duplicate method name %s", generateFullMethodName);
                    hashMap.put(generateFullMethodName, methodInfo);
                }
            }
        }
        return new ManagedChannelServiceConfig(hashMap, hashMap2, throttlePolicy, obj);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Map<String, MethodInfo> getServiceMap() {
        return this.serviceMap;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Map<String, MethodInfo> getServiceMethodMap() {
        return this.serviceMethodMap;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Object getLoadBalancingConfig() {
        return this.loadBalancingConfig;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public RetriableStream.Throttle getRetryThrottling() {
        return this.retryThrottling;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || ManagedChannelServiceConfig.class != obj.getClass()) {
            return false;
        }
        ManagedChannelServiceConfig managedChannelServiceConfig = (ManagedChannelServiceConfig) obj;
        return Objects.equal(this.serviceMethodMap, managedChannelServiceConfig.serviceMethodMap) && Objects.equal(this.serviceMap, managedChannelServiceConfig.serviceMap) && Objects.equal(this.retryThrottling, managedChannelServiceConfig.retryThrottling) && Objects.equal(this.loadBalancingConfig, managedChannelServiceConfig.loadBalancingConfig);
    }

    public int hashCode() {
        return Objects.hashCode(this.serviceMethodMap, this.serviceMap, this.retryThrottling, this.loadBalancingConfig);
    }

    public String toString() {
        return MoreObjects.toStringHelper(this).add("serviceMethodMap", this.serviceMethodMap).add("serviceMap", this.serviceMap).add("retryThrottling", this.retryThrottling).add("loadBalancingConfig", this.loadBalancingConfig).toString();
    }

    /* loaded from: classes6.dex */
    static final class MethodInfo {
        final HedgingPolicy hedgingPolicy;
        final Integer maxInboundMessageSize;
        final Integer maxOutboundMessageSize;
        final RetryPolicy retryPolicy;
        final Long timeoutNanos;
        final Boolean waitForReady;

        MethodInfo(Map<String, ?> map, boolean z, int i, int i2) {
            this.timeoutNanos = ServiceConfigUtil.getTimeoutFromMethodConfig(map);
            this.waitForReady = ServiceConfigUtil.getWaitForReadyFromMethodConfig(map);
            Integer maxResponseMessageBytesFromMethodConfig = ServiceConfigUtil.getMaxResponseMessageBytesFromMethodConfig(map);
            this.maxInboundMessageSize = maxResponseMessageBytesFromMethodConfig;
            if (maxResponseMessageBytesFromMethodConfig != null) {
                Preconditions.checkArgument(maxResponseMessageBytesFromMethodConfig.intValue() >= 0, "maxInboundMessageSize %s exceeds bounds", maxResponseMessageBytesFromMethodConfig);
            }
            Integer maxRequestMessageBytesFromMethodConfig = ServiceConfigUtil.getMaxRequestMessageBytesFromMethodConfig(map);
            this.maxOutboundMessageSize = maxRequestMessageBytesFromMethodConfig;
            if (maxRequestMessageBytesFromMethodConfig != null) {
                Preconditions.checkArgument(maxRequestMessageBytesFromMethodConfig.intValue() >= 0, "maxOutboundMessageSize %s exceeds bounds", maxRequestMessageBytesFromMethodConfig);
            }
            Map<String, ?> retryPolicyFromMethodConfig = z ? ServiceConfigUtil.getRetryPolicyFromMethodConfig(map) : null;
            this.retryPolicy = retryPolicyFromMethodConfig == null ? RetryPolicy.DEFAULT : retryPolicy(retryPolicyFromMethodConfig, i);
            Map<String, ?> hedgingPolicyFromMethodConfig = z ? ServiceConfigUtil.getHedgingPolicyFromMethodConfig(map) : null;
            this.hedgingPolicy = hedgingPolicyFromMethodConfig == null ? HedgingPolicy.DEFAULT : hedgingPolicy(hedgingPolicyFromMethodConfig, i2);
        }

        public int hashCode() {
            return Objects.hashCode(this.timeoutNanos, this.waitForReady, this.maxInboundMessageSize, this.maxOutboundMessageSize, this.retryPolicy, this.hedgingPolicy);
        }

        public boolean equals(Object obj) {
            if (obj instanceof MethodInfo) {
                MethodInfo methodInfo = (MethodInfo) obj;
                return Objects.equal(this.timeoutNanos, methodInfo.timeoutNanos) && Objects.equal(this.waitForReady, methodInfo.waitForReady) && Objects.equal(this.maxInboundMessageSize, methodInfo.maxInboundMessageSize) && Objects.equal(this.maxOutboundMessageSize, methodInfo.maxOutboundMessageSize) && Objects.equal(this.retryPolicy, methodInfo.retryPolicy) && Objects.equal(this.hedgingPolicy, methodInfo.hedgingPolicy);
            }
            return false;
        }

        public String toString() {
            return MoreObjects.toStringHelper(this).add("timeoutNanos", this.timeoutNanos).add("waitForReady", this.waitForReady).add("maxInboundMessageSize", this.maxInboundMessageSize).add("maxOutboundMessageSize", this.maxOutboundMessageSize).add("retryPolicy", this.retryPolicy).add("hedgingPolicy", this.hedgingPolicy).toString();
        }

        private static RetryPolicy retryPolicy(Map<String, ?> map, int i) {
            int intValue = ((Integer) Preconditions.checkNotNull(ServiceConfigUtil.getMaxAttemptsFromRetryPolicy(map), "maxAttempts cannot be empty")).intValue();
            Preconditions.checkArgument(intValue >= 2, "maxAttempts must be greater than 1: %s", intValue);
            int min = Math.min(intValue, i);
            long longValue = ((Long) Preconditions.checkNotNull(ServiceConfigUtil.getInitialBackoffNanosFromRetryPolicy(map), "initialBackoff cannot be empty")).longValue();
            Preconditions.checkArgument(longValue > 0, "initialBackoffNanos must be greater than 0: %s", longValue);
            long longValue2 = ((Long) Preconditions.checkNotNull(ServiceConfigUtil.getMaxBackoffNanosFromRetryPolicy(map), "maxBackoff cannot be empty")).longValue();
            Preconditions.checkArgument(longValue2 > 0, "maxBackoff must be greater than 0: %s", longValue2);
            double doubleValue = ((Double) Preconditions.checkNotNull(ServiceConfigUtil.getBackoffMultiplierFromRetryPolicy(map), "backoffMultiplier cannot be empty")).doubleValue();
            Preconditions.checkArgument(doubleValue > 0.0d, "backoffMultiplier must be greater than 0: %s", Double.valueOf(doubleValue));
            return new RetryPolicy(min, longValue, longValue2, doubleValue, ServiceConfigUtil.getRetryableStatusCodesFromRetryPolicy(map));
        }

        private static HedgingPolicy hedgingPolicy(Map<String, ?> map, int i) {
            int intValue = ((Integer) Preconditions.checkNotNull(ServiceConfigUtil.getMaxAttemptsFromHedgingPolicy(map), "maxAttempts cannot be empty")).intValue();
            Preconditions.checkArgument(intValue >= 2, "maxAttempts must be greater than 1: %s", intValue);
            int min = Math.min(intValue, i);
            long longValue = ((Long) Preconditions.checkNotNull(ServiceConfigUtil.getHedgingDelayNanosFromHedgingPolicy(map), "hedgingDelay cannot be empty")).longValue();
            Preconditions.checkArgument(longValue >= 0, "hedgingDelay must not be negative: %s", longValue);
            return new HedgingPolicy(min, longValue, ServiceConfigUtil.getNonFatalStatusCodesFromHedgingPolicy(map));
        }
    }
}
