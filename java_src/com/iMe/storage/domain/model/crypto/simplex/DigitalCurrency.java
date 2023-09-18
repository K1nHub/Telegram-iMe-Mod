package com.iMe.storage.domain.model.crypto.simplex;

import com.iMe.storage.R$string;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: DigitalCurrency.kt */
/* loaded from: classes4.dex */
public enum DigitalCurrency implements Currency {
    ETH(R$string.currency_short_eth),
    USDT(R$string.currency_short_usdt),
    BNB(R$string.currency_short_bnb),
    BUSD(R$string.currency_short_busd),
    MATIC(R$string.currency_short_matic);
    
    public static final Companion Companion = new Companion(null);
    private final int currencySymbolResId;

    DigitalCurrency(int i) {
        this.currencySymbolResId = i;
    }

    public final int getCurrencySymbolResId() {
        return this.currencySymbolResId;
    }

    @Override // com.iMe.storage.domain.model.crypto.simplex.Currency
    public String getValue() {
        return name();
    }

    @Override // com.iMe.storage.domain.model.crypto.simplex.Currency
    public int getSymbolResId() {
        return this.currencySymbolResId;
    }

    /* compiled from: DigitalCurrency.kt */
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final DigitalCurrency map(String tokenTicker) {
            DigitalCurrency digitalCurrency;
            Intrinsics.checkNotNullParameter(tokenTicker, "tokenTicker");
            DigitalCurrency[] values = DigitalCurrency.values();
            int length = values.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    digitalCurrency = null;
                    break;
                }
                digitalCurrency = values[i];
                if (Intrinsics.areEqual(digitalCurrency.name(), tokenTicker)) {
                    break;
                }
                i++;
            }
            return digitalCurrency == null ? DigitalCurrency.ETH : digitalCurrency;
        }
    }
}
