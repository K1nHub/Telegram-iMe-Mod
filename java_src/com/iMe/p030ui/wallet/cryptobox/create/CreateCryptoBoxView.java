package com.iMe.p030ui.wallet.cryptobox.create;

import com.iMe.fork.utils.Callbacks$Callback;
import com.iMe.model.cryptobox.CryptoBoxCreationRulesItem;
import com.iMe.model.dialog.DialogModel;
import com.iMe.model.staking.TransactionStep;
import com.iMe.model.wallet.crypto.send.fee.FeeType;
import com.iMe.navigation.wallet.coordinator.args.TokenBuyCoordinatorArgs;
import com.iMe.p030ui.base.mvp.SwitchNetworkView;
import com.iMe.p030ui.base.mvp.base.BaseView;
import moxy.viewstate.strategy.alias.AddToEndSingle;
import moxy.viewstate.strategy.alias.OneExecution;
import org.telegram.tgnet.TLRPC$Chat;
/* compiled from: CreateCryptoBoxView.kt */
@OneExecution
/* renamed from: com.iMe.ui.wallet.cryptobox.create.CreateCryptoBoxView */
/* loaded from: classes3.dex */
public interface CreateCryptoBoxView extends BaseView, SwitchNetworkView {
    void openAddAdminScreen(long j, TLRPC$Chat tLRPC$Chat);

    void openBuyScreen(TokenBuyCoordinatorArgs tokenBuyCoordinatorArgs);

    void openSelectChatScreen(Long l);

    void openSelectTokenScreen(String str);

    @AddToEndSingle
    void renderCryptoBoxCreationRules(CryptoBoxCreationRulesItem cryptoBoxCreationRulesItem, boolean z);

    @AddToEndSingle
    void renderSelectedChat(TLRPC$Chat tLRPC$Chat);

    @AddToEndSingle
    void renderSelectedToken(String str, String str2, int i, String str3);

    @AddToEndSingle
    void renderTransactionActionBlock(TransactionStep transactionStep, FeeType feeType);

    @AddToEndSingle
    void resetSelectedToken();

    @AddToEndSingle
    void setupAmountInputErrorState(boolean z, String str, String str2);

    @AddToEndSingle
    void setupCapacityInputErrorState(boolean z, String str);

    void showActionError(String str);

    void showConfirmDialog(DialogModel dialogModel, Callbacks$Callback callbacks$Callback);

    void showCreationSuccess();

    void showCryptoBoxInfoDialog(String str);
}
