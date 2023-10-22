package com.iMe.storage.common;

import com.iMe.storage.data.manager.common.EnvironmentManager;
/* compiled from: AppConfiguration.kt */
/* loaded from: classes3.dex */
public final class AppConfiguration$Binance {
    public static final AppConfiguration$Binance INSTANCE = new AppConfiguration$Binance();
    private static final String AUTH_REDIRECT_URL = "ime://binance/payAuth";

    private AppConfiguration$Binance() {
    }

    public final String getAUTH_REDIRECT_URL() {
        return AUTH_REDIRECT_URL;
    }

    public final String getProcessPayUrl() {
        return EnvironmentManager.INSTANCE.getEnvironmentInformation().getBinanceProcessUrl();
    }
}
