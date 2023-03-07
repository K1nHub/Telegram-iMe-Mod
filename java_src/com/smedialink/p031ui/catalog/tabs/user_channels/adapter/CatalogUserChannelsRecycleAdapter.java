package com.smedialink.p031ui.catalog.tabs.user_channels.adapter;

import com.chad.library.adapter.base.BaseNodeAdapter;
import com.chad.library.adapter.base.entity.node.BaseNode;
import com.chad.library.adapter.base.module.LoadMoreModule;
import com.smedialink.common.IdFabric$ViewTypes;
import com.smedialink.model.catalog.CreateCampaignItem;
import com.smedialink.p031ui.adapter.provider.CreateCampaignProvider;
import com.smedialink.utils.extentions.common.BaseQuickAdapterExtKt;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: CatalogUserChannelsRecycleAdapter.kt */
/* renamed from: com.smedialink.ui.catalog.tabs.user_channels.adapter.CatalogUserChannelsRecycleAdapter */
/* loaded from: classes3.dex */
public final class CatalogUserChannelsRecycleAdapter extends BaseNodeAdapter<BaseNode> implements LoadMoreModule {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CatalogUserChannelsRecycleAdapter(CreateCampaignProvider createCampaignProvider) {
        super(null, 1, null);
        Intrinsics.checkNotNullParameter(createCampaignProvider, "createCampaignProvider");
        addItemProvider(BaseQuickAdapterExtKt.asItem(createCampaignProvider));
    }

    @Override // com.chad.library.adapter.base.BaseProviderMultiAdapter
    protected int getItemType(List<? extends BaseNode> data, int i) {
        Intrinsics.checkNotNullParameter(data, "data");
        return data.get(i) instanceof CreateCampaignItem ? IdFabric$ViewTypes.CATALOG_CREATE : IdFabric$ViewTypes.CATALOG_CREATE;
    }
}
