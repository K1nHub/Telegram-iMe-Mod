package com.iMe.p031ui.wallet.home.adapter;

import android.view.View;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.iMe.model.wallet.home.SlideItem;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.extentions.common.BaseQuickAdapterExtKt;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3417R;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Components.RLottieImageView;
/* compiled from: BannersRecycleAdapter.kt */
/* renamed from: com.iMe.ui.wallet.home.adapter.BannersRecycleAdapter */
/* loaded from: classes4.dex */
public final class BannersRecycleAdapter extends BaseQuickAdapter<SlideItem, BaseViewHolder> {
    private int currentAnimatedBanner;
    private final ResourceManager resourceManager;

    static {
        new Companion(null);
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    public /* bridge */ /* synthetic */ void convert(BaseViewHolder baseViewHolder, SlideItem slideItem, List list) {
        convert2(baseViewHolder, slideItem, (List<? extends Object>) list);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BannersRecycleAdapter(ResourceManager resourceManager) {
        super(C3417R.layout.fork_recycle_item_wallet_banner_slide, null, 2, null);
        Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
        this.resourceManager = resourceManager;
    }

    public final void animateNewBanner(int i) {
        int i2 = this.currentAnimatedBanner;
        if (i == i2) {
            return;
        }
        notifyItemChanged(i2, Boolean.FALSE);
        notifyItemChanged(i, Boolean.TRUE);
        this.currentAnimatedBanner = i;
    }

    public final void pauseAnimation() {
        View viewByPosition = getViewByPosition(this.currentAnimatedBanner, C3417R.C3420id.image_banner_image);
        if (viewByPosition == null || !(viewByPosition instanceof RLottieImageView)) {
            return;
        }
        ((RLottieImageView) viewByPosition).stopAnimation();
    }

    public final void resumeAnimation() {
        View viewByPosition = getViewByPosition(this.currentAnimatedBanner, C3417R.C3420id.image_banner_image);
        if (viewByPosition == null || !(viewByPosition instanceof RLottieImageView)) {
            return;
        }
        ((RLottieImageView) viewByPosition).playAnimation();
    }

    /* renamed from: convert  reason: avoid collision after fix types in other method */
    protected void convert2(BaseViewHolder holder, SlideItem item, List<? extends Object> payloads) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        Intrinsics.checkNotNullParameter(item, "item");
        Intrinsics.checkNotNullParameter(payloads, "payloads");
        Object firstOrNull = CollectionsKt.firstOrNull(payloads);
        if (firstOrNull instanceof Boolean) {
            BaseQuickAdapterExtKt.applyForView(holder, C3417R.C3420id.image_banner_image, new BannersRecycleAdapter$convert$1$1(firstOrNull));
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    public void convert(BaseViewHolder holder, SlideItem item) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        Intrinsics.checkNotNullParameter(item, "item");
        int i = C3417R.C3420id.card_banner_slide;
        BaseViewHolder themedCardBackground = BaseQuickAdapterExtKt.setThemedCardBackground(BaseQuickAdapterExtKt.setRippleForeground(holder, i, false), i, Theme.key_windowBackgroundWhite);
        int i2 = Theme.key_chat_messagePanelText;
        int i3 = C3417R.C3420id.text_banner_title;
        int i4 = C3417R.C3420id.text_banner_description;
        BaseQuickAdapterExtKt.applyForView(BaseQuickAdapterExtKt.setMediumTypeface(BaseQuickAdapterExtKt.setThemedTextColor(themedCardBackground, i2, i3, i4), i3).setText(i3, this.resourceManager.getString(item.getSlide().getTitle())).setText(i4, this.resourceManager.getString(item.getSlide().getShortDescription())), C3417R.C3420id.image_banner_image, new BannersRecycleAdapter$convert$2(item, holder, this));
    }

    /* compiled from: BannersRecycleAdapter.kt */
    /* renamed from: com.iMe.ui.wallet.home.adapter.BannersRecycleAdapter$Companion */
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
