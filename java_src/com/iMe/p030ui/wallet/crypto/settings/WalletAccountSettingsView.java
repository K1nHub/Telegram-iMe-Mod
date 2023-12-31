package com.iMe.p030ui.wallet.crypto.settings;

import com.iMe.model.wallet.crypto.settings.WalletSettingsItem;
import com.iMe.p030ui.base.mvp.base.BaseView;
import java.util.List;
import moxy.viewstate.strategy.alias.AddToEndSingle;
import moxy.viewstate.strategy.alias.OneExecution;
/* compiled from: WalletAccountSettingsView.kt */
@OneExecution
/* renamed from: com.iMe.ui.wallet.crypto.settings.WalletAccountSettingsView */
/* loaded from: classes3.dex */
public interface WalletAccountSettingsView extends BaseView {
    void openBlockchainsScreen();

    void openCustomTokensScreen();

    void openPinCodeSettingsScreen();

    void openPrivacySettingsScreen();

    void openWalletConnectScreen();

    @AddToEndSingle
    void renderSettingsItems(List<WalletSettingsItem> list);
}
