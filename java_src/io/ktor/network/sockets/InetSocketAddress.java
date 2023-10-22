package io.ktor.network.sockets;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: SocketAddressJvm.kt */
/* loaded from: classes4.dex */
public final class InetSocketAddress extends SocketAddress {
    private final java.net.InetSocketAddress address;

    @Override // io.ktor.network.sockets.SocketAddress
    public java.net.InetSocketAddress getAddress$ktor_network() {
        return this.address;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public InetSocketAddress(java.net.InetSocketAddress address) {
        super(null);
        Intrinsics.checkNotNullParameter(address, "address");
        this.address = address;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public InetSocketAddress(String hostname, int i) {
        this(new java.net.InetSocketAddress(hostname, i));
        Intrinsics.checkNotNullParameter(hostname, "hostname");
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (Intrinsics.areEqual(InetSocketAddress.class, obj != null ? obj.getClass() : null)) {
            Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type io.ktor.network.sockets.InetSocketAddress");
            return Intrinsics.areEqual(getAddress$ktor_network(), ((InetSocketAddress) obj).getAddress$ktor_network());
        }
        return false;
    }

    public int hashCode() {
        return getAddress$ktor_network().hashCode();
    }

    public String toString() {
        String inetSocketAddress = getAddress$ktor_network().toString();
        Intrinsics.checkNotNullExpressionValue(inetSocketAddress, "address.toString()");
        return inetSocketAddress;
    }
}
