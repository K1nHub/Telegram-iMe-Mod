.class public interface abstract Lcom/iMe/ui/wallet/cryptobox/suspension/CryptoBoxSuspensionView;
.super Ljava/lang/Object;
.source "CryptoBoxSuspensionView.kt"

# interfaces
.implements Lcom/iMe/ui/base/mvp/base/BaseView;


# annotations
.annotation runtime Lmoxy/viewstate/strategy/alias/OneExecution;
.end annotation


# virtual methods
.method public abstract renderButtonLoading(Z)V
    .annotation runtime Lmoxy/viewstate/strategy/alias/AddToEndSingle;
    .end annotation
.end method

.method public abstract showFee(Lcom/iMe/model/wallet/crypto/send/fee/FeeType;)V
    .annotation runtime Lmoxy/viewstate/strategy/alias/AddToEndSingle;
    .end annotation
.end method

.method public abstract showTransactionError(Ljava/lang/String;)V
.end method

.method public abstract showTransactionSuccess()V
.end method
