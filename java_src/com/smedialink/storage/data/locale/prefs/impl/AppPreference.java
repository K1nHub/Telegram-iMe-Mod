package com.smedialink.storage.data.locale.prefs.impl;

import android.content.Context;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.smedialink.storage.data.locale.prefs.model.RequestAppReviewMetadata;
import com.smedialink.storage.data.locale.prefs.model.RequestAppUpdateMetadata;
import com.smedialink.storage.domain.gateway.TelegramGateway;
import com.smedialink.storage.domain.model.common.Environment;
import com.smedialink.storage.domain.storage.BasePreferenceHelper;
import com.smedialink.storage.domain.storage.PreferenceHelper;
import com.smedialink.storage.domain.utils.extentions.CryptoExtKt;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: AppPreference.kt */
/* loaded from: classes3.dex */
public final class AppPreference extends BasePreference implements PreferenceHelper {
    private final Gson gson;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AppPreference(TelegramGateway telegramGateway, Context context, Gson gson) {
        super("ime_app_prefs", telegramGateway, context);
        Intrinsics.checkNotNullParameter(telegramGateway, "telegramGateway");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(gson, "gson");
        this.gson = gson;
    }

    @Override // com.smedialink.storage.domain.storage.PreferenceHelper
    public Environment getEnvironment() {
        Environment.Companion companion = Environment.Companion;
        String string = getMPref().getString("app_environment", Environment.PRODUCTION.name());
        if (string == null) {
            string = "";
        }
        return companion.map(string);
    }

    @Override // com.smedialink.storage.domain.storage.PreferenceHelper
    public void setEnvironment(Environment value) {
        Intrinsics.checkNotNullParameter(value, "value");
        getMPref().edit().putString("app_environment", value.name()).commit();
    }

    @Override // com.smedialink.storage.domain.storage.PreferenceHelper
    public String getPushToken() {
        String string = getMPref().getString("push_token", "");
        return string == null ? "" : string;
    }

    @Override // com.smedialink.storage.domain.storage.PreferenceHelper
    public void setPushToken(String value) {
        Intrinsics.checkNotNullParameter(value, "value");
        getMPref().edit().putString("push_token", value).apply();
    }

    @Override // com.smedialink.storage.domain.storage.PreferenceHelper
    public String getPushAllowanceToken() {
        String string = getMPref().getString(BasePreferenceHelper.DefaultImpls.withTgAccount$default(this, "push_allowance_token", null, 2, null), "");
        return string == null ? "" : string;
    }

    @Override // com.smedialink.storage.domain.storage.PreferenceHelper
    public void setPushAllowanceToken(String value) {
        Intrinsics.checkNotNullParameter(value, "value");
        getMPref().edit().putString(BasePreferenceHelper.DefaultImpls.withTgAccount$default(this, "push_allowance_token", null, 2, null), value).apply();
    }

    @Override // com.smedialink.storage.domain.storage.PreferenceHelper
    public boolean isPushTokenRegistered() {
        return getMPref().getBoolean(BasePreferenceHelper.DefaultImpls.withTgAccount$default(this, "is_push_token_registered", null, 2, null), false);
    }

    @Override // com.smedialink.storage.domain.storage.PreferenceHelper
    public void setPushTokenRegistered(boolean z) {
        getMPref().edit().putBoolean(BasePreferenceHelper.DefaultImpls.withTgAccount$default(this, "is_push_token_registered", null, 2, null), z).apply();
    }

    @Override // com.smedialink.storage.domain.storage.PreferenceHelper
    public long getCatalogLanguagesLastUpdateTime() {
        return getMPref().getLong("catalog_languages_last_update_time", -1L);
    }

    @Override // com.smedialink.storage.domain.storage.PreferenceHelper
    public void setCatalogLanguagesLastUpdateTime(long j) {
        getMPref().edit().putLong("catalog_languages_last_update_time", j).apply();
    }

    @Override // com.smedialink.storage.domain.storage.PreferenceHelper
    public Long getCatalogSelectedLanguageId() {
        long j = getMPref().getLong("catalog_selected_language_id", -1L);
        if (j == -1) {
            return null;
        }
        return Long.valueOf(j);
    }

    @Override // com.smedialink.storage.domain.storage.PreferenceHelper
    public void setCatalogSelectedLanguageId(Long l) {
        getMPref().edit().putLong("catalog_selected_language_id", l == null ? -1L : l.longValue()).apply();
    }

    @Override // com.smedialink.storage.domain.storage.PreferenceHelper
    public RequestAppReviewMetadata getRequestAppReviewMetadata() {
        Gson gson = this.gson;
        String string = getMPref().getString("app_review_metadata", "{}");
        if (string == null) {
            string = "";
        }
        return (RequestAppReviewMetadata) gson.fromJson(string, new TypeToken<RequestAppReviewMetadata>() { // from class: com.smedialink.storage.data.locale.prefs.impl.AppPreference$special$$inlined$fromJsonTokenType$1
        }.getType());
    }

    @Override // com.smedialink.storage.domain.storage.PreferenceHelper
    public void setRequestAppReviewMetadata(RequestAppReviewMetadata value) {
        Intrinsics.checkNotNullParameter(value, "value");
        getMPref().edit().putString("app_review_metadata", this.gson.toJson(value)).apply();
    }

    @Override // com.smedialink.storage.domain.storage.PreferenceHelper
    public RequestAppUpdateMetadata getRequestAppUpdateMetadata() {
        Gson gson = this.gson;
        String string = getMPref().getString("app_update_metadata", "{}");
        if (string == null) {
            string = "";
        }
        return (RequestAppUpdateMetadata) gson.fromJson(string, new TypeToken<RequestAppUpdateMetadata>() { // from class: com.smedialink.storage.data.locale.prefs.impl.AppPreference$special$$inlined$fromJsonTokenType$2
        }.getType());
    }

    @Override // com.smedialink.storage.domain.storage.PreferenceHelper
    public void setRequestAppUpdateMetadata(RequestAppUpdateMetadata value) {
        Intrinsics.checkNotNullParameter(value, "value");
        getMPref().edit().putString("app_update_metadata", this.gson.toJson(value)).apply();
    }

    @Override // com.smedialink.storage.domain.storage.PreferenceHelper
    public String getKiklikoUUID() {
        String string = getMPref().getString(BasePreferenceHelper.DefaultImpls.withTgAccount$default(this, "kikliko_uuid", null, 2, null), null);
        if (string == null) {
            String generateUuid = CryptoExtKt.generateUuid();
            getMPref().edit().putString(BasePreferenceHelper.DefaultImpls.withTgAccount$default(this, "kikliko_uuid", null, 2, null), generateUuid).apply();
            return generateUuid;
        }
        return string;
    }
}
