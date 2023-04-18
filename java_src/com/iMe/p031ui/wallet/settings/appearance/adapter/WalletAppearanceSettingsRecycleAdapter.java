package com.iMe.p031ui.wallet.settings.appearance.adapter;

import android.view.View;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.iMe.model.wallet.settings.InterfaceSettingItem;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.extentions.common.BaseQuickAdapterExtKt;
import com.iMe.utils.extentions.common.RecycleViewExtKt;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3242R;
import org.telegram.p044ui.Components.Switch;
/* compiled from: WalletAppearanceSettingsRecycleAdapter.kt */
/* renamed from: com.iMe.ui.wallet.settings.appearance.adapter.WalletAppearanceSettingsRecycleAdapter */
/* loaded from: classes4.dex */
public final class WalletAppearanceSettingsRecycleAdapter extends BaseQuickAdapter<InterfaceSettingItem, BaseViewHolder> {
    private final ResourceManager resourceManager;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WalletAppearanceSettingsRecycleAdapter(ResourceManager resourceManager) {
        super(C3242R.layout.fork_recycle_item_wallet_appearance_settings, null, 2, null);
        Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
        this.resourceManager = resourceManager;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    public void convert(BaseViewHolder holder, InterfaceSettingItem item) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        Intrinsics.checkNotNullParameter(item, "item");
        int i = C3242R.C3245id.linear_root;
        BaseViewHolder themedBackgroundColor = BaseQuickAdapterExtKt.setThemedBackgroundColor(BaseQuickAdapterExtKt.setRippleForeground(holder, i, false), i, "windowBackgroundWhite");
        int i2 = C3242R.C3245id.text_setting_description;
        BaseViewHolder themedTextColor = BaseQuickAdapterExtKt.setThemedTextColor(themedBackgroundColor, i2, "windowBackgroundWhiteGrayText2");
        int i3 = C3242R.C3245id.text_setting_title;
        BaseViewHolder themedTextColor2 = BaseQuickAdapterExtKt.setThemedTextColor(themedTextColor, i3, "windowBackgroundWhiteBlackText");
        int i4 = C3242R.C3245id.image_icon;
        BaseQuickAdapterExtKt.applyForView(BaseQuickAdapterExtKt.setVisibleElseGone(BaseQuickAdapterExtKt.setThemedImageColor(themedTextColor2, i4, "windowBackgroundWhiteGrayIcon").setImageResource(i4, item.getIcon()), C3242R.C3245id.view_divider, !RecycleViewExtKt.isLastItem(holder, this)).setText(i3, this.resourceManager.getString(item.getTitle())).setText(i2, this.resourceManager.getString(item.getDescription())), C3242R.C3245id.view_switch, new WalletAppearanceSettingsRecycleAdapter$convert$1(item));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    public void setOnItemClick(View v, int i) {
        Intrinsics.checkNotNullParameter(v, "v");
        Switch r0 = (Switch) v.findViewById(C3242R.C3245id.view_switch);
        r0.setChecked(!r0.isChecked(), true);
        super.setOnItemClick(v, i);
    }
}