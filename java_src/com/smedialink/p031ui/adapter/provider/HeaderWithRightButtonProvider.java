package com.smedialink.p031ui.adapter.provider;

import com.chad.library.adapter.base.provider.BaseNodeProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.smedialink.common.IdFabric$ViewTypes;
import com.smedialink.model.wallet.home.HeaderItemWithRightButton;
import com.smedialink.utils.extentions.common.BaseQuickAdapterExtKt;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3286R;
/* compiled from: HeaderWithRightButtonProvider.kt */
/* renamed from: com.smedialink.ui.adapter.provider.HeaderWithRightButtonProvider */
/* loaded from: classes3.dex */
public final class HeaderWithRightButtonProvider extends BaseNodeProvider<HeaderItemWithRightButton> {
    private boolean isInfoButtonVisible;
    private final int itemViewType = IdFabric$ViewTypes.HEADER_WITH_RIGHT_BUTTON;
    private final int layoutId = C3286R.layout.fork_recycle_item_header_with_right_button;

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
        int i = C3286R.C3289id.image_info;
        BaseViewHolder visibleElseGone = BaseQuickAdapterExtKt.setVisibleElseGone(BaseQuickAdapterExtKt.setCircleRippleBackground(BaseQuickAdapterExtKt.setThemedImageColor(helper, i, "chats_actionBackground"), i), i, this.isInfoButtonVisible);
        int i2 = C3286R.C3289id.text_wallet_header;
        BaseViewHolder text = BaseQuickAdapterExtKt.setMediumTypeface(BaseQuickAdapterExtKt.setThemedTextColor(visibleElseGone, i2, "windowBackgroundWhiteGrayText2"), i2).setText(i2, item.getTitle());
        int i3 = C3286R.C3289id.image_header_right_button;
        BaseQuickAdapterExtKt.setCircleRippleBackground(BaseQuickAdapterExtKt.setThemedImageColor(text, i3, "windowBackgroundWhiteGrayText2").setImageResource(i3, item.getIconRes()), i3);
    }

    public void convert(BaseViewHolder helper, HeaderItemWithRightButton item, List<? extends Object> payloads) {
        Intrinsics.checkNotNullParameter(helper, "helper");
        Intrinsics.checkNotNullParameter(item, "item");
        Intrinsics.checkNotNullParameter(payloads, "payloads");
        helper.setText(C3286R.C3289id.text_wallet_header, item.getTitle());
    }
}
