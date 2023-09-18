package com.iMe.storage.data.network.model.request.crypto.donations;

import com.iMe.storage.data.network.model.request.wallet.TokenRequest;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: PrepareDonationTransactionRequest.kt */
/* loaded from: classes4.dex */
public final class PrepareDonationTransactionRequest {
    private final String chatId;
    private final TokenRequest token;
    private final String value;

    public static /* synthetic */ PrepareDonationTransactionRequest copy$default(PrepareDonationTransactionRequest prepareDonationTransactionRequest, String str, String str2, TokenRequest tokenRequest, int i, Object obj) {
        if ((i & 1) != 0) {
            str = prepareDonationTransactionRequest.chatId;
        }
        if ((i & 2) != 0) {
            str2 = prepareDonationTransactionRequest.value;
        }
        if ((i & 4) != 0) {
            tokenRequest = prepareDonationTransactionRequest.token;
        }
        return prepareDonationTransactionRequest.copy(str, str2, tokenRequest);
    }

    public final String component1() {
        return this.chatId;
    }

    public final String component2() {
        return this.value;
    }

    public final TokenRequest component3() {
        return this.token;
    }

    public final PrepareDonationTransactionRequest copy(String chatId, String value, TokenRequest token) {
        Intrinsics.checkNotNullParameter(chatId, "chatId");
        Intrinsics.checkNotNullParameter(value, "value");
        Intrinsics.checkNotNullParameter(token, "token");
        return new PrepareDonationTransactionRequest(chatId, value, token);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof PrepareDonationTransactionRequest) {
            PrepareDonationTransactionRequest prepareDonationTransactionRequest = (PrepareDonationTransactionRequest) obj;
            return Intrinsics.areEqual(this.chatId, prepareDonationTransactionRequest.chatId) && Intrinsics.areEqual(this.value, prepareDonationTransactionRequest.value) && Intrinsics.areEqual(this.token, prepareDonationTransactionRequest.token);
        }
        return false;
    }

    public int hashCode() {
        return (((this.chatId.hashCode() * 31) + this.value.hashCode()) * 31) + this.token.hashCode();
    }

    public String toString() {
        return "PrepareDonationTransactionRequest(chatId=" + this.chatId + ", value=" + this.value + ", token=" + this.token + ')';
    }

    public PrepareDonationTransactionRequest(String chatId, String value, TokenRequest token) {
        Intrinsics.checkNotNullParameter(chatId, "chatId");
        Intrinsics.checkNotNullParameter(value, "value");
        Intrinsics.checkNotNullParameter(token, "token");
        this.chatId = chatId;
        this.value = value;
        this.token = token;
    }

    public final String getChatId() {
        return this.chatId;
    }

    public final String getValue() {
        return this.value;
    }

    public final TokenRequest getToken() {
        return this.token;
    }
}
