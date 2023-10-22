package io.ktor.network.sockets;

import java.util.HashMap;
import java.util.Map;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: SocketOptions.kt */
/* loaded from: classes4.dex */
public abstract class SocketOptions {
    public static final Companion Companion = new Companion(null);
    private final Map<Object, Object> customOptions;
    private boolean reuseAddress;
    private boolean reusePort;
    private byte typeOfService;

    public /* synthetic */ SocketOptions(Map map, DefaultConstructorMarker defaultConstructorMarker) {
        this(map);
    }

    public abstract SocketOptions copy$ktor_network();

    private SocketOptions(Map<Object, Object> map) {
        this.customOptions = map;
        this.typeOfService = TypeOfService.Companion.m1902getUNDEFINEDzieKYfw();
    }

    protected final Map<Object, Object> getCustomOptions() {
        return this.customOptions;
    }

    protected void copyCommon(SocketOptions from) {
        Intrinsics.checkNotNullParameter(from, "from");
        this.typeOfService = from.typeOfService;
        this.reuseAddress = from.reuseAddress;
        this.reusePort = from.reusePort;
    }

    public final PeerSocketOptions peer$ktor_network() {
        PeerSocketOptions peerSocketOptions = new PeerSocketOptions(new HashMap(this.customOptions));
        copyCommon(this);
        return peerSocketOptions;
    }

    /* compiled from: SocketOptions.kt */
    /* loaded from: classes4.dex */
    private static final class GeneralSocketOptions extends SocketOptions {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public GeneralSocketOptions(Map<Object, Object> customOptions) {
            super(customOptions, null);
            Intrinsics.checkNotNullParameter(customOptions, "customOptions");
        }

        @Override // io.ktor.network.sockets.SocketOptions
        public GeneralSocketOptions copy$ktor_network() {
            GeneralSocketOptions generalSocketOptions = new GeneralSocketOptions(new HashMap(getCustomOptions()));
            generalSocketOptions.copyCommon(this);
            return generalSocketOptions;
        }
    }

    /* renamed from: getTypeOfService-zieKYfw  reason: not valid java name */
    public final byte m1899getTypeOfServicezieKYfw() {
        return this.typeOfService;
    }

    public final boolean getReuseAddress() {
        return this.reuseAddress;
    }

    public final boolean getReusePort() {
        return this.reusePort;
    }

    /* compiled from: SocketOptions.kt */
    /* loaded from: classes4.dex */
    public static class PeerSocketOptions extends SocketOptions {
        private int receiveBufferSize;
        private int sendBufferSize;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public PeerSocketOptions(Map<Object, Object> customOptions) {
            super(customOptions, null);
            Intrinsics.checkNotNullParameter(customOptions, "customOptions");
            this.sendBufferSize = -1;
            this.receiveBufferSize = -1;
        }

        public final int getSendBufferSize() {
            return this.sendBufferSize;
        }

        public final int getReceiveBufferSize() {
            return this.receiveBufferSize;
        }

        @Override // io.ktor.network.sockets.SocketOptions
        protected void copyCommon(SocketOptions from) {
            Intrinsics.checkNotNullParameter(from, "from");
            super.copyCommon(from);
            if (from instanceof PeerSocketOptions) {
                PeerSocketOptions peerSocketOptions = (PeerSocketOptions) from;
                this.sendBufferSize = peerSocketOptions.sendBufferSize;
                this.receiveBufferSize = peerSocketOptions.receiveBufferSize;
            }
        }

        @Override // io.ktor.network.sockets.SocketOptions
        public PeerSocketOptions copy$ktor_network() {
            PeerSocketOptions peerSocketOptions = new PeerSocketOptions(new HashMap(getCustomOptions()));
            peerSocketOptions.copyCommon(this);
            return peerSocketOptions;
        }

        public final TCPClientSocketOptions tcp$ktor_network() {
            TCPClientSocketOptions tCPClientSocketOptions = new TCPClientSocketOptions(new HashMap(getCustomOptions()));
            copyCommon(this);
            return tCPClientSocketOptions;
        }
    }

    /* compiled from: SocketOptions.kt */
    /* loaded from: classes4.dex */
    public static final class UDPSocketOptions extends PeerSocketOptions {
        private boolean broadcast;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public UDPSocketOptions(Map<Object, Object> customOptions) {
            super(customOptions);
            Intrinsics.checkNotNullParameter(customOptions, "customOptions");
        }

        public final boolean getBroadcast() {
            return this.broadcast;
        }

        @Override // io.ktor.network.sockets.SocketOptions.PeerSocketOptions, io.ktor.network.sockets.SocketOptions
        protected void copyCommon(SocketOptions from) {
            Intrinsics.checkNotNullParameter(from, "from");
            super.copyCommon(from);
            if (from instanceof UDPSocketOptions) {
                this.broadcast = ((UDPSocketOptions) from).broadcast;
            }
        }

        @Override // io.ktor.network.sockets.SocketOptions.PeerSocketOptions, io.ktor.network.sockets.SocketOptions
        public UDPSocketOptions copy$ktor_network() {
            UDPSocketOptions uDPSocketOptions = new UDPSocketOptions(new HashMap(getCustomOptions()));
            uDPSocketOptions.copyCommon(this);
            return uDPSocketOptions;
        }
    }

    /* compiled from: SocketOptions.kt */
    /* loaded from: classes4.dex */
    public static final class TCPClientSocketOptions extends PeerSocketOptions {
        private Boolean keepAlive;
        private int lingerSeconds;
        private boolean noDelay;
        private long socketTimeout;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public TCPClientSocketOptions(Map<Object, Object> customOptions) {
            super(customOptions);
            Intrinsics.checkNotNullParameter(customOptions, "customOptions");
            this.noDelay = true;
            this.lingerSeconds = -1;
            this.socketTimeout = Long.MAX_VALUE;
        }

        public final boolean getNoDelay() {
            return this.noDelay;
        }

        public final void setNoDelay(boolean z) {
            this.noDelay = z;
        }

        public final int getLingerSeconds() {
            return this.lingerSeconds;
        }

        public final Boolean getKeepAlive() {
            return this.keepAlive;
        }

        public final long getSocketTimeout() {
            return this.socketTimeout;
        }

        @Override // io.ktor.network.sockets.SocketOptions.PeerSocketOptions, io.ktor.network.sockets.SocketOptions
        protected void copyCommon(SocketOptions from) {
            Intrinsics.checkNotNullParameter(from, "from");
            super.copyCommon(from);
            if (from instanceof TCPClientSocketOptions) {
                TCPClientSocketOptions tCPClientSocketOptions = (TCPClientSocketOptions) from;
                this.noDelay = tCPClientSocketOptions.noDelay;
                this.lingerSeconds = tCPClientSocketOptions.lingerSeconds;
                this.keepAlive = tCPClientSocketOptions.keepAlive;
            }
        }

        @Override // io.ktor.network.sockets.SocketOptions.PeerSocketOptions, io.ktor.network.sockets.SocketOptions
        public TCPClientSocketOptions copy$ktor_network() {
            TCPClientSocketOptions tCPClientSocketOptions = new TCPClientSocketOptions(new HashMap(getCustomOptions()));
            tCPClientSocketOptions.copyCommon(this);
            return tCPClientSocketOptions;
        }
    }

    /* compiled from: SocketOptions.kt */
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final SocketOptions create$ktor_network() {
            return new GeneralSocketOptions(new HashMap());
        }
    }
}
