package com.smedialink.p031ui.catalog.tabs.categories.adapter;

import com.chad.library.adapter.base.BaseNodeAdapter;
import com.chad.library.adapter.base.entity.node.BaseNode;
import com.chad.library.adapter.base.module.LoadMoreModule;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.smedialink.common.IdFabric$ViewTypes;
import com.smedialink.model.catalog.CampaignItem;
import com.smedialink.model.common.FiltersListItem;
import com.smedialink.model.common.GlobalStateItem;
import com.smedialink.p031ui.adapter.provider.CampaignProvider;
import com.smedialink.p031ui.adapter.provider.FilterProvider;
import com.smedialink.p031ui.adapter.provider.GlobalStateProvider;
import com.smedialink.utils.extentions.common.BaseQuickAdapterExtKt;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: CatalogCampaignsByCategoriesRecycleAdapter.kt */
/* renamed from: com.smedialink.ui.catalog.tabs.categories.adapter.CatalogCampaignsByCategoriesRecycleAdapter */
/* loaded from: classes3.dex */
public final class CatalogCampaignsByCategoriesRecycleAdapter extends BaseNodeAdapter<BaseNode> implements LoadMoreModule {
    private final FilterProvider filterProvider;
    private final GlobalStateProvider globalStateProvider;

    public final FilterProvider getFilterProvider() {
        return this.filterProvider;
    }

    public final GlobalStateProvider getGlobalStateProvider() {
        return this.globalStateProvider;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CatalogCampaignsByCategoriesRecycleAdapter(FilterProvider filterProvider, GlobalStateProvider globalStateProvider, CampaignProvider campaignProvider) {
        super(null, 1, null);
        Intrinsics.checkNotNullParameter(filterProvider, "filterProvider");
        Intrinsics.checkNotNullParameter(globalStateProvider, "globalStateProvider");
        Intrinsics.checkNotNullParameter(campaignProvider, "campaignProvider");
        this.filterProvider = filterProvider;
        this.globalStateProvider = globalStateProvider;
        addItemProvider(BaseQuickAdapterExtKt.asItem(filterProvider));
        addItemProvider(BaseQuickAdapterExtKt.asItem(campaignProvider));
        addItemProvider(BaseQuickAdapterExtKt.asItem(globalStateProvider));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onViewRecycled(BaseViewHolder holder) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        super.onViewRecycled((CatalogCampaignsByCategoriesRecycleAdapter) holder);
        this.filterProvider.onViewRecycled(holder);
    }

    @Override // com.chad.library.adapter.base.BaseProviderMultiAdapter
    protected int getItemType(List<? extends BaseNode> data, int i) {
        Intrinsics.checkNotNullParameter(data, "data");
        BaseNode baseNode = data.get(i);
        return baseNode instanceof FiltersListItem ? IdFabric$ViewTypes.FILTERS_LIST : baseNode instanceof CampaignItem ? IdFabric$ViewTypes.CATALOG_CAMPAIGN : baseNode instanceof GlobalStateItem ? IdFabric$ViewTypes.GLOBAL_STATE : IdFabric$ViewTypes.CATALOG_CAMPAIGN;
    }
}
