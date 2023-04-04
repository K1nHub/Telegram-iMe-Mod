package com.iMe.p032ui.wallet.crypto.settings;

import com.iMe.model.wallet.crypto.settings.WalletSettingsItem;
import com.iMe.p032ui.base.mvp.base.BaseView;
import java.util.List;
import moxy.viewstate.strategy.alias.AddToEndSingle;
import moxy.viewstate.strategy.alias.OneExecution;
/* compiled from: WalletAccountSettingsView.kt */
@OneExecution
/* renamed from: com.iMe.ui.wallet.crypto.settings.WalletAccountSettingsView */
/* loaded from: classes3.dex */
public interface WalletAccountSettingsView extends BaseView {
    void openBlockchainsScreen();

    void openPinCodeSettingsScreen();

    void openPrivacySettingsScreen();

    void openWalletConnectScreen();

    @AddToEndSingle
    void setupSettingsItems(List<WalletSettingsItem> list);
}
