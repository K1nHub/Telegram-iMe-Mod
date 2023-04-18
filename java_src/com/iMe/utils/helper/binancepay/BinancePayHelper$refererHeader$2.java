package com.iMe.utils.helper.binancepay;

import java.util.HashMap;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* compiled from: BinancePayHelper.kt */
/* loaded from: classes4.dex */
final class BinancePayHelper$refererHeader$2 extends Lambda implements Function0<HashMap<String, String>> {
    public static final BinancePayHelper$refererHeader$2 INSTANCE = new BinancePayHelper$refererHeader$2();

    BinancePayHelper$refererHeader$2() {
        super(0);
    }

    @Override // kotlin.jvm.functions.Function0
    public final HashMap<String, String> invoke() {
        HashMap<String, String> hashMapOf;
        hashMapOf = MapsKt__MapsKt.hashMapOf(TuplesKt.m80to("referer", "https://www.binance.com/"));
        return hashMapOf;
    }
}
