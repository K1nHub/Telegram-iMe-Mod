.class public Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsView$$State$OnSuccessCancelTransactionCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "WalletTransactionDetailsView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OnSuccessCancelTransactionCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsView;",
        ">;"
    }
.end annotation


# instance fields
.field public final txHash:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsView$$State;Ljava/lang/String;)V
    .locals 1

    .line 459
    const-class p1, Lmoxy/viewstate/strategy/OneExecutionStateStrategy;

    const-string v0, "onSuccessCancelTransaction"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 461
    iput-object p2, p0, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsView$$State$OnSuccessCancelTransactionCommand;->txHash:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public apply(Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsView;)V
    .locals 1

    .line 466
    iget-object v0, p0, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsView$$State$OnSuccessCancelTransactionCommand;->txHash:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsView;->onSuccessCancelTransaction(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 455
    check-cast p1, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsView;

    invoke-virtual {p0, p1}, Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsView$$State$OnSuccessCancelTransactionCommand;->apply(Lcom/smedialink/ui/wallet/transaction/details/WalletTransactionDetailsView;)V

    return-void
.end method
