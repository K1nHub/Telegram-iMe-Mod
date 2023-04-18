package com.iMe.p031ui.wallet.swap;

import com.chad.library.adapter.base.entity.node.BaseNode;
import com.iMe.p031ui.base.mvp.base.BaseView;
import com.iMe.storage.domain.model.crypto.NetworkType;
import com.iMe.storage.domain.model.wallet.swap.SwapProtocolInfo;
import java.util.List;
import moxy.viewstate.strategy.alias.AddToEndSingle;
import moxy.viewstate.strategy.alias.OneExecution;
/* compiled from: WalletSwapProtocolsView.kt */
@OneExecution
/* renamed from: com.iMe.ui.wallet.swap.WalletSwapProtocolsView */
/* loaded from: classes4.dex */
public interface WalletSwapProtocolsView extends BaseView {
    void openBinanceConvertScreen();

    void openSwapScreen(SwapProtocolInfo swapProtocolInfo, NetworkType networkType);

    @AddToEndSingle
    void showExchangesProviders(List<? extends BaseNode> list);

    void showRequiredVerifyDialog();
}
