package com.iMe.p030ui.wallet.send;

import android.os.Bundle;
import com.iMe.model.dialog.DialogModel;
import com.iMe.model.wallet.crypto.NetworkItem;
import com.iMe.model.wallet.crypto.send.fee.FeeType;
import com.iMe.model.wallet.select.SelectTokenScreenType;
import com.iMe.navigation.wallet.coordinator.args.TokenBuyCoordinatorArgs;
import com.iMe.p030ui.base.mvp.base.BaseView;
import com.iMe.p030ui.wallet.send.WalletSendPresenter;
import java.util.List;
import moxy.viewstate.strategy.alias.AddToEndSingle;
import moxy.viewstate.strategy.alias.OneExecution;
import org.telegram.tgnet.TLRPC$User;
/* compiled from: WalletSendView.kt */
@OneExecution
/* renamed from: com.iMe.ui.wallet.send.WalletSendView */
/* loaded from: classes4.dex */
public interface WalletSendView extends BaseView {
    @AddToEndSingle
    void hideFeeView();

    @AddToEndSingle
    void onSuccessValidation(DialogModel dialogModel, boolean z);

    void openBuyScreen(TokenBuyCoordinatorArgs tokenBuyCoordinatorArgs);

    void openChooseContact(Bundle bundle);

    void openSelectTokenScreen(SelectTokenScreenType selectTokenScreenType, String str);

    @AddToEndSingle
    void renderInsertedAmountInFiat(String str);

    @AddToEndSingle
    void renderSelectedToken(String str, String str2, int i, String str3, String str4);

    @AddToEndSingle
    void resetScreen();

    @AddToEndSingle
    void setupAmount(String str);

    @AddToEndSingle
    void setupAmountInputErrorState(boolean z, String str);

    @AddToEndSingle
    void setupAvatarRecipient(TLRPC$User tLRPC$User);

    @AddToEndSingle
    void setupCommentVisibility(boolean z);

    @AddToEndSingle
    void setupNetwork(NetworkItem networkItem);

    @AddToEndSingle
    void setupRecipientInputErrorState(boolean z);

    @AddToEndSingle
    void setupReplenishAddress(String str);

    @AddToEndSingle
    void setupTokenInputErrorState(boolean z);

    void showChooseNetworkDialog(List<? extends NetworkItem> list, NetworkItem networkItem);

    void showNoEnoughMoneyErrorDialog(TokenBuyCoordinatorArgs tokenBuyCoordinatorArgs);

    void showRecipientNotFoundError();

    void showRecipientWalletNotActivatedError();

    void showSuccessSend(String str);

    @AddToEndSingle
    void updateFeeView(FeeType feeType);

    @AddToEndSingle
    void updateStateButtonSend(WalletSendPresenter.SendScreenState sendScreenState);
}
