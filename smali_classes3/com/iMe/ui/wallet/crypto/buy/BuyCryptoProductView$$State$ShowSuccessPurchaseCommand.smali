.class public Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductView$$State$ShowSuccessPurchaseCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "BuyCryptoProductView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowSuccessPurchaseCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductView;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductView$$State;)V
    .locals 1

    .line 214
    const-class p1, Lmoxy/viewstate/strategy/OneExecutionStateStrategy;

    const-string v0, "showSuccessPurchase"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductView;)V
    .locals 0

    .line 219
    invoke-interface {p1}, Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductView;->showSuccessPurchase()V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 212
    check-cast p1, Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductView$$State$ShowSuccessPurchaseCommand;->apply(Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductView;)V

    return-void
.end method