.class public interface abstract Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView;
.super Ljava/lang/Object;
.source "WalletSwapProcessView.kt"

# interfaces
.implements Lcom/smedialink/ui/base/mvp/base/BaseView;
.implements Lcom/smedialink/ui/base/mvp/SwitchNetworkView;


# annotations
.annotation runtime Lmoxy/viewstate/strategy/alias/OneExecution;
.end annotation


# virtual methods
.method public abstract onTokenSelected(Lcom/smedialink/model/wallet/swap/SwapSide;Lcom/smedialink/model/wallet/select/SelectableToken;IILcom/smedialink/storage/domain/model/crypto/NetworkType;)V
    .annotation runtime Lmoxy/viewstate/strategy/alias/AddToEndSingle;
    .end annotation
.end method

.method public abstract openSelectTokenDialog(Lcom/smedialink/model/wallet/swap/SwapSide;Lcom/smedialink/model/wallet/select/SelectableToken;Ljava/util/List;Lcom/smedialink/storage/domain/model/crypto/NetworkType;Lcom/smedialink/model/wallet/select/SelectableType;ZLkotlin/jvm/functions/Function1;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smedialink/model/wallet/swap/SwapSide;",
            "Lcom/smedialink/model/wallet/select/SelectableToken;",
            "Ljava/util/List<",
            "+",
            "Lcom/smedialink/model/wallet/select/SelectableToken;",
            ">;",
            "Lcom/smedialink/storage/domain/model/crypto/NetworkType;",
            "Lcom/smedialink/model/wallet/select/SelectableType;",
            "Z",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/smedialink/model/wallet/select/SelectableToken;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract openSwapFeeScreen(Lcom/smedialink/model/wallet/crypto/swap/SwapFeeScreenArgs;)V
.end method

.method public abstract renderState(Lcom/smedialink/model/wallet/crypto/swap/SwapUiState;)V
    .annotation runtime Lmoxy/viewstate/strategy/alias/AddToEndSingle;
    .end annotation
.end method

.method public abstract setupNetworkType(Lcom/smedialink/storage/domain/model/crypto/NetworkType;Lcom/smedialink/model/wallet/swap/SwapSide;)V
    .annotation runtime Lmoxy/viewstate/strategy/alias/AddToEndSingle;
    .end annotation
.end method

.method public abstract setupScreenForSwap(Ljava/lang/String;Ljava/lang/String;IZLcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$NetworkSwitchType;)V
    .annotation runtime Lmoxy/viewstate/strategy/alias/AddToEndSingle;
    .end annotation
.end method

.method public abstract showChangeNetworkHint()V
.end method

.method public abstract showMinMaxInputValues(Lcom/smedialink/model/wallet/select/SelectableToken;Lcom/smedialink/storage/domain/model/binancepay/OutputConvertToken;)V
.end method

.method public abstract showNotEnoughMoneyBinanceErrorDialog()V
.end method

.method public abstract showNotEnoughMoneyErrorDialog(Lcom/smedialink/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;)V
.end method

.method public abstract showSuccessApproveAlert()V
.end method

.method public abstract showSuccessSwapAlert()V
.end method

.method public abstract showSwapConfirmationDialog(Lcom/smedialink/model/dialog/DialogModel;Lorg/fork/utils/Callbacks$Callback;)V
.end method

.method public abstract showTokenBalance(Ljava/lang/String;)V
    .annotation runtime Lmoxy/viewstate/strategy/alias/AddToEndSingle;
    .end annotation
.end method
