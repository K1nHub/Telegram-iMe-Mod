package com.iMe.p032ui.shop.util;

import android.content.Context;
import android.content.res.Resources;
import androidx.core.content.ContextCompat;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: ContextExt.kt */
/* renamed from: com.iMe.ui.shop.util.ContextExtKt */
/* loaded from: classes3.dex */
public final class ContextExtKt {
    public static final int color(Context context, int i) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        return ContextCompat.getColor(context, i);
    }

    public static final int pxToDp(Context context, int i) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        return Math.round(i / (Resources.getSystem().getDisplayMetrics().xdpi / 160));
    }
}
