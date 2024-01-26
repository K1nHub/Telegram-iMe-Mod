package com.iMe.storage.data.locale.prefs.impl;

import android.content.Context;
import android.content.SharedPreferences;
import com.iMe.storage.domain.gateway.TelegramGateway;
import com.iMe.storage.domain.storage.BasePreferenceHelper;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.functions.Function0;
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
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<SharedPreferences>() { // from class: com.iMe.storage.data.locale.prefs.impl.BasePreference$mPref$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final SharedPreferences invoke() {
                Context context2;
                String str;
                context2 = BasePreference.this.context;
                str = BasePreference.this.prefName;
                return context2.getSharedPreferences(str, 0);
            }
        });
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
