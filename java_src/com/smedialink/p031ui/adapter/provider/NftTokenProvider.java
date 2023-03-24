package com.smedialink.p031ui.adapter.provider;

import com.chad.library.adapter.base.provider.BaseNodeProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.smedialink.common.IdFabric$ViewTypes;
import com.smedialink.model.wallet.home.nft.NftTokenItem;
import com.smedialink.utils.extentions.common.BaseQuickAdapterExtKt;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3301R;
/* compiled from: NftTokenProvider.kt */
/* renamed from: com.smedialink.ui.adapter.provider.NftTokenProvider */
/* loaded from: classes3.dex */
public final class NftTokenProvider extends BaseNodeProvider<NftTokenItem> {
    private int spanCount = 4;
    private int spacing = AndroidUtilities.m50dp(16);
    private final int itemViewType = IdFabric$ViewTypes.NFT_AVATAR;
    private final int layoutId = C3301R.layout.fork_recycle_item_nft_token;

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
    public void convert(BaseViewHolder helper, NftTokenItem item) {
        Intrinsics.checkNotNullParameter(helper, "helper");
        Intrinsics.checkNotNullParameter(item, "item");
        int indexOf = item.getCollection().indexOf(item.getToken());
        int i = this.spanCount;
        int i2 = indexOf % i;
        int i3 = this.spacing;
        int i4 = ((i2 + 1) * i3) / i;
        int i5 = C3301R.C3304id.card_nft_token;
        BaseQuickAdapterExtKt.applyForView(BaseQuickAdapterExtKt.applyForView(BaseQuickAdapterExtKt.setThemedCardBackground(BaseQuickAdapterExtKt.setRippleForeground(helper, i5, false), i5, "windowBackgroundWhite"), C3301R.C3304id.nft_root_view, new NftTokenProvider$convert$1(item, i3 - ((i2 * i3) / i), i4)), C3301R.C3304id.image_nft_image, new NftTokenProvider$convert$2(item));
    }
}
