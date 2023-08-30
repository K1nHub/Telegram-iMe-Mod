package io.grpc.internal;

import com.google.common.base.Preconditions;
import io.grpc.ClientInterceptor;
import io.grpc.CompressorRegistry;
import io.grpc.DecompressorRegistry;
import io.grpc.InternalChannelz;
import io.grpc.ManagedChannel;
import io.grpc.ManagedChannelBuilder;
import io.grpc.NameResolver;
import io.grpc.NameResolverRegistry;
import io.grpc.ProxyDetector;
import io.grpc.internal.AbstractManagedChannelImplBuilder;
import io.grpc.internal.ExponentialBackoffPolicy;
import io.grpc.internal.TransportTracer;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.logging.Logger;
/* loaded from: classes4.dex */
public abstract class AbstractManagedChannelImplBuilder<T extends AbstractManagedChannelImplBuilder<T>> extends ManagedChannelBuilder<T> {
    String authorityOverride;
    InternalChannelz channelz;
    CompressorRegistry compressorRegistry;
    DecompressorRegistry decompressorRegistry;
    String defaultLbPolicy;
    Map<String, ?> defaultServiceConfig;
    ObjectPool<? extends Executor> executorPool;
    boolean fullStreamDecompression;
    long idleTimeoutMillis;
    private final List<ClientInterceptor> interceptors;
    boolean lookUpServiceConfig;
    int maxHedgedAttempts;
    private int maxInboundMessageSize;
    int maxRetryAttempts;
    int maxTraceEvents;
    private NameResolver.Factory nameResolverFactory;
    final NameResolverRegistry nameResolverRegistry;
    ObjectPool<? extends Executor> offloadExecutorPool;
    long perRpcBufferLimit;
    ProxyDetector proxyDetector;
    private boolean recordFinishedRpcs;
    private boolean recordRealTimeMetrics;
    private boolean recordStartedRpcs;
    long retryBufferSize;
    boolean retryEnabled;
    private boolean statsEnabled;
    final String target;
    boolean temporarilyDisableRetry;
    private boolean tracingEnabled;
    protected TransportTracer.Factory transportTracerFactory;
    String userAgent;
    private static final Logger log = Logger.getLogger(AbstractManagedChannelImplBuilder.class.getName());
    static final long IDLE_MODE_DEFAULT_TIMEOUT_MILLIS = TimeUnit.MINUTES.toMillis(30);
    static final long IDLE_MODE_MIN_TIMEOUT_MILLIS = TimeUnit.SECONDS.toMillis(1);
    private static final ObjectPool<? extends Executor> DEFAULT_EXECUTOR_POOL = SharedResourcePool.forResource(GrpcUtil.SHARED_CHANNEL_EXECUTOR);
    private static final DecompressorRegistry DEFAULT_DECOMPRESSOR_REGISTRY = DecompressorRegistry.getDefaultInstance();
    private static final CompressorRegistry DEFAULT_COMPRESSOR_REGISTRY = CompressorRegistry.getDefaultInstance();

    protected abstract ClientTransportFactory buildTransportFactory();

