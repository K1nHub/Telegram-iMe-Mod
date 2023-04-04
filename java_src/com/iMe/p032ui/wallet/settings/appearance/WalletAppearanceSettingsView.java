package com.iMe.p032ui.wallet.settings.appearance;

import com.iMe.model.wallet.settings.InterfaceSettingItem;
import com.iMe.p032ui.base.mvp.base.BaseView;
import java.util.List;
import moxy.viewstate.strategy.alias.AddToEndSingle;
/* compiled from: WalletAppearanceSettingsView.kt */
@AddToEndSingle
/* renamed from: com.iMe.ui.wallet.settings.appearance.WalletAppearanceSettingsView */
/* loaded from: classes4.dex */
public interface WalletAppearanceSettingsView extends BaseView {
    void setupSettingsItems(List<InterfaceSettingItem> list);
}
