package com.iMe.storage.data.network.model.response.crypto.wallet;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: CryptoWalletsInfoResponse.kt */
/* loaded from: classes4.dex */
public final class RemoteWalletInfoResponse {
    private final String address;
    private final String platform;

    public static /* synthetic */ RemoteWalletInfoResponse copy$default(RemoteWalletInfoResponse remoteWalletInfoResponse, String str, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            str = remoteWalletInfoResponse.address;
        }
        if ((i & 2) != 0) {
            str2 = remoteWalletInfoResponse.platform;
        }
        return remoteWalletInfoResponse.copy(str, str2);
    }

    public final String component1() {
        return this.address;
    }

    public final String component2() {
        return this.platform;
    }

    public final RemoteWalletInfoResponse copy(String address, String platform) {
        Intrinsics.checkNotNullParameter(address, "address");
        Intrinsics.checkNotNullParameter(platform, "platform");
        return new RemoteWalletInfoResponse(address, platform);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof RemoteWalletInfoResponse) {
            RemoteWalletInfoResponse remoteWalletInfoResponse = (RemoteWalletInfoResponse) obj;
            return Intrinsics.areEqual(this.address, remoteWalletInfoResponse.address) && Intrinsics.areEqual(this.platform, remoteWalletInfoResponse.platform);
        }
        return false;
    }

    public int hashCode() {
        return (this.address.hashCode() * 31) + this.platform.hashCode();
    }

    public String toString() {
        return "RemoteWalletInfoResponse(address=" + this.address + ", platform=" + this.platform + ')';
    }

    public RemoteWalletInfoResponse(String address, String platform) {
        Intrinsics.checkNotNullParameter(address, "address");
        Intrinsics.checkNotNullParameter(platform, "platform");
        this.address = address;
        this.platform = platform;
    }

    public final String getAddress() {
        return this.address;
    }

    public final String getPlatform() {
        return this.platform;
    }
}
