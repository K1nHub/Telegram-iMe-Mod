.class public Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductView$$State$ShowRefreshLoadingCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "BuyCryptoProductView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowRefreshLoadingCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductView;",
        ">;"
    }
.end annotation


# instance fields
.field public final show:Z


# direct methods
.method constructor <init>(Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductView$$State;Z)V
    .locals 1

    .line 254
    const-class p1, Lmoxy/viewstate/strategy/OneExecutionStateStrategy;

    const-string v0, "showRefreshLoading"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 256
    iput-boolean p2, p0, Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductView$$State$ShowRefreshLoadingCommand;->show:Z

    return-void
.end method


# virtual methods
.method public apply(Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductView;)V
    .locals 1

    .line 261
    iget-boolean v0, p0, Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductView$$State$ShowRefreshLoadingCommand;->show:Z

    invoke-interface {p1, v0}, Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductView;->showRefreshLoading(Z)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 250
    check-cast p1, Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductView;

    invoke-virtual {p0, p1}, Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductView$$State$ShowRefreshLoadingCommand;->apply(Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductView;)V

    return-void
.end method
