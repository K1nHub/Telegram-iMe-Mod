package com.smedialink.storage.data.network.model.request.crypto.donations;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: GetDonationInfoRequest.kt */
/* loaded from: classes3.dex */
public final class GetDonationInfoRequest {
    private final String chatId;

    public static /* synthetic */ GetDonationInfoRequest copy$default(GetDonationInfoRequest getDonationInfoRequest, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = getDonationInfoRequest.chatId;
        }
        return getDonationInfoRequest.copy(str);
    }

    public final String component1() {
        return this.chatId;
    }

    public final GetDonationInfoRequest copy(String chatId) {
        Intrinsics.checkNotNullParameter(chatId, "chatId");
        return new GetDonationInfoRequest(chatId);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof GetDonationInfoRequest) && Intrinsics.areEqual(this.chatId, ((GetDonationInfoRequest) obj).chatId);
    }

    public int hashCode() {
        return this.chatId.hashCode();
    }

    public String toString() {
        return "GetDonationInfoRequest(chatId=" + this.chatId + ')';
    }

    public GetDonationInfoRequest(String chatId) {
        Intrinsics.checkNotNullParameter(chatId, "chatId");
        this.chatId = chatId;
    }

    public final String getChatId() {
        return this.chatId;
    }
}
