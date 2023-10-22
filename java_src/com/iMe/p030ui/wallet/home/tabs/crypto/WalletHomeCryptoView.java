package com.iMe.p030ui.wallet.home.tabs.crypto;

import com.chad.library.adapter.base.entity.node.BaseNode;
import com.iMe.manager.wallet.create.WalletCreateManagerView;
import com.iMe.model.wallet.ItemOptionsModel;
import com.iMe.model.wallet.crypto.NetworkItem;
import com.iMe.model.wallet.details.TokenDetailsArgs;
import com.iMe.model.wallet.home.NetworkChoosePurpose;
import com.iMe.model.wallet.home.TokenSortingData;
import com.iMe.model.wallet.transfer.TransferScreenArgs;
import com.iMe.p030ui.base.mvp.SwipeRefreshView;
import com.iMe.p030ui.base.mvp.base.BaseView;
import com.iMe.storage.domain.model.crypto.Network;
import com.iMe.storage.domain.model.wallet.token.TokenDetailed;
import java.util.List;
import moxy.MvpView;
import moxy.viewstate.strategy.alias.AddToEndSingle;
import moxy.viewstate.strategy.alias.OneExecution;
/* compiled from: WalletHomeCryptoView.kt */
@OneExecution
/* renamed from: com.iMe.ui.wallet.home.tabs.crypto.WalletHomeCryptoView */
/* loaded from: classes4.dex */
public interface WalletHomeCryptoView extends BaseView, SwipeRefreshView, WalletCreateManagerView, MvpView {
    void openHistoryScreen();

    void openSendScreen(TransferScreenArgs transferScreenArgs);

    void openSwapScreen(TokenDetailed tokenDetailed);

    void openTokenSettingsScreen(String str);

    void openWalletDetails(TokenDetailsArgs tokenDetailsArgs);

    @AddToEndSingle
    void renderNodes(List<? extends BaseNode> list);

    void showAddressMismatchScreen();

    void showChangeNetworkHint();

    void showChooseNetworkDialog(NetworkItem networkItem, List<? extends NetworkItem> list, NetworkChoosePurpose networkChoosePurpose);

    void showMenuItems(List<ItemOptionsModel> list);

    void showQrReceiveDialog(String str, Network network);

    void showSelectTokensOrderTypeDialog(TokenSortingData tokenSortingData, boolean z);

    void showWalletAddressScan(String str);
}
