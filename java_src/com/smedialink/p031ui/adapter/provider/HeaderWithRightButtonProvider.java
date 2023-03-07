package com.smedialink.p031ui.adapter.provider;

import com.chad.library.adapter.base.provider.BaseNodeProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.smedialink.common.IdFabric$ViewTypes;
import com.smedialink.model.wallet.home.HeaderItemWithRightButton;
import com.smedialink.utils.extentions.common.BaseQuickAdapterExtKt;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3158R;
/* compiled from: HeaderWithRightButtonProvider.kt */
/* renamed from: com.smedialink.ui.adapter.provider.HeaderWithRightButtonProvider */
/* loaded from: classes3.dex */
public final class HeaderWithRightButtonProvider extends BaseNodeProvider<HeaderItemWithRightButton> {
    private final int itemViewType = IdFabric$ViewTypes.HEADER_WITH_RIGHT_BUTTON;
    private final int layoutId = C3158R.layout.fork_recycle_item_header_with_right_button;

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public /* bridge */ /* synthetic */ void convert(BaseViewHolder baseViewHolder, Object obj, List list) {
        convert(baseViewHolder, (HeaderItemWithRightButton) obj, (List<? extends Object>) list);
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
        int i = C3158R.C3161id.text_wallet_header;
        BaseViewHolder text = BaseQuickAdapterExtKt.setMediumTypeface(BaseQuickAdapterExtKt.setThemedTextColor(helper, i, "windowBackgroundWhiteGrayText2"), i).setText(i, item.getTitle());
        int i2 = C3158R.C3161id.image_header_right_button;
        BaseQuickAdapterExtKt.setCircleRippleBackground(BaseQuickAdapterExtKt.setThemedImageColor(text, i2, "windowBackgroundWhiteGrayText2").setImageResource(i2, item.getIconRes()), i2);
    }

    public void convert(BaseViewHolder helper, HeaderItemWithRightButton item, List<? extends Object> payloads) {
        Intrinsics.checkNotNullParameter(helper, "helper");
        Intrinsics.checkNotNullParameter(item, "item");
        Intrinsics.checkNotNullParameter(payloads, "payloads");
        helper.setText(C3158R.C3161id.text_wallet_header, item.getTitle());
    }
}
