package com.smedialink.storage.domain.model.crypto.simplex;

import com.smedialink.storage.domain.model.wallet.token.TokenCode;
import com.smedialink.storage.domain.model.wallet.token.TokenInfo;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: DigitalCurrency.kt */
/* loaded from: classes3.dex */
public enum DigitalCurrency implements Currency {
    ETH(TokenInfo.Crypto.Ethereum.ETH.INSTANCE.getShortName()),
    USDT(TokenInfo.Crypto.Ethereum.USDT.INSTANCE.getShortName()),
    BNB(TokenInfo.Crypto.Ethereum.BNB.INSTANCE.getShortName()),
    BUSD(TokenInfo.Crypto.Ethereum.BUSD.INSTANCE.getShortName()),
    MATIC(TokenInfo.Crypto.Ethereum.MATIC.INSTANCE.getShortName());
    
    public static final Companion Companion = new Companion(null);
    private final int currencySymbol;

    DigitalCurrency(int i) {
        this.currencySymbol = i;
    }

    public final int getCurrencySymbol() {
        return this.currencySymbol;
    }

    @Override // com.smedialink.storage.domain.model.crypto.simplex.Currency
    public String getValue() {
        return name();
    }

    @Override // com.smedialink.storage.domain.model.crypto.simplex.Currency
    public int getSymbol() {
        return this.currencySymbol;
    }

    /* compiled from: DigitalCurrency.kt */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final DigitalCurrency map(TokenCode tokenCode) {
            DigitalCurrency digitalCurrency;
            Intrinsics.checkNotNullParameter(tokenCode, "tokenCode");
            DigitalCurrency[] values = DigitalCurrency.values();
            int length = values.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    digitalCurrency = null;
                    break;
                }
                digitalCurrency = values[i];
                if (Intrinsics.areEqual(digitalCurrency.name(), tokenCode.getName())) {
                    break;
                }
                i++;
            }
            return digitalCurrency == null ? DigitalCurrency.ETH : digitalCurrency;
        }
    }
}
