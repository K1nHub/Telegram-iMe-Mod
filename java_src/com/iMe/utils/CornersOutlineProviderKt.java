package com.iMe.utils;

import android.view.View;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: CornersOutlineProvider.kt */
/* loaded from: classes6.dex */
public final class CornersOutlineProviderKt {
    public static /* synthetic */ void roundCorners$default(View view, float f, int i, Object obj) {
        if ((i & 1) != 0) {
            f = 4.0f;
        }
        roundCorners(view, f);
    }

    public static final void roundCorners(View view, float f) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        view.setOutlineProvider(new CornersOutlineProvider(null, f, 1, null));
        view.setClipToOutline(true);
    }
}
