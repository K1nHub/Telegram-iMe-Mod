package com.smedialink.p031ui.wallet.settings.appearance;

import com.smedialink.model.wallet.settings.InterfaceSettingItem;
import com.smedialink.p031ui.base.mvp.base.BaseView;
import java.util.List;
import moxy.viewstate.strategy.alias.AddToEndSingle;
/* compiled from: WalletAppearanceSettingsView.kt */
@AddToEndSingle
/* renamed from: com.smedialink.ui.wallet.settings.appearance.WalletAppearanceSettingsView */
/* loaded from: classes3.dex */
public interface WalletAppearanceSettingsView extends BaseView {
    void setupSettingsItems(List<InterfaceSettingItem> list);
}
