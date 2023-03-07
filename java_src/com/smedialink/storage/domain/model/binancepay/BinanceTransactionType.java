package com.smedialink.storage.domain.model.binancepay;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: BinanceTransactionType.kt */
/* loaded from: classes3.dex */
public enum BinanceTransactionType {
    BINANCE_PAY_TRANSFER,
    CONVERT_COINS,
    UNKNOWN;
    
    public static final Companion Companion = new Companion(null);

    /* compiled from: BinanceTransactionType.kt */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final BinanceTransactionType map(String type) {
            BinanceTransactionType binanceTransactionType;
            Intrinsics.checkNotNullParameter(type, "type");
            BinanceTransactionType[] values = BinanceTransactionType.values();
            int length = values.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    binanceTransactionType = null;
                    break;
                }
                binanceTransactionType = values[i];
                if (Intrinsics.areEqual(binanceTransactionType.name(), type)) {
                    break;
                }
                i++;
            }
            return binanceTransactionType == null ? BinanceTransactionType.UNKNOWN : binanceTransactionType;
        }
    }
}
