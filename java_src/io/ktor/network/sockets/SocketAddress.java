package io.ktor.network.sockets;

import kotlin.jvm.internal.DefaultConstructorMarker;
/* compiled from: SocketAddressJvm.kt */
/* loaded from: classes4.dex */
public abstract class SocketAddress {
    public /* synthetic */ SocketAddress(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public abstract java.net.SocketAddress getAddress$ktor_network();

    private SocketAddress() {
    }
}
