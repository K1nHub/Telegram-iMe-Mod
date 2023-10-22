package com.iMe.storage.data.network.model.request.crypto.wallet;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: UnlinkWalletAddressRequest.kt */
/* loaded from: classes3.dex */
public final class UnlinkWalletAddressRequest {
    private final String platform;

    public static /* synthetic */ UnlinkWalletAddressRequest copy$default(UnlinkWalletAddressRequest unlinkWalletAddressRequest, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = unlinkWalletAddressRequest.platform;
        }
        return unlinkWalletAddressRequest.copy(str);
    }

    public final String component1() {
        return this.platform;
    }

    public final UnlinkWalletAddressRequest copy(String platform) {
        Intrinsics.checkNotNullParameter(platform, "platform");
        return new UnlinkWalletAddressRequest(platform);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof UnlinkWalletAddressRequest) && Intrinsics.areEqual(this.platform, ((UnlinkWalletAddressRequest) obj).platform);
    }

    public int hashCode() {
        return this.platform.hashCode();
    }

    public String toString() {
        return "UnlinkWalletAddressRequest(platform=" + this.platform + ')';
    }

    public UnlinkWalletAddressRequest(String platform) {
        Intrinsics.checkNotNullParameter(platform, "platform");
        this.platform = platform;
    }

    public final String getPlatform() {
        return this.platform;
    }
}
