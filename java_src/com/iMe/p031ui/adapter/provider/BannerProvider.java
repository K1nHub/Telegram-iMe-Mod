package com.iMe.p031ui.adapter.provider;

import android.os.Parcelable;
import androidx.recyclerview.widget.PagerSnapHelper;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.listener.OnItemClickListener;
import com.chad.library.adapter.base.provider.BaseNodeProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.iMe.common.IdFabric$ViewTypes;
import com.iMe.model.wallet.home.BannerItem;
import com.iMe.p031ui.wallet.home.adapter.BannersRecycleAdapter;
import com.iMe.p031ui.wallet.home.adapter.diff.BannerSlideDiffCallback;
import com.iMe.utils.extentions.common.BaseQuickAdapterExtKt;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3417R;
/* compiled from: BannerProvider.kt */
/* renamed from: com.iMe.ui.adapter.provider.BannerProvider */
/* loaded from: classes.dex */
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
        this.layoutId = C3417R.layout.fork_recycle_item_wallet_banners;
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
            RecyclerView.LayoutManager layoutManager = ((RecyclerView) holder.getView(C3417R.C3420id.recycle_banners)).getLayoutManager();
            this.bannerScrollState = layoutManager != null ? layoutManager.onSaveInstanceState() : null;
        }
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public void convert(BaseViewHolder helper, BannerItem item) {
        Intrinsics.checkNotNullParameter(helper, "helper");
        Intrinsics.checkNotNullParameter(item, "item");
        BaseQuickAdapterExtKt.applyForView(BaseQuickAdapterExtKt.applyForView(helper, C3417R.C3420id.recycle_banners, new BannerProvider$convert$1(this, item)), C3417R.C3420id.banner_slide_indicator, new BannerProvider$convert$2(helper));
    }
}
