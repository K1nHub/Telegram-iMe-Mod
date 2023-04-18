package com.iMe.storage.data.locale.prefs.impl;

import android.content.Context;
import android.content.SharedPreferences;
import com.iMe.storage.domain.gateway.TelegramGateway;
import com.iMe.storage.domain.storage.BasePreferenceHelper;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: BasePreference.kt */
/* loaded from: classes3.dex */
public abstract class BasePreference implements BasePreferenceHelper {
    private final Context context;
    private final Lazy mPref$delegate;
    private final String prefName;
    private final TelegramGateway telegramGateway;
    private String tempOneActionUserId;

    public BasePreference(String prefName, TelegramGateway telegramGateway, Context context) {
        Lazy lazy;
        Intrinsics.checkNotNullParameter(prefName, "prefName");
        Intrinsics.checkNotNullParameter(telegramGateway, "telegramGateway");
        Intrinsics.checkNotNullParameter(context, "context");
        this.prefName = prefName;
        this.telegramGateway = telegramGateway;
        this.context = context;
        this.tempOneActionUserId = "";
        lazy = LazyKt__LazyJVMKt.lazy(new BasePreference$mPref$2(this));
        this.mPref$delegate = lazy;
    }

    public String getTempOneActionUserId() {
        return this.tempOneActionUserId;
    }

    @Override // com.iMe.storage.domain.storage.BasePreferenceHelper
    public void setTempOneActionUserId(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.tempOneActionUserId = str;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final SharedPreferences getMPref() {
        Object value = this.mPref$delegate.getValue();
        Intrinsics.checkNotNullExpressionValue(value, "<get-mPref>(...)");
        return (SharedPreferences) value;
    }

    @Override // com.iMe.storage.domain.storage.BasePreferenceHelper
    public boolean isKeyContains(String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        return getMPref().contains(key);
    }

    @Override // com.iMe.storage.domain.storage.BasePreferenceHelper
    public void clear() {
        getMPref().edit().clear().apply();
    }

    @Override // com.iMe.storage.domain.storage.BasePreferenceHelper
    public void remove(String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        getMPref().edit().remove(key).apply();
    }

    @Override // com.iMe.storage.domain.storage.BasePreferenceHelper
    public String withTgAccount(String key, String userId) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(userId, "userId");
        if (userId.length() == 0) {
            userId = getActualTgAccount();
        }
        return withPrefix(userId, key);
    }

    @Override // com.iMe.storage.domain.storage.BasePreferenceHelper
    public String withPrefix(String prefix, String key) {
        Intrinsics.checkNotNullParameter(prefix, "prefix");
        Intrinsics.checkNotNullParameter(key, "key");
        return prefix + '_' + key;
    }

    private final String getActualTgAccount() {
        String tempOneActionUserId = getTempOneActionUserId();
        return tempOneActionUserId.length() == 0 ? String.valueOf(this.telegramGateway.getSelectedAccountId()) : tempOneActionUserId;
    }
}