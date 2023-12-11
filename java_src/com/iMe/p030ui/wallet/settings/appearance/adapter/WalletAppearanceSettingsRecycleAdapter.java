package com.iMe.p030ui.wallet.settings.appearance.adapter;

import android.view.View;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.iMe.model.wallet.settings.InterfaceSettingItem;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.extentions.common.BaseQuickAdapterExtKt;
import com.iMe.utils.extentions.common.RecycleViewExtKt;
import com.iMe.utils.extentions.common.ViewExtKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3632R;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Components.Switch;
/* compiled from: WalletAppearanceSettingsRecycleAdapter.kt */
/* renamed from: com.iMe.ui.wallet.settings.appearance.adapter.WalletAppearanceSettingsRecycleAdapter */
/* loaded from: classes4.dex */
public final class WalletAppearanceSettingsRecycleAdapter extends BaseQuickAdapter<InterfaceSettingItem, BaseViewHolder> {
    private final ResourceManager resourceManager;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WalletAppearanceSettingsRecycleAdapter(ResourceManager resourceManager) {
        super(C3632R.layout.fork_recycle_item_wallet_appearance_settings, null, 2, null);
        Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
        this.resourceManager = resourceManager;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    public void convert(BaseViewHolder holder, final InterfaceSettingItem item) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        Intrinsics.checkNotNullParameter(item, "item");
        int i = C3632R.C3635id.linear_root;
        BaseViewHolder themedBackgroundColor = BaseQuickAdapterExtKt.setThemedBackgroundColor(BaseQuickAdapterExtKt.setRippleForeground(holder, i, false), i, Theme.key_windowBackgroundWhite);
        int i2 = C3632R.C3635id.text_setting_description;
        BaseViewHolder themedTextColor = BaseQuickAdapterExtKt.setThemedTextColor(themedBackgroundColor, i2, Theme.key_windowBackgroundWhiteGrayText2);
        int i3 = C3632R.C3635id.text_setting_title;
        BaseViewHolder themedTextColor2 = BaseQuickAdapterExtKt.setThemedTextColor(themedTextColor, i3, Theme.key_windowBackgroundWhiteBlackText);
        int i4 = C3632R.C3635id.image_icon;
        BaseQuickAdapterExtKt.applyForView(BaseQuickAdapterExtKt.setVisibleElseGone(BaseQuickAdapterExtKt.setThemedImageColor(themedTextColor2, i4, Theme.key_windowBackgroundWhiteGrayIcon).setImageResource(i4, item.getIcon()), C3632R.C3635id.view_divider, !RecycleViewExtKt.isLastItem(holder, this)).setText(i3, this.resourceManager.getString(item.getTitle())).setText(i2, this.resourceManager.getString(item.getDescription())), C3632R.C3635id.view_switch, new Function1<Switch, Unit>() { // from class: com.iMe.ui.wallet.settings.appearance.adapter.WalletAppearanceSettingsRecycleAdapter$convert$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Switch r1) {
                invoke2(r1);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(Switch applyForView) {
                Intrinsics.checkNotNullParameter(applyForView, "$this$applyForView");
                InterfaceSettingItem interfaceSettingItem = InterfaceSettingItem.this;
                if (interfaceSettingItem instanceof InterfaceSettingItem.Networks) {
                    ViewExtKt.gone$default(applyForView, false, 1, null);
                } else if (interfaceSettingItem instanceof InterfaceSettingItem.SwitchableOption) {
                    ViewExtKt.visible$default(applyForView, false, 1, null);
                    applyForView.setChecked(((InterfaceSettingItem.SwitchableOption) InterfaceSettingItem.this).isEnabled(), false);
                    int i5 = Theme.key_switchTrack;
                    int i6 = Theme.key_switchTrackChecked;
                    int i7 = Theme.key_windowBackgroundWhite;
                    applyForView.setColors(i5, i6, i7, i7);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    public void setOnItemClick(View v, int i) {
        Intrinsics.checkNotNullParameter(v, "v");
        Switch r0 = (Switch) v.findViewById(C3632R.C3635id.view_switch);
        r0.setChecked(!r0.isChecked(), true);
        super.setOnItemClick(v, i);
    }
}
