package com.smedialink.storage.data.locale.prefs.impl;

import android.content.Context;
import com.smedialink.storage.domain.gateway.TelegramGateway;
import com.smedialink.storage.domain.model.wallet.Hint;
import com.smedialink.storage.domain.storage.BasePreferenceHelper;
import com.smedialink.storage.domain.storage.HintsPreferenceHelper;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: HintsPreference.kt */
/* loaded from: classes3.dex */
public final class HintsPreference extends BasePreference implements HintsPreferenceHelper {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HintsPreference(Context context, TelegramGateway telegramGateway) {
        super("ime_hints_prefs", telegramGateway, context);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(telegramGateway, "telegramGateway");
    }

    @Override // com.smedialink.storage.domain.storage.HintsPreferenceHelper
    public boolean shouldShowHint(Hint hint) {
        Intrinsics.checkNotNullParameter(hint, "hint");
        return getMPref().getInt(BasePreferenceHelper.DefaultImpls.withTgAccount$default(this, hint.getPrefsKey(), null, 2, null), 0) < hint.getTimesToShow();
    }

    @Override // com.smedialink.storage.domain.storage.HintsPreferenceHelper
    public void onHintShowed(Hint hint) {
        Intrinsics.checkNotNullParameter(hint, "hint");
        getMPref().edit().putInt(BasePreferenceHelper.DefaultImpls.withTgAccount$default(this, hint.getPrefsKey(), null, 2, null), getMPref().getInt(BasePreferenceHelper.DefaultImpls.withTgAccount$default(this, hint.getPrefsKey(), null, 2, null), 0) + 1).apply();
    }
}
