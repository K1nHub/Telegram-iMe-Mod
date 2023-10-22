package com.iMe.storage.domain.storage;
/* compiled from: AnalyticsPreferenceHelper.kt */
/* loaded from: classes3.dex */
public interface AnalyticsPreferenceHelper extends BasePreferenceHelper {
    long getActiveDesktopUserLastUpdateTime();

    long getOpenAsPremiumUserLastUpdateTime();

    void setActiveDesktopUserLastUpdateTime(long j);

    void setOpenAsPremiumUserLastUpdateTime(long j);
}
