package com.iMe.p031ui.adapter.provider;

import com.chad.library.adapter.base.provider.BaseNodeProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.iMe.common.IdFabric$ViewTypes;
import com.iMe.model.wallet.home.nft.NftTokenItem;
import com.iMe.utils.extentions.common.BaseQuickAdapterExtKt;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3417R;
import org.telegram.p043ui.ActionBar.Theme;
/* compiled from: NftTokenProvider.kt */
/* renamed from: com.iMe.ui.adapter.provider.NftTokenProvider */
/* loaded from: classes.dex */
public final class NftTokenProvider extends BaseNodeProvider<NftTokenItem> {
    private int spanCount = 4;
    private int spacing = AndroidUtilities.m54dp(16);
    private final int itemViewType = IdFabric$ViewTypes.NFT_AVATAR;
    private final int layoutId = C3417R.layout.fork_recycle_item_nft_token;

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
        int i4 = i3 - ((i2 * i3) / i);
        int i5 = ((i2 + 1) * i3) / i;
        int i6 = C3417R.C3420id.card_nft_token;
        BaseQuickAdapterExtKt.applyForView(BaseQuickAdapterExtKt.applyForView(BaseQuickAdapterExtKt.setThemedCardBackground(BaseQuickAdapterExtKt.setRippleForeground(helper, i6, false), i6, Theme.key_windowBackgroundWhite), C3417R.C3420id.nft_root_view, new NftTokenProvider$convert$1(item, i4, i5)), C3417R.C3420id.image_nft_image, new NftTokenProvider$convert$2(item));
    }
}
