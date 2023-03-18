package com.smedialink.p031ui.adapter.provider;

import android.os.Parcelable;
import androidx.recyclerview.widget.PagerSnapHelper;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.listener.OnItemClickListener;
import com.chad.library.adapter.base.provider.BaseNodeProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.smedialink.common.IdFabric$ViewTypes;
import com.smedialink.model.wallet.home.BannerItem;
import com.smedialink.p031ui.wallet.home.p032v2.adapter.BannersRecycleAdapter;
import com.smedialink.p031ui.wallet.home.p032v2.adapter.diff.BannerSlideDiffCallback;
import com.smedialink.utils.extentions.common.BaseQuickAdapterExtKt;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3286R;
/* compiled from: BannerProvider.kt */
/* renamed from: com.smedialink.ui.adapter.provider.BannerProvider */
/* loaded from: classes3.dex */
public final class BannerProvider extends BaseNodeProvider<BannerItem> {
    private OnItemClickListener bannerOnItemClickListener;
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
        this.layoutId = C3286R.layout.fork_recycle_item_wallet_banners;
        this.bannerSnapHelper = new PagerSnapHelper();
        this.bannersDiffCallback = new BannerSlideDiffCallback();
    }

    public final OnItemClickListener getBannerOnItemClickListener() {
        return this.bannerOnItemClickListener;
    }

    public final void setBannerOnItemClickListener(OnItemClickListener onItemClickListener) {
        this.bannerOnItemClickListener = onItemClickListener;
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
            RecyclerView.LayoutManager layoutManager = ((RecyclerView) holder.getView(C3286R.C3289id.recycle_banners)).getLayoutManager();
            this.bannerScrollState = layoutManager != null ? layoutManager.onSaveInstanceState() : null;
        }
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public void convert(BaseViewHolder helper, BannerItem item) {
        Intrinsics.checkNotNullParameter(helper, "helper");
        Intrinsics.checkNotNullParameter(item, "item");
        BaseQuickAdapterExtKt.applyForView(BaseQuickAdapterExtKt.applyForView(helper, C3286R.C3289id.recycle_banners, new BannerProvider$convert$1(this, item)), C3286R.C3289id.banner_slide_indicator, new BannerProvider$convert$2(helper));
    }
}
