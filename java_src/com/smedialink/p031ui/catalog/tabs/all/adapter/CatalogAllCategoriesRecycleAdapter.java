package com.smedialink.p031ui.catalog.tabs.all.adapter;

import com.chad.library.adapter.base.BaseNodeAdapter;
import com.chad.library.adapter.base.entity.node.BaseNode;
import com.chad.library.adapter.base.module.LoadMoreModule;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.smedialink.common.IdFabric$ViewTypes;
import com.smedialink.model.catalog.CategoryWithCampaignsItem;
import com.smedialink.p031ui.adapter.provider.CategoryWithCampaignsProvider;
import com.smedialink.utils.extentions.common.BaseQuickAdapterExtKt;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: CatalogAllCategoriesRecycleAdapter.kt */
/* renamed from: com.smedialink.ui.catalog.tabs.all.adapter.CatalogAllCategoriesRecycleAdapter */
/* loaded from: classes3.dex */
public final class CatalogAllCategoriesRecycleAdapter extends BaseNodeAdapter<BaseNode> implements LoadMoreModule {
    private final CategoryWithCampaignsProvider categoryWithCampaignsProvider;

    public final CategoryWithCampaignsProvider getCategoryWithCampaignsProvider() {
        return this.categoryWithCampaignsProvider;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CatalogAllCategoriesRecycleAdapter(CategoryWithCampaignsProvider categoryWithCampaignsProvider) {
        super(null, 1, null);
        Intrinsics.checkNotNullParameter(categoryWithCampaignsProvider, "categoryWithCampaignsProvider");
        this.categoryWithCampaignsProvider = categoryWithCampaignsProvider;
        addItemProvider(BaseQuickAdapterExtKt.asItem(categoryWithCampaignsProvider));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onViewRecycled(BaseViewHolder holder) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        super.onViewRecycled((CatalogAllCategoriesRecycleAdapter) holder);
        this.categoryWithCampaignsProvider.onViewRecycled(holder);
    }

    @Override // com.chad.library.adapter.base.BaseNodeAdapter, com.chad.library.adapter.base.BaseQuickAdapter
    public void setNewInstance(List<BaseNode> list) {
        this.categoryWithCampaignsProvider.clearAdaptersMap();
        super.setNewInstance(list);
    }

    @Override // com.chad.library.adapter.base.BaseProviderMultiAdapter
    protected int getItemType(List<? extends BaseNode> data, int i) {
        Intrinsics.checkNotNullParameter(data, "data");
        return data.get(i) instanceof CategoryWithCampaignsItem ? IdFabric$ViewTypes.CATALOG_CATEGORY_WITH_CAMPAIGNS : IdFabric$ViewTypes.CATALOG_CATEGORY_WITH_CAMPAIGNS;
    }
}
