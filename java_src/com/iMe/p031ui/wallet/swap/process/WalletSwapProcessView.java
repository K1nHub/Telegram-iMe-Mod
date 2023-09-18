package com.iMe.p031ui.wallet.swap.process;

import com.iMe.fork.utils.Callbacks$Callback;
import com.iMe.model.dialog.AnimatedSpannableDialogModel;
import com.iMe.model.dialog.DialogModel;
import com.iMe.model.wallet.crypto.NetworkItem;
import com.iMe.model.wallet.crypto.swap.SwapFeeScreenArgs;
import com.iMe.model.wallet.crypto.swap.SwapUiState;
import com.iMe.model.wallet.select.SelectTokenScreenType;
import com.iMe.model.wallet.swap.SwapSide;
import com.iMe.navigation.wallet.coordinator.args.TokenBuyCoordinatorArgs;
import com.iMe.p031ui.base.mvp.SwitchNetworkView;
import com.iMe.p031ui.base.mvp.base.BaseView;
import com.iMe.storage.domain.model.binancepay.OutputConvertToken;
import com.iMe.storage.domain.model.wallet.token.FiatValue;
import com.iMe.storage.domain.model.wallet.token.TokenDetailed;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import moxy.viewstate.strategy.alias.AddToEndSingle;
import moxy.viewstate.strategy.alias.OneExecution;
/* compiled from: WalletSwapProcessView.kt */
@OneExecution
/* renamed from: com.iMe.ui.wallet.swap.process.WalletSwapProcessView */
/* loaded from: classes6.dex */
public interface WalletSwapProcessView extends BaseView, SwitchNetworkView {
    @AddToEndSingle
    void onTokenSelected(SwapSide swapSide, TokenDetailed tokenDetailed);

    void openSelectTokenScreen(TokenDetailed tokenDetailed, SelectTokenScreenType selectTokenScreenType, String str, boolean z, Function2<? super TokenDetailed, ? super FiatValue, Unit> function2);

    void openSwapFeeScreen(SwapFeeScreenArgs swapFeeScreenArgs);

    @AddToEndSingle
    void renderState(SwapUiState swapUiState);

    @AddToEndSingle
    void setAmount(SwapSide swapSide, String str);

    @AddToEndSingle
    void setInputError(String str);

    @AddToEndSingle
    void setInputFiatText(String str);

    @AddToEndSingle
    void setupNetwork(NetworkItem networkItem, SwapSide swapSide);

    @AddToEndSingle
    void setupScreenForSwap(String str, String str2, int i, boolean z, boolean z2);

    void showApprovalConfirmationDialog(DialogModel dialogModel);

    void showApprovalInfoDialog(AnimatedSpannableDialogModel animatedSpannableDialogModel);

    void showChangeNetworkHint();

    void showCommonErrorDialog(String str);

    @AddToEndSingle
    void showMinMaxInputValues(TokenDetailed tokenDetailed, OutputConvertToken outputConvertToken);

    void showNotEnoughMoneyErrorDialog(TokenBuyCoordinatorArgs tokenBuyCoordinatorArgs);

    void showSuccessApproveAlert();

    void showSuccessSwapAlert();

    void showSwapConfirmationDialog(DialogModel dialogModel, Callbacks$Callback callbacks$Callback);

    @AddToEndSingle
    void showTokenBalance(String str, String str2);
}
