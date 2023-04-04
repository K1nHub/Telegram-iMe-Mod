package com.iMe.p032ui.adapter.provider;

import android.os.Parcelable;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.provider.BaseNodeProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.iMe.common.IdFabric$ViewTypes;
import com.iMe.model.catalog.CampaignItem;
import com.iMe.model.catalog.CategoryWithCampaignsItem;
import com.iMe.p032ui.catalog.tabs.all.adapter.CatalogAllChannelsRecycleAdapter;
import com.iMe.p032ui.catalog.tabs.all.adapter.diff.ChannelsDiffCallback;
import com.iMe.utils.extentions.common.BaseQuickAdapterExtKt;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.koin.core.Koin;
import org.koin.core.component.KoinComponent;
import org.telegram.messenger.C3316R;
/* compiled from: CategoryWithCampaignsProvider.kt */
/* renamed from: com.iMe.ui.adapter.provider.CategoryWithCampaignsProvider */
/* loaded from: classes.dex */
public final class CategoryWithCampaignsProvider extends BaseNodeProvider<CategoryWithCampaignsItem> implements KoinComponent {
    private Function1<? super CampaignItem, Unit> onChannelItemClick = CategoryWithCampaignsProvider$onChannelItemClick$1.INSTANCE;
    private Function1<? super Long, Unit> onLoadMoreChannels = CategoryWithCampaignsProvider$onLoadMoreChannels$1.INSTANCE;
    private final int itemViewType = IdFabric$ViewTypes.CATALOG_CATEGORY_WITH_CAMPAIGNS;
    private final int layoutId = C3316R.layout.fork_recycle_item_catalog_category_preview;
    private final ChannelsDiffCallback channelsDiffCallback = new ChannelsDiffCallback();
    private Map<Integer, Parcelable> channelsRecyclersScrollStates = new LinkedHashMap();
    private final Map<Long, CatalogAllChannelsRecycleAdapter> channelsAdapters = new LinkedHashMap();

    @Override // org.koin.core.component.KoinComponent
    public Koin getKoin() {
        return KoinComponent.DefaultImpls.getKoin(this);
    }

    public final Function1<CampaignItem, Unit> getOnChannelItemClick() {
        return this.onChannelItemClick;
    }

    public final void setOnChannelItemClick(Function1<? super CampaignItem, Unit> function1) {
        Intrinsics.checkNotNullParameter(function1, "<set-?>");
        this.onChannelItemClick = function1;
    }

    public final Function1<Long, Unit> getOnLoadMoreChannels() {
        return this.onLoadMoreChannels;
    }

    public final void setOnLoadMoreChannels(Function1<? super Long, Unit> function1) {
        Intrinsics.checkNotNullParameter(function1, "<set-?>");
        this.onLoadMoreChannels = function1;
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
            Map<Integer, Parcelable> map = this.channelsRecyclersScrollStates;
            Integer valueOf = Integer.valueOf(holder.getAdapterPosition());
            RecyclerView.LayoutManager layoutManager = ((RecyclerView) holder.getView(C3316R.C3319id.recycle_channels)).getLayoutManager();
            map.put(valueOf, layoutManager != null ? layoutManager.onSaveInstanceState() : null);
        }
    }

    public final void clearAdaptersMap() {
        this.channelsAdapters.clear();
    }

    public final CatalogAllChannelsRecycleAdapter getChannelsAdapter(long j) {
        return this.channelsAdapters.get(Long.valueOf(j));
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public void convert(BaseViewHolder helper, CategoryWithCampaignsItem item) {
        Intrinsics.checkNotNullParameter(helper, "helper");
        Intrinsics.checkNotNullParameter(item, "item");
        int i = C3316R.C3319id.text_title;
        BaseQuickAdapterExtKt.applyForView(BaseQuickAdapterExtKt.setMediumTypeface(BaseQuickAdapterExtKt.setThemedTextColor(helper, i, "windowBackgroundWhiteGrayText2").setText(i, item.getCategory().getTitle()), i), C3316R.C3319id.recycle_channels, new CategoryWithCampaignsProvider$convert$1(this, helper, item));
    }
}
