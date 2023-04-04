package com.iMe.p032ui.wallet.actions.send.amount;

import com.iMe.fork.utils.Callbacks$Callback1;
import com.iMe.model.dialog.DialogModel;
import com.iMe.model.wallet.select.SelectableToken;
import com.iMe.model.wallet.select.SelectableType;
import com.iMe.navigation.wallet.coordinator.args.TokenBuyCoordinatorArgs;
import com.iMe.p032ui.base.mvp.base.BaseView;
import com.iMe.p032ui.wallet.actions.send.amount.WalletSendAmountPresenter;
import com.iMe.p032ui.wallet.home.p033v2.tabs.binancepay.replenish.WalletBinancePayReplenishView;
import com.iMe.storage.domain.model.crypto.NetworkType;
import com.iMe.storage.domain.model.wallet.token.TokenBalance;
import java.util.List;
import moxy.viewstate.strategy.alias.AddToEndSingle;
import moxy.viewstate.strategy.alias.OneExecution;
/* compiled from: WalletSendAmountView.kt */
@OneExecution
/* renamed from: com.iMe.ui.wallet.actions.send.amount.WalletSendAmountView */
/* loaded from: classes3.dex */
public interface WalletSendAmountView extends BaseView, WalletBinancePayReplenishView {
    @AddToEndSingle
    void onSuccessValidation(DialogModel dialogModel, boolean z);

    @AddToEndSingle
    void resetScreen();

    @AddToEndSingle
    void setupScreenState(WalletSendAmountPresenter.SendScreenState sendScreenState);

    @AddToEndSingle
    void showBalance(TokenBalance tokenBalance);

    void showChooseNetworkDialog(List<? extends NetworkType> list, NetworkType networkType, Callbacks$Callback1<NetworkType> callbacks$Callback1);

    void showNoEnoughMoneyErrorDialog(TokenBuyCoordinatorArgs tokenBuyCoordinatorArgs);

    void showRecipientNotFoundError();

    void showRecipientWalletNotActivatedError();

    void showSelectTokenDialog(SelectableType selectableType, List<? extends SelectableToken> list, NetworkType networkType, boolean z, Callbacks$Callback1<SelectableToken> callbacks$Callback1);

    void showSuccessSend(String str);

    @AddToEndSingle
    void updateFeeView();

    @AddToEndSingle
    void updateSelectedUser();
}
