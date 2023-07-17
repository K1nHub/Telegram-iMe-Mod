package com.iMe.p031ui.wallet.home.tabs.crypto;

import com.chad.library.adapter.base.entity.node.BaseNode;
import com.iMe.manager.wallet.create.WalletCreateManagerView;
import com.iMe.p031ui.base.mvp.SwipeRefreshView;
import com.iMe.p031ui.base.mvp.base.BaseView;
import com.iMe.storage.domain.model.crypto.Network;
import com.iMe.storage.domain.model.wallet.token.TokenOrderType;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import moxy.MvpView;
import moxy.viewstate.strategy.alias.AddToEndSingle;
import moxy.viewstate.strategy.alias.OneExecution;
/* compiled from: WalletHomeCryptoView.kt */
@OneExecution
/* renamed from: com.iMe.ui.wallet.home.tabs.crypto.WalletHomeCryptoView */
/* loaded from: classes4.dex */
public interface WalletHomeCryptoView extends BaseView, SwipeRefreshView, WalletCreateManagerView, MvpView {
    void openHistoryScreen();

    void openSendScreen(String str);

    void openTokenSettingsScreen(String str);

    @AddToEndSingle
    void renderNodes(List<? extends BaseNode> list);

    void showAddressMismatchScreen();

    void showChangeNetworkHint();

    void showChooseNetworkDialog(Network network, Function1<? super Network, Unit> function1);

    void showQrReceiveDialog(String str, Network network);

    void showSelectTokensOrderTypeDialog(TokenOrderType tokenOrderType);

    void showWalletAddressScan(String str);
}
