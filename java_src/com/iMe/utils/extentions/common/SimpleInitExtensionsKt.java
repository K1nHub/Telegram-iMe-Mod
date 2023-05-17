package com.iMe.utils.extentions.common;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.iMe.utils.base.SimpleBaseAdapter;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: SimpleInitExtensions.kt */
/* loaded from: classes4.dex */
public final class SimpleInitExtensionsKt {
    public static final <Item> void quickInit(RecyclerView recyclerView, List<? extends Item> items, int i, Function3<? super View, ? super Item, ? super Integer, Unit> bind) {
        Intrinsics.checkNotNullParameter(recyclerView, "<this>");
        Intrinsics.checkNotNullParameter(items, "items");
        Intrinsics.checkNotNullParameter(bind, "bind");
        recyclerView.setAdapter(new SimpleBaseAdapter(items, i, new SimpleInitExtensionsKt$quickInit$1(bind)));
    }
}
