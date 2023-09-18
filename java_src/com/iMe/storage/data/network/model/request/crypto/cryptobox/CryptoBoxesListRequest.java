package com.iMe.storage.data.network.model.request.crypto.cryptobox;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: CryptoBoxesListRequest.kt */
/* loaded from: classes4.dex */
public final class CryptoBoxesListRequest {
    private final String chatId;
    private final Long lastItemId;
    private final Integer limit;
    private final String network;
    private final String order;
    private final String status;

    public static /* synthetic */ CryptoBoxesListRequest copy$default(CryptoBoxesListRequest cryptoBoxesListRequest, String str, String str2, String str3, Long l, Integer num, String str4, int i, Object obj) {
        if ((i & 1) != 0) {
            str = cryptoBoxesListRequest.chatId;
        }
        if ((i & 2) != 0) {
            str2 = cryptoBoxesListRequest.network;
        }
        String str5 = str2;
        if ((i & 4) != 0) {
            str3 = cryptoBoxesListRequest.status;
        }
        String str6 = str3;
        if ((i & 8) != 0) {
            l = cryptoBoxesListRequest.lastItemId;
        }
        Long l2 = l;
        if ((i & 16) != 0) {
            num = cryptoBoxesListRequest.limit;
        }
        Integer num2 = num;
        if ((i & 32) != 0) {
            str4 = cryptoBoxesListRequest.order;
        }
        return cryptoBoxesListRequest.copy(str, str5, str6, l2, num2, str4);
    }

    public final String component1() {
        return this.chatId;
    }

    public final String component2() {
        return this.network;
    }

    public final String component3() {
        return this.status;
    }

    public final Long component4() {
        return this.lastItemId;
    }

    public final Integer component5() {
        return this.limit;
    }

    public final String component6() {
        return this.order;
    }

    public final CryptoBoxesListRequest copy(String str, String str2, String str3, Long l, Integer num, String str4) {
        return new CryptoBoxesListRequest(str, str2, str3, l, num, str4);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof CryptoBoxesListRequest) {
            CryptoBoxesListRequest cryptoBoxesListRequest = (CryptoBoxesListRequest) obj;
            return Intrinsics.areEqual(this.chatId, cryptoBoxesListRequest.chatId) && Intrinsics.areEqual(this.network, cryptoBoxesListRequest.network) && Intrinsics.areEqual(this.status, cryptoBoxesListRequest.status) && Intrinsics.areEqual(this.lastItemId, cryptoBoxesListRequest.lastItemId) && Intrinsics.areEqual(this.limit, cryptoBoxesListRequest.limit) && Intrinsics.areEqual(this.order, cryptoBoxesListRequest.order);
        }
        return false;
    }

    public int hashCode() {
        String str = this.chatId;
        int hashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.network;
        int hashCode2 = (hashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.status;
        int hashCode3 = (hashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        Long l = this.lastItemId;
        int hashCode4 = (hashCode3 + (l == null ? 0 : l.hashCode())) * 31;
        Integer num = this.limit;
        int hashCode5 = (hashCode4 + (num == null ? 0 : num.hashCode())) * 31;
        String str4 = this.order;
        return hashCode5 + (str4 != null ? str4.hashCode() : 0);
    }

    public String toString() {
        return "CryptoBoxesListRequest(chatId=" + this.chatId + ", network=" + this.network + ", status=" + this.status + ", lastItemId=" + this.lastItemId + ", limit=" + this.limit + ", order=" + this.order + ')';
    }

    public CryptoBoxesListRequest(String str, String str2, String str3, Long l, Integer num, String str4) {
        this.chatId = str;
        this.network = str2;
        this.status = str3;
        this.lastItemId = l;
        this.limit = num;
        this.order = str4;
    }

    public /* synthetic */ CryptoBoxesListRequest(String str, String str2, String str3, Long l, Integer num, String str4, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, (i & 4) != 0 ? null : str3, (i & 8) != 0 ? null : l, (i & 16) != 0 ? null : num, str4);
    }

    public final String getChatId() {
        return this.chatId;
    }

    public final String getNetwork() {
        return this.network;
    }

    public final String getStatus() {
        return this.status;
    }

    public final Long getLastItemId() {
        return this.lastItemId;
    }

    public final Integer getLimit() {
        return this.limit;
    }

    public final String getOrder() {
        return this.order;
    }
}
