package com.iMe.p030ui.wallet.home.tabs.binancepay.receive;

import com.iMe.fork.utils.Callbacks$Callback;
import com.iMe.fork.utils.Callbacks$Callback2;
import com.iMe.model.wallet.select.SelectTokenScreenType;
import com.iMe.p030ui.base.mvp.base.BaseView;
import com.iMe.storage.domain.model.wallet.token.FiatValue;
import com.iMe.storage.domain.model.wallet.token.TokenDetailed;
import moxy.viewstate.strategy.alias.AddToEndSingle;
/* compiled from: WalletReceiveBinancePayView.kt */
@AddToEndSingle
/* renamed from: com.iMe.ui.wallet.home.tabs.binancepay.receive.WalletReceiveBinancePayView */
/* loaded from: classes4.dex */
public interface WalletReceiveBinancePayView extends BaseView {
    void openChatScreen(long j);

    void showCreatedCollectionSuccessDialog(String str, String str2, String str3, Callbacks$Callback callbacks$Callback);

    void showSelectTokenDialog(SelectTokenScreenType selectTokenScreenType, String str, boolean z, Callbacks$Callback2<TokenDetailed, FiatValue> callbacks$Callback2);

    void updateSelectedToken();

    void updateSelectedUser();
}
