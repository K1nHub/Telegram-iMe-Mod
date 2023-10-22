package io.ktor.network.sockets;

import java.nio.channels.SocketChannel;
import java.nio.channels.spi.SelectorProvider;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: ConnectUtilsJvm.kt */
/* loaded from: classes4.dex */
public final class ConnectUtilsJvmKt {
    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x003b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object connect(io.ktor.network.selector.SelectorManager r5, io.ktor.network.sockets.SocketAddress r6, io.ktor.network.sockets.SocketOptions.TCPClientSocketOptions r7, kotlin.coroutines.Continuation<? super io.ktor.network.sockets.Socket> r8) {
        /*
            boolean r0 = r8 instanceof io.ktor.network.sockets.ConnectUtilsJvmKt$connect$1
            if (r0 == 0) goto L13
            r0 = r8
            io.ktor.network.sockets.ConnectUtilsJvmKt$connect$1 r0 = (io.ktor.network.sockets.ConnectUtilsJvmKt$connect$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            io.ktor.network.sockets.ConnectUtilsJvmKt$connect$1 r0 = new io.ktor.network.sockets.ConnectUtilsJvmKt$connect$1
            r0.<init>(r8)
        L18:
            java.lang.Object r8 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L3b
            if (r2 != r3) goto L33
            java.lang.Object r5 = r0.L$1
            io.ktor.network.sockets.SocketImpl r5 = (io.ktor.network.sockets.SocketImpl) r5
            java.lang.Object r6 = r0.L$0
            java.io.Closeable r6 = (java.io.Closeable) r6
            kotlin.ResultKt.throwOnFailure(r8)     // Catch: java.lang.Throwable -> L31
            goto L6f
        L31:
            r5 = move-exception
            goto L72
        L33:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L3b:
            kotlin.ResultKt.throwOnFailure(r8)
            java.nio.channels.spi.SelectorProvider r8 = r5.getProvider()
            java.nio.channels.SocketChannel r8 = openSocketChannelFor(r8, r6)
            boolean r2 = r6 instanceof io.ktor.network.sockets.InetSocketAddress     // Catch: java.lang.Throwable -> L70
            java.lang.String r4 = "connect$lambda$2"
            if (r2 == 0) goto L52
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r8, r4)     // Catch: java.lang.Throwable -> L70
            io.ktor.network.sockets.JavaSocketOptionsKt.assignOptions(r8, r7)     // Catch: java.lang.Throwable -> L70
        L52:
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r8, r4)     // Catch: java.lang.Throwable -> L70
            io.ktor.network.sockets.JavaSocketOptionsKt.nonBlocking(r8)     // Catch: java.lang.Throwable -> L70
            io.ktor.network.sockets.SocketImpl r2 = new io.ktor.network.sockets.SocketImpl     // Catch: java.lang.Throwable -> L70
            r2.<init>(r8, r5, r7)     // Catch: java.lang.Throwable -> L70
            java.net.SocketAddress r5 = io.ktor.network.sockets.JavaSocketAddressUtilsKt.toJavaAddress(r6)     // Catch: java.lang.Throwable -> L70
            r0.L$0 = r8     // Catch: java.lang.Throwable -> L70
            r0.L$1 = r2     // Catch: java.lang.Throwable -> L70
            r0.label = r3     // Catch: java.lang.Throwable -> L70
            java.lang.Object r5 = r2.connect$ktor_network(r5, r0)     // Catch: java.lang.Throwable -> L70
            if (r5 != r1) goto L6e
            return r1
        L6e:
            r5 = r2
        L6f:
            return r5
        L70:
            r5 = move-exception
            r6 = r8
        L72:
            r6.close()
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.network.sockets.ConnectUtilsJvmKt.connect(io.ktor.network.selector.SelectorManager, io.ktor.network.sockets.SocketAddress, io.ktor.network.sockets.SocketOptions$TCPClientSocketOptions, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public static final SocketChannel openSocketChannelFor(SelectorProvider selectorProvider, SocketAddress address) {
        Intrinsics.checkNotNullParameter(selectorProvider, "<this>");
        Intrinsics.checkNotNullParameter(address, "address");
        if (address instanceof InetSocketAddress) {
            return selectorProvider.openSocketChannel();
        }
        throw new NoWhenBranchMatchedException();
    }
}
