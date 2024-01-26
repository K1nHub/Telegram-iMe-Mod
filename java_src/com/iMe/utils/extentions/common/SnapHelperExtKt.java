package com.iMe.utils.extentions.common;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.SnapHelper;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: SnapHelperExt.kt */
/* loaded from: classes4.dex */
public final class SnapHelperExtKt {
    public static final int getSnapPosition(SnapHelper snapHelper, RecyclerView recyclerView) {
        View findSnapView;
        Intrinsics.checkNotNullParameter(snapHelper, "<this>");
        Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
        RecyclerView.LayoutManager layoutManager = recyclerView.getLayoutManager();
        if (layoutManager == null || (findSnapView = snapHelper.findSnapView(layoutManager)) == null) {
            return -1;
        }
        return layoutManager.getPosition(findSnapView);
    }
}
