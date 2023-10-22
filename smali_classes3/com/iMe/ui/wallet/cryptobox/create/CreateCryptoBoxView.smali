.class public interface abstract Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView;
.super Ljava/lang/Object;
.source "CreateCryptoBoxView.kt"

# interfaces
.implements Lcom/iMe/ui/base/mvp/base/BaseView;
.implements Lcom/iMe/ui/base/mvp/SwitchNetworkView;


# annotations
.annotation runtime Lmoxy/viewstate/strategy/alias/OneExecution;
.end annotation


# virtual methods
.method public abstract openAddAdminScreen(JLorg/telegram/tgnet/TLRPC$Chat;)V
.end method

.method public abstract openBuyScreen(Lcom/iMe/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;)V
.end method

.method public abstract openSelectChatScreen(Ljava/lang/Long;)V
.end method

.method public abstract openSelectTokenScreen(Ljava/lang/String;)V
.end method

.method public abstract renderCryptoBoxCreationRules(Lcom/iMe/model/cryptobox/CryptoBoxCreationRulesItem;Z)V
    .annotation runtime Lmoxy/viewstate/strategy/alias/AddToEndSingle;
    .end annotation
.end method

.method public abstract renderSelectedChat(Lorg/telegram/tgnet/TLRPC$Chat;)V
    .annotation runtime Lmoxy/viewstate/strategy/alias/AddToEndSingle;
    .end annotation
.end method

.method public abstract renderSelectedToken(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .annotation runtime Lmoxy/viewstate/strategy/alias/AddToEndSingle;
    .end annotation
.end method

.method public abstract renderTransactionActionBlock(Lcom/iMe/model/staking/TransactionStep;Lcom/iMe/model/wallet/crypto/send/fee/FeeType;)V
    .annotation runtime Lmoxy/viewstate/strategy/alias/AddToEndSingle;
    .end annotation
.end method

.method public abstract resetSelectedToken()V
    .annotation runtime Lmoxy/viewstate/strategy/alias/AddToEndSingle;
    .end annotation
.end method

.method public abstract setupAmountInputErrorState(ZLjava/lang/String;Ljava/lang/String;)V
    .annotation runtime Lmoxy/viewstate/strategy/alias/AddToEndSingle;
    .end annotation
.end method

.method public abstract setupCapacityInputErrorState(ZLjava/lang/String;)V
    .annotation runtime Lmoxy/viewstate/strategy/alias/AddToEndSingle;
    .end annotation
.end method

.method public abstract showActionError(Ljava/lang/String;)V
.end method

.method public abstract showConfirmDialog(Lcom/iMe/model/dialog/DialogModel;Lcom/iMe/fork/utils/Callbacks$Callback;)V
.end method

.method public abstract showCreationSuccess()V
.end method

.method public abstract showCryptoBoxInfoDialog(Ljava/lang/String;)V
.end method
