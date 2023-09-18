package com.iMe.storage.data.network.model.request.binance.pay;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: BinancePayGetTransactionHistoryRequest.kt */
/* loaded from: classes4.dex */
public final class BinancePayGetTransactionHistoryRequest {
    private final String filter;
    private final String lastItemId;
    private final int limit;

    public static /* synthetic */ BinancePayGetTransactionHistoryRequest copy$default(BinancePayGetTransactionHistoryRequest binancePayGetTransactionHistoryRequest, int i, String str, String str2, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = binancePayGetTransactionHistoryRequest.limit;
        }
        if ((i2 & 2) != 0) {
            str = binancePayGetTransactionHistoryRequest.lastItemId;
        }
        if ((i2 & 4) != 0) {
            str2 = binancePayGetTransactionHistoryRequest.filter;
        }
        return binancePayGetTransactionHistoryRequest.copy(i, str, str2);
    }

    public final int component1() {
        return this.limit;
    }

    public final String component2() {
        return this.lastItemId;
    }

    public final String component3() {
        return this.filter;
    }

    public final BinancePayGetTransactionHistoryRequest copy(int i, String str, String str2) {
        return new BinancePayGetTransactionHistoryRequest(i, str, str2);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof BinancePayGetTransactionHistoryRequest) {
            BinancePayGetTransactionHistoryRequest binancePayGetTransactionHistoryRequest = (BinancePayGetTransactionHistoryRequest) obj;
            return this.limit == binancePayGetTransactionHistoryRequest.limit && Intrinsics.areEqual(this.lastItemId, binancePayGetTransactionHistoryRequest.lastItemId) && Intrinsics.areEqual(this.filter, binancePayGetTransactionHistoryRequest.filter);
        }
        return false;
    }

    public int hashCode() {
        int i = this.limit * 31;
        String str = this.lastItemId;
        int hashCode = (i + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.filter;
        return hashCode + (str2 != null ? str2.hashCode() : 0);
    }

    public String toString() {
        return "BinancePayGetTransactionHistoryRequest(limit=" + this.limit + ", lastItemId=" + this.lastItemId + ", filter=" + this.filter + ')';
    }

    public BinancePayGetTransactionHistoryRequest(int i, String str, String str2) {
        this.limit = i;
        this.lastItemId = str;
        this.filter = str2;
    }

    public final int getLimit() {
        return this.limit;
    }

    public final String getLastItemId() {
        return this.lastItemId;
    }

    public final String getFilter() {
        return this.filter;
    }
}
