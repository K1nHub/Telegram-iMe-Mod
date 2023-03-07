.class public Lcom/smedialink/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionView$$State$OnTransactionSuccessCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "WalletConnectTransactionView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OnTransactionSuccessCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/smedialink/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionView;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/smedialink/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionView$$State;)V
    .locals 1

    .line 131
    const-class p1, Lmoxy/viewstate/strategy/OneExecutionStateStrategy;

    const-string v0, "onTransactionSuccess"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public apply(Lcom/smedialink/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionView;)V
    .locals 0

    .line 136
    invoke-interface {p1}, Lcom/smedialink/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionView;->onTransactionSuccess()V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 129
    check-cast p1, Lcom/smedialink/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionView;

    invoke-virtual {p0, p1}, Lcom/smedialink/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionView$$State$OnTransactionSuccessCommand;->apply(Lcom/smedialink/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionView;)V

    return-void
.end method
