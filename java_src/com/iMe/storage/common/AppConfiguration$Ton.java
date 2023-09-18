package com.iMe.storage.common;
/* compiled from: AppConfiguration.kt */
/* loaded from: classes4.dex */
public final class AppConfiguration$Ton {
    public static final AppConfiguration$Ton INSTANCE = new AppConfiguration$Ton();

    public final String getTonConfigFilename() {
        return "https://ton.org/global-config-wallet.json";
    }

    private AppConfiguration$Ton() {
    }
}
