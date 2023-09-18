package com.iMe.p031ui.wallet.actions.send.amount;

import com.iMe.fork.utils.Callbacks$Callback1;
import com.iMe.fork.utils.Callbacks$Callback2;
import com.iMe.model.dialog.DialogModel;
import com.iMe.model.wallet.crypto.NetworkItem;
import com.iMe.model.wallet.select.SelectTokenScreenType;
import com.iMe.navigation.wallet.coordinator.args.TokenBuyCoordinatorArgs;
import com.iMe.p031ui.base.mvp.base.BaseView;
import com.iMe.p031ui.wallet.actions.send.amount.WalletSendAmountPresenter;
import com.iMe.p031ui.wallet.home.tabs.binancepay.replenish.WalletBinancePayReplenishView;
import com.iMe.storage.domain.model.wallet.token.FiatValue;
import com.iMe.storage.domain.model.wallet.token.TokenBalance;
import com.iMe.storage.domain.model.wallet.token.TokenDetailed;
import java.util.List;
import moxy.viewstate.strategy.alias.AddToEndSingle;
import moxy.viewstate.strategy.alias.OneExecution;
/* compiled from: WalletSendAmountView.kt */
@OneExecution
/* renamed from: com.iMe.ui.wallet.actions.send.amount.WalletSendAmountView */
/* loaded from: classes6.dex */
public interface WalletSendAmountView extends BaseView, WalletBinancePayReplenishView {
    @AddToEndSingle
    void onSuccessValidation(DialogModel dialogModel, boolean z);

    @AddToEndSingle
    void resetScreen();

    @AddToEndSingle
    void setupScreenState(WalletSendAmountPresenter.SendScreenState sendScreenState);

    @AddToEndSingle
    void showBalance(TokenBalance tokenBalance);

    void showChooseNetworkDialog(List<? extends NetworkItem> list, NetworkItem networkItem, Callbacks$Callback1<NetworkItem.Crypto> callbacks$Callback1);

    void showNoEnoughMoneyErrorDialog(TokenBuyCoordinatorArgs tokenBuyCoordinatorArgs);

    void showRecipientNotFoundError();

    void showRecipientWalletNotActivatedError();

    void showSelectTokenDialog(SelectTokenScreenType selectTokenScreenType, String str, boolean z, Callbacks$Callback2<TokenDetailed, FiatValue> callbacks$Callback2);

    void showSuccessSend(String str);

    @AddToEndSingle
    void updateFeeView();

    @AddToEndSingle
    void updateSelectedUser();
}
