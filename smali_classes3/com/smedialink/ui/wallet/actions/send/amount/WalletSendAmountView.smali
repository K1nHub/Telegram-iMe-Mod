.class public interface abstract Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountView;
.super Ljava/lang/Object;
.source "WalletSendAmountView.kt"

# interfaces
.implements Lcom/smedialink/ui/base/mvp/base/BaseView;
.implements Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/replenish/WalletBinancePayReplenishView;


# annotations
.annotation runtime Lmoxy/viewstate/strategy/alias/OneExecution;
.end annotation


# virtual methods
.method public abstract onSuccessValidation(Lcom/smedialink/model/dialog/DialogModel;Z)V
    .annotation runtime Lmoxy/viewstate/strategy/alias/AddToEndSingle;
    .end annotation
.end method

.method public abstract resetScreen()V
    .annotation runtime Lmoxy/viewstate/strategy/alias/AddToEndSingle;
    .end annotation
.end method

.method public abstract setupScreenState(Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter$SendScreenState;)V
    .annotation runtime Lmoxy/viewstate/strategy/alias/AddToEndSingle;
    .end annotation
.end method

.method public abstract showBalance(Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;)V
    .annotation runtime Lmoxy/viewstate/strategy/alias/AddToEndSingle;
    .end annotation
.end method

.method public abstract showChooseNetworkDialog(Ljava/util/List;Lcom/smedialink/storage/domain/model/crypto/NetworkType;Lorg/fork/utils/Callbacks$Callback1;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/smedialink/storage/domain/model/crypto/NetworkType;",
            ">;",
            "Lcom/smedialink/storage/domain/model/crypto/NetworkType;",
            "Lorg/fork/utils/Callbacks$Callback1<",
            "Lcom/smedialink/storage/domain/model/crypto/NetworkType;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract showNoEnoughMoneyErrorDialog(Lcom/smedialink/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;)V
.end method

.method public abstract showRecipientNotFoundError()V
.end method

.method public abstract showRecipientWalletNotActivatedError()V
.end method

.method public abstract showSelectTokenDialog(Lcom/smedialink/model/wallet/select/SelectableType;Ljava/util/List;Lcom/smedialink/storage/domain/model/crypto/NetworkType;ZLorg/fork/utils/Callbacks$Callback1;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smedialink/model/wallet/select/SelectableType;",
            "Ljava/util/List<",
            "+",
            "Lcom/smedialink/model/wallet/select/SelectableToken;",
            ">;",
            "Lcom/smedialink/storage/domain/model/crypto/NetworkType;",
            "Z",
            "Lorg/fork/utils/Callbacks$Callback1<",
            "Lcom/smedialink/model/wallet/select/SelectableToken;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract showSuccessSend(Ljava/lang/String;)V
.end method

.method public abstract updateFeeView()V
    .annotation runtime Lmoxy/viewstate/strategy/alias/AddToEndSingle;
    .end annotation
.end method
