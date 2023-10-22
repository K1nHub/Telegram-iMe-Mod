package com.iMe.p030ui.adapter.provider;

import com.chad.library.adapter.base.provider.BaseNodeProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.iMe.common.IdFabric$ViewTypes;
import com.iMe.model.wallet.home.ServicesBasicItem;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.extentions.common.BaseQuickAdapterExtKt;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3630R;
import org.telegram.p042ui.ActionBar.Theme;
/* compiled from: ServiceProvider.kt */
/* renamed from: com.iMe.ui.adapter.provider.ServiceProvider */
/* loaded from: classes.dex */
public final class ServiceProvider extends BaseNodeProvider<ServicesBasicItem> {
    private final int itemViewType;
    private final int layoutId;
    private final ResourceManager resourceManager;

    public ServiceProvider(ResourceManager resourceManager) {
        Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
        this.resourceManager = resourceManager;
        this.itemViewType = IdFabric$ViewTypes.SERVICES_BASIC;
        this.layoutId = C3630R.layout.fork_recycle_item_wallet_card_icon_title_subtitle;
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
    public void convert(BaseViewHolder helper, ServicesBasicItem item) {
        Intrinsics.checkNotNullParameter(helper, "helper");
        Intrinsics.checkNotNullParameter(item, "item");
        int i = C3630R.C3633id.card_root;
        BaseViewHolder themedCardBackground = BaseQuickAdapterExtKt.setThemedCardBackground(BaseQuickAdapterExtKt.setRippleForeground(helper, i, false), i, Theme.key_windowBackgroundWhite);
        int i2 = C3630R.C3633id.text_title;
        BaseViewHolder themedTextColor = BaseQuickAdapterExtKt.setThemedTextColor(themedCardBackground, i2, Theme.key_chat_messagePanelText);
        int i3 = C3630R.C3633id.text_subtitle;
        BaseQuickAdapterExtKt.setMediumTypeface(BaseQuickAdapterExtKt.setThemedTextColor(themedTextColor, i3, Theme.key_windowBackgroundWhiteGrayText2), i2).setImageResource(C3630R.C3633id.image_icon, item.getIcon()).setText(i2, this.resourceManager.getString(item.getTitleResId())).setText(i3, this.resourceManager.getString(item.getSubtitleResId()));
    }
}
