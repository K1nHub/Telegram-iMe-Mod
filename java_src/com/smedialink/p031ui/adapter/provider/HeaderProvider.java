package com.smedialink.p031ui.adapter.provider;

import com.chad.library.adapter.base.provider.BaseNodeProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.smedialink.common.IdFabric$ViewTypes;
import com.smedialink.model.wallet.home.HeaderItem;
import com.smedialink.utils.extentions.common.BaseQuickAdapterExtKt;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3158R;
/* compiled from: HeaderProvider.kt */
/* renamed from: com.smedialink.ui.adapter.provider.HeaderProvider */
/* loaded from: classes3.dex */
public final class HeaderProvider extends BaseNodeProvider<HeaderItem> {
    private float extraPadding;
    private final int itemViewType = IdFabric$ViewTypes.HEADER;
    private final int layoutId = C3158R.layout.fork_recycle_item_wallet_dashboard_header;

    public final void setExtraPadding(float f) {
        this.extraPadding = f;
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
    public void convert(BaseViewHolder helper, HeaderItem item) {
        BaseViewHolder padding;
        Intrinsics.checkNotNullParameter(helper, "helper");
        Intrinsics.checkNotNullParameter(item, "item");
        int i = C3158R.C3161id.text_wallet_header;
        BaseViewHolder mediumTypeface = BaseQuickAdapterExtKt.setMediumTypeface(BaseQuickAdapterExtKt.setThemedTextColor(helper, i, "windowBackgroundWhiteGrayText2"), i);
        int i2 = C3158R.C3161id.frame_root;
        float f = this.extraPadding;
        padding = BaseQuickAdapterExtKt.setPadding(mediumTypeface, i2, (r13 & 2) != 0 ? BitmapDescriptorFactory.HUE_RED : f, (r13 & 4) != 0 ? BitmapDescriptorFactory.HUE_RED : BitmapDescriptorFactory.HUE_RED, (r13 & 8) != 0 ? BitmapDescriptorFactory.HUE_RED : f, (r13 & 16) != 0 ? BitmapDescriptorFactory.HUE_RED : BitmapDescriptorFactory.HUE_RED);
        padding.setText(i, item.getTitle());
    }
}
