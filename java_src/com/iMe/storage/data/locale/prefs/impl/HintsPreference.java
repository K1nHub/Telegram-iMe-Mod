package com.iMe.storage.data.locale.prefs.impl;

import android.content.Context;
import com.iMe.storage.domain.gateway.TelegramGateway;
import com.iMe.storage.domain.model.wallet.Hint;
import com.iMe.storage.domain.storage.BasePreferenceHelper;
import com.iMe.storage.domain.storage.HintsPreferenceHelper;
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

    @Override // com.iMe.storage.domain.storage.HintsPreferenceHelper
    public boolean shouldShowHint(Hint hint) {
        Intrinsics.checkNotNullParameter(hint, "hint");
        return getMPref().getInt(BasePreferenceHelper.CC.withTgAccount$default(this, hint.getPrefsKey(), null, 2, null), 0) < hint.getTimesToShow();
    }

    @Override // com.iMe.storage.domain.storage.HintsPreferenceHelper
    public void onHintShowed(Hint hint) {
        Intrinsics.checkNotNullParameter(hint, "hint");
        getMPref().edit().putInt(BasePreferenceHelper.CC.withTgAccount$default(this, hint.getPrefsKey(), null, 2, null), getMPref().getInt(BasePreferenceHelper.CC.withTgAccount$default(this, hint.getPrefsKey(), null, 2, null), 0) + 1).apply();
    }
}
