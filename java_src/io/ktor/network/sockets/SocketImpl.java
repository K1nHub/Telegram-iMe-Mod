package io.ktor.network.sockets;

import io.ktor.network.selector.SelectInterest;
import io.ktor.network.selector.SelectorManager;
import io.ktor.network.sockets.SocketOptions;
import java.net.InetAddress;
import java.nio.channels.SocketChannel;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: SocketImpl.kt */
/* loaded from: classes4.dex */
public final class SocketImpl<S extends SocketChannel> extends NIOSocketImpl<S> implements Socket {
    private final S channel;

    @Override // io.ktor.network.sockets.NIOSocketImpl, io.ktor.network.selector.SelectableBase, io.ktor.network.selector.Selectable
    public S getChannel() {
        return this.channel;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SocketImpl(S channel, SelectorManager selector, SocketOptions.TCPClientSocketOptions tCPClientSocketOptions) {
        super(channel, selector, null, tCPClientSocketOptions);
        Intrinsics.checkNotNullParameter(channel, "channel");
        Intrinsics.checkNotNullParameter(selector, "selector");
        this.channel = channel;
        if (!(!getChannel().isBlocking())) {
            throw new IllegalArgumentException("Channel need to be configured as non-blocking.".toString());
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0039  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x008b A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0066 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object connect$ktor_network(java.net.SocketAddress r6, kotlin.coroutines.Continuation<? super io.ktor.network.sockets.Socket> r7) {
        /*
            r5 = this;
            boolean r0 = r7 instanceof io.ktor.network.sockets.SocketImpl$connect$1
            if (r0 == 0) goto L13
            r0 = r7
            io.ktor.network.sockets.SocketImpl$connect$1 r0 = (io.ktor.network.sockets.SocketImpl$connect$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            io.ktor.network.sockets.SocketImpl$connect$1 r0 = new io.ktor.network.sockets.SocketImpl$connect$1
            r0.<init>(r5, r7)
        L18:
            java.lang.Object r7 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L39
            if (r2 == r4) goto L31
            if (r2 != r3) goto L29
            goto L31
        L29:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L31:
            java.lang.Object r6 = r0.L$0
            io.ktor.network.sockets.SocketImpl r6 = (io.ktor.network.sockets.SocketImpl) r6
            kotlin.ResultKt.throwOnFailure(r7)
            goto L5c
        L39:
            kotlin.ResultKt.throwOnFailure(r7)
            java.nio.channels.SocketChannel r7 = r5.getChannel()
            boolean r6 = r7.connect(r6)
            if (r6 == 0) goto L47
            return r5
        L47:
            r5.wantConnect(r4)
            io.ktor.network.selector.SelectorManager r6 = r5.getSelector()
            io.ktor.network.selector.SelectInterest r7 = io.ktor.network.selector.SelectInterest.CONNECT
            r0.L$0 = r5
            r0.label = r4
            java.lang.Object r6 = r6.select(r5, r7, r0)
            if (r6 != r1) goto L5b
            return r1
        L5b:
            r6 = r5
        L5c:
            java.nio.channels.SocketChannel r7 = r6.getChannel()
            boolean r7 = r7.finishConnect()
            if (r7 == 0) goto L8b
            boolean r7 = r6.selfConnect()
            if (r7 == 0) goto L86
            boolean r7 = io.ktor.network.sockets.JavaSocketOptionsKt.getJava7NetworkApisAvailable()
            if (r7 == 0) goto L7a
            java.nio.channels.SocketChannel r7 = r6.getChannel()
            r7.close()
            goto L5c
        L7a:
            java.nio.channels.SocketChannel r7 = r6.getChannel()
            java.net.Socket r7 = r7.socket()
            r7.close()
            goto L5c
        L86:
            r7 = 0
            r6.wantConnect(r7)
            return r6
        L8b:
            r6.wantConnect(r4)
            io.ktor.network.selector.SelectorManager r7 = r6.getSelector()
            io.ktor.network.selector.SelectInterest r2 = io.ktor.network.selector.SelectInterest.CONNECT
            r0.L$0 = r6
            r0.label = r3
            java.lang.Object r7 = r7.select(r6, r2, r0)
            if (r7 != r1) goto L5c
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.network.sockets.SocketImpl.connect$ktor_network(java.net.SocketAddress, kotlin.coroutines.Continuation):java.lang.Object");
    }

    private final void wantConnect(boolean z) {
        interestOp(SelectInterest.CONNECT, z);
    }

    private final boolean selfConnect() {
        java.net.SocketAddress localSocketAddress;
        java.net.SocketAddress remoteSocketAddress;
        InetAddress address;
        InetAddress address2;
        InetAddress address3;
        if (JavaSocketOptionsKt.getJava7NetworkApisAvailable()) {
            localSocketAddress = getChannel().getLocalAddress();
        } else {
            localSocketAddress = getChannel().socket().getLocalSocketAddress();
        }
        if (JavaSocketOptionsKt.getJava7NetworkApisAvailable()) {
            remoteSocketAddress = getChannel().getRemoteAddress();
        } else {
            remoteSocketAddress = getChannel().socket().getRemoteSocketAddress();
        }
        if (localSocketAddress == null || remoteSocketAddress == null) {
            throw new IllegalStateException("localAddress and remoteAddress should not be null.");
        }
        java.net.InetSocketAddress inetSocketAddress = localSocketAddress instanceof java.net.InetSocketAddress ? (java.net.InetSocketAddress) localSocketAddress : null;
        java.net.InetSocketAddress inetSocketAddress2 = remoteSocketAddress instanceof java.net.InetSocketAddress ? (java.net.InetSocketAddress) remoteSocketAddress : null;
        String hostAddress = (inetSocketAddress == null || (address3 = inetSocketAddress.getAddress()) == null) ? null : address3.getHostAddress();
        if (hostAddress == null) {
            hostAddress = "";
        }
        String hostAddress2 = (inetSocketAddress2 == null || (address2 = inetSocketAddress2.getAddress()) == null) ? null : address2.getHostAddress();
        String str = hostAddress2 != null ? hostAddress2 : "";
        boolean isAnyLocalAddress = (inetSocketAddress2 == null || (address = inetSocketAddress2.getAddress()) == null) ? false : address.isAnyLocalAddress();
        if (Intrinsics.areEqual(inetSocketAddress != null ? Integer.valueOf(inetSocketAddress.getPort()) : null, inetSocketAddress2 != null ? Integer.valueOf(inetSocketAddress2.getPort()) : null)) {
            return isAnyLocalAddress || Intrinsics.areEqual(hostAddress, str);
        }
        return false;
    }
}
