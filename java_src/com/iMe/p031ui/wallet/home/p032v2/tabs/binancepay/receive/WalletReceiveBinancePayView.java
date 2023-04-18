package com.iMe.p031ui.wallet.home.p032v2.tabs.binancepay.receive;

import com.iMe.fork.utils.Callbacks$Callback;
import com.iMe.fork.utils.Callbacks$Callback1;
import com.iMe.model.wallet.select.SelectableToken;
import com.iMe.model.wallet.select.SelectableType;
import com.iMe.p031ui.base.mvp.base.BaseView;
import com.iMe.storage.domain.model.crypto.NetworkType;
import java.util.List;
import moxy.viewstate.strategy.alias.AddToEndSingle;
/* compiled from: WalletReceiveBinancePayView.kt */
@AddToEndSingle
/* renamed from: com.iMe.ui.wallet.home.v2.tabs.binancepay.receive.WalletReceiveBinancePayView */
/* loaded from: classes3.dex */
public interface WalletReceiveBinancePayView extends BaseView {
    void openChatScreen(long j);

    void showCreatedCollectionSuccessDialog(String str, String str2, String str3, Callbacks$Callback callbacks$Callback);

    void showSelectTokenDialog(SelectableType selectableType, List<? extends SelectableToken> list, NetworkType networkType, boolean z, Callbacks$Callback1<SelectableToken> callbacks$Callback1);

    void updateSelectedToken();

    void updateSelectedUser();
}
