package com.tbuonomo.viewpagerdotsindicator;

import android.view.View;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: ViewExt.kt */
/* loaded from: classes3.dex */
public final class ViewExtKt {
    public static final void setPaddingHorizontal(View setPaddingHorizontal, int i) {
        Intrinsics.checkNotNullParameter(setPaddingHorizontal, "$this$setPaddingHorizontal");
        setPaddingHorizontal.setPadding(i, setPaddingHorizontal.getPaddingTop(), i, setPaddingHorizontal.getPaddingBottom());
    }

    public static final void setPaddingVertical(View setPaddingVertical, int i) {
        Intrinsics.checkNotNullParameter(setPaddingVertical, "$this$setPaddingVertical");
        setPaddingVertical.setPadding(setPaddingVertical.getPaddingLeft(), i, setPaddingVertical.getPaddingRight(), i);
    }
}
