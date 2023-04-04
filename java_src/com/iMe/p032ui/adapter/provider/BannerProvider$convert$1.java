package com.iMe.p032ui.adapter.provider;

import android.os.Parcelable;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.PagerSnapHelper;
import androidx.recyclerview.widget.RecyclerView;
import com.iMe.model.wallet.home.BannerItem;
import com.iMe.p032ui.wallet.home.p033v2.adapter.BannersRecycleAdapter;
import com.iMe.p032ui.wallet.home.p033v2.adapter.diff.BannerSlideDiffCallback;
import com.iMe.utils.extentions.common.RecycleViewExtKt;
import com.iMe.utils.listeners.OnSnapPositionChangeListener;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: BannerProvider.kt */
/* renamed from: com.iMe.ui.adapter.provider.BannerProvider$convert$1 */
/* loaded from: classes.dex */
public final class BannerProvider$convert$1 extends Lambda implements Function1<RecyclerView, Unit> {
    final /* synthetic */ BannerItem $item;
    final /* synthetic */ BannerProvider this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BannerProvider$convert$1(BannerProvider bannerProvider, BannerItem bannerItem) {
        super(1);
        this.this$0 = bannerProvider;
        this.$item = bannerItem;
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
        BannerProvider bannerProvider = this.this$0;
        linearLayoutManager.setInitialPrefetchItemCount(4);
        parcelable = bannerProvider.bannerScrollState;
        RecycleViewExtKt.restoreScrollState(linearLayoutManager, parcelable);
        applyForView.setLayoutManager(linearLayoutManager);
        BannersRecycleAdapter bannersRecycleAdapter = this.this$0.getBannersRecycleAdapter();
        BannerItem bannerItem = this.$item;
        BannerProvider bannerProvider2 = this.this$0;
        bannersRecycleAdapter.setNewInstance(bannerItem.getItems());
        bannerSlideDiffCallback = bannerProvider2.bannersDiffCallback;
        bannersRecycleAdapter.setDiffCallback(bannerSlideDiffCallback);
        bannersRecycleAdapter.setOnItemClickListener(bannerProvider2.getBannerOnItemClickListener());
        applyForView.setAdapter(bannersRecycleAdapter);
        pagerSnapHelper = this.this$0.bannerSnapHelper;
        final BannerProvider bannerProvider3 = this.this$0;
        RecycleViewExtKt.attachSnapHelperWithListener$default(applyForView, pagerSnapHelper, null, new OnSnapPositionChangeListener() { // from class: com.iMe.ui.adapter.provider.BannerProvider$convert$1.3
            @Override // com.iMe.utils.listeners.OnSnapPositionChangeListener
            public void onSnapPositionChange(int i) {
                BannerProvider.this.getBannersRecycleAdapter().animateNewBanner(i);
            }
        }, 2, null);
        RecycleViewExtKt.preventScrollByParent(applyForView);
    }
}
