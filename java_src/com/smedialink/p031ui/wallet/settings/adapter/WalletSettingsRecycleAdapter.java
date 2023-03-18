package com.smedialink.p031ui.wallet.settings.adapter;

import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.smedialink.model.wallet.settings.SettingUiItem;
import com.smedialink.storage.domain.utils.system.ResourceManager;
import com.smedialink.utils.extentions.common.BaseQuickAdapterExtKt;
import com.smedialink.utils.extentions.common.RecycleViewExtKt;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3286R;
/* compiled from: WalletSettingsRecycleAdapter.kt */
/* renamed from: com.smedialink.ui.wallet.settings.adapter.WalletSettingsRecycleAdapter */
/* loaded from: classes3.dex */
public final class WalletSettingsRecycleAdapter extends BaseQuickAdapter<SettingUiItem, BaseViewHolder> {
    private final ResourceManager resourceManager;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WalletSettingsRecycleAdapter(ResourceManager resourceManager) {
        super(C3286R.layout.fork_recycle_item_wallet_settings, null, 2, null);
        Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
        this.resourceManager = resourceManager;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    public void convert(BaseViewHolder holder, SettingUiItem item) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        Intrinsics.checkNotNullParameter(item, "item");
        int i = C3286R.C3289id.linear_root;
        BaseViewHolder themedBackgroundColor = BaseQuickAdapterExtKt.setThemedBackgroundColor(BaseQuickAdapterExtKt.setRippleForeground(holder, i, false), i, "windowBackgroundWhite");
        int i2 = C3286R.C3289id.text_setting_description;
        BaseViewHolder themedTextColor = BaseQuickAdapterExtKt.setThemedTextColor(themedBackgroundColor, i2, "windowBackgroundWhiteGrayText2");
        int i3 = C3286R.C3289id.text_setting_title;
        BaseViewHolder themedTextColor2 = BaseQuickAdapterExtKt.setThemedTextColor(themedTextColor, i3, "windowBackgroundWhiteBlackText");
        int i4 = C3286R.C3289id.image_icon;
        BaseQuickAdapterExtKt.setVisibleElseGone(BaseQuickAdapterExtKt.setVisibleElseGone(BaseQuickAdapterExtKt.setThemedImageColor(themedTextColor2, i4, "windowBackgroundWhiteGrayIcon").setImageResource(i4, item.getItem().getIcon()), i2, item.getItem().getDescription() != null), C3286R.C3289id.view_divider, !RecycleViewExtKt.isLastItem(holder, this)).setText(i3, this.resourceManager.getString(item.getItem().getTitle())).setText(i2, item.getDescription(this.resourceManager));
    }
}
