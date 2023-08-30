package com.facebook.soloader;

import android.content.Context;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: SoLoader.kt */
/* loaded from: classes.dex */
public final class SoLoader {
    static {
        new SoLoader();
    }

    public static final void init(Context context, boolean z) {
        Intrinsics.checkNotNullParameter(context, "context");
    }

    private SoLoader() {
    }
}
