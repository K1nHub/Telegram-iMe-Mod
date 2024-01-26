.class public Lcom/iMe/ui/wallet/send/WalletSendView$$State$ShowNoEnoughMoneyErrorDialogCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "WalletSendView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/send/WalletSendView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowNoEnoughMoneyErrorDialogCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/wallet/send/WalletSendView;",
        ">;"
    }
.end annotation


# instance fields
.field public final args:Lcom/iMe/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/send/WalletSendView$$State;Lcom/iMe/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;)V
    .locals 1

    .line 543
    const-class p1, Lmoxy/viewstate/strategy/OneExecutionStateStrategy;

    const-string/jumbo v0, "showNoEnoughMoneyErrorDialog"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 545
    iput-object p2, p0, Lcom/iMe/ui/wallet/send/WalletSendView$$State$ShowNoEnoughMoneyErrorDialogCommand;->args:Lcom/iMe/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/send/WalletSendView;)V
    .locals 1

    .line 550
    iget-object v0, p0, Lcom/iMe/ui/wallet/send/WalletSendView$$State$ShowNoEnoughMoneyErrorDialogCommand;->args:Lcom/iMe/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;

    invoke-interface {p1, v0}, Lcom/iMe/ui/wallet/send/WalletSendView;->showNoEnoughMoneyErrorDialog(Lcom/iMe/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 539
    check-cast p1, Lcom/iMe/ui/wallet/send/WalletSendView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/send/WalletSendView$$State$ShowNoEnoughMoneyErrorDialogCommand;->apply(Lcom/iMe/ui/wallet/send/WalletSendView;)V

    return-void
.end method
