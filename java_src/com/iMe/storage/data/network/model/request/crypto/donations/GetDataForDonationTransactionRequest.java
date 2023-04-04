package com.iMe.storage.data.network.model.request.crypto.donations;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: GetDataForDonationTransactionRequest.kt */
/* loaded from: classes3.dex */
public final class GetDataForDonationTransactionRequest {
    private final String chatId;
    private final String networkType;
    private final String value;

    public static /* synthetic */ GetDataForDonationTransactionRequest copy$default(GetDataForDonationTransactionRequest getDataForDonationTransactionRequest, String str, String str2, String str3, int i, Object obj) {
        if ((i & 1) != 0) {
            str = getDataForDonationTransactionRequest.value;
        }
        if ((i & 2) != 0) {
            str2 = getDataForDonationTransactionRequest.chatId;
        }
        if ((i & 4) != 0) {
            str3 = getDataForDonationTransactionRequest.networkType;
        }
        return getDataForDonationTransactionRequest.copy(str, str2, str3);
    }

    public final String component1() {
        return this.value;
    }

    public final String component2() {
        return this.chatId;
    }

    public final String component3() {
        return this.networkType;
    }

    public final GetDataForDonationTransactionRequest copy(String value, String chatId, String networkType) {
        Intrinsics.checkNotNullParameter(value, "value");
        Intrinsics.checkNotNullParameter(chatId, "chatId");
        Intrinsics.checkNotNullParameter(networkType, "networkType");
        return new GetDataForDonationTransactionRequest(value, chatId, networkType);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof GetDataForDonationTransactionRequest) {
            GetDataForDonationTransactionRequest getDataForDonationTransactionRequest = (GetDataForDonationTransactionRequest) obj;
            return Intrinsics.areEqual(this.value, getDataForDonationTransactionRequest.value) && Intrinsics.areEqual(this.chatId, getDataForDonationTransactionRequest.chatId) && Intrinsics.areEqual(this.networkType, getDataForDonationTransactionRequest.networkType);
        }
        return false;
    }

    public int hashCode() {
        return (((this.value.hashCode() * 31) + this.chatId.hashCode()) * 31) + this.networkType.hashCode();
    }

    public String toString() {
        return "GetDataForDonationTransactionRequest(value=" + this.value + ", chatId=" + this.chatId + ", networkType=" + this.networkType + ')';
    }

    public GetDataForDonationTransactionRequest(String value, String chatId, String networkType) {
        Intrinsics.checkNotNullParameter(value, "value");
        Intrinsics.checkNotNullParameter(chatId, "chatId");
        Intrinsics.checkNotNullParameter(networkType, "networkType");
        this.value = value;
        this.chatId = chatId;
        this.networkType = networkType;
    }

    public final String getValue() {
        return this.value;
    }

    public final String getChatId() {
        return this.chatId;
    }

    public final String getNetworkType() {
        return this.networkType;
    }
}
