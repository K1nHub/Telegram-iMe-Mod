package com.iMe.p032ui.wallet.home.p033v2.adapter;

import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.iMe.model.wallet.home.SlideItem;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.telegram.p048ui.Components.RLottieImageView;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: BannersRecycleAdapter.kt */
/* renamed from: com.iMe.ui.wallet.home.v2.adapter.BannersRecycleAdapter$convert$2 */
/* loaded from: classes3.dex */
public final class BannersRecycleAdapter$convert$2 extends Lambda implements Function1<RLottieImageView, Unit> {
    final /* synthetic */ BaseViewHolder $holder;
    final /* synthetic */ SlideItem $item;
    final /* synthetic */ BannersRecycleAdapter this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BannersRecycleAdapter$convert$2(SlideItem slideItem, BaseViewHolder baseViewHolder, BannersRecycleAdapter bannersRecycleAdapter) {
        super(1);
        this.$item = slideItem;
        this.$holder = baseViewHolder;
        this.this$0 = bannersRecycleAdapter;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(RLottieImageView rLottieImageView) {
        invoke2(rLottieImageView);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(RLottieImageView applyForView) {
        int i;
        Intrinsics.checkNotNullParameter(applyForView, "$this$applyForView");
        applyForView.setAutoRepeat(true);
        applyForView.setAnimation(this.$item.getSlide().getAnimatedIcon(), 58, 58);
        int adapterPosition = this.$holder.getAdapterPosition();
        i = this.this$0.currentAnimatedBanner;
        if (adapterPosition == i) {
            applyForView.playAnimation();
        } else {
            applyForView.stopAnimation();
        }
    }
}
