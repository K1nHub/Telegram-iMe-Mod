package com.smedialink.p031ui.adapter.provider;

import com.chad.library.adapter.base.provider.BaseNodeProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.smedialink.common.IdFabric$ViewTypes;
import com.smedialink.model.wallet.swap.DexProtocolItem;
import com.smedialink.storage.domain.utils.system.ResourceManager;
import com.smedialink.utils.extentions.common.BaseQuickAdapterExtKt;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3286R;
import org.telegram.p048ui.ActionBar.Theme;
/* compiled from: DexProtocolProvider.kt */
/* renamed from: com.smedialink.ui.adapter.provider.DexProtocolProvider */
/* loaded from: classes3.dex */
public final class DexProtocolProvider extends BaseNodeProvider<DexProtocolItem> {
    private final int itemViewType;
    private final int layoutId;
    private final ResourceManager resourceManager;

    public DexProtocolProvider(ResourceManager resourceManager) {
        Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
        this.resourceManager = resourceManager;
        this.itemViewType = IdFabric$ViewTypes.SWAP_PROTOCOL;
        this.layoutId = C3286R.layout.fork_recycle_item_wallet_card_icon_title_subtitle;
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
        int i = C3286R.C3289id.card_root;
        BaseViewHolder themedCardBackground = BaseQuickAdapterExtKt.setThemedCardBackground(helper, i, "windowBackgroundWhite");
        int i2 = C3286R.C3289id.text_title;
        BaseViewHolder themedTextColor = BaseQuickAdapterExtKt.setThemedTextColor(themedCardBackground, i2, "chat_messagePanelText");
        int i3 = C3286R.C3289id.text_subtitle;
        BaseQuickAdapterExtKt.setForeground(BaseQuickAdapterExtKt.setAlpha(BaseQuickAdapterExtKt.setMediumTypeface(BaseQuickAdapterExtKt.setThemedTextColor(themedTextColor, i3, "windowBackgroundWhiteGrayText2").setImageResource(C3286R.C3289id.image_icon, item.getInfo().getLogo()), i2).setText(i2, this.resourceManager.getString(item.getInfo().getName())).setText(i3, this.resourceManager.getString(item.getInfo().getDescription())), C3286R.C3289id.frame_root, item.isEnabled() ? 1.0f : 0.3f), i, item.isEnabled() ? Theme.getSelectorDrawable(false) : null);
    }
}
