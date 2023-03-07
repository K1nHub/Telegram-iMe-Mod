package com.smedialink.storage.domain.model.binancepay;

import com.smedialink.storage.R$string;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: BinanceTransactionDirection.kt */
/* loaded from: classes3.dex */
public enum BinanceTransactionDirection {
    IN(R$string.wallet_binance_pay_transaction_direction_in_title),
    OUT(R$string.wallet_binance_pay_transaction_direction_out_title);
    
    public static final Companion Companion = new Companion(null);
    private int title;

    BinanceTransactionDirection(int i) {
        this.title = i;
    }

    public final int getTitle() {
        return this.title;
    }

    public final void setTitle(int i) {
        this.title = i;
    }

    /* compiled from: BinanceTransactionDirection.kt */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final BinanceTransactionDirection map(String value) {
            BinanceTransactionDirection binanceTransactionDirection;
            Intrinsics.checkNotNullParameter(value, "value");
            BinanceTransactionDirection[] values = BinanceTransactionDirection.values();
            int length = values.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    binanceTransactionDirection = null;
                    break;
                }
                binanceTransactionDirection = values[i];
                if (Intrinsics.areEqual(binanceTransactionDirection.name(), value)) {
                    break;
                }
                i++;
            }
            return binanceTransactionDirection == null ? BinanceTransactionDirection.IN : binanceTransactionDirection;
        }
    }
}
