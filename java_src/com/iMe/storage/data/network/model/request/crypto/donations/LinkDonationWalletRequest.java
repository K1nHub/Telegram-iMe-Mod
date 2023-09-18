package com.iMe.storage.data.network.model.request.crypto.donations;

import com.iMe.storage.domain.model.crypto.BlockchainType;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: LinkDonationWalletRequest.kt */
/* loaded from: classes4.dex */
public final class LinkDonationWalletRequest {
    private final String chatId;
    private final boolean isPersonalWallet;
    private final String platform;
    private final String walletAddress;

    public static /* synthetic */ LinkDonationWalletRequest copy$default(LinkDonationWalletRequest linkDonationWalletRequest, String str, boolean z, String str2, String str3, int i, Object obj) {
        if ((i & 1) != 0) {
            str = linkDonationWalletRequest.chatId;
        }
        if ((i & 2) != 0) {
            z = linkDonationWalletRequest.isPersonalWallet;
        }
        if ((i & 4) != 0) {
            str2 = linkDonationWalletRequest.walletAddress;
        }
        if ((i & 8) != 0) {
            str3 = linkDonationWalletRequest.platform;
        }
        return linkDonationWalletRequest.copy(str, z, str2, str3);
    }

    public final String component1() {
        return this.chatId;
    }

    public final boolean component2() {
        return this.isPersonalWallet;
    }

    public final String component3() {
        return this.walletAddress;
    }

    public final String component4() {
        return this.platform;
    }

    public final LinkDonationWalletRequest copy(String chatId, boolean z, String walletAddress, String platform) {
        Intrinsics.checkNotNullParameter(chatId, "chatId");
        Intrinsics.checkNotNullParameter(walletAddress, "walletAddress");
        Intrinsics.checkNotNullParameter(platform, "platform");
        return new LinkDonationWalletRequest(chatId, z, walletAddress, platform);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof LinkDonationWalletRequest) {
            LinkDonationWalletRequest linkDonationWalletRequest = (LinkDonationWalletRequest) obj;
            return Intrinsics.areEqual(this.chatId, linkDonationWalletRequest.chatId) && this.isPersonalWallet == linkDonationWalletRequest.isPersonalWallet && Intrinsics.areEqual(this.walletAddress, linkDonationWalletRequest.walletAddress) && Intrinsics.areEqual(this.platform, linkDonationWalletRequest.platform);
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
        return ((((hashCode + i) * 31) + this.walletAddress.hashCode()) * 31) + this.platform.hashCode();
    }

    public String toString() {
        return "LinkDonationWalletRequest(chatId=" + this.chatId + ", isPersonalWallet=" + this.isPersonalWallet + ", walletAddress=" + this.walletAddress + ", platform=" + this.platform + ')';
    }

    public LinkDonationWalletRequest(String chatId, boolean z, String walletAddress, String platform) {
        Intrinsics.checkNotNullParameter(chatId, "chatId");
        Intrinsics.checkNotNullParameter(walletAddress, "walletAddress");
        Intrinsics.checkNotNullParameter(platform, "platform");
        this.chatId = chatId;
        this.isPersonalWallet = z;
        this.walletAddress = walletAddress;
        this.platform = platform;
    }

    public final String getChatId() {
        return this.chatId;
    }

    public final boolean isPersonalWallet() {
        return this.isPersonalWallet;
    }

    public final String getWalletAddress() {
        return this.walletAddress;
    }

    public /* synthetic */ LinkDonationWalletRequest(String str, boolean z, String str2, String str3, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, z, str2, (i & 8) != 0 ? BlockchainType.EVM.getBackendName() : str3);
    }

    public final String getPlatform() {
        return this.platform;
    }
}
