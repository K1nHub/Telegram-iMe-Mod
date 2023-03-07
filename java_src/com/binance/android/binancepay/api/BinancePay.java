package com.binance.android.binancepay.api;
/* loaded from: classes.dex */
public interface BinancePay {
    BinancePayListener getBinancePayListener();

    void pay(String str, String str2, BinancePayListener binancePayListener);
}
