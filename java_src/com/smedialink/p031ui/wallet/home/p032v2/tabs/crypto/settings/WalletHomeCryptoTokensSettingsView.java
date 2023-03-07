package com.smedialink.p031ui.wallet.home.p032v2.tabs.crypto.settings;

import com.smedialink.model.wallet.select.SelectableToken;
import com.smedialink.p031ui.base.mvp.base.BaseView;
import java.util.List;
import moxy.viewstate.strategy.alias.AddToEndSingle;
/* compiled from: WalletHomeCryptoTokensSettingsView.kt */
@AddToEndSingle
/* renamed from: com.smedialink.ui.wallet.home.v2.tabs.crypto.settings.WalletHomeCryptoTokensSettingsView */
/* loaded from: classes3.dex */
public interface WalletHomeCryptoTokensSettingsView extends BaseView {
    void showTokens(List<? extends SelectableToken> list);
}
