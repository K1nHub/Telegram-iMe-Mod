package com.smedialink.storage.data.network.model.request.crypto.donations;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: SendDonationTransactionRequest.kt */
/* loaded from: classes3.dex */
public final class SendDonationTransactionRequest {
    private final String chatId;
    private final String signedTransactionBody;

    public static /* synthetic */ SendDonationTransactionRequest copy$default(SendDonationTransactionRequest sendDonationTransactionRequest, String str, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            str = sendDonationTransactionRequest.chatId;
        }
        if ((i & 2) != 0) {
            str2 = sendDonationTransactionRequest.signedTransactionBody;
        }
        return sendDonationTransactionRequest.copy(str, str2);
    }

    public final String component1() {
        return this.chatId;
    }

    public final String component2() {
        return this.signedTransactionBody;
    }

    public final SendDonationTransactionRequest copy(String chatId, String signedTransactionBody) {
        Intrinsics.checkNotNullParameter(chatId, "chatId");
        Intrinsics.checkNotNullParameter(signedTransactionBody, "signedTransactionBody");
        return new SendDonationTransactionRequest(chatId, signedTransactionBody);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof SendDonationTransactionRequest) {
            SendDonationTransactionRequest sendDonationTransactionRequest = (SendDonationTransactionRequest) obj;
            return Intrinsics.areEqual(this.chatId, sendDonationTransactionRequest.chatId) && Intrinsics.areEqual(this.signedTransactionBody, sendDonationTransactionRequest.signedTransactionBody);
        }
        return false;
    }

    public int hashCode() {
        return (this.chatId.hashCode() * 31) + this.signedTransactionBody.hashCode();
    }

    public String toString() {
        return "SendDonationTransactionRequest(chatId=" + this.chatId + ", signedTransactionBody=" + this.signedTransactionBody + ')';
    }

    public SendDonationTransactionRequest(String chatId, String signedTransactionBody) {
        Intrinsics.checkNotNullParameter(chatId, "chatId");
        Intrinsics.checkNotNullParameter(signedTransactionBody, "signedTransactionBody");
        this.chatId = chatId;
        this.signedTransactionBody = signedTransactionBody;
    }

    public final String getChatId() {
        return this.chatId;
    }

    public final String getSignedTransactionBody() {
        return this.signedTransactionBody;
    }
}
