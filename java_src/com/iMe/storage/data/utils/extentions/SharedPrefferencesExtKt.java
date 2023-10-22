package com.iMe.storage.data.utils.extentions;

import android.content.SharedPreferences;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: SharedPrefferencesExt.kt */
/* loaded from: classes3.dex */
public final class SharedPrefferencesExtKt {
    public static final void putInt(SharedPreferences sharedPreferences, String key, int i) {
        Intrinsics.checkNotNullParameter(sharedPreferences, "<this>");
        Intrinsics.checkNotNullParameter(key, "key");
        sharedPreferences.edit().putInt(key, i).apply();
    }
}
