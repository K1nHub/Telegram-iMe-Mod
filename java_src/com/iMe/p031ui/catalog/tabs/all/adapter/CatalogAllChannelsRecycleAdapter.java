package com.iMe.p031ui.catalog.tabs.all.adapter;

import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.module.LoadMoreModule;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.iMe.model.catalog.CampaignItem;
import com.iMe.utils.extentions.common.BaseQuickAdapterExtKt;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3295R;
import org.telegram.p044ui.ActionBar.Theme;
/* compiled from: CatalogAllChannelsRecycleAdapter.kt */
/* renamed from: com.iMe.ui.catalog.tabs.all.adapter.CatalogAllChannelsRecycleAdapter */
/* loaded from: classes.dex */
public final class CatalogAllChannelsRecycleAdapter extends BaseQuickAdapter<CampaignItem, BaseViewHolder> implements LoadMoreModule {
    public CatalogAllChannelsRecycleAdapter() {
        super(C3295R.layout.fork_recycle_item_catalog_channel_square, null, 2, null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    public void convert(BaseViewHolder holder, CampaignItem item) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        Intrinsics.checkNotNullParameter(item, "item");
        int i = C3295R.C3298id.card_channel;
        BaseViewHolder themedCardBackground = BaseQuickAdapterExtKt.setThemedCardBackground(BaseQuickAdapterExtKt.setRippleForeground(holder, i, false), i, Theme.key_windowBackgroundWhite);
        int i2 = C3295R.C3298id.text_name;
        BaseViewHolder themedTextColor = BaseQuickAdapterExtKt.setThemedTextColor(themedCardBackground, i2, Theme.key_chat_messagePanelText);
        int i3 = C3295R.C3298id.text_subscribers_count;
        BaseQuickAdapterExtKt.loadImage(BaseQuickAdapterExtKt.setVisibleElseGone(BaseQuickAdapterExtKt.setMediumTypeface(BaseQuickAdapterExtKt.setThemedTextColor(themedTextColor, i3, Theme.key_windowBackgroundWhiteGrayText2), i2).setText(i2, item.getTitle()).setText(i3, AndroidUtilities.formatNumber(item.getMembersCount())), C3295R.C3298id.image_verified, item.isVerified()), C3295R.C3298id.image_avatar, item.getPhoto(), null, true);
    }
}
