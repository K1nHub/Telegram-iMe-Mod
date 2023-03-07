package com.smedialink.p031ui.wallet.swap.process;

import com.smedialink.model.dialog.DialogModel;
import com.smedialink.model.wallet.crypto.swap.SwapFeeScreenArgs;
import com.smedialink.model.wallet.crypto.swap.SwapUiState;
import com.smedialink.model.wallet.select.SelectableToken;
import com.smedialink.model.wallet.select.SelectableType;
import com.smedialink.model.wallet.swap.SwapSide;
import com.smedialink.navigation.wallet.coordinator.args.TokenBuyCoordinatorArgs;
import com.smedialink.p031ui.base.mvp.SwitchNetworkView;
import com.smedialink.p031ui.base.mvp.base.BaseView;
import com.smedialink.p031ui.wallet.swap.process.WalletSwapProcessFragment;
import com.smedialink.storage.domain.model.binancepay.OutputConvertToken;
import com.smedialink.storage.domain.model.crypto.NetworkType;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import moxy.viewstate.strategy.alias.AddToEndSingle;
import moxy.viewstate.strategy.alias.OneExecution;
import org.fork.utils.Callbacks$Callback;
/* compiled from: WalletSwapProcessView.kt */
@OneExecution
/* renamed from: com.smedialink.ui.wallet.swap.process.WalletSwapProcessView */
/* loaded from: classes3.dex */
public interface WalletSwapProcessView extends BaseView, SwitchNetworkView {
    @AddToEndSingle
    void onTokenSelected(SwapSide swapSide, SelectableToken selectableToken, int i, int i2, NetworkType networkType);

    void openSelectTokenDialog(SwapSide swapSide, SelectableToken selectableToken, List<? extends SelectableToken> list, NetworkType networkType, SelectableType selectableType, boolean z, Function1<? super SelectableToken, Unit> function1);

    void openSwapFeeScreen(SwapFeeScreenArgs swapFeeScreenArgs);

    @AddToEndSingle
    void renderState(SwapUiState swapUiState);

    @AddToEndSingle
    void setupNetworkType(NetworkType networkType, SwapSide swapSide);

    @AddToEndSingle
    void setupScreenForSwap(String str, String str2, int i, boolean z, WalletSwapProcessFragment.NetworkSwitchType networkSwitchType);

    void showChangeNetworkHint();

    void showMinMaxInputValues(SelectableToken selectableToken, OutputConvertToken outputConvertToken);

    void showNotEnoughMoneyBinanceErrorDialog();

    void showNotEnoughMoneyErrorDialog(TokenBuyCoordinatorArgs tokenBuyCoordinatorArgs);

    void showSuccessApproveAlert();

    void showSuccessSwapAlert();

    void showSwapConfirmationDialog(DialogModel dialogModel, Callbacks$Callback callbacks$Callback);

    @AddToEndSingle
    void showTokenBalance(String str);
}
