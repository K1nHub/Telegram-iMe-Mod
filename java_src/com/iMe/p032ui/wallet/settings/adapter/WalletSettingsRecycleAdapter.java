package com.iMe.p032ui.wallet.settings.adapter;

import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.iMe.model.wallet.settings.SettingUiItem;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.extentions.common.BaseQuickAdapterExtKt;
import com.iMe.utils.extentions.common.RecycleViewExtKt;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3316R;
/* compiled from: WalletSettingsRecycleAdapter.kt */
/* renamed from: com.iMe.ui.wallet.settings.adapter.WalletSettingsRecycleAdapter */
/* loaded from: classes4.dex */
public final class WalletSettingsRecycleAdapter extends BaseQuickAdapter<SettingUiItem, BaseViewHolder> {
    private final ResourceManager resourceManager;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WalletSettingsRecycleAdapter(ResourceManager resourceManager) {
        super(C3316R.layout.fork_recycle_item_wallet_settings, null, 2, null);
        Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
        this.resourceManager = resourceManager;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    public void convert(BaseViewHolder holder, SettingUiItem item) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        Intrinsics.checkNotNullParameter(item, "item");
        int i = C3316R.C3319id.linear_root;
        BaseViewHolder themedBackgroundColor = BaseQuickAdapterExtKt.setThemedBackgroundColor(BaseQuickAdapterExtKt.setRippleForeground(holder, i, false), i, "windowBackgroundWhite");
        int i2 = C3316R.C3319id.text_setting_description;
        BaseViewHolder themedTextColor = BaseQuickAdapterExtKt.setThemedTextColor(themedBackgroundColor, i2, "windowBackgroundWhiteGrayText2");
        int i3 = C3316R.C3319id.text_setting_title;
        BaseViewHolder themedTextColor2 = BaseQuickAdapterExtKt.setThemedTextColor(themedTextColor, i3, "windowBackgroundWhiteBlackText");
        int i4 = C3316R.C3319id.image_icon;
        BaseQuickAdapterExtKt.setVisibleElseGone(BaseQuickAdapterExtKt.setVisibleElseGone(BaseQuickAdapterExtKt.setThemedImageColor(themedTextColor2, i4, "windowBackgroundWhiteGrayIcon").setImageResource(i4, item.getItem().getIcon()), i2, item.getItem().getDescription() != null), C3316R.C3319id.view_divider, !RecycleViewExtKt.isLastItem(holder, this)).setText(i3, this.resourceManager.getString(item.getItem().getTitle())).setText(i2, item.getDescription(this.resourceManager));
    }
}
