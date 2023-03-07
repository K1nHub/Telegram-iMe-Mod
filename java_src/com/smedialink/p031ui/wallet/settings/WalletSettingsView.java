package com.smedialink.p031ui.wallet.settings;

import com.smedialink.model.wallet.settings.SettingUiItem;
import com.smedialink.p031ui.base.mvp.base.BaseView;
import java.util.List;
import moxy.viewstate.strategy.alias.AddToEndSingle;
/* compiled from: WalletSettingsView.kt */
@AddToEndSingle
/* renamed from: com.smedialink.ui.wallet.settings.WalletSettingsView */
/* loaded from: classes3.dex */
public interface WalletSettingsView extends BaseView {
    void setupSettingsItems(List<SettingUiItem> list);
}
