package com.iMe.p031ui.wallet.crypto.settings.adapter;

import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.iMe.model.wallet.crypto.settings.WalletSettingsItem;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.extentions.common.BaseQuickAdapterExtKt;
import com.iMe.utils.extentions.common.RecycleViewExtKt;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3295R;
import org.telegram.p044ui.ActionBar.Theme;
/* compiled from: WalletAccountSettingsRecycleAdapter.kt */
/* renamed from: com.iMe.ui.wallet.crypto.settings.adapter.WalletAccountSettingsRecycleAdapter */
/* loaded from: classes3.dex */
public final class WalletAccountSettingsRecycleAdapter extends BaseQuickAdapter<WalletSettingsItem, BaseViewHolder> {
    private final ResourceManager resourceManager;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WalletAccountSettingsRecycleAdapter(ResourceManager resourceManager) {
        super(C3295R.layout.fork_recycle_item_wallet_account_settings, null, 2, null);
        Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
        this.resourceManager = resourceManager;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    public void convert(BaseViewHolder holder, WalletSettingsItem item) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        Intrinsics.checkNotNullParameter(item, "item");
        int i = C3295R.C3298id.linear_root;
        BaseViewHolder themedBackgroundColor = BaseQuickAdapterExtKt.setThemedBackgroundColor(BaseQuickAdapterExtKt.setRippleForeground(holder, i, false), i, Theme.key_windowBackgroundWhite);
        int i2 = C3295R.C3298id.text_setting_description;
        BaseViewHolder themedTextColor = BaseQuickAdapterExtKt.setThemedTextColor(themedBackgroundColor, i2, Theme.key_windowBackgroundWhiteGrayText2);
        int i3 = C3295R.C3298id.text_setting_title;
        BaseViewHolder themedTextColor2 = BaseQuickAdapterExtKt.setThemedTextColor(themedTextColor, i3, Theme.key_windowBackgroundWhiteBlackText);
        int i4 = C3295R.C3298id.image_icon;
        BaseQuickAdapterExtKt.setVisibleElseGone(BaseQuickAdapterExtKt.setThemedImageColor(themedTextColor2, i4, Theme.key_windowBackgroundWhiteGrayIcon).setImageResource(i4, item.getIcon()), C3295R.C3298id.view_divider, !RecycleViewExtKt.isLastItem(holder, this)).setText(i3, this.resourceManager.getString(item.getTitle())).setText(i2, this.resourceManager.getString(item.getDescription()));
    }
}
