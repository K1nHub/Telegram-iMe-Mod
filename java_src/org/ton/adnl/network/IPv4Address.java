package org.ton.adnl.network;

import org.ton.adnl.UtilsKt;
/* compiled from: IPAddress.kt */
/* loaded from: classes6.dex */
public final class IPv4Address implements IPAddress {
    private final int address;
    private final int port;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof IPv4Address) {
            IPv4Address iPv4Address = (IPv4Address) obj;
            return this.address == iPv4Address.address && this.port == iPv4Address.port;
        }
        return false;
    }

    public int hashCode() {
        return (this.address * 31) + this.port;
    }

    public IPv4Address(int i, int i2) {
        this.address = i;
        this.port = i2;
        int port = getPort();
        boolean z = false;
        if (port >= 0 && port < 65536) {
            z = true;
        }
        if (z) {
            return;
        }
        throw new IllegalArgumentException(("Invalid port: " + getPort()).toString());
    }

    @Override // org.ton.adnl.network.IPAddress
    public int getPort() {
        return this.port;
    }

    @Override // org.ton.adnl.network.IPAddress
    public String getHost() {
        return UtilsKt.ipv4(this.address);
    }

    public String toString() {
        return getHost() + ':' + getPort();
    }
}