    /* JADX INFO: Access modifiers changed from: protected */
    public int getDefaultPort() {
        return 443;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final int maxInboundMessageSize() {
        return this.maxInboundMessageSize;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public AbstractManagedChannelImplBuilder(String str) {
        ObjectPool<? extends Executor> objectPool = DEFAULT_EXECUTOR_POOL;
        this.executorPool = objectPool;
        this.offloadExecutorPool = objectPool;
        this.interceptors = new ArrayList();
        NameResolverRegistry defaultRegistry = NameResolverRegistry.getDefaultRegistry();
        this.nameResolverRegistry = defaultRegistry;
        this.nameResolverFactory = defaultRegistry.asFactory();
        this.defaultLbPolicy = "pick_first";
        this.decompressorRegistry = DEFAULT_DECOMPRESSOR_REGISTRY;
        this.compressorRegistry = DEFAULT_COMPRESSOR_REGISTRY;
        this.idleTimeoutMillis = IDLE_MODE_DEFAULT_TIMEOUT_MILLIS;
        this.maxRetryAttempts = 5;
        this.maxHedgedAttempts = 5;
        this.retryBufferSize = 16777216L;
        this.perRpcBufferLimit = 1048576L;
        this.retryEnabled = false;
        this.channelz = InternalChannelz.instance();
        this.lookUpServiceConfig = true;
        this.transportTracerFactory = TransportTracer.getDefaultFactory();
        this.maxInboundMessageSize = 4194304;
        this.statsEnabled = true;
        this.recordStartedRpcs = true;
        this.recordFinishedRpcs = true;
        this.recordRealTimeMetrics = false;
        this.tracingEnabled = true;
        this.target = (String) Preconditions.checkNotNull(str, "target");
    }

    @Override // io.grpc.ManagedChannelBuilder
    public ManagedChannel build() {
        return new ManagedChannelOrphanWrapper(new ManagedChannelImpl(this, buildTransportFactory(), new ExponentialBackoffPolicy.Provider(), SharedResourcePool.forResource(GrpcUtil.SHARED_CHANNEL_EXECUTOR), GrpcUtil.STOPWATCH_SUPPLIER, getEffectiveInterceptors(), TimeProvider.SYSTEM_TIME_PROVIDER));
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0073  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x007a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    final java.util.List<io.grpc.ClientInterceptor> getEffectiveInterceptors() {
        /*
            r11 = this;
            java.util.ArrayList r0 = new java.util.ArrayList
            java.util.List<io.grpc.ClientInterceptor> r1 = r11.interceptors
            r0.<init>(r1)
            r1 = 0
            r11.temporarilyDisableRetry = r1
            boolean r2 = r11.statsEnabled
            java.lang.String r3 = "getClientInterceptor"
            r4 = 0
            r5 = 1
            java.lang.String r6 = "Unable to apply census stats"
            if (r2 == 0) goto L76
            r11.temporarilyDisableRetry = r5
            java.lang.String r2 = "io.grpc.census.InternalCensusStatsAccessor"
            java.lang.Class r2 = java.lang.Class.forName(r2)     // Catch: java.lang.reflect.InvocationTargetException -> L4d java.lang.IllegalAccessException -> L56 java.lang.NoSuchMethodException -> L5f java.lang.ClassNotFoundException -> L68
            r7 = 3
            java.lang.Class[] r8 = new java.lang.Class[r7]     // Catch: java.lang.reflect.InvocationTargetException -> L4d java.lang.IllegalAccessException -> L56 java.lang.NoSuchMethodException -> L5f java.lang.ClassNotFoundException -> L68
            java.lang.Class r9 = java.lang.Boolean.TYPE     // Catch: java.lang.reflect.InvocationTargetException -> L4d java.lang.IllegalAccessException -> L56 java.lang.NoSuchMethodException -> L5f java.lang.ClassNotFoundException -> L68
            r8[r1] = r9     // Catch: java.lang.reflect.InvocationTargetException -> L4d java.lang.IllegalAccessException -> L56 java.lang.NoSuchMethodException -> L5f java.lang.ClassNotFoundException -> L68
            r8[r5] = r9     // Catch: java.lang.reflect.InvocationTargetException -> L4d java.lang.IllegalAccessException -> L56 java.lang.NoSuchMethodException -> L5f java.lang.ClassNotFoundException -> L68
            r10 = 2
            r8[r10] = r9     // Catch: java.lang.reflect.InvocationTargetException -> L4d java.lang.IllegalAccessException -> L56 java.lang.NoSuchMethodException -> L5f java.lang.ClassNotFoundException -> L68
            java.lang.reflect.Method r2 = r2.getDeclaredMethod(r3, r8)     // Catch: java.lang.reflect.InvocationTargetException -> L4d java.lang.IllegalAccessException -> L56 java.lang.NoSuchMethodException -> L5f java.lang.ClassNotFoundException -> L68
            java.lang.Object[] r7 = new java.lang.Object[r7]     // Catch: java.lang.reflect.InvocationTargetException -> L4d java.lang.IllegalAccessException -> L56 java.lang.NoSuchMethodException -> L5f java.lang.ClassNotFoundException -> L68
            boolean r8 = r11.recordStartedRpcs     // Catch: java.lang.reflect.InvocationTargetException -> L4d java.lang.IllegalAccessException -> L56 java.lang.NoSuchMethodException -> L5f java.lang.ClassNotFoundException -> L68
            java.lang.Boolean r8 = java.lang.Boolean.valueOf(r8)     // Catch: java.lang.reflect.InvocationTargetException -> L4d java.lang.IllegalAccessException -> L56 java.lang.NoSuchMethodException -> L5f java.lang.ClassNotFoundException -> L68
            r7[r1] = r8     // Catch: java.lang.reflect.InvocationTargetException -> L4d java.lang.IllegalAccessException -> L56 java.lang.NoSuchMethodException -> L5f java.lang.ClassNotFoundException -> L68
            boolean r8 = r11.recordFinishedRpcs     // Catch: java.lang.reflect.InvocationTargetException -> L4d java.lang.IllegalAccessException -> L56 java.lang.NoSuchMethodException -> L5f java.lang.ClassNotFoundException -> L68
            java.lang.Boolean r8 = java.lang.Boolean.valueOf(r8)     // Catch: java.lang.reflect.InvocationTargetException -> L4d java.lang.IllegalAccessException -> L56 java.lang.NoSuchMethodException -> L5f java.lang.ClassNotFoundException -> L68
            r7[r5] = r8     // Catch: java.lang.reflect.InvocationTargetException -> L4d java.lang.IllegalAccessException -> L56 java.lang.NoSuchMethodException -> L5f java.lang.ClassNotFoundException -> L68
            boolean r8 = r11.recordRealTimeMetrics     // Catch: java.lang.reflect.InvocationTargetException -> L4d java.lang.IllegalAccessException -> L56 java.lang.NoSuchMethodException -> L5f java.lang.ClassNotFoundException -> L68
            java.lang.Boolean r8 = java.lang.Boolean.valueOf(r8)     // Catch: java.lang.reflect.InvocationTargetException -> L4d java.lang.IllegalAccessException -> L56 java.lang.NoSuchMethodException -> L5f java.lang.ClassNotFoundException -> L68
            r7[r10] = r8     // Catch: java.lang.reflect.InvocationTargetException -> L4d java.lang.IllegalAccessException -> L56 java.lang.NoSuchMethodException -> L5f java.lang.ClassNotFoundException -> L68
            java.lang.Object r2 = r2.invoke(r4, r7)     // Catch: java.lang.reflect.InvocationTargetException -> L4d java.lang.IllegalAccessException -> L56 java.lang.NoSuchMethodException -> L5f java.lang.ClassNotFoundException -> L68
            io.grpc.ClientInterceptor r2 = (io.grpc.ClientInterceptor) r2     // Catch: java.lang.reflect.InvocationTargetException -> L4d java.lang.IllegalAccessException -> L56 java.lang.NoSuchMethodException -> L5f java.lang.ClassNotFoundException -> L68
            goto L71
        L4d:
            r2 = move-exception
            java.util.logging.Logger r7 = io.grpc.internal.AbstractManagedChannelImplBuilder.log
            java.util.logging.Level r8 = java.util.logging.Level.FINE
            r7.log(r8, r6, r2)
            goto L70
        L56:
            r2 = move-exception
            java.util.logging.Logger r7 = io.grpc.internal.AbstractManagedChannelImplBuilder.log
            java.util.logging.Level r8 = java.util.logging.Level.FINE
            r7.log(r8, r6, r2)
            goto L70
        L5f:
            r2 = move-exception
            java.util.logging.Logger r7 = io.grpc.internal.AbstractManagedChannelImplBuilder.log
            java.util.logging.Level r8 = java.util.logging.Level.FINE
            r7.log(r8, r6, r2)
            goto L70
        L68:
            r2 = move-exception
            java.util.logging.Logger r7 = io.grpc.internal.AbstractManagedChannelImplBuilder.log
            java.util.logging.Level r8 = java.util.logging.Level.FINE
            r7.log(r8, r6, r2)
        L70:
            r2 = r4
        L71:
            if (r2 == 0) goto L76
            r0.add(r1, r2)
        L76:
            boolean r2 = r11.tracingEnabled
            if (r2 == 0) goto Lba
            r11.temporarilyDisableRetry = r5
            java.lang.String r2 = "io.grpc.census.InternalCensusTracingAccessor"
            java.lang.Class r2 = java.lang.Class.forName(r2)     // Catch: java.lang.reflect.InvocationTargetException -> L92 java.lang.IllegalAccessException -> L9b java.lang.NoSuchMethodException -> La4 java.lang.ClassNotFoundException -> Lad
            java.lang.Class[] r5 = new java.lang.Class[r1]     // Catch: java.lang.reflect.InvocationTargetException -> L92 java.lang.IllegalAccessException -> L9b java.lang.NoSuchMethodException -> La4 java.lang.ClassNotFoundException -> Lad
            java.lang.reflect.Method r2 = r2.getDeclaredMethod(r3, r5)     // Catch: java.lang.reflect.InvocationTargetException -> L92 java.lang.IllegalAccessException -> L9b java.lang.NoSuchMethodException -> La4 java.lang.ClassNotFoundException -> Lad
            java.lang.Object[] r3 = new java.lang.Object[r1]     // Catch: java.lang.reflect.InvocationTargetException -> L92 java.lang.IllegalAccessException -> L9b java.lang.NoSuchMethodException -> La4 java.lang.ClassNotFoundException -> Lad
            java.lang.Object r2 = r2.invoke(r4, r3)     // Catch: java.lang.reflect.InvocationTargetException -> L92 java.lang.IllegalAccessException -> L9b java.lang.NoSuchMethodException -> La4 java.lang.ClassNotFoundException -> Lad
            io.grpc.ClientInterceptor r2 = (io.grpc.ClientInterceptor) r2     // Catch: java.lang.reflect.InvocationTargetException -> L92 java.lang.IllegalAccessException -> L9b java.lang.NoSuchMethodException -> La4 java.lang.ClassNotFoundException -> Lad
            r4 = r2
            goto Lb5
        L92:
            r2 = move-exception
            java.util.logging.Logger r3 = io.grpc.internal.AbstractManagedChannelImplBuilder.log
            java.util.logging.Level r5 = java.util.logging.Level.FINE
            r3.log(r5, r6, r2)
            goto Lb5
        L9b:
            r2 = move-exception
            java.util.logging.Logger r3 = io.grpc.internal.AbstractManagedChannelImplBuilder.log
            java.util.logging.Level r5 = java.util.logging.Level.FINE
            r3.log(r5, r6, r2)
            goto Lb5
        La4:
            r2 = move-exception
            java.util.logging.Logger r3 = io.grpc.internal.AbstractManagedChannelImplBuilder.log
            java.util.logging.Level r5 = java.util.logging.Level.FINE
            r3.log(r5, r6, r2)
            goto Lb5
        Lad:
            r2 = move-exception
            java.util.logging.Logger r3 = io.grpc.internal.AbstractManagedChannelImplBuilder.log
            java.util.logging.Level r5 = java.util.logging.Level.FINE
            r3.log(r5, r6, r2)
        Lb5:
            if (r4 == 0) goto Lba
            r0.add(r1, r4)
        Lba:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: io.grpc.internal.AbstractManagedChannelImplBuilder.getEffectiveInterceptors():java.util.List");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public NameResolver.Factory getNameResolverFactory() {
        if (this.authorityOverride == null) {
            return this.nameResolverFactory;
        }
        return new OverrideAuthorityNameResolverFactory(this.nameResolverFactory, this.authorityOverride);
    }
}
