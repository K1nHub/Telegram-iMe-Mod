package com.iMe.p031ui.adapter.provider;

import android.os.Parcelable;
import android.view.View;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.listener.OnItemClickListener;
import com.chad.library.adapter.base.listener.OnLoadMoreListener;
import com.chad.library.adapter.base.module.BaseLoadMoreModule;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.iMe.model.catalog.CampaignItem;
import com.iMe.model.catalog.CategoryWithCampaignsItem;
import com.iMe.p031ui.catalog.tabs.all.adapter.CatalogAllChannelsRecycleAdapter;
import com.iMe.p031ui.catalog.tabs.all.adapter.diff.ChannelsDiffCallback;
import com.iMe.p031ui.custom.HorizontalLoadMoreView;
import com.iMe.utils.extentions.common.RecycleViewExtKt;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.koin.p042mp.KoinPlatformTools;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CategoryWithCampaignsProvider.kt */
/* renamed from: com.iMe.ui.adapter.provider.CategoryWithCampaignsProvider$convert$1 */
/* loaded from: classes.dex */
public final class CategoryWithCampaignsProvider$convert$1 extends Lambda implements Function1<RecyclerView, Unit> {
    final /* synthetic */ BaseViewHolder $helper;
    final /* synthetic */ CategoryWithCampaignsItem $item;
    final /* synthetic */ CategoryWithCampaignsProvider this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CategoryWithCampaignsProvider$convert$1(CategoryWithCampaignsProvider categoryWithCampaignsProvider, BaseViewHolder baseViewHolder, CategoryWithCampaignsItem categoryWithCampaignsItem) {
        super(1);
        this.this$0 = categoryWithCampaignsProvider;
        this.$helper = baseViewHolder;
        this.$item = categoryWithCampaignsItem;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(RecyclerView recyclerView) {
        invoke2(recyclerView);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(RecyclerView applyForView) {
        Map map;
        Lazy lazy;
        ChannelsDiffCallback channelsDiffCallback;
        Map map2;
        Intrinsics.checkNotNullParameter(applyForView, "$this$applyForView");
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(applyForView.getContext(), 0, false);
        CategoryWithCampaignsProvider categoryWithCampaignsProvider = this.this$0;
        BaseViewHolder baseViewHolder = this.$helper;
        linearLayoutManager.setInitialPrefetchItemCount(4);
        map = categoryWithCampaignsProvider.channelsRecyclersScrollStates;
        RecycleViewExtKt.restoreScrollState(linearLayoutManager, (Parcelable) map.get(Integer.valueOf(baseViewHolder.getAdapterPosition())));
        applyForView.setLayoutManager(linearLayoutManager);
        lazy = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new C1992x81d5b2c4(this.this$0, null, null));
        CatalogAllChannelsRecycleAdapter invoke$lambda$1 = invoke$lambda$1(lazy);
        final CategoryWithCampaignsItem categoryWithCampaignsItem = this.$item;
        final CategoryWithCampaignsProvider categoryWithCampaignsProvider2 = this.this$0;
        invoke$lambda$1.setNewInstance(categoryWithCampaignsItem.getCampaigns());
        channelsDiffCallback = categoryWithCampaignsProvider2.channelsDiffCallback;
        invoke$lambda$1.setDiffCallback(channelsDiffCallback);
        invoke$lambda$1.setOnItemClickListener(new OnItemClickListener() { // from class: com.iMe.ui.adapter.provider.CategoryWithCampaignsProvider$convert$1$$ExternalSyntheticLambda0
            @Override // com.chad.library.adapter.base.listener.OnItemClickListener
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                CategoryWithCampaignsProvider$convert$1.invoke$lambda$5$lambda$2(CategoryWithCampaignsProvider.this, baseQuickAdapter, view, i);
            }
        });
        BaseLoadMoreModule loadMoreModule = invoke$lambda$1.getLoadMoreModule();
        loadMoreModule.setPreLoadNumber(categoryWithCampaignsItem.getCampaigns().size());
        loadMoreModule.setOnLoadMoreListener(new OnLoadMoreListener() { // from class: com.iMe.ui.adapter.provider.CategoryWithCampaignsProvider$convert$1$$ExternalSyntheticLambda1
            @Override // com.chad.library.adapter.base.listener.OnLoadMoreListener
            public final void onLoadMore() {
                CategoryWithCampaignsProvider$convert$1.invoke$lambda$5$lambda$4$lambda$3(CategoryWithCampaignsProvider.this, categoryWithCampaignsItem);
            }
        });
        loadMoreModule.setLoadMoreView(new HorizontalLoadMoreView());
        if (categoryWithCampaignsItem.isEndReached()) {
            loadMoreModule.loadMoreEnd(true);
        } else {
            loadMoreModule.loadMoreComplete();
        }
        map2 = categoryWithCampaignsProvider2.channelsAdapters;
        map2.put(Long.valueOf(categoryWithCampaignsItem.getCategory().getId()), invoke$lambda$1);
        applyForView.setAdapter(invoke$lambda$1);
        RecycleViewExtKt.setHorizontalRecyclerInPagerScrollHelper(applyForView);
    }

    private static final CatalogAllChannelsRecycleAdapter invoke$lambda$1(Lazy<CatalogAllChannelsRecycleAdapter> lazy) {
        return lazy.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void invoke$lambda$5$lambda$2(CategoryWithCampaignsProvider this$0, BaseQuickAdapter adapter, View view, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(adapter, "adapter");
        Intrinsics.checkNotNullParameter(view, "<anonymous parameter 1>");
        Function1<CampaignItem, Unit> onChannelItemClick = this$0.getOnChannelItemClick();
        Object item = adapter.getItem(i);
        CampaignItem campaignItem = item instanceof CampaignItem ? (CampaignItem) item : null;
        if (campaignItem == null) {
            return;
        }
        onChannelItemClick.invoke(campaignItem);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void invoke$lambda$5$lambda$4$lambda$3(CategoryWithCampaignsProvider this$0, CategoryWithCampaignsItem item) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(item, "$item");
        this$0.getOnLoadMoreChannels().invoke(Long.valueOf(item.getCategory().getId()));
    }
}
