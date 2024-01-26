package com.iMe.storage.data.locale.prefs.impl;

import android.content.Context;
import com.iMe.storage.domain.gateway.TelegramGateway;
import com.iMe.storage.domain.storage.AnalyticsPreferenceHelper;
import com.iMe.storage.domain.storage.BasePreferenceHelper;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: AnalyticsPreference.kt */
/* loaded from: classes3.dex */
public final class AnalyticsPreference extends BasePreference implements AnalyticsPreferenceHelper {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AnalyticsPreference(TelegramGateway telegramGateway, Context context) {
        super("ime_analytics", telegramGateway, context);
        Intrinsics.checkNotNullParameter(telegramGateway, "telegramGateway");
        Intrinsics.checkNotNullParameter(context, "context");
    }

    @Override // com.iMe.storage.domain.storage.AnalyticsPreferenceHelper
    public long getActiveDesktopUserLastUpdateTime() {
        return getMPref().getLong(BasePreferenceHelper.CC.withTgAccount$default(this, "active_desktop_user_last_update_time", null, 2, null), -1L);
    }

    @Override // com.iMe.storage.domain.storage.AnalyticsPreferenceHelper
    public void setActiveDesktopUserLastUpdateTime(long j) {
        getMPref().edit().putLong(BasePreferenceHelper.CC.withTgAccount$default(this, "active_desktop_user_last_update_time", null, 2, null), j).apply();
    }

    @Override // com.iMe.storage.domain.storage.AnalyticsPreferenceHelper
    public long getOpenAsPremiumUserLastUpdateTime() {
        return getMPref().getLong(BasePreferenceHelper.CC.withTgAccount$default(this, "open_as_premium_user_last_update_time", null, 2, null), -1L);
    }

    @Override // com.iMe.storage.domain.storage.AnalyticsPreferenceHelper
    public void setOpenAsPremiumUserLastUpdateTime(long j) {
        getMPref().edit().putLong(BasePreferenceHelper.CC.withTgAccount$default(this, "open_as_premium_user_last_update_time", null, 2, null), j).apply();
    }
}
