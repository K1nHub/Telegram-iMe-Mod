.class public Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesView$$State$ShowChooseOrderDialogCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "CryptoBoxesView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowChooseOrderDialogCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesView;",
        ">;"
    }
.end annotation


# instance fields
.field public final dialogModel:Lcom/iMe/model/dialog/DialogModel;

.field public final selectedPosition:I

.field public final titles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesView$$State;Lcom/iMe/model/dialog/DialogModel;Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/model/dialog/DialogModel;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 273
    const-class p1, Lmoxy/viewstate/strategy/OneExecutionStateStrategy;

    const-string v0, "showChooseOrderDialog"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 275
    iput-object p2, p0, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesView$$State$ShowChooseOrderDialogCommand;->dialogModel:Lcom/iMe/model/dialog/DialogModel;

    .line 276
    iput-object p3, p0, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesView$$State$ShowChooseOrderDialogCommand;->titles:Ljava/util/List;

    .line 277
    iput p4, p0, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesView$$State$ShowChooseOrderDialogCommand;->selectedPosition:I

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesView;)V
    .locals 3

    .line 282
    iget-object v0, p0, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesView$$State$ShowChooseOrderDialogCommand;->dialogModel:Lcom/iMe/model/dialog/DialogModel;

    iget-object v1, p0, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesView$$State$ShowChooseOrderDialogCommand;->titles:Ljava/util/List;

    iget v2, p0, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesView$$State$ShowChooseOrderDialogCommand;->selectedPosition:I

    invoke-interface {p1, v0, v1, v2}, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesView;->showChooseOrderDialog(Lcom/iMe/model/dialog/DialogModel;Ljava/util/List;I)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 265
    check-cast p1, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesView$$State$ShowChooseOrderDialogCommand;->apply(Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesView;)V

    return-void
.end method
