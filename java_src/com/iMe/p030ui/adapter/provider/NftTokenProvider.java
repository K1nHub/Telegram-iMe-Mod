package com.iMe.p030ui.adapter.provider;

import com.chad.library.adapter.base.provider.BaseNodeProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.iMe.common.IdFabric$ViewTypes;
import com.iMe.model.wallet.home.nft.NftTokenItem;
import com.iMe.p030ui.custom.nft.NftRootView;
import com.iMe.utils.extentions.common.BaseQuickAdapterExtKt;
import com.iMe.utils.extentions.common.ViewExtKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3634R;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Components.BackupImageView;
import org.telegram.p043ui.Components.LoadingDrawable;
/* compiled from: NftTokenProvider.kt */
/* renamed from: com.iMe.ui.adapter.provider.NftTokenProvider */
/* loaded from: classes3.dex */
public final class NftTokenProvider extends BaseNodeProvider<NftTokenItem> {
    private int spanCount = 4;
    private final int itemViewType = IdFabric$ViewTypes.NFT_AVATAR;
    private final int layoutId = C3634R.layout.fork_recycle_item_nft_token;
    private final int spacing = ViewExtKt.getDpToPx(16);

    public final void setSpanCount(int i) {
        this.spanCount = i;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int getItemViewType() {
        return this.itemViewType;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int getLayoutId() {
        return this.layoutId;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public void convert(BaseViewHolder helper, final NftTokenItem item) {
        Intrinsics.checkNotNullParameter(helper, "helper");
        Intrinsics.checkNotNullParameter(item, "item");
        int itemIndex = item.getItemIndex();
        int i = this.spanCount;
        int i2 = itemIndex % i;
        int i3 = this.spacing;
        final int i4 = i3 - ((i2 * i3) / i);
        final int i5 = ((i2 + 1) * i3) / i;
        int i6 = C3634R.C3637id.card_nft_token;
        BaseQuickAdapterExtKt.applyForView(BaseQuickAdapterExtKt.applyForView(BaseQuickAdapterExtKt.setThemedCardBackground(BaseQuickAdapterExtKt.setRippleForeground(helper, i6, false), i6, Theme.key_windowBackgroundWhite), C3634R.C3637id.nft_root_view, new Function1<NftRootView, Unit>() { // from class: com.iMe.ui.adapter.provider.NftTokenProvider$convert$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(NftRootView nftRootView) {
                invoke2(nftRootView);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(NftRootView applyForView) {
                Intrinsics.checkNotNullParameter(applyForView, "$this$applyForView");
                applyForView.setNftToken(NftTokenItem.this.getToken());
                applyForView.setNftTokenType(NftTokenItem.this.getNftType());
                applyForView.setPadding(i4, applyForView.getPaddingTop(), i5, applyForView.getPaddingBottom());
            }
        }), C3634R.C3637id.image_nft_image, new Function1<BackupImageView, Unit>() { // from class: com.iMe.ui.adapter.provider.NftTokenProvider$convert$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(BackupImageView backupImageView) {
                invoke2(backupImageView);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(BackupImageView applyForView) {
                Intrinsics.checkNotNullParameter(applyForView, "$this$applyForView");
                applyForView.setAspectFit(true);
                applyForView.setLayerNum(1);
                LoadingDrawable loadingDrawable = new LoadingDrawable();
                loadingDrawable.setColors(Theme.getColor(Theme.key_actionBarActionModeDefaultSelector), ViewExtKt.withAlpha(-1, 0.15f));
                loadingDrawable.setAppearByGradient(true);
                applyForView.setBackground(loadingDrawable);
                applyForView.shouldResetBackGroundOnLoaded = true;
                applyForView.setImage(NftTokenItem.this.getToken().getImageUrl(), "50_50", null);
            }
        });
    }
}
