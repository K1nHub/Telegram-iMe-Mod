package com.facebook.soloader;

import android.content.Context;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: SoLoader.kt */
/* loaded from: classes.dex */
public final class SoLoader {
    public static final SoLoader INSTANCE = new SoLoader();

    public final void init(Context context, boolean z) {
        Intrinsics.checkNotNullParameter(context, "context");
    }

    private SoLoader() {
    }
}
