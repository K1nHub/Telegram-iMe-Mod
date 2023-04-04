package com.iMe.p032ui.adapter.provider;

import com.chad.library.adapter.base.provider.BaseNodeProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.iMe.common.IdFabric$ViewTypes;
import com.iMe.model.wallet.swap.CexProtocolItem;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.extentions.common.BaseQuickAdapterExtKt;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3316R;
/* compiled from: CexProtocolProvider.kt */
/* renamed from: com.iMe.ui.adapter.provider.CexProtocolProvider */
/* loaded from: classes.dex */
public final class CexProtocolProvider extends BaseNodeProvider<CexProtocolItem> {
    private final int itemViewType;
    private final int layoutId;
    private final ResourceManager resourceManager;

    public CexProtocolProvider(ResourceManager resourceManager) {
        Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
        this.resourceManager = resourceManager;
        this.itemViewType = IdFabric$ViewTypes.CENTRALIZED_EXCHANGES;
        this.layoutId = C3316R.layout.fork_recycle_item_wallet_card_icon_title_subtitle;
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
    public void convert(BaseViewHolder helper, CexProtocolItem item) {
        Intrinsics.checkNotNullParameter(helper, "helper");
        Intrinsics.checkNotNullParameter(item, "item");
        BaseViewHolder themedCardBackground = BaseQuickAdapterExtKt.setThemedCardBackground(helper, C3316R.C3319id.card_root, "windowBackgroundWhite");
        int i = C3316R.C3319id.text_title;
        BaseViewHolder themedTextColor = BaseQuickAdapterExtKt.setThemedTextColor(themedCardBackground, i, "chat_messagePanelText");
        int i2 = C3316R.C3319id.text_subtitle;
        BaseQuickAdapterExtKt.setMediumTypeface(BaseQuickAdapterExtKt.setThemedTextColor(themedTextColor, i2, "windowBackgroundWhiteGrayText2").setImageResource(C3316R.C3319id.image_icon, item.getInfo().getLogo()), i).setText(i, this.resourceManager.getString(item.getInfo().getName())).setText(i2, this.resourceManager.getString(item.getInfo().getDescription()));
    }
}
