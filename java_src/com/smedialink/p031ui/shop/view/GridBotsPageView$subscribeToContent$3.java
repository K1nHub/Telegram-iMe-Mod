package com.smedialink.p031ui.shop.view;

import android.widget.ProgressBar;
import com.smedialink.p031ui.shop.view.adapter.BotsCategoriesAdapter;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.telegram.p048ui.Components.RecyclerListView;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: GridBotsPageView.kt */
/* renamed from: com.smedialink.ui.shop.view.GridBotsPageView$subscribeToContent$3 */
/* loaded from: classes3.dex */
public final class GridBotsPageView$subscribeToContent$3 extends Lambda implements Function1<List<Object>, Unit> {
    final /* synthetic */ GridBotsPageView this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GridBotsPageView$subscribeToContent$3(GridBotsPageView gridBotsPageView) {
        super(1);
        this.this$0 = gridBotsPageView;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(List<Object> list) {
        invoke2(list);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(List<Object> content) {
        ProgressBar progressBar;
        RecyclerListView recyclerListView;
        BotsCategoriesAdapter botsCategoriesAdapter;
        RecyclerListView recyclerListView2;
        ProgressBar progressBar2;
        progressBar = this.this$0.progress;
        if (progressBar.getVisibility() != 8) {
            progressBar2 = this.this$0.progress;
            progressBar2.setVisibility(8);
        }
        recyclerListView = this.this$0.recycler;
        if (recyclerListView.getVisibility() != 0) {
            recyclerListView2 = this.this$0.recycler;
            recyclerListView2.setVisibility(0);
        }
        botsCategoriesAdapter = this.this$0.recyclerAdapter;
        Intrinsics.checkNotNullExpressionValue(content, "content");
        botsCategoriesAdapter.setContent(content);
    }
}
