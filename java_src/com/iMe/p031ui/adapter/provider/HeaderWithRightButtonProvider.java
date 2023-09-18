package com.iMe.p031ui.adapter.provider;

import com.chad.library.adapter.base.provider.BaseNodeProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.iMe.common.IdFabric$ViewTypes;
import com.iMe.model.wallet.home.HeaderItemWithRightButton;
import com.iMe.utils.extentions.common.BaseQuickAdapterExtKt;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3473R;
import org.telegram.p043ui.ActionBar.Theme;
/* compiled from: HeaderWithRightButtonProvider.kt */
/* renamed from: com.iMe.ui.adapter.provider.HeaderWithRightButtonProvider */
/* loaded from: classes.dex */
public final class HeaderWithRightButtonProvider extends BaseNodeProvider<HeaderItemWithRightButton> {
    private boolean isInfoButtonVisible;
    private final int itemViewType = IdFabric$ViewTypes.HEADER_ITEM_WITH_RIGHT_BUTTON;
    private final int layoutId = C3473R.layout.fork_recycle_item_header_with_right_button;

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public /* bridge */ /* synthetic */ void convert(BaseViewHolder baseViewHolder, Object obj, List list) {
        convert(baseViewHolder, (HeaderItemWithRightButton) obj, (List<? extends Object>) list);
    }

    public final void setInfoButtonVisible(boolean z) {
        this.isInfoButtonVisible = z;
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
    public void convert(BaseViewHolder helper, HeaderItemWithRightButton item) {
        Intrinsics.checkNotNullParameter(helper, "helper");
        Intrinsics.checkNotNullParameter(item, "item");
        int i = C3473R.C3476id.image_info;
        BaseViewHolder visibleElseGone = BaseQuickAdapterExtKt.setVisibleElseGone(BaseQuickAdapterExtKt.setCircleRippleBackground(BaseQuickAdapterExtKt.setThemedImageColor(helper, i, Theme.key_chats_actionBackground), i), i, this.isInfoButtonVisible);
        int i2 = C3473R.C3476id.text_wallet_header;
        int i3 = Theme.key_windowBackgroundWhiteGrayText2;
        BaseViewHolder text = BaseQuickAdapterExtKt.setMediumTypeface(BaseQuickAdapterExtKt.setThemedTextColor(visibleElseGone, i2, i3), i2).setText(i2, item.getTitle());
        int i4 = C3473R.C3476id.image_header_right_button;
        BaseQuickAdapterExtKt.setCircleRippleBackground(BaseQuickAdapterExtKt.setThemedImageColor(text, i4, i3).setImageResource(i4, item.getIconRes()), i4);
    }

    public void convert(BaseViewHolder helper, HeaderItemWithRightButton item, List<? extends Object> payloads) {
        Intrinsics.checkNotNullParameter(helper, "helper");
        Intrinsics.checkNotNullParameter(item, "item");
        Intrinsics.checkNotNullParameter(payloads, "payloads");
        helper.setText(C3473R.C3476id.text_wallet_header, item.getTitle());
    }
}
