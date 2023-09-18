package com.iMe.p031ui.wallet.home.tabs.crypto;

import com.chad.library.adapter.base.entity.node.BaseNode;
import com.iMe.manager.wallet.create.WalletCreateManagerView;
import com.iMe.model.wallet.crypto.NetworkItem;
import com.iMe.model.wallet.home.NetworkChoosePurpose;
import com.iMe.p031ui.base.mvp.SwipeRefreshView;
import com.iMe.p031ui.base.mvp.base.BaseView;
import com.iMe.storage.domain.model.crypto.Network;
import com.iMe.storage.domain.model.wallet.token.TokenOrderType;
import java.util.List;
import moxy.MvpView;
import moxy.viewstate.strategy.alias.AddToEndSingle;
import moxy.viewstate.strategy.alias.OneExecution;
/* compiled from: WalletHomeCryptoView.kt */
@OneExecution
/* renamed from: com.iMe.ui.wallet.home.tabs.crypto.WalletHomeCryptoView */
/* loaded from: classes6.dex */
public interface WalletHomeCryptoView extends BaseView, SwipeRefreshView, WalletCreateManagerView, MvpView {
    void openHistoryScreen();

    void openSendScreen();

    void openTokenSettingsScreen(String str);

    @AddToEndSingle
    void renderNodes(List<? extends BaseNode> list);

    void showAddressMismatchScreen();

    void showChangeNetworkHint();

    void showChooseNetworkDialog(NetworkItem networkItem, List<? extends NetworkItem> list, NetworkChoosePurpose networkChoosePurpose);

    void showQrReceiveDialog(String str, Network network);

    void showSelectTokensOrderTypeDialog(TokenOrderType tokenOrderType, boolean z);

    void showWalletAddressScan(String str);
}
