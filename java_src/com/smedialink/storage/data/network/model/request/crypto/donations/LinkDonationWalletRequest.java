package com.smedialink.storage.data.network.model.request.crypto.donations;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: LinkDonationWalletRequest.kt */
/* loaded from: classes3.dex */
public final class LinkDonationWalletRequest {
    private final String chatId;
    private final String etherWalletAddress;
    private final boolean isPersonalWallet;

    public static /* synthetic */ LinkDonationWalletRequest copy$default(LinkDonationWalletRequest linkDonationWalletRequest, String str, boolean z, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            str = linkDonationWalletRequest.chatId;
        }
        if ((i & 2) != 0) {
            z = linkDonationWalletRequest.isPersonalWallet;
        }
        if ((i & 4) != 0) {
            str2 = linkDonationWalletRequest.etherWalletAddress;
        }
        return linkDonationWalletRequest.copy(str, z, str2);
    }

    public final String component1() {
        return this.chatId;
    }

    public final boolean component2() {
        return this.isPersonalWallet;
    }

    public final String component3() {
        return this.etherWalletAddress;
    }

    public final LinkDonationWalletRequest copy(String chatId, boolean z, String etherWalletAddress) {
        Intrinsics.checkNotNullParameter(chatId, "chatId");
        Intrinsics.checkNotNullParameter(etherWalletAddress, "etherWalletAddress");
        return new LinkDonationWalletRequest(chatId, z, etherWalletAddress);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof LinkDonationWalletRequest) {
            LinkDonationWalletRequest linkDonationWalletRequest = (LinkDonationWalletRequest) obj;
            return Intrinsics.areEqual(this.chatId, linkDonationWalletRequest.chatId) && this.isPersonalWallet == linkDonationWalletRequest.isPersonalWallet && Intrinsics.areEqual(this.etherWalletAddress, linkDonationWalletRequest.etherWalletAddress);
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int hashCode = this.chatId.hashCode() * 31;
        boolean z = this.isPersonalWallet;
        int i = z;
        if (z != 0) {
            i = 1;
        }
        return ((hashCode + i) * 31) + this.etherWalletAddress.hashCode();
    }

    public String toString() {
        return "LinkDonationWalletRequest(chatId=" + this.chatId + ", isPersonalWallet=" + this.isPersonalWallet + ", etherWalletAddress=" + this.etherWalletAddress + ')';
    }

    public LinkDonationWalletRequest(String chatId, boolean z, String etherWalletAddress) {
        Intrinsics.checkNotNullParameter(chatId, "chatId");
        Intrinsics.checkNotNullParameter(etherWalletAddress, "etherWalletAddress");
        this.chatId = chatId;
        this.isPersonalWallet = z;
        this.etherWalletAddress = etherWalletAddress;
    }

    public final String getChatId() {
        return this.chatId;
    }

    public final boolean isPersonalWallet() {
        return this.isPersonalWallet;
    }

    public final String getEtherWalletAddress() {
        return this.etherWalletAddress;
    }
}
