package com.iMe.p032ui.shop.view;

import android.widget.ProgressBar;
import io.reactivex.disposables.Disposable;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
import org.telegram.p048ui.Components.RecyclerListView;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: GridBotsPageView.kt */
/* renamed from: com.iMe.ui.shop.view.GridBotsPageView$subscribeToContent$2 */
/* loaded from: classes3.dex */
public final class GridBotsPageView$subscribeToContent$2 extends Lambda implements Function1<Disposable, Unit> {
    final /* synthetic */ GridBotsPageView this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GridBotsPageView$subscribeToContent$2(GridBotsPageView gridBotsPageView) {
        super(1);
        this.this$0 = gridBotsPageView;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Disposable disposable) {
        invoke2(disposable);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(Disposable disposable) {
        RecyclerListView recyclerListView;
        ProgressBar progressBar;
        recyclerListView = this.this$0.recycler;
        recyclerListView.setVisibility(8);
        progressBar = this.this$0.progress;
        progressBar.setVisibility(0);
    }
}
