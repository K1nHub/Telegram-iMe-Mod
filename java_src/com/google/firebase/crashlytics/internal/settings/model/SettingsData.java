package com.google.firebase.crashlytics.internal.settings.model;
/* loaded from: classes3.dex */
public class SettingsData implements Settings {
    public final AppSettingsData appData;
    public final long expiresAtMillis;
    public final FeaturesSettingsData featuresData;
    public final SessionSettingsData sessionData;

    public SettingsData(long j, AppSettingsData appSettingsData, SessionSettingsData sessionSettingsData, FeaturesSettingsData featuresSettingsData, int i, int i2) {
        this.expiresAtMillis = j;
        this.appData = appSettingsData;
        this.sessionData = sessionSettingsData;
        this.featuresData = featuresSettingsData;
    }

    public AppSettingsData getAppSettingsData() {
        return this.appData;
    }

    public boolean isExpired(long j) {
        return this.expiresAtMillis < j;
    }

    @Override // com.google.firebase.crashlytics.internal.settings.model.Settings
    public SessionSettingsData getSessionData() {
        return this.sessionData;
    }

    @Override // com.google.firebase.crashlytics.internal.settings.model.Settings
    public FeaturesSettingsData getFeaturesData() {
        return this.featuresData;
    }

    public long getExpiresAtMillis() {
        return this.expiresAtMillis;
    }
}
