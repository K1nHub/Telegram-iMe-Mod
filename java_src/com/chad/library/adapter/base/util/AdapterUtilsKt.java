package com.chad.library.adapter.base.util;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: AdapterUtils.kt */
/* loaded from: classes.dex */
public final class AdapterUtilsKt {
    public static final View getItemView(ViewGroup viewGroup, int i) {
        Intrinsics.checkNotNullParameter(viewGroup, "<this>");
        View inflate = LayoutInflater.from(viewGroup.getContext()).inflate(i, viewGroup, false);
        Intrinsics.checkNotNullExpressionValue(inflate, "from(this.context).infla…layoutResId, this, false)");
        return inflate;
    }
}
