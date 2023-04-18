package com.binance.android.opensdk.api;

import android.app.Activity;
import com.binance.android.opensdk.p013b.C0375a;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes.dex */
public final class BinanceAPIFactory {
    static {
        new BinanceAPIFactory();
    }

    private BinanceAPIFactory() {
    }

    public static final BinanceAPI createAPI(Activity activity) {
        Intrinsics.checkParameterIsNotNull(activity, "activity");
        return new C0375a(activity);
    }
}
