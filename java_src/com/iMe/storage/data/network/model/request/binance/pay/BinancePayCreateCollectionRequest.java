package com.iMe.storage.data.network.model.request.binance.pay;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: BinancePayCreateCollectionRequest.kt */
/* loaded from: classes3.dex */
public final class BinancePayCreateCollectionRequest {
    private final String amount;
    private final String clientUserMobile;
    private final String currency;
    private final String description;
    private final String payerTelegramChatId;

    public static /* synthetic */ BinancePayCreateCollectionRequest copy$default(BinancePayCreateCollectionRequest binancePayCreateCollectionRequest, String str, String str2, String str3, String str4, String str5, int i, Object obj) {
        if ((i & 1) != 0) {
            str = binancePayCreateCollectionRequest.payerTelegramChatId;
        }
        if ((i & 2) != 0) {
            str2 = binancePayCreateCollectionRequest.amount;
        }
        String str6 = str2;
        if ((i & 4) != 0) {
            str3 = binancePayCreateCollectionRequest.currency;
        }
        String str7 = str3;
        if ((i & 8) != 0) {
            str4 = binancePayCreateCollectionRequest.description;
        }
        String str8 = str4;
        if ((i & 16) != 0) {
            str5 = binancePayCreateCollectionRequest.clientUserMobile;
        }
        return binancePayCreateCollectionRequest.copy(str, str6, str7, str8, str5);
    }

    public final String component1() {
        return this.payerTelegramChatId;
    }

    public final String component2() {
        return this.amount;
    }

    public final String component3() {
        return this.currency;
    }

    public final String component4() {
        return this.description;
    }

    public final String component5() {
        return this.clientUserMobile;
    }

    public final BinancePayCreateCollectionRequest copy(String payerTelegramChatId, String amount, String currency, String str, String str2) {
        Intrinsics.checkNotNullParameter(payerTelegramChatId, "payerTelegramChatId");
        Intrinsics.checkNotNullParameter(amount, "amount");
        Intrinsics.checkNotNullParameter(currency, "currency");
        return new BinancePayCreateCollectionRequest(payerTelegramChatId, amount, currency, str, str2);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof BinancePayCreateCollectionRequest) {
            BinancePayCreateCollectionRequest binancePayCreateCollectionRequest = (BinancePayCreateCollectionRequest) obj;
            return Intrinsics.areEqual(this.payerTelegramChatId, binancePayCreateCollectionRequest.payerTelegramChatId) && Intrinsics.areEqual(this.amount, binancePayCreateCollectionRequest.amount) && Intrinsics.areEqual(this.currency, binancePayCreateCollectionRequest.currency) && Intrinsics.areEqual(this.description, binancePayCreateCollectionRequest.description) && Intrinsics.areEqual(this.clientUserMobile, binancePayCreateCollectionRequest.clientUserMobile);
        }
        return false;
    }

    public int hashCode() {
        int hashCode = ((((this.payerTelegramChatId.hashCode() * 31) + this.amount.hashCode()) * 31) + this.currency.hashCode()) * 31;
        String str = this.description;
        int hashCode2 = (hashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.clientUserMobile;
        return hashCode2 + (str2 != null ? str2.hashCode() : 0);
    }

    public String toString() {
        return "BinancePayCreateCollectionRequest(payerTelegramChatId=" + this.payerTelegramChatId + ", amount=" + this.amount + ", currency=" + this.currency + ", description=" + this.description + ", clientUserMobile=" + this.clientUserMobile + ')';
    }

    public BinancePayCreateCollectionRequest(String payerTelegramChatId, String amount, String currency, String str, String str2) {
        Intrinsics.checkNotNullParameter(payerTelegramChatId, "payerTelegramChatId");
        Intrinsics.checkNotNullParameter(amount, "amount");
        Intrinsics.checkNotNullParameter(currency, "currency");
        this.payerTelegramChatId = payerTelegramChatId;
        this.amount = amount;
        this.currency = currency;
        this.description = str;
        this.clientUserMobile = str2;
    }

    public /* synthetic */ BinancePayCreateCollectionRequest(String str, String str2, String str3, String str4, String str5, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, str3, (i & 8) != 0 ? null : str4, (i & 16) != 0 ? null : str5);
    }

    public final String getPayerTelegramChatId() {
        return this.payerTelegramChatId;
    }

    public final String getAmount() {
        return this.amount;
    }

    public final String getCurrency() {
        return this.currency;
    }

    public final String getDescription() {
        return this.description;
    }

    public final String getClientUserMobile() {
        return this.clientUserMobile;
    }
}
