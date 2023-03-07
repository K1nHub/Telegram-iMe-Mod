package com.smedialink.storage.data.network.model.request.crypto.donations;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: UnlinkDonationWalletRequest.kt */
/* loaded from: classes3.dex */
public final class UnlinkDonationWalletRequest {
    private final String chatId;

    public static /* synthetic */ UnlinkDonationWalletRequest copy$default(UnlinkDonationWalletRequest unlinkDonationWalletRequest, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = unlinkDonationWalletRequest.chatId;
        }
        return unlinkDonationWalletRequest.copy(str);
    }

    public final String component1() {
        return this.chatId;
    }

    public final UnlinkDonationWalletRequest copy(String chatId) {
        Intrinsics.checkNotNullParameter(chatId, "chatId");
        return new UnlinkDonationWalletRequest(chatId);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof UnlinkDonationWalletRequest) && Intrinsics.areEqual(this.chatId, ((UnlinkDonationWalletRequest) obj).chatId);
    }

    public int hashCode() {
        return this.chatId.hashCode();
    }

    public String toString() {
        return "UnlinkDonationWalletRequest(chatId=" + this.chatId + ')';
    }

    public UnlinkDonationWalletRequest(String chatId) {
        Intrinsics.checkNotNullParameter(chatId, "chatId");
        this.chatId = chatId;
    }

    public final String getChatId() {
        return this.chatId;
    }
}
