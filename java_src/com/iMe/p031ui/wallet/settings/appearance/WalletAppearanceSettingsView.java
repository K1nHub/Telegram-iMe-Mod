package com.iMe.p031ui.wallet.settings.appearance;

import com.iMe.model.wallet.settings.InterfaceSettingItem;
import com.iMe.p031ui.base.mvp.base.BaseView;
import java.util.List;
import moxy.viewstate.strategy.alias.AddToEndSingle;
import moxy.viewstate.strategy.alias.OneExecution;
/* compiled from: WalletAppearanceSettingsView.kt */
@AddToEndSingle
/* renamed from: com.iMe.ui.wallet.settings.appearance.WalletAppearanceSettingsView */
/* loaded from: classes4.dex */
public interface WalletAppearanceSettingsView extends BaseView {
    @OneExecution
    void openNetworksSettingsScreen();

    void setupSettingsItems(List<InterfaceSettingItem> list);
}
