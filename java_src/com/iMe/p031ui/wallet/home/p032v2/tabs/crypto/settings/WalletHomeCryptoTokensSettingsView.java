package com.iMe.p031ui.wallet.home.p032v2.tabs.crypto.settings;

import com.iMe.model.wallet.select.SelectableToken;
import com.iMe.p031ui.base.mvp.base.BaseView;
import java.util.List;
import moxy.viewstate.strategy.alias.AddToEndSingle;
/* compiled from: WalletHomeCryptoTokensSettingsView.kt */
@AddToEndSingle
/* renamed from: com.iMe.ui.wallet.home.v2.tabs.crypto.settings.WalletHomeCryptoTokensSettingsView */
/* loaded from: classes4.dex */
public interface WalletHomeCryptoTokensSettingsView extends BaseView {
    void showTokens(List<? extends SelectableToken> list);
}
