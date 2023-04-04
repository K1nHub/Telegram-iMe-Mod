package com.iMe.p032ui.wallet.home.p033v2.tabs.crypto.settings;

import com.iMe.model.wallet.select.SelectableToken;
import com.iMe.p032ui.base.mvp.base.BaseView;
import java.util.List;
import moxy.viewstate.strategy.alias.AddToEndSingle;
/* compiled from: WalletHomeCryptoTokensSettingsView.kt */
@AddToEndSingle
/* renamed from: com.iMe.ui.wallet.home.v2.tabs.crypto.settings.WalletHomeCryptoTokensSettingsView */
/* loaded from: classes3.dex */
public interface WalletHomeCryptoTokensSettingsView extends BaseView {
    void showTokens(List<? extends SelectableToken> list);
}
