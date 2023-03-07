package com.smedialink.p031ui.wallet.crypto.settings;

import com.smedialink.model.wallet.crypto.settings.WalletSettingsItem;
import com.smedialink.p031ui.base.mvp.base.BaseView;
import java.util.List;
import moxy.viewstate.strategy.alias.AddToEndSingle;
import moxy.viewstate.strategy.alias.OneExecution;
/* compiled from: WalletAccountSettingsView.kt */
@OneExecution
/* renamed from: com.smedialink.ui.wallet.crypto.settings.WalletAccountSettingsView */
/* loaded from: classes3.dex */
public interface WalletAccountSettingsView extends BaseView {
    void openBlockchainsScreen();

    void openPinCodeSettingsScreen();

    void openPrivacySettingsScreen();

    void openWalletConnectScreen();

    @AddToEndSingle
    void setupSettingsItems(List<WalletSettingsItem> list);
}
