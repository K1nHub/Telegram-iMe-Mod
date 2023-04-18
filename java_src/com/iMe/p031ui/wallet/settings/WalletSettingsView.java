package com.iMe.p031ui.wallet.settings;

import com.iMe.model.wallet.settings.SettingUiItem;
import com.iMe.p031ui.base.mvp.base.BaseView;
import java.util.List;
import moxy.viewstate.strategy.alias.AddToEndSingle;
/* compiled from: WalletSettingsView.kt */
@AddToEndSingle
/* renamed from: com.iMe.ui.wallet.settings.WalletSettingsView */
/* loaded from: classes4.dex */
public interface WalletSettingsView extends BaseView {
    void setupSettingsItems(List<SettingUiItem> list);
}
