package com.iMe.storage.data.network.model.response.crypto.donations;

import com.iMe.storage.data.network.model.response.crypto.wallet.RemoteWalletInfoResponse;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: GetDonationWalletInfoResponse.kt */
/* loaded from: classes3.dex */
public final class GetDonationWalletInfoResponse {
    private final String chatId;
    private final List<RemoteWalletInfoResponse> wallets;

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ GetDonationWalletInfoResponse copy$default(GetDonationWalletInfoResponse getDonationWalletInfoResponse, List list, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            list = getDonationWalletInfoResponse.wallets;
        }
        if ((i & 2) != 0) {
            str = getDonationWalletInfoResponse.chatId;
        }
        return getDonationWalletInfoResponse.copy(list, str);
    }

    public final List<RemoteWalletInfoResponse> component1() {
        return this.wallets;
    }

    public final String component2() {
        return this.chatId;
    }

    public final GetDonationWalletInfoResponse copy(List<RemoteWalletInfoResponse> wallets, String chatId) {
        Intrinsics.checkNotNullParameter(wallets, "wallets");
        Intrinsics.checkNotNullParameter(chatId, "chatId");
        return new GetDonationWalletInfoResponse(wallets, chatId);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof GetDonationWalletInfoResponse) {
            GetDonationWalletInfoResponse getDonationWalletInfoResponse = (GetDonationWalletInfoResponse) obj;
            return Intrinsics.areEqual(this.wallets, getDonationWalletInfoResponse.wallets) && Intrinsics.areEqual(this.chatId, getDonationWalletInfoResponse.chatId);
        }
        return false;
    }

    public int hashCode() {
        return (this.wallets.hashCode() * 31) + this.chatId.hashCode();
    }

    public String toString() {
        return "GetDonationWalletInfoResponse(wallets=" + this.wallets + ", chatId=" + this.chatId + ')';
    }

    public GetDonationWalletInfoResponse(List<RemoteWalletInfoResponse> wallets, String chatId) {
        Intrinsics.checkNotNullParameter(wallets, "wallets");
        Intrinsics.checkNotNullParameter(chatId, "chatId");
        this.wallets = wallets;
        this.chatId = chatId;
    }

    public final List<RemoteWalletInfoResponse> getWallets() {
        return this.wallets;
    }

    public final String getChatId() {
        return this.chatId;
    }
}
