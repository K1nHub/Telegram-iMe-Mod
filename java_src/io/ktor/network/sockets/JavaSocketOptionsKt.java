package io.ktor.network.sockets;

import io.ktor.network.sockets.SocketOptions;
import java.net.SocketOption;
import java.net.StandardSocketOptions;
import java.nio.channels.DatagramChannel;
import java.nio.channels.SelectableChannel;
import java.nio.channels.ServerSocketChannel;
import java.nio.channels.SocketChannel;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: JavaSocketOptions.kt */
/* loaded from: classes4.dex */
public final class JavaSocketOptionsKt {
    private static final boolean java7NetworkApisAvailable;

    public static final boolean getJava7NetworkApisAvailable() {
        return java7NetworkApisAvailable;
    }

    static {
        boolean z;
        try {
            Class.forName("java.net.StandardSocketOptions");
            z = true;
        } catch (ClassNotFoundException unused) {
            z = false;
        }
        java7NetworkApisAvailable = z;
    }

    public static final void nonBlocking(SelectableChannel selectableChannel) {
        Intrinsics.checkNotNullParameter(selectableChannel, "<this>");
        selectableChannel.configureBlocking(false);
    }

    public static final void assignOptions(SelectableChannel selectableChannel, SocketOptions options) {
        Intrinsics.checkNotNullParameter(selectableChannel, "<this>");
        Intrinsics.checkNotNullParameter(options, "options");
        if (selectableChannel instanceof SocketChannel) {
            if (!TypeOfService.m1908equalsimpl0(options.m1906getTypeOfServicezieKYfw(), TypeOfService.Companion.m1909getUNDEFINEDzieKYfw())) {
                if (java7NetworkApisAvailable) {
                    ((SocketChannel) selectableChannel).setOption((SocketOption<SocketOption>) StandardSocketOptions.IP_TOS, (SocketOption) Integer.valueOf(options.m1906getTypeOfServicezieKYfw() & 255));
                } else {
                    ((SocketChannel) selectableChannel).socket().setTrafficClass(options.m1906getTypeOfServicezieKYfw() & 255);
                }
            }
            if (options.getReuseAddress()) {
                if (java7NetworkApisAvailable) {
                    ((SocketChannel) selectableChannel).setOption((SocketOption<SocketOption>) StandardSocketOptions.SO_REUSEADDR, (SocketOption) Boolean.TRUE);
                } else {
                    ((SocketChannel) selectableChannel).socket().setReuseAddress(true);
                }
            }
            if (options.getReusePort()) {
                SocketOptionsPlatformCapabilities.INSTANCE.setReusePort((SocketChannel) selectableChannel);
            }
            if (options instanceof SocketOptions.PeerSocketOptions) {
                SocketOptions.PeerSocketOptions peerSocketOptions = (SocketOptions.PeerSocketOptions) options;
                Integer valueOf = Integer.valueOf(peerSocketOptions.getReceiveBufferSize());
                if (!(valueOf.intValue() > 0)) {
                    valueOf = null;
                }
                if (valueOf != null) {
                    int intValue = valueOf.intValue();
                    if (java7NetworkApisAvailable) {
                        ((SocketChannel) selectableChannel).setOption((SocketOption<SocketOption>) StandardSocketOptions.SO_RCVBUF, (SocketOption) Integer.valueOf(intValue));
                    } else {
                        ((SocketChannel) selectableChannel).socket().setReceiveBufferSize(intValue);
                    }
                }
                Integer valueOf2 = Integer.valueOf(peerSocketOptions.getSendBufferSize());
                if (!(valueOf2.intValue() > 0)) {
                    valueOf2 = null;
                }
                if (valueOf2 != null) {
                    int intValue2 = valueOf2.intValue();
                    if (java7NetworkApisAvailable) {
                        ((SocketChannel) selectableChannel).setOption((SocketOption<SocketOption>) StandardSocketOptions.SO_SNDBUF, (SocketOption) Integer.valueOf(intValue2));
                    } else {
                        ((SocketChannel) selectableChannel).socket().setSendBufferSize(intValue2);
                    }
                }
            }
            if (options instanceof SocketOptions.TCPClientSocketOptions) {
                SocketOptions.TCPClientSocketOptions tCPClientSocketOptions = (SocketOptions.TCPClientSocketOptions) options;
                Integer valueOf3 = Integer.valueOf(tCPClientSocketOptions.getLingerSeconds());
                if (!(valueOf3.intValue() >= 0)) {
                    valueOf3 = null;
                }
                if (valueOf3 != null) {
                    int intValue3 = valueOf3.intValue();
                    if (java7NetworkApisAvailable) {
                        ((SocketChannel) selectableChannel).setOption((SocketOption<SocketOption>) StandardSocketOptions.SO_LINGER, (SocketOption) Integer.valueOf(intValue3));
                    } else {
                        ((SocketChannel) selectableChannel).socket().setSoLinger(true, intValue3);
                    }
                }
                Boolean keepAlive = tCPClientSocketOptions.getKeepAlive();
                if (keepAlive != null) {
                    boolean booleanValue = keepAlive.booleanValue();
                    if (java7NetworkApisAvailable) {
                        ((SocketChannel) selectableChannel).setOption((SocketOption<SocketOption>) StandardSocketOptions.SO_KEEPALIVE, (SocketOption) Boolean.valueOf(booleanValue));
                    } else {
                        ((SocketChannel) selectableChannel).socket().setKeepAlive(booleanValue);
                    }
                }
                if (java7NetworkApisAvailable) {
                    ((SocketChannel) selectableChannel).setOption((SocketOption<SocketOption>) StandardSocketOptions.TCP_NODELAY, (SocketOption) Boolean.valueOf(tCPClientSocketOptions.getNoDelay()));
                } else {
                    ((SocketChannel) selectableChannel).socket().setTcpNoDelay(tCPClientSocketOptions.getNoDelay());
                }
            }
        }
        if (selectableChannel instanceof ServerSocketChannel) {
            if (options.getReuseAddress()) {
                if (java7NetworkApisAvailable) {
                    ((ServerSocketChannel) selectableChannel).setOption((SocketOption<SocketOption>) StandardSocketOptions.SO_REUSEADDR, (SocketOption) Boolean.TRUE);
                } else {
                    ((ServerSocketChannel) selectableChannel).socket().setReuseAddress(true);
                }
            }
            if (options.getReusePort()) {
                SocketOptionsPlatformCapabilities.INSTANCE.setReusePort((ServerSocketChannel) selectableChannel);
            }
        }
        if (selectableChannel instanceof DatagramChannel) {
            if (!TypeOfService.m1908equalsimpl0(options.m1906getTypeOfServicezieKYfw(), TypeOfService.Companion.m1909getUNDEFINEDzieKYfw())) {
                if (java7NetworkApisAvailable) {
                    ((DatagramChannel) selectableChannel).setOption((SocketOption<SocketOption>) StandardSocketOptions.IP_TOS, (SocketOption) Integer.valueOf(options.m1906getTypeOfServicezieKYfw() & 255));
                } else {
                    ((DatagramChannel) selectableChannel).socket().setTrafficClass(options.m1906getTypeOfServicezieKYfw() & 255);
                }
            }
            if (options.getReuseAddress()) {
                if (java7NetworkApisAvailable) {
                    ((DatagramChannel) selectableChannel).setOption((SocketOption<SocketOption>) StandardSocketOptions.SO_REUSEADDR, (SocketOption) Boolean.TRUE);
                } else {
                    ((DatagramChannel) selectableChannel).socket().setReuseAddress(true);
                }
            }
            if (options.getReusePort()) {
                SocketOptionsPlatformCapabilities.INSTANCE.setReusePort((DatagramChannel) selectableChannel);
            }
            if (options instanceof SocketOptions.UDPSocketOptions) {
                if (java7NetworkApisAvailable) {
                    ((DatagramChannel) selectableChannel).setOption((SocketOption<SocketOption>) StandardSocketOptions.SO_BROADCAST, (SocketOption) Boolean.valueOf(((SocketOptions.UDPSocketOptions) options).getBroadcast()));
                } else {
                    ((DatagramChannel) selectableChannel).socket().setBroadcast(((SocketOptions.UDPSocketOptions) options).getBroadcast());
                }
            }
            if (options instanceof SocketOptions.PeerSocketOptions) {
                SocketOptions.PeerSocketOptions peerSocketOptions2 = (SocketOptions.PeerSocketOptions) options;
                Integer valueOf4 = Integer.valueOf(peerSocketOptions2.getReceiveBufferSize());
                if (!(valueOf4.intValue() > 0)) {
                    valueOf4 = null;
                }
                if (valueOf4 != null) {
                    int intValue4 = valueOf4.intValue();
                    if (java7NetworkApisAvailable) {
                        ((DatagramChannel) selectableChannel).setOption((SocketOption<SocketOption>) StandardSocketOptions.SO_RCVBUF, (SocketOption) Integer.valueOf(intValue4));
                    } else {
                        ((DatagramChannel) selectableChannel).socket().setReceiveBufferSize(intValue4);
                    }
                }
                Integer valueOf5 = Integer.valueOf(peerSocketOptions2.getSendBufferSize());
                Integer num = valueOf5.intValue() > 0 ? valueOf5 : null;
                if (num != null) {
                    int intValue5 = num.intValue();
                    if (java7NetworkApisAvailable) {
                        ((DatagramChannel) selectableChannel).setOption((SocketOption<SocketOption>) StandardSocketOptions.SO_SNDBUF, (SocketOption) Integer.valueOf(intValue5));
                    } else {
                        ((DatagramChannel) selectableChannel).socket().setSendBufferSize(intValue5);
                    }
                }
            }
        }
    }
}
