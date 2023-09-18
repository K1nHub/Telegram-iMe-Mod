package com.iMe.storage.data.network.model.response.binance.pay;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: BinancePayCreateCollectionResponse.kt */
/* loaded from: classes4.dex */
public final class BinancePayCreateCollectionResponse {
    private final String messageId;

    public static /* synthetic */ BinancePayCreateCollectionResponse copy$default(BinancePayCreateCollectionResponse binancePayCreateCollectionResponse, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = binancePayCreateCollectionResponse.messageId;
        }
        return binancePayCreateCollectionResponse.copy(str);
    }

    public final String component1() {
        return this.messageId;
    }

    public final BinancePayCreateCollectionResponse copy(String messageId) {
        Intrinsics.checkNotNullParameter(messageId, "messageId");
        return new BinancePayCreateCollectionResponse(messageId);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof BinancePayCreateCollectionResponse) && Intrinsics.areEqual(this.messageId, ((BinancePayCreateCollectionResponse) obj).messageId);
    }

    public int hashCode() {
        return this.messageId.hashCode();
    }

    public String toString() {
        return "BinancePayCreateCollectionResponse(messageId=" + this.messageId + ')';
    }

    public BinancePayCreateCollectionResponse(String messageId) {
        Intrinsics.checkNotNullParameter(messageId, "messageId");
        this.messageId = messageId;
    }

    public final String getMessageId() {
        return this.messageId;
    }
}
