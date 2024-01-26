package com.facebook.flipper.plugins.inspector;

import android.content.Context;
import com.facebook.flipper.core.FlipperPlugin;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: InspectorFlipperPlugin.kt */
/* loaded from: classes.dex */
public final class InspectorFlipperPlugin implements FlipperPlugin {
    static {
        new Companion(null);
    }

    public InspectorFlipperPlugin(Context context, DescriptorMapping descriptorMapping) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(descriptorMapping, "descriptorMapping");
    }

    /* compiled from: InspectorFlipperPlugin.kt */
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
