package com.smedialink.p031ui.wallet.actions.send.amount;

import com.smedialink.model.dialog.DialogModel;
import com.smedialink.model.wallet.select.SelectableToken;
import com.smedialink.model.wallet.select.SelectableType;
import com.smedialink.navigation.wallet.coordinator.args.TokenBuyCoordinatorArgs;
import com.smedialink.p031ui.base.mvp.base.BaseView;
import com.smedialink.p031ui.wallet.actions.send.amount.WalletSendAmountPresenter;
import com.smedialink.p031ui.wallet.home.p032v2.tabs.binancepay.replenish.WalletBinancePayReplenishView;
import com.smedialink.storage.domain.model.crypto.NetworkType;
import com.smedialink.storage.domain.model.wallet.token.TokenBalance;
import java.util.List;
import moxy.viewstate.strategy.alias.AddToEndSingle;
import moxy.viewstate.strategy.alias.OneExecution;
import org.fork.utils.Callbacks$Callback1;
/* compiled from: WalletSendAmountView.kt */
@OneExecution
/* renamed from: com.smedialink.ui.wallet.actions.send.amount.WalletSendAmountView */
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
