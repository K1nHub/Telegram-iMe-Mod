package com.iMe.p030ui.adapter.provider;

import android.os.Parcelable;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.listener.OnItemClickListener;
import com.chad.library.adapter.base.provider.BaseNodeProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.iMe.common.IdFabric$ViewTypes;
import com.iMe.model.common.FiltersListItem;
import com.iMe.p030ui.adapter.FiltersRecycleAdapter;
import com.iMe.p030ui.adapter.diff.FiltersDiffCallback;
import com.iMe.utils.extentions.common.BaseQuickAdapterExtKt;
import com.iMe.utils.extentions.common.RecycleViewExtKt;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3632R;
/* compiled from: FilterProvider.kt */
/* renamed from: com.iMe.ui.adapter.provider.FilterProvider */
/* loaded from: classes.dex */
public final class FilterProvider extends BaseNodeProvider<FiltersListItem> {
    private final FiltersDiffCallback filtersDiffCallback;
    private final FiltersRecycleAdapter filtersRecycleAdapter;
    private Parcelable filtersScrollState;
    private final int itemViewType;
    private final int layoutId;
    private OnItemClickListener onFilterClickListener;

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public /* bridge */ /* synthetic */ void convert(BaseViewHolder baseViewHolder, Object obj, List list) {
        convert(baseViewHolder, (FiltersListItem) obj, (List<? extends Object>) list);
    }

    public final FiltersRecycleAdapter getFiltersRecycleAdapter() {
        return this.filtersRecycleAdapter;
    }

    public FilterProvider(FiltersRecycleAdapter filtersRecycleAdapter) {
        Intrinsics.checkNotNullParameter(filtersRecycleAdapter, "filtersRecycleAdapter");
        this.filtersRecycleAdapter = filtersRecycleAdapter;
        this.itemViewType = IdFabric$ViewTypes.FILTERS_LIST;
        this.layoutId = C3632R.layout.fork_recycle_item_filters_list;
        this.filtersDiffCallback = new FiltersDiffCallback();
    }

    public final OnItemClickListener getOnFilterClickListener() {
        return this.onFilterClickListener;
    }

    public final void setOnFilterClickListener(OnItemClickListener onItemClickListener) {
        this.onFilterClickListener = onItemClickListener;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int getItemViewType() {
        return this.itemViewType;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int getLayoutId() {
        return this.layoutId;
    }

    public final void onViewRecycled(BaseViewHolder holder) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        if (BaseQuickAdapterExtKt.isViewType(holder, getItemViewType())) {
            RecyclerView.LayoutManager layoutManager = ((RecyclerView) holder.getView(C3632R.C3635id.recycle_filters)).getLayoutManager();
            this.filtersScrollState = layoutManager != null ? layoutManager.onSaveInstanceState() : null;
        }
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public void convert(BaseViewHolder helper, final FiltersListItem item) {
        Intrinsics.checkNotNullParameter(helper, "helper");
        Intrinsics.checkNotNullParameter(item, "item");
        BaseQuickAdapterExtKt.applyForView(helper, C3632R.C3635id.recycle_filters, new Function1<RecyclerView, Unit>() { // from class: com.iMe.ui.adapter.provider.FilterProvider$convert$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
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
                FilterProvider filterProvider = FilterProvider.this;
                linearLayoutManager.setInitialPrefetchItemCount(4);
                parcelable = filterProvider.filtersScrollState;
                RecycleViewExtKt.restoreScrollState(linearLayoutManager, parcelable);
                applyForView.setLayoutManager(linearLayoutManager);
                FiltersRecycleAdapter filtersRecycleAdapter = FilterProvider.this.getFiltersRecycleAdapter();
                FiltersListItem filtersListItem = item;
                FilterProvider filterProvider2 = FilterProvider.this;
                filtersRecycleAdapter.setNewInstance(filtersListItem.getFilters());
                filtersDiffCallback = filterProvider2.filtersDiffCallback;
                filtersRecycleAdapter.setDiffCallback(filtersDiffCallback);
                filtersRecycleAdapter.setOnItemClickListener(filterProvider2.getOnFilterClickListener());
                applyForView.setAdapter(filtersRecycleAdapter);
                RecycleViewExtKt.preventScrollByParent(applyForView);
            }
        });
    }

    public void convert(BaseViewHolder helper, FiltersListItem item, List<? extends Object> payloads) {
        Intrinsics.checkNotNullParameter(helper, "helper");
        Intrinsics.checkNotNullParameter(item, "item");
        Intrinsics.checkNotNullParameter(payloads, "payloads");
        BaseQuickAdapter.setDiffNewData$default(this.filtersRecycleAdapter, item.getFilters(), null, 2, null);
    }
}
