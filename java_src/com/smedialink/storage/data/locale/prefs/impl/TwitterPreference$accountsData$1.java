package com.smedialink.storage.data.locale.prefs.impl;

import com.smedialink.storage.domain.storage.BasePreferenceHelper;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* compiled from: TwitterPreference.kt */
/* loaded from: classes3.dex */
final class TwitterPreference$accountsData$1 extends Lambda implements Function0<String> {
    final /* synthetic */ TwitterPreference this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TwitterPreference$accountsData$1(TwitterPreference twitterPreference) {
        super(0);
        this.this$0 = twitterPreference;
    }

    @Override // kotlin.jvm.functions.Function0
    public final String invoke() {
        return BasePreferenceHelper.DefaultImpls.withTgAccount$default(this.this$0, "account_data", null, 2, null);
    }
}
