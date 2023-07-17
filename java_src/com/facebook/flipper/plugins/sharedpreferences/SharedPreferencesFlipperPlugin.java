package com.facebook.flipper.plugins.sharedpreferences;

import android.content.Context;
import com.facebook.flipper.core.FlipperPlugin;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: SharedPreferencesFlipperPlugin.kt */
/* loaded from: classes.dex */
public final class SharedPreferencesFlipperPlugin implements FlipperPlugin {
    static {
        new Companion(null);
    }

    public SharedPreferencesFlipperPlugin(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* compiled from: SharedPreferencesFlipperPlugin.kt */
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
