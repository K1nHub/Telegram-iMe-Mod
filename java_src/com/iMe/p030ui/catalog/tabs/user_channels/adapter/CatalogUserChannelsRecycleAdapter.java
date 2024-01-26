package com.iMe.p030ui.catalog.tabs.user_channels.adapter;

import com.chad.library.adapter.base.BaseNodeAdapter;
import com.chad.library.adapter.base.entity.node.BaseNode;
import com.chad.library.adapter.base.module.LoadMoreModule;
import com.iMe.common.IdFabric$ViewTypes;
import com.iMe.model.catalog.CreateCampaignItem;
import com.iMe.p030ui.adapter.provider.CreateCampaignProvider;
import com.iMe.utils.extentions.common.BaseQuickAdapterExtKt;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: CatalogUserChannelsRecycleAdapter.kt */
/* renamed from: com.iMe.ui.catalog.tabs.user_channels.adapter.CatalogUserChannelsRecycleAdapter */
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
