.class public interface abstract Lcom/smedialink/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionView;
.super Ljava/lang/Object;
.source "WalletConnectTransactionView.kt"

# interfaces
.implements Lcom/smedialink/ui/base/mvp/base/BaseView;


# annotations
.annotation runtime Lmoxy/viewstate/strategy/alias/AddToEndSingle;
.end annotation


# virtual methods
.method public abstract onTransactionSuccess()V
    .annotation runtime Lmoxy/viewstate/strategy/alias/OneExecution;
    .end annotation
.end method

.method public abstract setupScreenWithData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract showFee(Lcom/smedialink/ui/custom/FeeView$ChooseFeeType;)V
.end method
