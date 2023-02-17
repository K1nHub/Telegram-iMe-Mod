.class public Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView$$State$ShowNotEnoughMoneyErrorDialogCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "WalletSwapProcessView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowNotEnoughMoneyErrorDialogCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView;",
        ">;"
    }
.end annotation


# instance fields
.field public final args:Lcom/smedialink/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;


# direct methods
.method constructor <init>(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView$$State;Lcom/smedialink/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;)V
    .locals 1

    .line 459
    const-class p1, Lmoxy/viewstate/strategy/OneExecutionStateStrategy;

    const-string v0, "showNotEnoughMoneyErrorDialog"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 461
    iput-object p2, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView$$State$ShowNotEnoughMoneyErrorDialogCommand;->args:Lcom/smedialink/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;

    return-void
.end method


# virtual methods
.method public apply(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView;)V
    .locals 1

    .line 466
    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView$$State$ShowNotEnoughMoneyErrorDialogCommand;->args:Lcom/smedialink/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;

    invoke-interface {p1, v0}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView;->showNotEnoughMoneyErrorDialog(Lcom/smedialink/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 455
    check-cast p1, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView;

    invoke-virtual {p0, p1}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView$$State$ShowNotEnoughMoneyErrorDialogCommand;->apply(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView;)V

    return-void
.end method
