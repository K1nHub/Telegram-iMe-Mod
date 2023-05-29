package io.grpc.okhttp;

import com.google.android.exoplayer2.source.rtsp.RtpPacket;
import com.google.common.base.Preconditions;
import io.grpc.ChannelLogger;
import io.grpc.internal.AbstractManagedChannelImplBuilder;
import io.grpc.internal.AtomicBackoff;
import io.grpc.internal.ClientTransportFactory;
import io.grpc.internal.ConnectionClientTransport;
import io.grpc.internal.GrpcUtil;
import io.grpc.internal.KeepAliveManager;
import io.grpc.internal.SharedResourceHolder;
import io.grpc.internal.TransportTracer;
import io.grpc.okhttp.internal.CipherSuite;
import io.grpc.okhttp.internal.ConnectionSpec;
import io.grpc.okhttp.internal.Platform;
import io.grpc.okhttp.internal.TlsVersion;
import java.net.InetSocketAddress;
import java.net.SocketAddress;
import java.security.GeneralSecurityException;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import javax.net.SocketFactory;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocketFactory;
/* loaded from: classes4.dex */
public class OkHttpChannelBuilder extends AbstractManagedChannelImplBuilder<OkHttpChannelBuilder> {
    public static final /* synthetic */ int $r8$clinit = 0;
    private ConnectionSpec connectionSpec;
    private int flowControlWindow;
    private HostnameVerifier hostnameVerifier;
    private long keepAliveTimeNanos;
    private long keepAliveTimeoutNanos;
    private boolean keepAliveWithoutCalls;
    private int maxInboundMetadataSize;
    private NegotiationType negotiationType;
    private ScheduledExecutorService scheduledExecutorService;
    private SocketFactory socketFactory;
    private SSLSocketFactory sslSocketFactory;
    private Executor transportExecutor;
    static final ConnectionSpec INTERNAL_DEFAULT_CONNECTION_SPEC = new ConnectionSpec.Builder(ConnectionSpec.MODERN_TLS).cipherSuites(CipherSuite.TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384, CipherSuite.TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256, CipherSuite.TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384, CipherSuite.TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256, CipherSuite.TLS_DHE_RSA_WITH_AES_128_GCM_SHA256, CipherSuite.TLS_DHE_DSS_WITH_AES_128_GCM_SHA256, CipherSuite.TLS_DHE_RSA_WITH_AES_256_GCM_SHA384, CipherSuite.TLS_DHE_DSS_WITH_AES_256_GCM_SHA384).tlsVersions(TlsVersion.TLS_1_2).supportsTlsExtensions(true).build();
    private static final long AS_LARGE_AS_INFINITE = TimeUnit.DAYS.toNanos(1000);
    private static final SharedResourceHolder.Resource<Executor> SHARED_EXECUTOR = new SharedResourceHolder.Resource<Executor>() { // from class: io.grpc.okhttp.OkHttpChannelBuilder.1
        @Override // io.grpc.internal.SharedResourceHolder.Resource
        public Executor create() {
            return Executors.newCachedThreadPool(GrpcUtil.getThreadFactory("grpc-okhttp-%d", true));
        }

        @Override // io.grpc.internal.SharedResourceHolder.Resource
        public void close(Executor executor) {
            ((ExecutorService) executor).shutdown();
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public enum NegotiationType {
        TLS,
        PLAINTEXT
    }

    public static OkHttpChannelBuilder forTarget(String str) {
        return new OkHttpChannelBuilder(str);
    }

    private OkHttpChannelBuilder(String str) {
        super(str);
        this.connectionSpec = INTERNAL_DEFAULT_CONNECTION_SPEC;
        this.negotiationType = NegotiationType.TLS;
        this.keepAliveTimeNanos = Long.MAX_VALUE;
        this.keepAliveTimeoutNanos = GrpcUtil.DEFAULT_KEEPALIVE_TIMEOUT_NANOS;
        this.flowControlWindow = RtpPacket.MAX_SEQUENCE_NUMBER;
        this.maxInboundMetadataSize = Integer.MAX_VALUE;
    }

    public final OkHttpChannelBuilder transportExecutor(Executor executor) {
        this.transportExecutor = executor;
        return this;
    }

    @Override // io.grpc.ManagedChannelBuilder
    public OkHttpChannelBuilder keepAliveTime(long j, TimeUnit timeUnit) {
        Preconditions.checkArgument(j > 0, "keepalive time must be positive");
        long nanos = timeUnit.toNanos(j);
        this.keepAliveTimeNanos = nanos;
        long clampKeepAliveTimeInNanos = KeepAliveManager.clampKeepAliveTimeInNanos(nanos);
        this.keepAliveTimeNanos = clampKeepAliveTimeInNanos;
        if (clampKeepAliveTimeInNanos >= AS_LARGE_AS_INFINITE) {
            this.keepAliveTimeNanos = Long.MAX_VALUE;
        }
        return this;
    }

    public final OkHttpChannelBuilder sslSocketFactory(SSLSocketFactory sSLSocketFactory) {
        this.sslSocketFactory = sSLSocketFactory;
        this.negotiationType = NegotiationType.TLS;
        return this;
    }

    @Override // io.grpc.ManagedChannelBuilder
    public final OkHttpChannelBuilder usePlaintext() {
        this.negotiationType = NegotiationType.PLAINTEXT;
        return this;
    }

    public final OkHttpChannelBuilder scheduledExecutorService(ScheduledExecutorService scheduledExecutorService) {
        this.scheduledExecutorService = (ScheduledExecutorService) Preconditions.checkNotNull(scheduledExecutorService, "scheduledExecutorService");
        return this;
    }

    @Override // io.grpc.internal.AbstractManagedChannelImplBuilder
    protected final ClientTransportFactory buildTransportFactory() {
        return new OkHttpTransportFactory(this.transportExecutor, this.scheduledExecutorService, this.socketFactory, createSslSocketFactory(), this.hostnameVerifier, this.connectionSpec, maxInboundMessageSize(), this.keepAliveTimeNanos != Long.MAX_VALUE, this.keepAliveTimeNanos, this.keepAliveTimeoutNanos, this.flowControlWindow, this.keepAliveWithoutCalls, this.maxInboundMetadataSize, this.transportTracerFactory, false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: io.grpc.okhttp.OkHttpChannelBuilder$2 */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C25802 {
        static final /* synthetic */ int[] $SwitchMap$io$grpc$okhttp$NegotiationType;
        static final /* synthetic */ int[] $SwitchMap$io$grpc$okhttp$OkHttpChannelBuilder$NegotiationType;

        static {
            int[] iArr = new int[NegotiationType.values().length];
            $SwitchMap$io$grpc$okhttp$OkHttpChannelBuilder$NegotiationType = iArr;
            try {
                iArr[NegotiationType.PLAINTEXT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$io$grpc$okhttp$OkHttpChannelBuilder$NegotiationType[NegotiationType.TLS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            int[] iArr2 = new int[io.grpc.okhttp.NegotiationType.values().length];
            $SwitchMap$io$grpc$okhttp$NegotiationType = iArr2;
            try {
                iArr2[io.grpc.okhttp.NegotiationType.TLS.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$io$grpc$okhttp$NegotiationType[io.grpc.okhttp.NegotiationType.PLAINTEXT.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    @Override // io.grpc.internal.AbstractManagedChannelImplBuilder
    protected int getDefaultPort() {
        int i = C25802.$SwitchMap$io$grpc$okhttp$OkHttpChannelBuilder$NegotiationType[this.negotiationType.ordinal()];
        if (i != 1) {
            if (i == 2) {
                return 443;
            }
            throw new AssertionError(this.negotiationType + " not handled");
        }
        return 80;
    }

    SSLSocketFactory createSslSocketFactory() {
        int i = C25802.$SwitchMap$io$grpc$okhttp$OkHttpChannelBuilder$NegotiationType[this.negotiationType.ordinal()];
        if (i != 1) {
            if (i == 2) {
                try {
                    if (this.sslSocketFactory == null) {
                        this.sslSocketFactory = SSLContext.getInstance("Default", Platform.get().getProvider()).getSocketFactory();
                    }
                    return this.sslSocketFactory;
                } catch (GeneralSecurityException e) {
                    throw new RuntimeException("TLS Provider failure", e);
                }
            }
            throw new RuntimeException("Unknown negotiation type: " + this.negotiationType);
        }
        return null;
    }

    /* loaded from: classes4.dex */
    static final class OkHttpTransportFactory implements ClientTransportFactory {
        private boolean closed;
        private final ConnectionSpec connectionSpec;
        private final boolean enableKeepAlive;
        private final Executor executor;
        private final int flowControlWindow;
        private final HostnameVerifier hostnameVerifier;
        private final AtomicBackoff keepAliveTimeNanos;
        private final long keepAliveTimeoutNanos;
        private final boolean keepAliveWithoutCalls;
        private final int maxInboundMetadataSize;
        private final int maxMessageSize;
        private final SocketFactory socketFactory;
        private final SSLSocketFactory sslSocketFactory;
        private final ScheduledExecutorService timeoutService;
        private final TransportTracer.Factory transportTracerFactory;
        private final boolean useGetForSafeMethods;
        private final boolean usingSharedExecutor;
        private final boolean usingSharedScheduler;

        private OkHttpTransportFactory(Executor executor, ScheduledExecutorService scheduledExecutorService, SocketFactory socketFactory, SSLSocketFactory sSLSocketFactory, HostnameVerifier hostnameVerifier, ConnectionSpec connectionSpec, int i, boolean z, long j, long j2, int i2, boolean z2, int i3, TransportTracer.Factory factory, boolean z3) {
            boolean z4 = scheduledExecutorService == null;
            this.usingSharedScheduler = z4;
            this.timeoutService = z4 ? (ScheduledExecutorService) SharedResourceHolder.get(GrpcUtil.TIMER_SERVICE) : scheduledExecutorService;
            this.socketFactory = socketFactory;
            this.sslSocketFactory = sSLSocketFactory;
            this.hostnameVerifier = hostnameVerifier;
            this.connectionSpec = connectionSpec;
            this.maxMessageSize = i;
            this.enableKeepAlive = z;
            this.keepAliveTimeNanos = new AtomicBackoff("keepalive time nanos", j);
            this.keepAliveTimeoutNanos = j2;
            this.flowControlWindow = i2;
            this.keepAliveWithoutCalls = z2;
            this.maxInboundMetadataSize = i3;
            this.useGetForSafeMethods = z3;
            boolean z5 = executor == null;
            this.usingSharedExecutor = z5;
            this.transportTracerFactory = (TransportTracer.Factory) Preconditions.checkNotNull(factory, "transportTracerFactory");
            if (z5) {
                this.executor = (Executor) SharedResourceHolder.get(OkHttpChannelBuilder.SHARED_EXECUTOR);
            } else {
                this.executor = executor;
            }
        }

        @Override // io.grpc.internal.ClientTransportFactory
        public ConnectionClientTransport newClientTransport(SocketAddress socketAddress, ClientTransportFactory.ClientTransportOptions clientTransportOptions, ChannelLogger channelLogger) {
            if (this.closed) {
                throw new IllegalStateException("The transport factory is closed.");
            }
            final AtomicBackoff.State state = this.keepAliveTimeNanos.getState();
            OkHttpClientTransport okHttpClientTransport = new OkHttpClientTransport((InetSocketAddress) socketAddress, clientTransportOptions.getAuthority(), clientTransportOptions.getUserAgent(), clientTransportOptions.getEagAttributes(), this.executor, this.socketFactory, this.sslSocketFactory, this.hostnameVerifier, this.connectionSpec, this.maxMessageSize, this.flowControlWindow, clientTransportOptions.getHttpConnectProxiedSocketAddress(), new Runnable(this) { // from class: io.grpc.okhttp.OkHttpChannelBuilder.OkHttpTransportFactory.1
                @Override // java.lang.Runnable
                public void run() {
                    state.backoff();
                }
            }, this.maxInboundMetadataSize, this.transportTracerFactory.create(), this.useGetForSafeMethods);
            if (this.enableKeepAlive) {
                okHttpClientTransport.enableKeepAlive(true, state.get(), this.keepAliveTimeoutNanos, this.keepAliveWithoutCalls);
            }
            return okHttpClientTransport;
        }

        @Override // io.grpc.internal.ClientTransportFactory
        public ScheduledExecutorService getScheduledExecutorService() {
            return this.timeoutService;
        }

        @Override // io.grpc.internal.ClientTransportFactory, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            if (this.closed) {
                return;
            }
            this.closed = true;
            if (this.usingSharedScheduler) {
                SharedResourceHolder.release(GrpcUtil.TIMER_SERVICE, this.timeoutService);
            }
            if (this.usingSharedExecutor) {
                SharedResourceHolder.release(OkHttpChannelBuilder.SHARED_EXECUTOR, this.executor);
            }
        }
    }
}
