.class public interface abstract Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;
.super Ljava/lang/Object;
.source "WalletSwapProcessView.kt"

# interfaces
.implements Lcom/iMe/ui/base/mvp/base/BaseView;
.implements Lcom/iMe/ui/base/mvp/SwitchNetworkView;


# annotations
.annotation runtime Lmoxy/viewstate/strategy/alias/OneExecution;
.end annotation


# virtual methods
.method public abstract onTokenSelected(Lcom/iMe/model/wallet/swap/SwapSide;Lcom/iMe/model/wallet/select/SelectableToken;IILcom/iMe/storage/domain/model/crypto/NetworkType;)V
    .annotation runtime Lmoxy/viewstate/strategy/alias/AddToEndSingle;
    .end annotation
.end method

.method public abstract openSelectTokenDialog(Lcom/iMe/model/wallet/swap/SwapSide;Lcom/iMe/model/wallet/select/SelectableToken;Ljava/util/List;Lcom/iMe/storage/domain/model/crypto/NetworkType;Lcom/iMe/model/wallet/select/SelectableType;ZLkotlin/jvm/functions/Function1;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/model/wallet/swap/SwapSide;",
            "Lcom/iMe/model/wallet/select/SelectableToken;",
            "Ljava/util/List<",
            "+",
            "Lcom/iMe/model/wallet/select/SelectableToken;",
            ">;",
            "Lcom/iMe/storage/domain/model/crypto/NetworkType;",
            "Lcom/iMe/model/wallet/select/SelectableType;",
            "Z",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/iMe/model/wallet/select/SelectableToken;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract openSwapFeeScreen(Lcom/iMe/model/wallet/crypto/swap/SwapFeeScreenArgs;)V
.end method

.method public abstract renderState(Lcom/iMe/model/wallet/crypto/swap/SwapUiState;)V
    .annotation runtime Lmoxy/viewstate/strategy/alias/AddToEndSingle;
    .end annotation
.end method

.method public abstract setupNetworkType(Lcom/iMe/storage/domain/model/crypto/NetworkType;Lcom/iMe/model/wallet/swap/SwapSide;)V
    .annotation runtime Lmoxy/viewstate/strategy/alias/AddToEndSingle;
    .end annotation
.end method

.method public abstract setupScreenForSwap(Ljava/lang/String;Ljava/lang/String;IZLcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$NetworkSwitchType;)V
    .annotation runtime Lmoxy/viewstate/strategy/alias/AddToEndSingle;
    .end annotation
.end method

.method public abstract showChangeNetworkHint()V
.end method

.method public abstract showMinMaxInputValues(Lcom/iMe/model/wallet/select/SelectableToken;Lcom/iMe/storage/domain/model/binancepay/OutputConvertToken;)V
.end method

.method public abstract showNotEnoughMoneyBinanceErrorDialog()V
.end method

.method public abstract showNotEnoughMoneyErrorDialog(Lcom/iMe/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;)V
.end method

.method public abstract showSuccessApproveAlert()V
.end method

.method public abstract showSuccessSwapAlert()V
.end method

.method public abstract showSwapConfirmationDialog(Lcom/iMe/model/dialog/DialogModel;Lcom/iMe/fork/utils/Callbacks$Callback;)V
.end method

.method public abstract showTokenBalance(Ljava/lang/String;)V
    .annotation runtime Lmoxy/viewstate/strategy/alias/AddToEndSingle;
    .end annotation
.end method
