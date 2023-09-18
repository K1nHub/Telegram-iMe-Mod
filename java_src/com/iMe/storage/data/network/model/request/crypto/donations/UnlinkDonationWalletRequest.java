package com.iMe.storage.data.network.model.request.crypto.donations;

import com.iMe.storage.domain.model.crypto.BlockchainType;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: UnlinkDonationWalletRequest.kt */
/* loaded from: classes4.dex */
public final class UnlinkDonationWalletRequest {
    private final String chatId;
    private final String platform;

    public static /* synthetic */ UnlinkDonationWalletRequest copy$default(UnlinkDonationWalletRequest unlinkDonationWalletRequest, String str, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            str = unlinkDonationWalletRequest.chatId;
        }
        if ((i & 2) != 0) {
            str2 = unlinkDonationWalletRequest.platform;
        }
        return unlinkDonationWalletRequest.copy(str, str2);
    }

    public final String component1() {
        return this.chatId;
    }

    public final String component2() {
        return this.platform;
    }

    public final UnlinkDonationWalletRequest copy(String chatId, String platform) {
        Intrinsics.checkNotNullParameter(chatId, "chatId");
        Intrinsics.checkNotNullParameter(platform, "platform");
        return new UnlinkDonationWalletRequest(chatId, platform);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof UnlinkDonationWalletRequest) {
            UnlinkDonationWalletRequest unlinkDonationWalletRequest = (UnlinkDonationWalletRequest) obj;
            return Intrinsics.areEqual(this.chatId, unlinkDonationWalletRequest.chatId) && Intrinsics.areEqual(this.platform, unlinkDonationWalletRequest.platform);
        }
        return false;
    }

    public int hashCode() {
        return (this.chatId.hashCode() * 31) + this.platform.hashCode();
    }

    public String toString() {
        return "UnlinkDonationWalletRequest(chatId=" + this.chatId + ", platform=" + this.platform + ')';
    }

    public UnlinkDonationWalletRequest(String chatId, String platform) {
        Intrinsics.checkNotNullParameter(chatId, "chatId");
        Intrinsics.checkNotNullParameter(platform, "platform");
        this.chatId = chatId;
        this.platform = platform;
    }

    public final String getChatId() {
        return this.chatId;
    }

    public /* synthetic */ UnlinkDonationWalletRequest(String str, String str2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i & 2) != 0 ? BlockchainType.EVM.getBackendName() : str2);
    }

    public final String getPlatform() {
        return this.platform;
    }
}
