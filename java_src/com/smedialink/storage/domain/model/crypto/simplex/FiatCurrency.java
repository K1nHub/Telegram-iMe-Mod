package com.smedialink.storage.domain.model.crypto.simplex;

import com.smedialink.storage.R$string;
/* compiled from: FiatCurrency.kt */
/* loaded from: classes3.dex */
public enum FiatCurrency implements Currency {
    USD(R$string.currency_short_dollar);
    
    private final int currencySymbol;

    FiatCurrency(int i) {
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
}
