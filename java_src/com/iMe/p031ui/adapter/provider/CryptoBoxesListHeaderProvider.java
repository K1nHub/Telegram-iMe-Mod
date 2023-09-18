package com.iMe.p031ui.adapter.provider;

import com.chad.library.adapter.base.provider.BaseNodeProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.iMe.common.IdFabric$ViewTypes;
import com.iMe.model.cryptobox.CryptoBoxesListHeaderItem;
import com.iMe.utils.extentions.common.BaseQuickAdapterExtKt;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3473R;
import org.telegram.p043ui.ActionBar.Theme;
/* compiled from: CryptoBoxesListHeaderProvider.kt */
/* renamed from: com.iMe.ui.adapter.provider.CryptoBoxesListHeaderProvider */
/* loaded from: classes.dex */
public final class CryptoBoxesListHeaderProvider extends BaseNodeProvider<CryptoBoxesListHeaderItem> {
    private final int itemViewType = IdFabric$ViewTypes.CRYPTOBOXES_LIST_HEADER;
    private final int layoutId = C3473R.layout.fork_recycle_item_cryptoboxes_list_header;

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int getItemViewType() {
        return this.itemViewType;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int getLayoutId() {
        return this.layoutId;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public void convert(BaseViewHolder helper, CryptoBoxesListHeaderItem item) {
        Intrinsics.checkNotNullParameter(helper, "helper");
        Intrinsics.checkNotNullParameter(item, "item");
        BaseViewHolder themedBackgroundColor = BaseQuickAdapterExtKt.setThemedBackgroundColor(helper, C3473R.C3476id.linear_root, Theme.key_windowBackgroundWhite);
        int i = C3473R.C3476id.text_header;
        BaseViewHolder mediumTypeface = BaseQuickAdapterExtKt.setMediumTypeface(BaseQuickAdapterExtKt.setThemedTextColor(themedBackgroundColor, i, Theme.key_windowBackgroundWhiteBlueText), i);
        int i2 = C3473R.C3476id.image_order;
        BaseQuickAdapterExtKt.setCircleRippleBackground(BaseQuickAdapterExtKt.setThemedImageColor(mediumTypeface, i2, Theme.key_windowBackgroundWhiteGrayIcon), i2).setText(i, item.getTitle());
    }
}
