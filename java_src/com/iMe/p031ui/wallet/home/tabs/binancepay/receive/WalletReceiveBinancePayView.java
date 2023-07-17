package com.iMe.p031ui.wallet.home.tabs.binancepay.receive;

import com.iMe.fork.utils.Callbacks$Callback;
import com.iMe.fork.utils.Callbacks$Callback1;
import com.iMe.p031ui.base.mvp.base.BaseView;
import com.iMe.p031ui.wallet.swap.token.WalletSelectTokenFragment;
import com.iMe.storage.domain.model.wallet.token.TokenDetailed;
import moxy.viewstate.strategy.alias.AddToEndSingle;
/* compiled from: WalletReceiveBinancePayView.kt */
@AddToEndSingle
/* renamed from: com.iMe.ui.wallet.home.tabs.binancepay.receive.WalletReceiveBinancePayView */
/* loaded from: classes4.dex */
public interface WalletReceiveBinancePayView extends BaseView {
    void openChatScreen(long j);

    void showCreatedCollectionSuccessDialog(String str, String str2, String str3, Callbacks$Callback callbacks$Callback);

    void showSelectTokenDialog(WalletSelectTokenFragment.ScreenType screenType, String str, boolean z, Callbacks$Callback1<TokenDetailed> callbacks$Callback1);

    void updateSelectedToken();

    void updateSelectedUser();
}
