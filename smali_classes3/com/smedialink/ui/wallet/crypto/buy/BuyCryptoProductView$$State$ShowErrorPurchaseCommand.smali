.class public Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductView$$State$ShowErrorPurchaseCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "BuyCryptoProductView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowErrorPurchaseCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductView;",
        ">;"
    }
.end annotation


# instance fields
.field public final orderId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductView$$State;Ljava/lang/String;)V
    .locals 1

    .line 209
    const-class p1, Lmoxy/viewstate/strategy/OneExecutionStateStrategy;

    const-string v0, "showErrorPurchase"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 211
    iput-object p2, p0, Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductView$$State$ShowErrorPurchaseCommand;->orderId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public apply(Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductView;)V
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductView$$State$ShowErrorPurchaseCommand;->orderId:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductView;->showErrorPurchase(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 205
    check-cast p1, Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductView;

    invoke-virtual {p0, p1}, Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductView$$State$ShowErrorPurchaseCommand;->apply(Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductView;)V

    return-void
.end method
