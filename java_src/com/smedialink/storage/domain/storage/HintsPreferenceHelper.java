package com.smedialink.storage.domain.storage;

import com.smedialink.storage.domain.model.wallet.Hint;
/* compiled from: HintsPreferenceHelper.kt */
/* loaded from: classes3.dex */
public interface HintsPreferenceHelper extends BasePreferenceHelper {
    void onHintShowed(Hint hint);

    boolean shouldShowHint(Hint hint);
}
