.class public Lcom/smedialink/ui/wallet/transaction/WalletTransactionsView$$State$ShowRefreshingCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "WalletTransactionsView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/ui/wallet/transaction/WalletTransactionsView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowRefreshingCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/smedialink/ui/wallet/transaction/WalletTransactionsView;",
        ">;"
    }
.end annotation


# instance fields
.field public final show:Z


# direct methods
.method constructor <init>(Lcom/smedialink/ui/wallet/transaction/WalletTransactionsView$$State;Z)V
    .locals 1

    .line 414
    const-class p1, Lmoxy/viewstate/strategy/AddToEndSingleStrategy;

    const-string v0, "showRefreshing"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 416
    iput-boolean p2, p0, Lcom/smedialink/ui/wallet/transaction/WalletTransactionsView$$State$ShowRefreshingCommand;->show:Z

    return-void
.end method


# virtual methods
.method public apply(Lcom/smedialink/ui/wallet/transaction/WalletTransactionsView;)V
    .locals 1

    .line 421
    iget-boolean v0, p0, Lcom/smedialink/ui/wallet/transaction/WalletTransactionsView$$State$ShowRefreshingCommand;->show:Z

    invoke-interface {p1, v0}, Lcom/smedialink/ui/base/mvp/SwipeRefreshView;->showRefreshing(Z)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 410
    check-cast p1, Lcom/smedialink/ui/wallet/transaction/WalletTransactionsView;

    invoke-virtual {p0, p1}, Lcom/smedialink/ui/wallet/transaction/WalletTransactionsView$$State$ShowRefreshingCommand;->apply(Lcom/smedialink/ui/wallet/transaction/WalletTransactionsView;)V

    return-void
.end method
