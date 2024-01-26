package com.iMe.storage.common;

import com.iMe.storage.data.manager.common.EnvironmentManager;
/* compiled from: AppConfiguration.kt */
/* loaded from: classes3.dex */
public final class AppConfiguration$Api {
    public static final AppConfiguration$Api INSTANCE = new AppConfiguration$Api();

    private AppConfiguration$Api() {
    }

    public final String getServerUrl() {
        return EnvironmentManager.INSTANCE.getEnvironmentInformation().getMainApiUrl();
    }
}
