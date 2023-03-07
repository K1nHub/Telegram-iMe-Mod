package com.smedialink.storage.data.network.model.response.crypto.donations;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: GetChatInfoResponse.kt */
/* loaded from: classes3.dex */
public final class GetChatInfoResponse {
    private final String donationEtherWalletAddress;

    public static /* synthetic */ GetChatInfoResponse copy$default(GetChatInfoResponse getChatInfoResponse, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = getChatInfoResponse.donationEtherWalletAddress;
        }
        return getChatInfoResponse.copy(str);
    }

    public final String component1() {
        return this.donationEtherWalletAddress;
    }

    public final GetChatInfoResponse copy(String donationEtherWalletAddress) {
        Intrinsics.checkNotNullParameter(donationEtherWalletAddress, "donationEtherWalletAddress");
        return new GetChatInfoResponse(donationEtherWalletAddress);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof GetChatInfoResponse) && Intrinsics.areEqual(this.donationEtherWalletAddress, ((GetChatInfoResponse) obj).donationEtherWalletAddress);
    }

    public int hashCode() {
        return this.donationEtherWalletAddress.hashCode();
    }

    public String toString() {
        return "GetChatInfoResponse(donationEtherWalletAddress=" + this.donationEtherWalletAddress + ')';
    }

    public GetChatInfoResponse(String donationEtherWalletAddress) {
        Intrinsics.checkNotNullParameter(donationEtherWalletAddress, "donationEtherWalletAddress");
        this.donationEtherWalletAddress = donationEtherWalletAddress;
    }

    public final String getDonationEtherWalletAddress() {
        return this.donationEtherWalletAddress;
    }
}
