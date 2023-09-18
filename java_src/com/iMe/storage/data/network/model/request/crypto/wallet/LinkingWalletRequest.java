package com.iMe.storage.data.network.model.request.crypto.wallet;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: LinkWalletsRequest.kt */
/* loaded from: classes4.dex */
public final class LinkingWalletRequest {
    private final String platform;
    private final String walletPublicKey;

    public static /* synthetic */ LinkingWalletRequest copy$default(LinkingWalletRequest linkingWalletRequest, String str, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            str = linkingWalletRequest.platform;
        }
        if ((i & 2) != 0) {
            str2 = linkingWalletRequest.walletPublicKey;
        }
        return linkingWalletRequest.copy(str, str2);
    }

    public final String component1() {
        return this.platform;
    }

    public final String component2() {
        return this.walletPublicKey;
    }

    public final LinkingWalletRequest copy(String platform, String walletPublicKey) {
        Intrinsics.checkNotNullParameter(platform, "platform");
        Intrinsics.checkNotNullParameter(walletPublicKey, "walletPublicKey");
        return new LinkingWalletRequest(platform, walletPublicKey);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof LinkingWalletRequest) {
            LinkingWalletRequest linkingWalletRequest = (LinkingWalletRequest) obj;
            return Intrinsics.areEqual(this.platform, linkingWalletRequest.platform) && Intrinsics.areEqual(this.walletPublicKey, linkingWalletRequest.walletPublicKey);
        }
        return false;
    }

    public int hashCode() {
        return (this.platform.hashCode() * 31) + this.walletPublicKey.hashCode();
    }

    public String toString() {
        return "LinkingWalletRequest(platform=" + this.platform + ", walletPublicKey=" + this.walletPublicKey + ')';
    }

    public LinkingWalletRequest(String platform, String walletPublicKey) {
        Intrinsics.checkNotNullParameter(platform, "platform");
        Intrinsics.checkNotNullParameter(walletPublicKey, "walletPublicKey");
        this.platform = platform;
        this.walletPublicKey = walletPublicKey;
    }

    public final String getPlatform() {
        return this.platform;
    }

    public final String getWalletPublicKey() {
        return this.walletPublicKey;
    }
}
