package com.smedialink.p031ui.adapter.provider;

import com.chad.library.adapter.base.provider.BaseNodeProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.smedialink.common.IdFabric$ViewTypes;
import com.smedialink.model.catalog.CreateCampaignItem;
import com.smedialink.storage.domain.utils.system.ResourceManager;
import com.smedialink.utils.extentions.common.BaseQuickAdapterExtKt;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3158R;
import org.telegram.p048ui.ActionBar.Theme;
/* compiled from: CreateCampaignProvider.kt */
/* renamed from: com.smedialink.ui.adapter.provider.CreateCampaignProvider */
/* loaded from: classes3.dex */
public final class CreateCampaignProvider extends BaseNodeProvider<CreateCampaignItem> {
    private final int itemViewType;
    private final int layoutId;
    private final ResourceManager resourceManager;

    public CreateCampaignProvider(ResourceManager resourceManager) {
        Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
        this.resourceManager = resourceManager;
        this.itemViewType = IdFabric$ViewTypes.CATALOG_CREATE;
        this.layoutId = C3158R.layout.fork_recycle_item_wallet_single_create_action;
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
    public void convert(BaseViewHolder helper, CreateCampaignItem item) {
        Intrinsics.checkNotNullParameter(helper, "helper");
        Intrinsics.checkNotNullParameter(item, "item");
        int i = C3158R.C3161id.card_empty_account;
        BaseViewHolder foreground = BaseQuickAdapterExtKt.setForeground(BaseQuickAdapterExtKt.setThemedCardBackground(helper, i, "windowBackgroundWhite"), i, Theme.getSelectorDrawable(false));
        int i2 = C3158R.C3161id.text_empty_title;
        BaseQuickAdapterExtKt.setThemedTextColor(foreground, i2, "chats_actionBackground").setText(i2, this.resourceManager.getString(item.getTitleResId())).setImageResource(C3158R.C3161id.image_empty_icon, item.getIcon());
    }
}
