package com.facebook.flipper.plugins.inspector;

import android.content.Context;
import com.facebook.flipper.core.FlipperPlugin;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: InspectorFlipperPlugin.kt */
/* loaded from: classes.dex */
public final class InspectorFlipperPlugin implements FlipperPlugin {
    public InspectorFlipperPlugin(Context context, DescriptorMapping descriptorMapping) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(descriptorMapping, "descriptorMapping");
    }
}
