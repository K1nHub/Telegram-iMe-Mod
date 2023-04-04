package com.iMe.p032ui.wallet.home.p033v2.tabs.crypto;

import com.chad.library.adapter.base.entity.node.BaseNode;
import com.iMe.manager.wallet.create.WalletCreateManagerView;
import com.iMe.p032ui.base.mvp.AdapterNotifyView;
import com.iMe.p032ui.base.mvp.SwipeRefreshView;
import com.iMe.p032ui.base.mvp.base.BaseView;
import com.iMe.storage.domain.model.crypto.BlockchainType;
import com.iMe.storage.domain.model.crypto.NetworkType;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import moxy.viewstate.strategy.alias.AddToEndSingle;
import moxy.viewstate.strategy.alias.OneExecution;
/* compiled from: WalletHomeCryptoView.kt */
@OneExecution
/* renamed from: com.iMe.ui.wallet.home.v2.tabs.crypto.WalletHomeCryptoView */
/* loaded from: classes3.dex */
public interface WalletHomeCryptoView extends BaseView, SwipeRefreshView, WalletCreateManagerView, AdapterNotifyView {
    void openHistoryScreen();

    void openSendScreen();

    @AddToEndSingle
    void renderNodes(List<? extends BaseNode> list);

    void showAddressMismatchScreen();

    void showChangeNetworkHint();

    void showChooseNetworkDialog(NetworkType networkType, Function1<? super NetworkType, Unit> function1);

    void showQrReceiveDialog(String str, BlockchainType blockchainType);

    void showWalletAddressScan(String str);
}
