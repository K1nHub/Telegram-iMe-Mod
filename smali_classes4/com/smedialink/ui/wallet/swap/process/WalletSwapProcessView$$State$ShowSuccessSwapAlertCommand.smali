.class public Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView$$State$ShowSuccessSwapAlertCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "WalletSwapProcessView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowSuccessSwapAlertCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView$$State;)V
    .locals 1

    .line 483
    const-class p1, Lmoxy/viewstate/strategy/OneExecutionStateStrategy;

    const-string v0, "showSuccessSwapAlert"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public apply(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView;)V
    .locals 0

    .line 488
    invoke-interface {p1}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView;->showSuccessSwapAlert()V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 481
    check-cast p1, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView;

    invoke-virtual {p0, p1}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView$$State$ShowSuccessSwapAlertCommand;->apply(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView;)V

    return-void
.end method
