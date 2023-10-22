package com.iMe.p030ui.adapter.provider;

import android.os.Parcelable;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.PagerSnapHelper;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.listener.OnItemClickListener;
import com.chad.library.adapter.base.listener.OnItemLongClickListener;
import com.chad.library.adapter.base.provider.BaseNodeProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.iMe.common.IdFabric$ViewTypes;
import com.iMe.model.wallet.home.BannerItem;
import com.iMe.p030ui.wallet.home.adapter.BannersRecycleAdapter;
import com.iMe.p030ui.wallet.home.adapter.diff.BannerSlideDiffCallback;
import com.iMe.utils.extentions.common.BaseQuickAdapterExtKt;
import com.iMe.utils.extentions.common.RecycleViewExtKt;
import com.iMe.utils.extentions.common.ViewExtKt;
import com.iMe.utils.listeners.OnSnapPositionChangeListener;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3630R;
import org.telegram.p042ui.ActionBar.Theme;
import ru.tinkoff.scrollingpagerindicator.ScrollingPagerIndicator;
/* compiled from: BannerProvider.kt */
/* renamed from: com.iMe.ui.adapter.provider.BannerProvider */
/* loaded from: classes.dex */
public final class BannerProvider extends BaseNodeProvider<BannerItem> {
    private OnItemClickListener bannerOnItemClickListener;
    private OnItemLongClickListener bannerOnItemLongClickListener;
    private Parcelable bannerScrollState;
    private final PagerSnapHelper bannerSnapHelper;
    private final BannerSlideDiffCallback bannersDiffCallback;
    private final BannersRecycleAdapter bannersRecycleAdapter;
    private final int itemViewType;
    private final int layoutId;

    public final BannersRecycleAdapter getBannersRecycleAdapter() {
        return this.bannersRecycleAdapter;
    }

    public BannerProvider(BannersRecycleAdapter bannersRecycleAdapter) {
        Intrinsics.checkNotNullParameter(bannersRecycleAdapter, "bannersRecycleAdapter");
        this.bannersRecycleAdapter = bannersRecycleAdapter;
        this.itemViewType = IdFabric$ViewTypes.BANNERS;
        this.layoutId = C3630R.layout.fork_recycle_item_wallet_banners;
        this.bannerSnapHelper = new PagerSnapHelper();
        this.bannersDiffCallback = new BannerSlideDiffCallback();
    }

    public final OnItemClickListener getBannerOnItemClickListener() {
        return this.bannerOnItemClickListener;
    }

    public final void setBannerOnItemClickListener(OnItemClickListener onItemClickListener) {
        this.bannerOnItemClickListener = onItemClickListener;
    }

    public final OnItemLongClickListener getBannerOnItemLongClickListener() {
        return this.bannerOnItemLongClickListener;
    }

    public final void setBannerOnItemLongClickListener(OnItemLongClickListener onItemLongClickListener) {
        this.bannerOnItemLongClickListener = onItemLongClickListener;
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
            RecyclerView.LayoutManager layoutManager = ((RecyclerView) holder.getView(C3630R.C3633id.recycle_banners)).getLayoutManager();
            this.bannerScrollState = layoutManager != null ? layoutManager.onSaveInstanceState() : null;
        }
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public void convert(final BaseViewHolder helper, final BannerItem item) {
        Intrinsics.checkNotNullParameter(helper, "helper");
        Intrinsics.checkNotNullParameter(item, "item");
        BaseQuickAdapterExtKt.applyForView(BaseQuickAdapterExtKt.applyForView(helper, C3630R.C3633id.recycle_banners, new Function1<RecyclerView, Unit>() { // from class: com.iMe.ui.adapter.provider.BannerProvider$convert$1
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
                BannerSlideDiffCallback bannerSlideDiffCallback;
                PagerSnapHelper pagerSnapHelper;
                Intrinsics.checkNotNullParameter(applyForView, "$this$applyForView");
                LinearLayoutManager linearLayoutManager = new LinearLayoutManager(applyForView.getContext(), 0, false);
                BannerProvider bannerProvider = BannerProvider.this;
                linearLayoutManager.setInitialPrefetchItemCount(4);
                parcelable = bannerProvider.bannerScrollState;
                RecycleViewExtKt.restoreScrollState(linearLayoutManager, parcelable);
                applyForView.setLayoutManager(linearLayoutManager);
                BannersRecycleAdapter bannersRecycleAdapter = BannerProvider.this.getBannersRecycleAdapter();
                BannerItem bannerItem = item;
                BannerProvider bannerProvider2 = BannerProvider.this;
                bannersRecycleAdapter.setNewInstance(bannerItem.getItems());
                bannerSlideDiffCallback = bannerProvider2.bannersDiffCallback;
                bannersRecycleAdapter.setDiffCallback(bannerSlideDiffCallback);
                bannersRecycleAdapter.setOnItemClickListener(bannerProvider2.getBannerOnItemClickListener());
                bannersRecycleAdapter.setOnItemLongClickListener(bannerProvider2.getBannerOnItemLongClickListener());
                applyForView.setAdapter(bannersRecycleAdapter);
                pagerSnapHelper = BannerProvider.this.bannerSnapHelper;
                final BannerProvider bannerProvider3 = BannerProvider.this;
                RecycleViewExtKt.attachSnapHelperWithListener$default(applyForView, pagerSnapHelper, null, new OnSnapPositionChangeListener() { // from class: com.iMe.ui.adapter.provider.BannerProvider$convert$1.3
                    @Override // com.iMe.utils.listeners.OnSnapPositionChangeListener
                    public void onSnapPositionChange(int i) {
                        BannerProvider.this.getBannersRecycleAdapter().animateNewBanner(i);
                    }
                }, 2, null);
                RecycleViewExtKt.preventScrollByParent(applyForView);
            }
        }), C3630R.C3633id.banner_slide_indicator, new Function1<ScrollingPagerIndicator, Unit>() { // from class: com.iMe.ui.adapter.provider.BannerProvider$convert$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(ScrollingPagerIndicator scrollingPagerIndicator) {
                invoke2(scrollingPagerIndicator);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(ScrollingPagerIndicator applyForView) {
                Intrinsics.checkNotNullParameter(applyForView, "$this$applyForView");
                applyForView.attachToRecyclerView((RecyclerView) BaseViewHolder.this.getView(C3630R.C3633id.recycle_banners));
                int i = Theme.key_chats_actionBackground;
                applyForView.setSelectedDotColor(Theme.getColor(i));
                applyForView.setDotColor(ViewExtKt.withAlpha(Theme.getColor(i), 55));
            }
        });
    }
}
