.class public Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductView$$State$OpenCustomPriceDialogCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "BuyCryptoProductView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OpenCustomPriceDialogCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductView;",
        ">;"
    }
.end annotation


# instance fields
.field public final lowerPriceItem:Lcom/iMe/model/wallet/crypto/buy/CryptoBuyItem;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductView$$State;Lcom/iMe/model/wallet/crypto/buy/CryptoBuyItem;)V
    .locals 1

    .line 287
    const-class p1, Lmoxy/viewstate/strategy/OneExecutionStateStrategy;

    const-string v0, "openCustomPriceDialog"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 289
    iput-object p2, p0, Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductView$$State$OpenCustomPriceDialogCommand;->lowerPriceItem:Lcom/iMe/model/wallet/crypto/buy/CryptoBuyItem;

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductView;)V
    .locals 1

    .line 294
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductView$$State$OpenCustomPriceDialogCommand;->lowerPriceItem:Lcom/iMe/model/wallet/crypto/buy/CryptoBuyItem;

    invoke-interface {p1, v0}, Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductView;->openCustomPriceDialog(Lcom/iMe/model/wallet/crypto/buy/CryptoBuyItem;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 283
    check-cast p1, Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductView$$State$OpenCustomPriceDialogCommand;->apply(Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductView;)V

    return-void
.end method
