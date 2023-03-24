package com.smedialink.p031ui.adapter.provider;

import com.chad.library.adapter.base.provider.BaseNodeProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.smedialink.common.IdFabric$ViewTypes;
import com.smedialink.model.catalog.CampaignItem;
import com.smedialink.utils.extentions.common.BaseQuickAdapterExtKt;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3301R;
/* compiled from: CampaignProvider.kt */
/* renamed from: com.smedialink.ui.adapter.provider.CampaignProvider */
/* loaded from: classes3.dex */
public final class CampaignProvider extends BaseNodeProvider<CampaignItem> {
    private final int itemViewType = IdFabric$ViewTypes.CATALOG_CAMPAIGN;
    private final int layoutId = C3301R.layout.fork_recycle_item_catalog_channel;

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int getItemViewType() {
        return this.itemViewType;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int getLayoutId() {
        return this.layoutId;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public void convert(BaseViewHolder helper, CampaignItem item) {
        Intrinsics.checkNotNullParameter(helper, "helper");
        Intrinsics.checkNotNullParameter(item, "item");
        int i = C3301R.C3304id.card_channel;
        BaseViewHolder themedCardBackground = BaseQuickAdapterExtKt.setThemedCardBackground(BaseQuickAdapterExtKt.setRippleForeground(helper, i, false), i, "windowBackgroundWhite");
        int i2 = C3301R.C3304id.text_name;
        BaseViewHolder themedTextColor = BaseQuickAdapterExtKt.setThemedTextColor(themedCardBackground, i2, "chat_messagePanelText");
        int i3 = C3301R.C3304id.text_subscribers_count;
        BaseQuickAdapterExtKt.loadImage(BaseQuickAdapterExtKt.setVisibleElseGone(BaseQuickAdapterExtKt.setMediumTypeface(BaseQuickAdapterExtKt.setThemedTextColor(themedTextColor, i3, "windowBackgroundWhiteGrayText2"), i2).setText(i2, item.getTitle()).setText(i3, AndroidUtilities.formatNumber(item.getMembersCount())), C3301R.C3304id.image_verified, item.isVerified()), C3301R.C3304id.image_avatar, item.getPhoto(), null, true);
    }
}
