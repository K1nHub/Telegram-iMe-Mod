package com.iMe.p031ui.adapter.provider;

import com.chad.library.adapter.base.provider.BaseNodeProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.iMe.common.IdFabric$ViewTypes;
import com.iMe.model.wallet.home.CardButtonItem;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.extentions.common.BaseQuickAdapterExtKt;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3242R;
import org.telegram.p044ui.ActionBar.Theme;
/* compiled from: CardButtonProvider.kt */
/* renamed from: com.iMe.ui.adapter.provider.CardButtonProvider */
/* loaded from: classes3.dex */
public final class CardButtonProvider extends BaseNodeProvider<CardButtonItem> {
    private final int itemViewType;
    private final int layoutId;
    private final ResourceManager resourceManager;

    public CardButtonProvider(ResourceManager resourceManager) {
        Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
        this.resourceManager = resourceManager;
        this.itemViewType = IdFabric$ViewTypes.CARD_BUTTON;
        this.layoutId = C3242R.layout.fork_recycle_item_wallet_single_create_action;
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
    public void convert(BaseViewHolder helper, CardButtonItem item) {
        Intrinsics.checkNotNullParameter(helper, "helper");
        Intrinsics.checkNotNullParameter(item, "item");
        int i = C3242R.C3245id.card_empty_account;
        BaseViewHolder foreground = BaseQuickAdapterExtKt.setForeground(BaseQuickAdapterExtKt.setThemedCardBackground(helper, i, "windowBackgroundWhite"), i, Theme.getSelectorDrawable(false));
        int i2 = C3242R.C3245id.text_empty_title;
        BaseQuickAdapterExtKt.setThemedTextColor(foreground, i2, "chats_actionBackground").setText(i2, this.resourceManager.getString(item.getTitleResId())).setImageResource(C3242R.C3245id.image_empty_icon, item.getIcon());
    }
}