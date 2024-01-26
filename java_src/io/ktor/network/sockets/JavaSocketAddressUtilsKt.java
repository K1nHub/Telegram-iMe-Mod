package io.ktor.network.sockets;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: JavaSocketAddressUtils.kt */
/* loaded from: classes4.dex */
public final class JavaSocketAddressUtilsKt {
    public static final java.net.SocketAddress toJavaAddress(SocketAddress socketAddress) {
        Intrinsics.checkNotNullParameter(socketAddress, "<this>");
        return socketAddress.getAddress$ktor_network();
    }
}
