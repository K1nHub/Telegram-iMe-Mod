package com.iMe.storage.data.locale.prefs.impl;

import android.content.Context;
import android.content.SharedPreferences;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: BasePreference.kt */
/* loaded from: classes3.dex */
public final class BasePreference$mPref$2 extends Lambda implements Function0<SharedPreferences> {
    final /* synthetic */ BasePreference this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BasePreference$mPref$2(BasePreference basePreference) {
        super(0);
        this.this$0 = basePreference;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final SharedPreferences invoke() {
        Context context;
        String str;
        context = this.this$0.context;
        str = this.this$0.prefName;
        return context.getSharedPreferences(str, 0);
    }
}
