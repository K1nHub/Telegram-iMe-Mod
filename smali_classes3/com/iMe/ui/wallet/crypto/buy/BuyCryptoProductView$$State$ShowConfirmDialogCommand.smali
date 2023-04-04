.class public Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductView$$State$ShowConfirmDialogCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "BuyCryptoProductView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowConfirmDialogCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductView;",
        ">;"
    }
.end annotation


# instance fields
.field public final dialogModel:Lcom/iMe/model/dialog/DialogModel;

.field public final item:Lcom/iMe/model/wallet/crypto/buy/CryptoBuyItem;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductView$$State;Lcom/iMe/model/wallet/crypto/buy/CryptoBuyItem;Lcom/iMe/model/dialog/DialogModel;)V
    .locals 1

    .line 271
    const-class p1, Lmoxy/viewstate/strategy/OneExecutionStateStrategy;

    const-string v0, "showConfirmDialog"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 273
    iput-object p2, p0, Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductView$$State$ShowConfirmDialogCommand;->item:Lcom/iMe/model/wallet/crypto/buy/CryptoBuyItem;

    .line 274
    iput-object p3, p0, Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductView$$State$ShowConfirmDialogCommand;->dialogModel:Lcom/iMe/model/dialog/DialogModel;

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductView;)V
    .locals 2

    .line 279
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductView$$State$ShowConfirmDialogCommand;->item:Lcom/iMe/model/wallet/crypto/buy/CryptoBuyItem;

    iget-object v1, p0, Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductView$$State$ShowConfirmDialogCommand;->dialogModel:Lcom/iMe/model/dialog/DialogModel;

    invoke-interface {p1, v0, v1}, Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductView;->showConfirmDialog(Lcom/iMe/model/wallet/crypto/buy/CryptoBuyItem;Lcom/iMe/model/dialog/DialogModel;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 265
    check-cast p1, Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductView$$State$ShowConfirmDialogCommand;->apply(Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductView;)V

    return-void
.end method
