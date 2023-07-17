package com.iMe.p031ui.adapter.provider;

import android.os.Parcelable;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.listener.OnItemClickListener;
import com.chad.library.adapter.base.provider.BaseNodeProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.iMe.common.IdFabric$ViewTypes;
import com.iMe.model.common.FiltersListItem;
import com.iMe.p031ui.adapter.FiltersRecycleAdapter;
import com.iMe.p031ui.adapter.diff.FiltersDiffCallback;
import com.iMe.utils.extentions.common.BaseQuickAdapterExtKt;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3417R;
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
        this.layoutId = C3417R.layout.fork_recycle_item_filters_list;
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
            RecyclerView.LayoutManager layoutManager = ((RecyclerView) holder.getView(C3417R.C3420id.recycle_filters)).getLayoutManager();
            this.filtersScrollState = layoutManager != null ? layoutManager.onSaveInstanceState() : null;
        }
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public void convert(BaseViewHolder helper, FiltersListItem item) {
        Intrinsics.checkNotNullParameter(helper, "helper");
        Intrinsics.checkNotNullParameter(item, "item");
        BaseQuickAdapterExtKt.applyForView(helper, C3417R.C3420id.recycle_filters, new FilterProvider$convert$1(this, item));
    }

    public void convert(BaseViewHolder helper, FiltersListItem item, List<? extends Object> payloads) {
        Intrinsics.checkNotNullParameter(helper, "helper");
        Intrinsics.checkNotNullParameter(item, "item");
        Intrinsics.checkNotNullParameter(payloads, "payloads");
        BaseQuickAdapter.setDiffNewData$default(this.filtersRecycleAdapter, item.getFilters(), null, 2, null);
    }
}
