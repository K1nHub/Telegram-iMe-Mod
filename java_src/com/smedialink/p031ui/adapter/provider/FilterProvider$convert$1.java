package com.smedialink.p031ui.adapter.provider;

import android.os.Parcelable;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.smedialink.model.common.FiltersListItem;
import com.smedialink.p031ui.adapter.FiltersRecycleAdapter;
import com.smedialink.p031ui.adapter.diff.FiltersDiffCallback;
import com.smedialink.utils.extentions.common.RecycleViewExtKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: FilterProvider.kt */
/* renamed from: com.smedialink.ui.adapter.provider.FilterProvider$convert$1 */
/* loaded from: classes3.dex */
public final class FilterProvider$convert$1 extends Lambda implements Function1<RecyclerView, Unit> {
    final /* synthetic */ FiltersListItem $item;
    final /* synthetic */ FilterProvider this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FilterProvider$convert$1(FilterProvider filterProvider, FiltersListItem filtersListItem) {
        super(1);
        this.this$0 = filterProvider;
        this.$item = filtersListItem;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(RecyclerView recyclerView) {
        invoke2(recyclerView);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(RecyclerView applyForView) {
        Parcelable parcelable;
        FiltersDiffCallback filtersDiffCallback;
        Intrinsics.checkNotNullParameter(applyForView, "$this$applyForView");
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(applyForView.getContext(), 0, false);
        FilterProvider filterProvider = this.this$0;
        linearLayoutManager.setInitialPrefetchItemCount(4);
        parcelable = filterProvider.filtersScrollState;
        RecycleViewExtKt.restoreScrollState(linearLayoutManager, parcelable);
        Unit unit = Unit.INSTANCE;
        applyForView.setLayoutManager(linearLayoutManager);
        FiltersRecycleAdapter filtersRecycleAdapter = this.this$0.getFiltersRecycleAdapter();
        FiltersListItem filtersListItem = this.$item;
        FilterProvider filterProvider2 = this.this$0;
        filtersRecycleAdapter.setNewInstance(filtersListItem.getFilters());
        filtersDiffCallback = filterProvider2.filtersDiffCallback;
        filtersRecycleAdapter.setDiffCallback(filtersDiffCallback);
        filtersRecycleAdapter.setOnItemClickListener(filterProvider2.getOnFilterClickListener());
        applyForView.setAdapter(filtersRecycleAdapter);
        RecycleViewExtKt.preventScrollByParent(applyForView);
    }
}
