package com.iMe.p030ui.wallet.crypto.wallet_connect;

import com.iMe.model.wallet.crypto.wallet_connect.WalletConnectSessionItem;
import com.iMe.p030ui.base.mvp.SwitchNetworkView;
import com.iMe.p030ui.base.mvp.base.BaseView;
import java.util.List;
import moxy.viewstate.strategy.alias.AddToEndSingle;
import moxy.viewstate.strategy.alias.OneExecution;
/* compiled from: WalletConnectView.kt */
@AddToEndSingle
/* renamed from: com.iMe.ui.wallet.crypto.wallet_connect.WalletConnectView */
/* loaded from: classes3.dex */
public interface WalletConnectView extends BaseView, SwitchNetworkView {
    void setupSessionsItems(List<WalletConnectSessionItem> list);

    @OneExecution
    void showChangeNetworkHint();
}
