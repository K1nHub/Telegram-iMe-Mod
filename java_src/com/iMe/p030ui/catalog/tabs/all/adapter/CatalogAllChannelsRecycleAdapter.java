package com.iMe.p030ui.catalog.tabs.all.adapter;

import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.module.LoadMoreModule;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.iMe.model.catalog.CampaignItem;
import com.iMe.utils.extentions.common.BaseQuickAdapterExtKt;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3632R;
import org.telegram.p043ui.ActionBar.Theme;
/* compiled from: CatalogAllChannelsRecycleAdapter.kt */
/* renamed from: com.iMe.ui.catalog.tabs.all.adapter.CatalogAllChannelsRecycleAdapter */
/* loaded from: classes3.dex */
public final class CatalogAllChannelsRecycleAdapter extends BaseQuickAdapter<CampaignItem, BaseViewHolder> implements LoadMoreModule {
    public CatalogAllChannelsRecycleAdapter() {
        super(C3632R.layout.fork_recycle_item_catalog_channel_square, null, 2, null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    public void convert(BaseViewHolder holder, CampaignItem item) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        Intrinsics.checkNotNullParameter(item, "item");
        int i = C3632R.C3635id.card_channel;
        BaseViewHolder themedCardBackground = BaseQuickAdapterExtKt.setThemedCardBackground(BaseQuickAdapterExtKt.setRippleForeground(holder, i, false), i, Theme.key_windowBackgroundWhite);
        int i2 = C3632R.C3635id.text_name;
        BaseViewHolder themedTextColor = BaseQuickAdapterExtKt.setThemedTextColor(themedCardBackground, i2, Theme.key_chat_messagePanelText);
        int i3 = C3632R.C3635id.text_subscribers_count;
        BaseQuickAdapterExtKt.loadImage$default(BaseQuickAdapterExtKt.setVisibleElseGone(BaseQuickAdapterExtKt.setMediumTypeface(BaseQuickAdapterExtKt.setThemedTextColor(themedTextColor, i3, Theme.key_windowBackgroundWhiteGrayText2), i2).setText(i2, item.getTitle()).setText(i3, AndroidUtilities.formatNumber(item.getMembersCount())), C3632R.C3635id.image_verified, item.isVerified()), C3632R.C3635id.image_avatar, item.getPhoto(), null, false, 12, null);
    }
}
