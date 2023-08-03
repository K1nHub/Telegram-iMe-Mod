package io.grpc.internal;

import com.google.common.base.MoreObjects;
import com.google.common.base.Objects;
import com.google.common.base.Preconditions;
import com.google.common.base.Stopwatch;
import com.google.common.base.Supplier;
import io.grpc.Attributes;
import io.grpc.CallOptions;
import io.grpc.Channel;
import io.grpc.ChannelLogger;
import io.grpc.ClientCall;
import io.grpc.ClientInterceptor;
import io.grpc.ClientInterceptors;
import io.grpc.ClientStreamTracer;
import io.grpc.CompressorRegistry;
import io.grpc.ConnectivityState;
import io.grpc.ConnectivityStateInfo;
import io.grpc.Context;
import io.grpc.DecompressorRegistry;
import io.grpc.EquivalentAddressGroup;
import io.grpc.InternalChannelz;
import io.grpc.InternalChannelz$ChannelTrace$Event;
import io.grpc.InternalInstrumented;
import io.grpc.InternalLogId;
import io.grpc.LoadBalancer;
import io.grpc.ManagedChannel;
import io.grpc.Metadata;
import io.grpc.MethodDescriptor;
import io.grpc.NameResolver;
import io.grpc.ProxyDetector;
import io.grpc.Status;
import io.grpc.SynchronizationContext;
import io.grpc.internal.AutoConfiguredLoadBalancerFactory;
import io.grpc.internal.BackoffPolicy;
import io.grpc.internal.CallTracer;
import io.grpc.internal.ClientCallImpl;
import io.grpc.internal.HedgingPolicy;
import io.grpc.internal.InternalSubchannel;
import io.grpc.internal.ManagedClientTransport;
import io.grpc.internal.RetriableStream;
import io.grpc.internal.RetryPolicy;
import java.lang.Thread;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.regex.Pattern;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final class ManagedChannelImpl extends ManagedChannel implements InternalInstrumented<Object> {
    private static final ServiceConfigHolder EMPTY_SERVICE_CONFIG;
    static final Status SHUTDOWN_NOW_STATUS;
    static final Status SHUTDOWN_STATUS;
    static final Status SUBCHANNEL_SHUTDOWN_STATUS;
    private final BackoffPolicy.Provider backoffPolicyProvider;
    private final ExecutorHolder balancerRpcExecutorHolder;
    private final ObjectPool<? extends Executor> balancerRpcExecutorPool;
    private final CallTracer.Factory callTracerFactory;
    private final long channelBufferLimit;
    private final RetriableStream.ChannelBufferMeter channelBufferUsed;
    private final CallTracer channelCallTracer;
    private final ChannelLogger channelLogger;
    private final ConnectivityStateManager channelStateManager;
    private final ChannelTracer channelTracer;
    private final InternalChannelz channelz;
    private final CompressorRegistry compressorRegistry;
    private final DecompressorRegistry decompressorRegistry;
    private final ServiceConfigHolder defaultServiceConfig;
    private final DelayedClientTransport delayedTransport;
    private final ManagedClientTransport.Listener delayedTransportListener;
    private final Executor executor;
    private final ObjectPool<? extends Executor> executorPool;
    private boolean fullStreamDecompression;
    private final long idleTimeoutMillis;
    private final Rescheduler idleTimer;
    final InUseStateAggregator<Object> inUseStateAggregator;
    private final Channel interceptorChannel;
    private ResolutionState lastResolutionState;
    private ServiceConfigHolder lastServiceConfig;
    private LbHelperImpl lbHelper;
    private final AutoConfiguredLoadBalancerFactory loadBalancerFactory;
    private final InternalLogId logId;
    private final boolean lookUpServiceConfig;
    private final int maxTraceEvents;
    private NameResolver nameResolver;
    private final NameResolver.Args nameResolverArgs;
    private BackoffPolicy nameResolverBackoffPolicy;
    private final NameResolver.Factory nameResolverFactory;
    private boolean nameResolverStarted;
    private final ExecutorHolder offloadExecutorHolder;
    private final Set<OobChannel> oobChannels;
    private boolean panicMode;
    private final long perRpcBufferLimit;
    private final boolean retryEnabled;
    private final RestrictedScheduledExecutor scheduledExecutor;
    private SynchronizationContext.ScheduledHandle scheduledNameResolverRefresh;
    private final ServiceConfigInterceptor serviceConfigInterceptor;
    private boolean serviceConfigUpdated;
    private final AtomicBoolean shutdown;
    private boolean shutdownNowed;
    private final Supplier<Stopwatch> stopwatchSupplier;
    private volatile LoadBalancer.SubchannelPicker subchannelPicker;
    private final Set<InternalSubchannel> subchannels;
    final SynchronizationContext syncContext;
    private final String target;
    private volatile boolean terminated;
    private final CountDownLatch terminatedLatch;
    private volatile boolean terminating;
    private final TimeProvider timeProvider;
    private final ClientTransportFactory transportFactory;
    private final ClientCallImpl.ClientTransportProvider transportProvider;
    private final UncommittedRetriableStreamsRegistry uncommittedRetriableStreamsRegistry;
    private final String userAgent;
    static final Logger logger = Logger.getLogger(ManagedChannelImpl.class.getName());
    static final Pattern URI_PATTERN = Pattern.compile("[a-zA-Z][a-zA-Z0-9+.-]*:/.*");

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public enum ResolutionState {
        NO_RESOLUTION,
        SUCCESS,
        ERROR
    }

    static {
        Status status = Status.UNAVAILABLE;
        SHUTDOWN_NOW_STATUS = status.withDescription("Channel shutdownNow invoked");
        SHUTDOWN_STATUS = status.withDescription("Channel shutdown invoked");
        SUBCHANNEL_SHUTDOWN_STATUS = status.withDescription("Subchannel shutdown invoked");
        EMPTY_SERVICE_CONFIG = new ServiceConfigHolder(Collections.emptyMap(), ManagedChannelServiceConfig.empty());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void maybeShutdownNowSubchannels() {
        if (this.shutdownNowed) {
            for (InternalSubchannel internalSubchannel : this.subchannels) {
                internalSubchannel.shutdownNow(SHUTDOWN_NOW_STATUS);
            }
            for (OobChannel oobChannel : this.oobChannels) {
                oobChannel.getInternalSubchannel().shutdownNow(SHUTDOWN_NOW_STATUS);
            }
        }
    }

    @Override // io.grpc.InternalWithLogId
    public InternalLogId getLogId() {
        return this.logId;
    }

    /* loaded from: classes4.dex */
    private class IdleModeTimer implements Runnable {
        private IdleModeTimer() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ManagedChannelImpl.this.enterIdleMode();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void shutdownNameResolverAndLoadBalancer(boolean z) {
        this.syncContext.throwIfNotInThisSynchronizationContext();
        if (z) {
            Preconditions.checkState(this.nameResolverStarted, "nameResolver is not started");
            Preconditions.checkState(this.lbHelper != null, "lbHelper is null");
        }
        if (this.nameResolver != null) {
            cancelNameResolverBackoff();
            this.nameResolver.shutdown();
            this.nameResolverStarted = false;
            if (z) {
                this.nameResolver = getNameResolver(this.target, this.nameResolverFactory, this.nameResolverArgs);
            } else {
                this.nameResolver = null;
            }
        }
        LbHelperImpl lbHelperImpl = this.lbHelper;
        if (lbHelperImpl != null) {
            lbHelperImpl.f519lb.shutdown();
            this.lbHelper = null;
        }
        this.subchannelPicker = null;
    }

    void exitIdleMode() {
        this.syncContext.throwIfNotInThisSynchronizationContext();
        if (this.shutdown.get() || this.panicMode) {
            return;
        }
        if (this.inUseStateAggregator.isInUse()) {
            cancelIdleTimer(false);
        } else {
            rescheduleIdleTimer();
        }
        if (this.lbHelper != null) {
            return;
        }
        this.channelLogger.log(ChannelLogger.ChannelLogLevel.INFO, "Exiting idle mode");
        LbHelperImpl lbHelperImpl = new LbHelperImpl();
        lbHelperImpl.f519lb = this.loadBalancerFactory.newLoadBalancer(lbHelperImpl);
        this.lbHelper = lbHelperImpl;
        this.nameResolver.start((NameResolver.Listener2) new NameResolverListener(lbHelperImpl, this.nameResolver));
        this.nameResolverStarted = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void enterIdleMode() {
        shutdownNameResolverAndLoadBalancer(true);
        this.delayedTransport.reprocess(null);
        this.channelLogger.log(ChannelLogger.ChannelLogLevel.INFO, "Entering IDLE state");
        this.channelStateManager.gotoState(ConnectivityState.IDLE);
        if (this.inUseStateAggregator.isInUse()) {
            exitIdleMode();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void cancelIdleTimer(boolean z) {
        this.idleTimer.cancel(z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void rescheduleIdleTimer() {
        long j = this.idleTimeoutMillis;
        if (j == -1) {
            return;
        }
        this.idleTimer.reschedule(j, TimeUnit.MILLISECONDS);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class DelayedNameResolverRefresh implements Runnable {
        DelayedNameResolverRefresh() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ManagedChannelImpl.this.scheduledNameResolverRefresh = null;
            ManagedChannelImpl.this.refreshNameResolution();
        }
    }

    private void cancelNameResolverBackoff() {
        this.syncContext.throwIfNotInThisSynchronizationContext();
        SynchronizationContext.ScheduledHandle scheduledHandle = this.scheduledNameResolverRefresh;
        if (scheduledHandle != null) {
            scheduledHandle.cancel();
            this.scheduledNameResolverRefresh = null;
            this.nameResolverBackoffPolicy = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void refreshAndResetNameResolution() {
        this.syncContext.throwIfNotInThisSynchronizationContext();
        cancelNameResolverBackoff();
        refreshNameResolution();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void refreshNameResolution() {
        this.syncContext.throwIfNotInThisSynchronizationContext();
        if (this.nameResolverStarted) {
            this.nameResolver.refresh();
        }
    }

    /* loaded from: classes4.dex */
    private final class ChannelTransportProvider implements ClientCallImpl.ClientTransportProvider {
        private ChannelTransportProvider() {
        }

        @Override // io.grpc.internal.ClientCallImpl.ClientTransportProvider
        public ClientTransport get(LoadBalancer.PickSubchannelArgs pickSubchannelArgs) {
            LoadBalancer.SubchannelPicker subchannelPicker = ManagedChannelImpl.this.subchannelPicker;
            if (ManagedChannelImpl.this.shutdown.get()) {
                return ManagedChannelImpl.this.delayedTransport;
            }
            if (subchannelPicker == null) {
                ManagedChannelImpl.this.syncContext.execute(new Runnable() { // from class: io.grpc.internal.ManagedChannelImpl.ChannelTransportProvider.1ExitIdleModeForTransport
                    @Override // java.lang.Runnable
                    public void run() {
                        ManagedChannelImpl.this.exitIdleMode();
                    }
                });
                return ManagedChannelImpl.this.delayedTransport;
            }
            ClientTransport transportFromPickResult = GrpcUtil.getTransportFromPickResult(subchannelPicker.pickSubchannel(pickSubchannelArgs), pickSubchannelArgs.getCallOptions().isWaitForReady());
            return transportFromPickResult != null ? transportFromPickResult : ManagedChannelImpl.this.delayedTransport;
        }

        @Override // io.grpc.internal.ClientCallImpl.ClientTransportProvider
        public <ReqT> ClientStream newRetriableStream(MethodDescriptor<ReqT, ?> methodDescriptor, CallOptions callOptions, Metadata metadata, Context context) {
            Preconditions.checkState(ManagedChannelImpl.this.retryEnabled, "retry should be enabled");
            return new RetriableStream<ReqT>(methodDescriptor, metadata, callOptions, ManagedChannelImpl.this.lastServiceConfig.managedChannelServiceConfig.getRetryThrottling(), context) { // from class: io.grpc.internal.ManagedChannelImpl.ChannelTransportProvider.1RetryStream
                final /* synthetic */ CallOptions val$callOptions;
                final /* synthetic */ Context val$context;
                final /* synthetic */ MethodDescriptor val$method;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(methodDescriptor, metadata, ManagedChannelImpl.this.channelBufferUsed, ManagedChannelImpl.this.perRpcBufferLimit, ManagedChannelImpl.this.channelBufferLimit, ManagedChannelImpl.this.getCallExecutor(callOptions), ManagedChannelImpl.this.transportFactory.getScheduledExecutorService(), (RetryPolicy.Provider) callOptions.getOption(ServiceConfigInterceptor.RETRY_POLICY_KEY), (HedgingPolicy.Provider) callOptions.getOption(ServiceConfigInterceptor.HEDGING_POLICY_KEY), r19);
                    this.val$method = methodDescriptor;
                    this.val$callOptions = callOptions;
                    this.val$context = context;
                }

                @Override // io.grpc.internal.RetriableStream
                Status prestart() {
                    return ManagedChannelImpl.this.uncommittedRetriableStreamsRegistry.add(this);
                }

                @Override // io.grpc.internal.RetriableStream
                void postCommit() {
                    ManagedChannelImpl.this.uncommittedRetriableStreamsRegistry.remove(this);
                }

                @Override // io.grpc.internal.RetriableStream
                ClientStream newSubstream(ClientStreamTracer.Factory factory, Metadata metadata2) {
                    CallOptions withStreamTracerFactory = this.val$callOptions.withStreamTracerFactory(factory);
                    ClientTransport clientTransport = ChannelTransportProvider.this.get(new PickSubchannelArgsImpl(this.val$method, metadata2, withStreamTracerFactory));
                    Context attach = this.val$context.attach();
                    try {
                        return clientTransport.newStream(this.val$method, metadata2, withStreamTracerFactory);
                    } finally {
                        this.val$context.detach(attach);
                    }
                }
            };
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ManagedChannelImpl(AbstractManagedChannelImplBuilder<?> abstractManagedChannelImplBuilder, ClientTransportFactory clientTransportFactory, BackoffPolicy.Provider provider, ObjectPool<? extends Executor> objectPool, Supplier<Stopwatch> supplier, List<ClientInterceptor> list, final TimeProvider timeProvider) {
        C26771 c26771;
        SynchronizationContext synchronizationContext = new SynchronizationContext(new Thread.UncaughtExceptionHandler() { // from class: io.grpc.internal.ManagedChannelImpl.1
            @Override // java.lang.Thread.UncaughtExceptionHandler
            public void uncaughtException(Thread thread, Throwable th) {
                Logger logger2 = ManagedChannelImpl.logger;
                Level level = Level.SEVERE;
                logger2.log(level, "[" + ManagedChannelImpl.this.getLogId() + "] Uncaught exception in the SynchronizationContext. Panic!", th);
                ManagedChannelImpl.this.panic(th);
            }
        });
        this.syncContext = synchronizationContext;
        this.channelStateManager = new ConnectivityStateManager();
        this.subchannels = new HashSet(16, 0.75f);
        this.oobChannels = new HashSet(1, 0.75f);
        this.uncommittedRetriableStreamsRegistry = new UncommittedRetriableStreamsRegistry();
        this.shutdown = new AtomicBoolean(false);
        this.terminatedLatch = new CountDownLatch(1);
        this.lastResolutionState = ResolutionState.NO_RESOLUTION;
        this.lastServiceConfig = EMPTY_SERVICE_CONFIG;
        this.serviceConfigUpdated = false;
        this.channelBufferUsed = new RetriableStream.ChannelBufferMeter();
        DelayedTransportListener delayedTransportListener = new DelayedTransportListener();
        this.delayedTransportListener = delayedTransportListener;
        this.inUseStateAggregator = new IdleModeStateAggregator();
        this.transportProvider = new ChannelTransportProvider();
        String str = (String) Preconditions.checkNotNull(abstractManagedChannelImplBuilder.target, "target");
        this.target = str;
        InternalLogId allocate = InternalLogId.allocate("Channel", str);
        this.logId = allocate;
        this.timeProvider = (TimeProvider) Preconditions.checkNotNull(timeProvider, "timeProvider");
        ObjectPool<? extends Executor> objectPool2 = (ObjectPool) Preconditions.checkNotNull(abstractManagedChannelImplBuilder.executorPool, "executorPool");
        this.executorPool = objectPool2;
        Executor executor = (Executor) Preconditions.checkNotNull(objectPool2.getObject(), "executor");
        this.executor = executor;
        CallCredentialsApplyingTransportFactory callCredentialsApplyingTransportFactory = new CallCredentialsApplyingTransportFactory(clientTransportFactory, executor);
        this.transportFactory = callCredentialsApplyingTransportFactory;
        RestrictedScheduledExecutor restrictedScheduledExecutor = new RestrictedScheduledExecutor(callCredentialsApplyingTransportFactory.getScheduledExecutorService());
        this.scheduledExecutor = restrictedScheduledExecutor;
        this.maxTraceEvents = abstractManagedChannelImplBuilder.maxTraceEvents;
        int i = abstractManagedChannelImplBuilder.maxTraceEvents;
        long currentTimeNanos = timeProvider.currentTimeNanos();
        ChannelTracer channelTracer = new ChannelTracer(allocate, i, currentTimeNanos, "Channel for '" + str + "'");
        this.channelTracer = channelTracer;
        ChannelLoggerImpl channelLoggerImpl = new ChannelLoggerImpl(channelTracer, timeProvider);
        this.channelLogger = channelLoggerImpl;
        NameResolver.Factory nameResolverFactory = abstractManagedChannelImplBuilder.getNameResolverFactory();
        this.nameResolverFactory = nameResolverFactory;
        ProxyDetector proxyDetector = abstractManagedChannelImplBuilder.proxyDetector;
        proxyDetector = proxyDetector == null ? GrpcUtil.DEFAULT_PROXY_DETECTOR : proxyDetector;
        boolean z = abstractManagedChannelImplBuilder.retryEnabled && !abstractManagedChannelImplBuilder.temporarilyDisableRetry;
        this.retryEnabled = z;
        AutoConfiguredLoadBalancerFactory autoConfiguredLoadBalancerFactory = new AutoConfiguredLoadBalancerFactory(abstractManagedChannelImplBuilder.defaultLbPolicy);
        this.loadBalancerFactory = autoConfiguredLoadBalancerFactory;
        this.offloadExecutorHolder = new ExecutorHolder((ObjectPool) Preconditions.checkNotNull(abstractManagedChannelImplBuilder.offloadExecutorPool, "offloadExecutorPool"));
        ScParser scParser = new ScParser(z, abstractManagedChannelImplBuilder.maxRetryAttempts, abstractManagedChannelImplBuilder.maxHedgedAttempts, autoConfiguredLoadBalancerFactory, channelLoggerImpl);
        NameResolver.Args build = NameResolver.Args.newBuilder().setDefaultPort(abstractManagedChannelImplBuilder.getDefaultPort()).setProxyDetector(proxyDetector).setSynchronizationContext(synchronizationContext).setScheduledExecutorService(restrictedScheduledExecutor).setServiceConfigParser(scParser).setChannelLogger(channelLoggerImpl).setOffloadExecutor(new Executor() { // from class: io.grpc.internal.ManagedChannelImpl.2
            @Override // java.util.concurrent.Executor
            public void execute(Runnable runnable) {
                ManagedChannelImpl.this.offloadExecutorHolder.getExecutor().execute(runnable);
            }
        }).build();
        this.nameResolverArgs = build;
        this.nameResolver = getNameResolver(str, nameResolverFactory, build);
        this.balancerRpcExecutorPool = (ObjectPool) Preconditions.checkNotNull(objectPool, "balancerRpcExecutorPool");
        this.balancerRpcExecutorHolder = new ExecutorHolder(objectPool);
        DelayedClientTransport delayedClientTransport = new DelayedClientTransport(executor, synchronizationContext);
        this.delayedTransport = delayedClientTransport;
        delayedClientTransport.start(delayedTransportListener);
        this.backoffPolicyProvider = provider;
        ServiceConfigInterceptor serviceConfigInterceptor = new ServiceConfigInterceptor(z);
        this.serviceConfigInterceptor = serviceConfigInterceptor;
        Map<String, ?> map = abstractManagedChannelImplBuilder.defaultServiceConfig;
        if (map != null) {
            NameResolver.ConfigOrError parseServiceConfig = scParser.parseServiceConfig(map);
            Preconditions.checkState(parseServiceConfig.getError() == null, "Default config is invalid: %s", parseServiceConfig.getError());
            ServiceConfigHolder serviceConfigHolder = new ServiceConfigHolder(abstractManagedChannelImplBuilder.defaultServiceConfig, (ManagedChannelServiceConfig) parseServiceConfig.getConfig());
            this.defaultServiceConfig = serviceConfigHolder;
            this.lastServiceConfig = serviceConfigHolder;
            c26771 = null;
        } else {
            c26771 = null;
            this.defaultServiceConfig = null;
        }
        boolean z2 = abstractManagedChannelImplBuilder.lookUpServiceConfig;
        this.lookUpServiceConfig = z2;
        this.interceptorChannel = ClientInterceptors.intercept(ClientInterceptors.intercept(new RealChannel(this.nameResolver.getServiceAuthority()), serviceConfigInterceptor), list);
        this.stopwatchSupplier = (Supplier) Preconditions.checkNotNull(supplier, "stopwatchSupplier");
        long j = abstractManagedChannelImplBuilder.idleTimeoutMillis;
        if (j == -1) {
            this.idleTimeoutMillis = j;
        } else {
            Preconditions.checkArgument(j >= AbstractManagedChannelImplBuilder.IDLE_MODE_MIN_TIMEOUT_MILLIS, "invalid idleTimeoutMillis %s", j);
            this.idleTimeoutMillis = abstractManagedChannelImplBuilder.idleTimeoutMillis;
        }
        this.idleTimer = new Rescheduler(new IdleModeTimer(), synchronizationContext, callCredentialsApplyingTransportFactory.getScheduledExecutorService(), supplier.get());
        this.fullStreamDecompression = abstractManagedChannelImplBuilder.fullStreamDecompression;
        this.decompressorRegistry = (DecompressorRegistry) Preconditions.checkNotNull(abstractManagedChannelImplBuilder.decompressorRegistry, "decompressorRegistry");
        this.compressorRegistry = (CompressorRegistry) Preconditions.checkNotNull(abstractManagedChannelImplBuilder.compressorRegistry, "compressorRegistry");
        this.userAgent = abstractManagedChannelImplBuilder.userAgent;
        this.channelBufferLimit = abstractManagedChannelImplBuilder.retryBufferSize;
        this.perRpcBufferLimit = abstractManagedChannelImplBuilder.perRpcBufferLimit;
        CallTracer.Factory factory = new CallTracer.Factory(this) { // from class: io.grpc.internal.ManagedChannelImpl.1ChannelCallTracerFactory
            @Override // io.grpc.internal.CallTracer.Factory
            public CallTracer create() {
                return new CallTracer(timeProvider);
            }
        };
        this.callTracerFactory = factory;
        this.channelCallTracer = factory.create();
        InternalChannelz internalChannelz = (InternalChannelz) Preconditions.checkNotNull(abstractManagedChannelImplBuilder.channelz);
        this.channelz = internalChannelz;
        internalChannelz.addRootChannel(this);
        if (z2) {
            return;
        }
        if (this.defaultServiceConfig != null) {
            channelLoggerImpl.log(ChannelLogger.ChannelLogLevel.INFO, "Service config look-up disabled, using default service config");
        }
        handleServiceConfigUpdate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleServiceConfigUpdate() {
        this.serviceConfigUpdated = true;
        this.serviceConfigInterceptor.handleUpdate(this.lastServiceConfig.managedChannelServiceConfig);
    }

    static NameResolver getNameResolver(String str, NameResolver.Factory factory, NameResolver.Args args) {
        URI uri;
        NameResolver newNameResolver;
        StringBuilder sb = new StringBuilder();
        try {
            uri = new URI(str);
        } catch (URISyntaxException e) {
            sb.append(e.getMessage());
            uri = null;
        }
        if (uri == null || (newNameResolver = factory.newNameResolver(uri, args)) == null) {
            String str2 = "";
            if (!URI_PATTERN.matcher(str).matches()) {
                try {
                    NameResolver newNameResolver2 = factory.newNameResolver(new URI(factory.getDefaultScheme(), "", "/" + str, null), args);
                    if (newNameResolver2 != null) {
                        return newNameResolver2;
                    }
                } catch (URISyntaxException e2) {
                    throw new IllegalArgumentException(e2);
                }
            }
            Object[] objArr = new Object[2];
            objArr[0] = str;
            if (sb.length() > 0) {
                str2 = " (" + ((Object) sb) + ")";
            }
            objArr[1] = str2;
            throw new IllegalArgumentException(String.format("cannot find a NameResolver for %s%s", objArr));
        }
        return newNameResolver;
    }

    public ManagedChannelImpl shutdown() {
        this.channelLogger.log(ChannelLogger.ChannelLogLevel.DEBUG, "shutdown() called");
        if (this.shutdown.compareAndSet(false, true)) {
            this.syncContext.executeLater(new Runnable() { // from class: io.grpc.internal.ManagedChannelImpl.1Shutdown
                @Override // java.lang.Runnable
                public void run() {
                    ManagedChannelImpl.this.channelLogger.log(ChannelLogger.ChannelLogLevel.INFO, "Entering SHUTDOWN state");
                    ManagedChannelImpl.this.channelStateManager.gotoState(ConnectivityState.SHUTDOWN);
                }
            });
            this.uncommittedRetriableStreamsRegistry.onShutdown(SHUTDOWN_STATUS);
            this.syncContext.execute(new Runnable() { // from class: io.grpc.internal.ManagedChannelImpl.1CancelIdleTimer
                @Override // java.lang.Runnable
                public void run() {
                    ManagedChannelImpl.this.cancelIdleTimer(true);
                }
            });
            return this;
        }
        return this;
    }

    @Override // io.grpc.ManagedChannel
    public ManagedChannelImpl shutdownNow() {
        this.channelLogger.log(ChannelLogger.ChannelLogLevel.DEBUG, "shutdownNow() called");
        shutdown();
        this.uncommittedRetriableStreamsRegistry.onShutdownNow(SHUTDOWN_NOW_STATUS);
        this.syncContext.execute(new Runnable() { // from class: io.grpc.internal.ManagedChannelImpl.1ShutdownNow
            @Override // java.lang.Runnable
            public void run() {
                if (ManagedChannelImpl.this.shutdownNowed) {
                    return;
                }
                ManagedChannelImpl.this.shutdownNowed = true;
                ManagedChannelImpl.this.maybeShutdownNowSubchannels();
            }
        });
        return this;
    }

    void panic(Throwable th) {
        if (this.panicMode) {
            return;
        }
        this.panicMode = true;
        cancelIdleTimer(true);
        shutdownNameResolverAndLoadBalancer(false);
        updateSubchannelPicker(new LoadBalancer.SubchannelPicker(this, th) { // from class: io.grpc.internal.ManagedChannelImpl.1PanicSubchannelPicker
            private final LoadBalancer.PickResult panicPickResult;
            final /* synthetic */ Throwable val$t;

            {
                this.val$t = th;
                this.panicPickResult = LoadBalancer.PickResult.withDrop(Status.INTERNAL.withDescription("Panic! This is a bug!").withCause(th));
            }

            @Override // io.grpc.LoadBalancer.SubchannelPicker
            public LoadBalancer.PickResult pickSubchannel(LoadBalancer.PickSubchannelArgs pickSubchannelArgs) {
                return this.panicPickResult;
            }

            public String toString() {
                return MoreObjects.toStringHelper((Class<?>) C1PanicSubchannelPicker.class).add("panicPickResult", this.panicPickResult).toString();
            }
        });
        this.channelLogger.log(ChannelLogger.ChannelLogLevel.ERROR, "PANIC! Entering TRANSIENT_FAILURE");
        this.channelStateManager.gotoState(ConnectivityState.TRANSIENT_FAILURE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateSubchannelPicker(LoadBalancer.SubchannelPicker subchannelPicker) {
        this.subchannelPicker = subchannelPicker;
        this.delayedTransport.reprocess(subchannelPicker);
    }

    @Override // io.grpc.Channel
    public <ReqT, RespT> ClientCall<ReqT, RespT> newCall(MethodDescriptor<ReqT, RespT> methodDescriptor, CallOptions callOptions) {
        return this.interceptorChannel.newCall(methodDescriptor, callOptions);
    }

    @Override // io.grpc.Channel
    public String authority() {
        return this.interceptorChannel.authority();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Executor getCallExecutor(CallOptions callOptions) {
        Executor executor = callOptions.getExecutor();
        return executor == null ? this.executor : executor;
    }

    /* loaded from: classes4.dex */
    private class RealChannel extends Channel {
        private final String authority;

        private RealChannel(String str) {
            this.authority = (String) Preconditions.checkNotNull(str, "authority");
        }

        @Override // io.grpc.Channel
        public <ReqT, RespT> ClientCall<ReqT, RespT> newCall(MethodDescriptor<ReqT, RespT> methodDescriptor, CallOptions callOptions) {
            return new ClientCallImpl(methodDescriptor, ManagedChannelImpl.this.getCallExecutor(callOptions), callOptions, ManagedChannelImpl.this.transportProvider, ManagedChannelImpl.this.terminated ? null : ManagedChannelImpl.this.transportFactory.getScheduledExecutorService(), ManagedChannelImpl.this.channelCallTracer, ManagedChannelImpl.this.retryEnabled).setFullStreamDecompression(ManagedChannelImpl.this.fullStreamDecompression).setDecompressorRegistry(ManagedChannelImpl.this.decompressorRegistry).setCompressorRegistry(ManagedChannelImpl.this.compressorRegistry);
        }

        @Override // io.grpc.Channel
        public String authority() {
            return this.authority;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void maybeTerminateChannel() {
        if (!this.terminated && this.shutdown.get() && this.subchannels.isEmpty() && this.oobChannels.isEmpty()) {
            this.channelLogger.log(ChannelLogger.ChannelLogLevel.INFO, "Terminated");
            this.channelz.removeRootChannel(this);
            this.executorPool.returnObject(this.executor);
            this.balancerRpcExecutorHolder.release();
            this.offloadExecutorHolder.release();
            this.transportFactory.close();
            this.terminated = true;
            this.terminatedLatch.countDown();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleInternalSubchannelState(ConnectivityStateInfo connectivityStateInfo) {
        if (connectivityStateInfo.getState() == ConnectivityState.TRANSIENT_FAILURE || connectivityStateInfo.getState() == ConnectivityState.IDLE) {
            refreshAndResetNameResolution();
        }
    }

    @Override // io.grpc.ManagedChannel
    public ConnectivityState getState(boolean z) {
        ConnectivityState state = this.channelStateManager.getState();
        if (z && state == ConnectivityState.IDLE) {
            this.syncContext.execute(new Runnable() { // from class: io.grpc.internal.ManagedChannelImpl.1RequestConnection
                @Override // java.lang.Runnable
                public void run() {
                    ManagedChannelImpl.this.exitIdleMode();
                    if (ManagedChannelImpl.this.subchannelPicker != null) {
                        ManagedChannelImpl.this.subchannelPicker.requestConnection();
                    }
                    if (ManagedChannelImpl.this.lbHelper != null) {
                        ManagedChannelImpl.this.lbHelper.f519lb.requestConnection();
                    }
                }
            });
        }
        return state;
    }

    @Override // io.grpc.ManagedChannel
    public void notifyWhenStateChanged(final ConnectivityState connectivityState, final Runnable runnable) {
        this.syncContext.execute(new Runnable() { // from class: io.grpc.internal.ManagedChannelImpl.1NotifyStateChanged
            @Override // java.lang.Runnable
            public void run() {
                ManagedChannelImpl.this.channelStateManager.notifyWhenStateChanged(runnable, ManagedChannelImpl.this.executor, connectivityState);
            }
        });
    }

    @Override // io.grpc.ManagedChannel
    public void resetConnectBackoff() {
        this.syncContext.execute(new Runnable() { // from class: io.grpc.internal.ManagedChannelImpl.1ResetConnectBackoff
            @Override // java.lang.Runnable
            public void run() {
                if (ManagedChannelImpl.this.shutdown.get()) {
                    return;
                }
                if (ManagedChannelImpl.this.scheduledNameResolverRefresh != null && ManagedChannelImpl.this.scheduledNameResolverRefresh.isPending()) {
                    Preconditions.checkState(ManagedChannelImpl.this.nameResolverStarted, "name resolver must be started");
                    ManagedChannelImpl.this.refreshAndResetNameResolution();
                }
                for (InternalSubchannel internalSubchannel : ManagedChannelImpl.this.subchannels) {
                    internalSubchannel.resetConnectBackoff();
                }
                for (OobChannel oobChannel : ManagedChannelImpl.this.oobChannels) {
                    oobChannel.resetConnectBackoff();
                }
            }
        });
    }

    @Override // io.grpc.ManagedChannel
    public void enterIdle() {
        this.syncContext.execute(new Runnable() { // from class: io.grpc.internal.ManagedChannelImpl.1PrepareToLoseNetworkRunnable
            @Override // java.lang.Runnable
            public void run() {
                if (ManagedChannelImpl.this.shutdown.get() || ManagedChannelImpl.this.lbHelper == null) {
                    return;
                }
                ManagedChannelImpl.this.cancelIdleTimer(false);
                ManagedChannelImpl.this.enterIdleMode();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public final class UncommittedRetriableStreamsRegistry {
        final Object lock;
        Status shutdownStatus;
        Collection<ClientStream> uncommittedRetriableStreams;

        private UncommittedRetriableStreamsRegistry() {
            this.lock = new Object();
            this.uncommittedRetriableStreams = new HashSet();
        }

        void onShutdown(Status status) {
            synchronized (this.lock) {
                if (this.shutdownStatus != null) {
                    return;
                }
                this.shutdownStatus = status;
                boolean isEmpty = this.uncommittedRetriableStreams.isEmpty();
                if (isEmpty) {
                    ManagedChannelImpl.this.delayedTransport.shutdown(status);
                }
            }
        }

        void onShutdownNow(Status status) {
            ArrayList<ClientStream> arrayList;
            onShutdown(status);
            synchronized (this.lock) {
                arrayList = new ArrayList(this.uncommittedRetriableStreams);
            }
            for (ClientStream clientStream : arrayList) {
                clientStream.cancel(status);
            }
            ManagedChannelImpl.this.delayedTransport.shutdownNow(status);
        }

        Status add(RetriableStream<?> retriableStream) {
            synchronized (this.lock) {
                Status status = this.shutdownStatus;
                if (status != null) {
                    return status;
                }
                this.uncommittedRetriableStreams.add(retriableStream);
                return null;
            }
        }

        void remove(RetriableStream<?> retriableStream) {
            Status status;
            synchronized (this.lock) {
                this.uncommittedRetriableStreams.remove(retriableStream);
                if (this.uncommittedRetriableStreams.isEmpty()) {
                    status = this.shutdownStatus;
                    this.uncommittedRetriableStreams = new HashSet();
                } else {
                    status = null;
                }
            }
            if (status != null) {
                ManagedChannelImpl.this.delayedTransport.shutdown(status);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public class LbHelperImpl extends LoadBalancer.Helper {

        /* renamed from: lb */
        AutoConfiguredLoadBalancerFactory.AutoConfiguredLoadBalancer f519lb;

        private LbHelperImpl() {
        }

        @Override // io.grpc.LoadBalancer.Helper
        public AbstractSubchannel createSubchannel(LoadBalancer.CreateSubchannelArgs createSubchannelArgs) {
            ManagedChannelImpl.this.syncContext.throwIfNotInThisSynchronizationContext();
            return createSubchannelInternal(createSubchannelArgs);
        }

        private SubchannelImpl createSubchannelInternal(LoadBalancer.CreateSubchannelArgs createSubchannelArgs) {
            Preconditions.checkState(!ManagedChannelImpl.this.terminated, "Channel is terminated");
            return new SubchannelImpl(createSubchannelArgs, this);
        }

        @Override // io.grpc.LoadBalancer.Helper
        public void updateBalancingState(final ConnectivityState connectivityState, final LoadBalancer.SubchannelPicker subchannelPicker) {
            Preconditions.checkNotNull(connectivityState, "newState");
            Preconditions.checkNotNull(subchannelPicker, "newPicker");
            ManagedChannelImpl.this.logWarningIfNotInSyncContext("updateBalancingState()");
            ManagedChannelImpl.this.syncContext.execute(new Runnable() { // from class: io.grpc.internal.ManagedChannelImpl.LbHelperImpl.1UpdateBalancingState
                @Override // java.lang.Runnable
                public void run() {
                    LbHelperImpl lbHelperImpl = LbHelperImpl.this;
                    if (lbHelperImpl != ManagedChannelImpl.this.lbHelper) {
                        return;
                    }
                    ManagedChannelImpl.this.updateSubchannelPicker(subchannelPicker);
                    if (connectivityState != ConnectivityState.SHUTDOWN) {
                        ManagedChannelImpl.this.channelLogger.log(ChannelLogger.ChannelLogLevel.INFO, "Entering {0} state with picker: {1}", connectivityState, subchannelPicker);
                        ManagedChannelImpl.this.channelStateManager.gotoState(connectivityState);
                    }
                }
            });
        }

        @Override // io.grpc.LoadBalancer.Helper
        public SynchronizationContext getSynchronizationContext() {
            return ManagedChannelImpl.this.syncContext;
        }

        @Override // io.grpc.LoadBalancer.Helper
        public ChannelLogger getChannelLogger() {
            return ManagedChannelImpl.this.channelLogger;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public final class NameResolverListener extends NameResolver.Listener2 {
        final LbHelperImpl helper;
        final NameResolver resolver;

        NameResolverListener(LbHelperImpl lbHelperImpl, NameResolver nameResolver) {
            this.helper = (LbHelperImpl) Preconditions.checkNotNull(lbHelperImpl, "helperImpl");
            this.resolver = (NameResolver) Preconditions.checkNotNull(nameResolver, "resolver");
        }

        @Override // io.grpc.NameResolver.Listener2
        public void onResult(final NameResolver.ResolutionResult resolutionResult) {
            ManagedChannelImpl.this.syncContext.execute(new Runnable() { // from class: io.grpc.internal.ManagedChannelImpl.NameResolverListener.1NamesResolved
                @Override // java.lang.Runnable
                public void run() {
                    Status status;
                    ServiceConfigHolder serviceConfigHolder;
                    List<EquivalentAddressGroup> addresses = resolutionResult.getAddresses();
                    Attributes attributes = resolutionResult.getAttributes();
                    ManagedChannelImpl.this.channelLogger.log(ChannelLogger.ChannelLogLevel.DEBUG, "Resolved address: {0}, config={1}", addresses, attributes);
                    ResolutionState resolutionState = ManagedChannelImpl.this.lastResolutionState;
                    ResolutionState resolutionState2 = ManagedChannelImpl.this.lastResolutionState;
                    ResolutionState resolutionState3 = ResolutionState.SUCCESS;
                    if (resolutionState2 != resolutionState3) {
                        ManagedChannelImpl.this.channelLogger.log(ChannelLogger.ChannelLogLevel.INFO, "Address resolved: {0}", addresses);
                        ManagedChannelImpl.this.lastResolutionState = resolutionState3;
                    }
                    ManagedChannelImpl.this.nameResolverBackoffPolicy = null;
                    NameResolver.ConfigOrError serviceConfig = resolutionResult.getServiceConfig();
                    if (serviceConfig != null) {
                        r4 = serviceConfig.getConfig() != null ? new ServiceConfigHolder((Map) resolutionResult.getAttributes().get(GrpcAttributes.NAME_RESOLVER_SERVICE_CONFIG), (ManagedChannelServiceConfig) serviceConfig.getConfig()) : null;
                        status = serviceConfig.getError();
                    } else {
                        status = null;
                    }
                    if (!ManagedChannelImpl.this.lookUpServiceConfig) {
                        if (r4 != null) {
                            ManagedChannelImpl.this.channelLogger.log(ChannelLogger.ChannelLogLevel.INFO, "Service config from name resolver discarded by channel settings");
                        }
                        serviceConfigHolder = ManagedChannelImpl.this.defaultServiceConfig == null ? ManagedChannelImpl.EMPTY_SERVICE_CONFIG : ManagedChannelImpl.this.defaultServiceConfig;
                        attributes = attributes.toBuilder().discard(GrpcAttributes.NAME_RESOLVER_SERVICE_CONFIG).build();
                    } else {
                        if (r4 != null) {
                            serviceConfigHolder = r4;
                        } else if (ManagedChannelImpl.this.defaultServiceConfig != null) {
                            serviceConfigHolder = ManagedChannelImpl.this.defaultServiceConfig;
                            ManagedChannelImpl.this.channelLogger.log(ChannelLogger.ChannelLogLevel.INFO, "Received no service config, using default service config");
                        } else if (status != null) {
                            if (!ManagedChannelImpl.this.serviceConfigUpdated) {
                                ManagedChannelImpl.this.channelLogger.log(ChannelLogger.ChannelLogLevel.INFO, "Fallback to error due to invalid first service config without default config");
                                NameResolverListener.this.onError(serviceConfig.getError());
                                return;
                            }
                            serviceConfigHolder = ManagedChannelImpl.this.lastServiceConfig;
                        } else {
                            serviceConfigHolder = ManagedChannelImpl.EMPTY_SERVICE_CONFIG;
                        }
                        if (!serviceConfigHolder.equals(ManagedChannelImpl.this.lastServiceConfig)) {
                            ChannelLogger channelLogger = ManagedChannelImpl.this.channelLogger;
                            ChannelLogger.ChannelLogLevel channelLogLevel = ChannelLogger.ChannelLogLevel.INFO;
                            Object[] objArr = new Object[1];
                            objArr[0] = serviceConfigHolder == ManagedChannelImpl.EMPTY_SERVICE_CONFIG ? " to empty" : "";
                            channelLogger.log(channelLogLevel, "Service config changed{0}", objArr);
                            ManagedChannelImpl.this.lastServiceConfig = serviceConfigHolder;
                        }
                        try {
                            ManagedChannelImpl.this.handleServiceConfigUpdate();
                        } catch (RuntimeException e) {
                            ManagedChannelImpl.logger.log(Level.WARNING, "[" + ManagedChannelImpl.this.getLogId() + "] Unexpected exception from parsing service config", (Throwable) e);
                        }
                    }
                    NameResolverListener nameResolverListener = NameResolverListener.this;
                    if (nameResolverListener.helper == ManagedChannelImpl.this.lbHelper) {
                        if (serviceConfigHolder != r4) {
                            attributes = attributes.toBuilder().set(GrpcAttributes.NAME_RESOLVER_SERVICE_CONFIG, serviceConfigHolder.rawServiceConfig).build();
                        }
                        Status tryHandleResolvedAddresses = NameResolverListener.this.helper.f519lb.tryHandleResolvedAddresses(LoadBalancer.ResolvedAddresses.newBuilder().setAddresses(addresses).setAttributes(attributes).setLoadBalancingPolicyConfig(serviceConfigHolder.managedChannelServiceConfig.getLoadBalancingConfig()).build());
                        if (tryHandleResolvedAddresses.isOk()) {
                            return;
                        }
                        if (addresses.isEmpty() && resolutionState == ResolutionState.SUCCESS) {
                            NameResolverListener.this.scheduleExponentialBackOffInSyncContext();
                            return;
                        }
                        NameResolverListener.this.handleErrorInSyncContext(tryHandleResolvedAddresses.augmentDescription(NameResolverListener.this.resolver + " was used"));
                    }
                }
            });
        }

        @Override // io.grpc.NameResolver.Listener2, io.grpc.NameResolver.Listener
        public void onError(final Status status) {
            Preconditions.checkArgument(!status.isOk(), "the error status must not be OK");
            ManagedChannelImpl.this.syncContext.execute(new Runnable() { // from class: io.grpc.internal.ManagedChannelImpl.NameResolverListener.1NameResolverErrorHandler
                @Override // java.lang.Runnable
                public void run() {
                    NameResolverListener.this.handleErrorInSyncContext(status);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void handleErrorInSyncContext(Status status) {
            ManagedChannelImpl.logger.log(Level.WARNING, "[{0}] Failed to resolve name. status={1}", new Object[]{ManagedChannelImpl.this.getLogId(), status});
            ResolutionState resolutionState = ManagedChannelImpl.this.lastResolutionState;
            ResolutionState resolutionState2 = ResolutionState.ERROR;
            if (resolutionState != resolutionState2) {
                ManagedChannelImpl.this.channelLogger.log(ChannelLogger.ChannelLogLevel.WARNING, "Failed to resolve name: {0}", status);
                ManagedChannelImpl.this.lastResolutionState = resolutionState2;
            }
            if (this.helper != ManagedChannelImpl.this.lbHelper) {
                return;
            }
            this.helper.f519lb.handleNameResolutionError(status);
            scheduleExponentialBackOffInSyncContext();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void scheduleExponentialBackOffInSyncContext() {
            if (ManagedChannelImpl.this.scheduledNameResolverRefresh == null || !ManagedChannelImpl.this.scheduledNameResolverRefresh.isPending()) {
                if (ManagedChannelImpl.this.nameResolverBackoffPolicy == null) {
                    ManagedChannelImpl managedChannelImpl = ManagedChannelImpl.this;
                    managedChannelImpl.nameResolverBackoffPolicy = managedChannelImpl.backoffPolicyProvider.get();
                }
                long nextBackoffNanos = ManagedChannelImpl.this.nameResolverBackoffPolicy.nextBackoffNanos();
                ManagedChannelImpl.this.channelLogger.log(ChannelLogger.ChannelLogLevel.DEBUG, "Scheduling DNS resolution backoff for {0} ns", Long.valueOf(nextBackoffNanos));
                ManagedChannelImpl managedChannelImpl2 = ManagedChannelImpl.this;
                managedChannelImpl2.scheduledNameResolverRefresh = managedChannelImpl2.syncContext.schedule(new DelayedNameResolverRefresh(), nextBackoffNanos, TimeUnit.NANOSECONDS, ManagedChannelImpl.this.transportFactory.getScheduledExecutorService());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public final class SubchannelImpl extends AbstractSubchannel {
        final LoadBalancer.CreateSubchannelArgs args;
        SynchronizationContext.ScheduledHandle delayedShutdownTask;
        boolean shutdown;
        boolean started;
        InternalSubchannel subchannel;
        final InternalLogId subchannelLogId;
        final ChannelLoggerImpl subchannelLogger;
        final ChannelTracer subchannelTracer;

        SubchannelImpl(LoadBalancer.CreateSubchannelArgs createSubchannelArgs, LbHelperImpl lbHelperImpl) {
            this.args = (LoadBalancer.CreateSubchannelArgs) Preconditions.checkNotNull(createSubchannelArgs, "args");
            LbHelperImpl lbHelperImpl2 = (LbHelperImpl) Preconditions.checkNotNull(lbHelperImpl, "helper");
            InternalLogId allocate = InternalLogId.allocate("Subchannel", ManagedChannelImpl.this.authority());
            this.subchannelLogId = allocate;
            int i = ManagedChannelImpl.this.maxTraceEvents;
            long currentTimeNanos = ManagedChannelImpl.this.timeProvider.currentTimeNanos();
            ChannelTracer channelTracer = new ChannelTracer(allocate, i, currentTimeNanos, "Subchannel for " + createSubchannelArgs.getAddresses());
            this.subchannelTracer = channelTracer;
            this.subchannelLogger = new ChannelLoggerImpl(channelTracer, ManagedChannelImpl.this.timeProvider);
        }

        private void internalStart(final LoadBalancer.SubchannelStateListener subchannelStateListener) {
            Preconditions.checkState(!this.started, "already started");
            Preconditions.checkState(!this.shutdown, "already shutdown");
            this.started = true;
            if (ManagedChannelImpl.this.terminating) {
                ManagedChannelImpl.this.syncContext.execute(new Runnable(this) { // from class: io.grpc.internal.ManagedChannelImpl.SubchannelImpl.1
                    @Override // java.lang.Runnable
                    public void run() {
                        subchannelStateListener.onSubchannelState(ConnectivityStateInfo.forNonError(ConnectivityState.SHUTDOWN));
                    }
                });
                return;
            }
            final InternalSubchannel internalSubchannel = new InternalSubchannel(this.args.getAddresses(), ManagedChannelImpl.this.authority(), ManagedChannelImpl.this.userAgent, ManagedChannelImpl.this.backoffPolicyProvider, ManagedChannelImpl.this.transportFactory, ManagedChannelImpl.this.transportFactory.getScheduledExecutorService(), ManagedChannelImpl.this.stopwatchSupplier, ManagedChannelImpl.this.syncContext, new InternalSubchannel.Callback() { // from class: io.grpc.internal.ManagedChannelImpl.SubchannelImpl.1ManagedInternalSubchannelCallback
                @Override // io.grpc.internal.InternalSubchannel.Callback
                void onTerminated(InternalSubchannel internalSubchannel2) {
                    ManagedChannelImpl.this.subchannels.remove(internalSubchannel2);
                    ManagedChannelImpl.this.channelz.removeSubchannel(internalSubchannel2);
                    ManagedChannelImpl.this.maybeTerminateChannel();
                }

                @Override // io.grpc.internal.InternalSubchannel.Callback
                void onStateChange(InternalSubchannel internalSubchannel2, ConnectivityStateInfo connectivityStateInfo) {
                    ManagedChannelImpl.this.handleInternalSubchannelState(connectivityStateInfo);
                    Preconditions.checkState(subchannelStateListener != null, "listener is null");
                    subchannelStateListener.onSubchannelState(connectivityStateInfo);
                }

                @Override // io.grpc.internal.InternalSubchannel.Callback
                void onInUse(InternalSubchannel internalSubchannel2) {
                    ManagedChannelImpl.this.inUseStateAggregator.updateObjectInUse(internalSubchannel2, true);
                }

                @Override // io.grpc.internal.InternalSubchannel.Callback
                void onNotInUse(InternalSubchannel internalSubchannel2) {
                    ManagedChannelImpl.this.inUseStateAggregator.updateObjectInUse(internalSubchannel2, false);
                }
            }, ManagedChannelImpl.this.channelz, ManagedChannelImpl.this.callTracerFactory.create(), this.subchannelTracer, this.subchannelLogId, this.subchannelLogger);
            ManagedChannelImpl.this.channelTracer.reportEvent(new InternalChannelz$ChannelTrace$Event.Builder().setDescription("Child Subchannel started").setSeverity(InternalChannelz$ChannelTrace$Event.Severity.CT_INFO).setTimestampNanos(ManagedChannelImpl.this.timeProvider.currentTimeNanos()).setSubchannelRef(internalSubchannel).build());
            this.subchannel = internalSubchannel;
            ManagedChannelImpl.this.syncContext.execute(new Runnable() { // from class: io.grpc.internal.ManagedChannelImpl.SubchannelImpl.2
                @Override // java.lang.Runnable
                public void run() {
                    ManagedChannelImpl.this.channelz.addSubchannel(internalSubchannel);
                    ManagedChannelImpl.this.subchannels.add(internalSubchannel);
                }
            });
        }

        @Override // io.grpc.LoadBalancer.Subchannel
        public void start(LoadBalancer.SubchannelStateListener subchannelStateListener) {
            ManagedChannelImpl.this.syncContext.throwIfNotInThisSynchronizationContext();
            internalStart(subchannelStateListener);
        }

        @Override // io.grpc.LoadBalancer.Subchannel
        public void shutdown() {
            ManagedChannelImpl.this.logWarningIfNotInSyncContext("Subchannel.shutdown()");
            ManagedChannelImpl.this.syncContext.execute(new Runnable() { // from class: io.grpc.internal.ManagedChannelImpl.SubchannelImpl.3
                @Override // java.lang.Runnable
                public void run() {
                    SubchannelImpl.this.internalShutdown();
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void internalShutdown() {
            SynchronizationContext.ScheduledHandle scheduledHandle;
            ManagedChannelImpl.this.syncContext.throwIfNotInThisSynchronizationContext();
            if (this.subchannel == null) {
                this.shutdown = true;
                return;
            }
            if (this.shutdown) {
                if (!ManagedChannelImpl.this.terminating || (scheduledHandle = this.delayedShutdownTask) == null) {
                    return;
                }
                scheduledHandle.cancel();
                this.delayedShutdownTask = null;
            } else {
                this.shutdown = true;
            }
            if (!ManagedChannelImpl.this.terminating) {
                this.delayedShutdownTask = ManagedChannelImpl.this.syncContext.schedule(new LogExceptionRunnable(new Runnable() { // from class: io.grpc.internal.ManagedChannelImpl.SubchannelImpl.1ShutdownSubchannel
                    @Override // java.lang.Runnable
                    public void run() {
                        SubchannelImpl.this.subchannel.shutdown(ManagedChannelImpl.SUBCHANNEL_SHUTDOWN_STATUS);
                    }
                }), 5L, TimeUnit.SECONDS, ManagedChannelImpl.this.transportFactory.getScheduledExecutorService());
            } else {
                this.subchannel.shutdown(ManagedChannelImpl.SHUTDOWN_STATUS);
            }
        }

        @Override // io.grpc.LoadBalancer.Subchannel
        public void requestConnection() {
            ManagedChannelImpl.this.logWarningIfNotInSyncContext("Subchannel.requestConnection()");
            Preconditions.checkState(this.started, "not started");
            this.subchannel.obtainActiveTransport();
        }

        @Override // io.grpc.LoadBalancer.Subchannel
        public List<EquivalentAddressGroup> getAllAddresses() {
            ManagedChannelImpl.this.logWarningIfNotInSyncContext("Subchannel.getAllAddresses()");
            Preconditions.checkState(this.started, "not started");
            return this.subchannel.getAddressGroups();
        }

        @Override // io.grpc.LoadBalancer.Subchannel
        public Attributes getAttributes() {
            return this.args.getAttributes();
        }

        public String toString() {
            return this.subchannelLogId.toString();
        }

        @Override // io.grpc.LoadBalancer.Subchannel
        public Object getInternalSubchannel() {
            Preconditions.checkState(this.started, "Subchannel is not started");
            return this.subchannel;
        }

        @Override // io.grpc.LoadBalancer.Subchannel
        public void updateAddresses(List<EquivalentAddressGroup> list) {
            ManagedChannelImpl.this.syncContext.throwIfNotInThisSynchronizationContext();
            this.subchannel.updateAddresses(list);
        }
    }

    public String toString() {
        return MoreObjects.toStringHelper(this).add("logId", this.logId.getId()).add("target", this.target).toString();
    }

    /* loaded from: classes4.dex */
    private final class DelayedTransportListener implements ManagedClientTransport.Listener {
        @Override // io.grpc.internal.ManagedClientTransport.Listener
        public void transportReady() {
        }

        private DelayedTransportListener() {
        }

        @Override // io.grpc.internal.ManagedClientTransport.Listener
        public void transportShutdown(Status status) {
            Preconditions.checkState(ManagedChannelImpl.this.shutdown.get(), "Channel must have been shut down");
        }

        @Override // io.grpc.internal.ManagedClientTransport.Listener
        public void transportInUse(boolean z) {
            ManagedChannelImpl managedChannelImpl = ManagedChannelImpl.this;
            managedChannelImpl.inUseStateAggregator.updateObjectInUse(managedChannelImpl.delayedTransport, z);
        }

        @Override // io.grpc.internal.ManagedClientTransport.Listener
        public void transportTerminated() {
            Preconditions.checkState(ManagedChannelImpl.this.shutdown.get(), "Channel must have been shut down");
            ManagedChannelImpl.this.terminating = true;
            ManagedChannelImpl.this.shutdownNameResolverAndLoadBalancer(false);
            ManagedChannelImpl.this.maybeShutdownNowSubchannels();
            ManagedChannelImpl.this.maybeTerminateChannel();
        }
    }

    /* loaded from: classes4.dex */
    private final class IdleModeStateAggregator extends InUseStateAggregator<Object> {
        private IdleModeStateAggregator() {
        }

        @Override // io.grpc.internal.InUseStateAggregator
        protected void handleInUse() {
            ManagedChannelImpl.this.exitIdleMode();
        }

        @Override // io.grpc.internal.InUseStateAggregator
        protected void handleNotInUse() {
            if (ManagedChannelImpl.this.shutdown.get()) {
                return;
            }
            ManagedChannelImpl.this.rescheduleIdleTimer();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public static final class ExecutorHolder {
        private Executor executor;
        private final ObjectPool<? extends Executor> pool;

        ExecutorHolder(ObjectPool<? extends Executor> objectPool) {
            this.pool = (ObjectPool) Preconditions.checkNotNull(objectPool, "executorPool");
        }

        synchronized Executor getExecutor() {
            if (this.executor == null) {
                this.executor = (Executor) Preconditions.checkNotNull(this.pool.getObject(), "%s.getObject()", this.executor);
            }
            return this.executor;
        }

        synchronized void release() {
            Executor executor = this.executor;
            if (executor != null) {
                this.executor = this.pool.returnObject(executor);
            }
        }
    }

    /* loaded from: classes4.dex */
    private static final class RestrictedScheduledExecutor implements ScheduledExecutorService {
        final ScheduledExecutorService delegate;

        private RestrictedScheduledExecutor(ScheduledExecutorService scheduledExecutorService) {
            this.delegate = (ScheduledExecutorService) Preconditions.checkNotNull(scheduledExecutorService, "delegate");
        }

        @Override // java.util.concurrent.ScheduledExecutorService
        public <V> ScheduledFuture<V> schedule(Callable<V> callable, long j, TimeUnit timeUnit) {
            return this.delegate.schedule(callable, j, timeUnit);
        }

        @Override // java.util.concurrent.ScheduledExecutorService
        public ScheduledFuture<?> schedule(Runnable runnable, long j, TimeUnit timeUnit) {
            return this.delegate.schedule(runnable, j, timeUnit);
        }

        @Override // java.util.concurrent.ScheduledExecutorService
        public ScheduledFuture<?> scheduleAtFixedRate(Runnable runnable, long j, long j2, TimeUnit timeUnit) {
            return this.delegate.scheduleAtFixedRate(runnable, j, j2, timeUnit);
        }

        @Override // java.util.concurrent.ScheduledExecutorService
        public ScheduledFuture<?> scheduleWithFixedDelay(Runnable runnable, long j, long j2, TimeUnit timeUnit) {
            return this.delegate.scheduleWithFixedDelay(runnable, j, j2, timeUnit);
        }

        @Override // java.util.concurrent.ExecutorService
        public boolean awaitTermination(long j, TimeUnit timeUnit) throws InterruptedException {
            return this.delegate.awaitTermination(j, timeUnit);
        }

        @Override // java.util.concurrent.ExecutorService
        public <T> List<Future<T>> invokeAll(Collection<? extends Callable<T>> collection) throws InterruptedException {
            return this.delegate.invokeAll(collection);
        }

        @Override // java.util.concurrent.ExecutorService
        public <T> List<Future<T>> invokeAll(Collection<? extends Callable<T>> collection, long j, TimeUnit timeUnit) throws InterruptedException {
            return this.delegate.invokeAll(collection, j, timeUnit);
        }

        @Override // java.util.concurrent.ExecutorService
        public <T> T invokeAny(Collection<? extends Callable<T>> collection) throws InterruptedException, ExecutionException {
            return (T) this.delegate.invokeAny(collection);
        }

        @Override // java.util.concurrent.ExecutorService
        public <T> T invokeAny(Collection<? extends Callable<T>> collection, long j, TimeUnit timeUnit) throws InterruptedException, ExecutionException, TimeoutException {
            return (T) this.delegate.invokeAny(collection, j, timeUnit);
        }

        @Override // java.util.concurrent.ExecutorService
        public boolean isShutdown() {
            return this.delegate.isShutdown();
        }

        @Override // java.util.concurrent.ExecutorService
        public boolean isTerminated() {
            return this.delegate.isTerminated();
        }

        @Override // java.util.concurrent.ExecutorService
        public void shutdown() {
            throw new UnsupportedOperationException("Restricted: shutdown() is not allowed");
        }

        @Override // java.util.concurrent.ExecutorService
        public List<Runnable> shutdownNow() {
            throw new UnsupportedOperationException("Restricted: shutdownNow() is not allowed");
        }

        @Override // java.util.concurrent.ExecutorService
        public <T> Future<T> submit(Callable<T> callable) {
            return this.delegate.submit(callable);
        }

        @Override // java.util.concurrent.ExecutorService
        public Future<?> submit(Runnable runnable) {
            return this.delegate.submit(runnable);
        }

        @Override // java.util.concurrent.ExecutorService
        public <T> Future<T> submit(Runnable runnable, T t) {
            return this.delegate.submit(runnable, t);
        }

        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            this.delegate.execute(runnable);
        }
    }

    /* loaded from: classes4.dex */
    static final class ScParser extends NameResolver.ServiceConfigParser {
        private final AutoConfiguredLoadBalancerFactory autoLoadBalancerFactory;
        private final ChannelLogger channelLogger;
        private final int maxHedgedAttemptsLimit;
        private final int maxRetryAttemptsLimit;
        private final boolean retryEnabled;

        ScParser(boolean z, int i, int i2, AutoConfiguredLoadBalancerFactory autoConfiguredLoadBalancerFactory, ChannelLogger channelLogger) {
            this.retryEnabled = z;
            this.maxRetryAttemptsLimit = i;
            this.maxHedgedAttemptsLimit = i2;
            this.autoLoadBalancerFactory = (AutoConfiguredLoadBalancerFactory) Preconditions.checkNotNull(autoConfiguredLoadBalancerFactory, "autoLoadBalancerFactory");
            this.channelLogger = (ChannelLogger) Preconditions.checkNotNull(channelLogger, "channelLogger");
        }

        @Override // io.grpc.NameResolver.ServiceConfigParser
        public NameResolver.ConfigOrError parseServiceConfig(Map<String, ?> map) {
            Object config;
            try {
                NameResolver.ConfigOrError parseLoadBalancerPolicy = this.autoLoadBalancerFactory.parseLoadBalancerPolicy(map, this.channelLogger);
                if (parseLoadBalancerPolicy == null) {
                    config = null;
                } else if (parseLoadBalancerPolicy.getError() != null) {
                    return NameResolver.ConfigOrError.fromError(parseLoadBalancerPolicy.getError());
                } else {
                    config = parseLoadBalancerPolicy.getConfig();
                }
                return NameResolver.ConfigOrError.fromConfig(ManagedChannelServiceConfig.fromServiceConfig(map, this.retryEnabled, this.maxRetryAttemptsLimit, this.maxHedgedAttemptsLimit, config));
            } catch (RuntimeException e) {
                return NameResolver.ConfigOrError.fromError(Status.UNKNOWN.withDescription("failed to parse service config").withCause(e));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void logWarningIfNotInSyncContext(String str) {
        try {
            this.syncContext.throwIfNotInThisSynchronizationContext();
        } catch (IllegalStateException e) {
            Logger logger2 = logger;
            Level level = Level.WARNING;
            logger2.log(level, str + " should be called from SynchronizationContext. This warning will become an exception in a future release. See https://github.com/grpc/grpc-java/issues/5015 for more details", (Throwable) e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public static final class ServiceConfigHolder {
        ManagedChannelServiceConfig managedChannelServiceConfig;
        Map<String, ?> rawServiceConfig;

        ServiceConfigHolder(Map<String, ?> map, ManagedChannelServiceConfig managedChannelServiceConfig) {
            this.rawServiceConfig = (Map) Preconditions.checkNotNull(map, "rawServiceConfig");
            this.managedChannelServiceConfig = (ManagedChannelServiceConfig) Preconditions.checkNotNull(managedChannelServiceConfig, "managedChannelServiceConfig");
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || ServiceConfigHolder.class != obj.getClass()) {
                return false;
            }
            ServiceConfigHolder serviceConfigHolder = (ServiceConfigHolder) obj;
            return Objects.equal(this.rawServiceConfig, serviceConfigHolder.rawServiceConfig) && Objects.equal(this.managedChannelServiceConfig, serviceConfigHolder.managedChannelServiceConfig);
        }

        public int hashCode() {
            return Objects.hashCode(this.rawServiceConfig, this.managedChannelServiceConfig);
        }

        public String toString() {
            return MoreObjects.toStringHelper(this).add("rawServiceConfig", this.rawServiceConfig).add("managedChannelServiceConfig", this.managedChannelServiceConfig).toString();
        }
    }
}
