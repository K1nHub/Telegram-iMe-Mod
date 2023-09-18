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
.method public abstract onTokenSelected(Lcom/iMe/model/wallet/swap/SwapSide;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V
    .annotation runtime Lmoxy/viewstate/strategy/alias/AddToEndSingle;
    .end annotation
.end method

.method public abstract openSelectTokenScreen(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Lcom/iMe/model/wallet/select/SelectTokenScreenType;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;",
            "Lcom/iMe/model/wallet/select/SelectTokenScreenType;",
            "Ljava/lang/String;",
            "Z",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;",
            "-",
            "Lcom/iMe/storage/domain/model/wallet/token/FiatValue;",
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

.method public abstract setAmount(Lcom/iMe/model/wallet/swap/SwapSide;Ljava/lang/String;)V
    .annotation runtime Lmoxy/viewstate/strategy/alias/AddToEndSingle;
    .end annotation
.end method

.method public abstract setInputError(Ljava/lang/String;)V
    .annotation runtime Lmoxy/viewstate/strategy/alias/AddToEndSingle;
    .end annotation
.end method

.method public abstract setInputFiatText(Ljava/lang/String;)V
    .annotation runtime Lmoxy/viewstate/strategy/alias/AddToEndSingle;
    .end annotation
.end method

.method public abstract setupNetwork(Lcom/iMe/model/wallet/crypto/NetworkItem;Lcom/iMe/model/wallet/swap/SwapSide;)V
    .annotation runtime Lmoxy/viewstate/strategy/alias/AddToEndSingle;
    .end annotation
.end method

.method public abstract setupScreenForSwap(Ljava/lang/String;Ljava/lang/String;IZZ)V
    .annotation runtime Lmoxy/viewstate/strategy/alias/AddToEndSingle;
    .end annotation
.end method

.method public abstract showApprovalConfirmationDialog(Lcom/iMe/model/dialog/DialogModel;)V
.end method

.method public abstract showApprovalInfoDialog(Lcom/iMe/model/dialog/AnimatedSpannableDialogModel;)V
.end method

.method public abstract showChangeNetworkHint()V
.end method

.method public abstract showCommonErrorDialog(Ljava/lang/String;)V
.end method

.method public abstract showMinMaxInputValues(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Lcom/iMe/storage/domain/model/binancepay/OutputConvertToken;)V
    .annotation runtime Lmoxy/viewstate/strategy/alias/AddToEndSingle;
    .end annotation
.end method

.method public abstract showNotEnoughMoneyErrorDialog(Lcom/iMe/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;)V
.end method

.method public abstract showSuccessApproveAlert()V
.end method

.method public abstract showSuccessSwapAlert()V
.end method

.method public abstract showSwapConfirmationDialog(Lcom/iMe/model/dialog/DialogModel;Lcom/iMe/fork/utils/Callbacks$Callback;)V
.end method

.method public abstract showTokenBalance(Ljava/lang/String;Ljava/lang/String;)V
    .annotation runtime Lmoxy/viewstate/strategy/alias/AddToEndSingle;
    .end annotation
.end method
