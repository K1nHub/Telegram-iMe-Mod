package com.iMe.p030ui.wallet.cryptobox;

import com.chad.library.adapter.base.entity.node.BaseNode;
import com.iMe.fork.utils.Callbacks$Callback;
import com.iMe.model.dialog.DialogModel;
import com.iMe.p030ui.base.mvp.SwipeRefreshView;
import com.iMe.p030ui.base.mvp.SwitchNetworkView;
import com.iMe.p030ui.base.mvp.base.BaseView;
import com.iMe.storage.domain.model.crypto.Network;
import com.iMe.storage.domain.model.crypto.cryptobox.CryptoBoxInfo;
import java.util.List;
import moxy.viewstate.strategy.alias.AddToEndSingle;
import moxy.viewstate.strategy.alias.OneExecution;
import org.telegram.tgnet.TLRPC$Chat;
/* compiled from: CryptoBoxesView.kt */
@OneExecution
/* renamed from: com.iMe.ui.wallet.cryptobox.CryptoBoxesView */
/* loaded from: classes4.dex */
public interface CryptoBoxesView extends BaseView, SwitchNetworkView, SwipeRefreshView {
    void openAddAdminScreen(long j, TLRPC$Chat tLRPC$Chat);

    void openCryptoBoxCreationScreen(TLRPC$Chat tLRPC$Chat, Network network);

    void openCryptoBoxDetailsScreen(CryptoBoxInfo cryptoBoxInfo);

    @AddToEndSingle
    void renderItems(List<BaseNode> list);

    void showChooseOrderDialog(DialogModel dialogModel, List<String> list, int i);

    void showConfirmDialog(DialogModel dialogModel, Callbacks$Callback callbacks$Callback);
}
