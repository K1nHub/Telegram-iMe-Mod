package com.iMe.p031ui.adapter.provider;

import com.chad.library.adapter.base.provider.BaseNodeProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.iMe.common.IdFabric$ViewTypes;
import com.iMe.model.wallet.swap.DexProtocolItem;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.extentions.common.BaseQuickAdapterExtKt;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3242R;
import org.telegram.p044ui.ActionBar.Theme;
/* compiled from: DexProtocolProvider.kt */
/* renamed from: com.iMe.ui.adapter.provider.DexProtocolProvider */
/* loaded from: classes3.dex */
public final class DexProtocolProvider extends BaseNodeProvider<DexProtocolItem> {
    private final int itemViewType;
    private final int layoutId;
    private final ResourceManager resourceManager;

    public DexProtocolProvider(ResourceManager resourceManager) {
        Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
        this.resourceManager = resourceManager;
        this.itemViewType = IdFabric$ViewTypes.SWAP_PROTOCOL;
        this.layoutId = C3242R.layout.fork_recycle_item_wallet_card_icon_title_subtitle;
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
    public void convert(BaseViewHolder helper, DexProtocolItem item) {
        Intrinsics.checkNotNullParameter(helper, "helper");
        Intrinsics.checkNotNullParameter(item, "item");
        int i = C3242R.C3245id.card_root;
        BaseViewHolder themedCardBackground = BaseQuickAdapterExtKt.setThemedCardBackground(helper, i, "windowBackgroundWhite");
        int i2 = C3242R.C3245id.text_title;
        BaseViewHolder themedTextColor = BaseQuickAdapterExtKt.setThemedTextColor(themedCardBackground, i2, "chat_messagePanelText");
        int i3 = C3242R.C3245id.text_subtitle;
        BaseQuickAdapterExtKt.setForeground(BaseQuickAdapterExtKt.setAlpha(BaseQuickAdapterExtKt.setMediumTypeface(BaseQuickAdapterExtKt.setThemedTextColor(themedTextColor, i3, "windowBackgroundWhiteGrayText2").setImageResource(C3242R.C3245id.image_icon, item.getInfo().getLogo()), i2).setText(i2, this.resourceManager.getString(item.getInfo().getName())).setText(i3, this.resourceManager.getString(item.getInfo().getDescription())), C3242R.C3245id.frame_root, item.isEnabled() ? 1.0f : 0.3f), i, item.isEnabled() ? Theme.getSelectorDrawable(false) : null);
    }
}
