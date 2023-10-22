package com.iMe.storage.domain.model.binancepay;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: BinanceCollectionOrder.kt */
/* loaded from: classes3.dex */
public final class BinanceCollectionOrder {
    private final String messageId;

    public static /* synthetic */ BinanceCollectionOrder copy$default(BinanceCollectionOrder binanceCollectionOrder, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = binanceCollectionOrder.messageId;
        }
        return binanceCollectionOrder.copy(str);
    }

    public final String component1() {
        return this.messageId;
    }

    public final BinanceCollectionOrder copy(String messageId) {
        Intrinsics.checkNotNullParameter(messageId, "messageId");
        return new BinanceCollectionOrder(messageId);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof BinanceCollectionOrder) && Intrinsics.areEqual(this.messageId, ((BinanceCollectionOrder) obj).messageId);
    }

    public int hashCode() {
        return this.messageId.hashCode();
    }

    public String toString() {
        return "BinanceCollectionOrder(messageId=" + this.messageId + ')';
    }

    public BinanceCollectionOrder(String messageId) {
        Intrinsics.checkNotNullParameter(messageId, "messageId");
        this.messageId = messageId;
    }

    public final String getMessageId() {
        return this.messageId;
    }
}
