.class public Lcom/iMe/ui/wallet/crypto/create/CreateWalletView$$State$ShowSelectWordsCountDialogCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "CreateWalletView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/crypto/create/CreateWalletView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowSelectWordsCountDialogCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/wallet/crypto/create/CreateWalletView;",
        ">;"
    }
.end annotation


# instance fields
.field public final dialogModel:Lcom/iMe/model/dialog/RadioCellsListDialogModel;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/crypto/create/CreateWalletView$$State;Lcom/iMe/model/dialog/RadioCellsListDialogModel;)V
    .locals 1

    .line 358
    const-class p1, Lmoxy/viewstate/strategy/OneExecutionStateStrategy;

    const-string/jumbo v0, "showSelectWordsCountDialog"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 360
    iput-object p2, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletView$$State$ShowSelectWordsCountDialogCommand;->dialogModel:Lcom/iMe/model/dialog/RadioCellsListDialogModel;

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/crypto/create/CreateWalletView;)V
    .locals 1

    .line 365
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletView$$State$ShowSelectWordsCountDialogCommand;->dialogModel:Lcom/iMe/model/dialog/RadioCellsListDialogModel;

    invoke-interface {p1, v0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletView;->showSelectWordsCountDialog(Lcom/iMe/model/dialog/RadioCellsListDialogModel;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 354
    check-cast p1, Lcom/iMe/ui/wallet/crypto/create/CreateWalletView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletView$$State$ShowSelectWordsCountDialogCommand;->apply(Lcom/iMe/ui/wallet/crypto/create/CreateWalletView;)V

    return-void
.end method
