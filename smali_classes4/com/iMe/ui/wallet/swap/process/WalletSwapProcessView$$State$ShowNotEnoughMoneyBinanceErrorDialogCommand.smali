.class public Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView$$State$ShowNotEnoughMoneyBinanceErrorDialogCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "WalletSwapProcessView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowNotEnoughMoneyBinanceErrorDialogCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView$$State;)V
    .locals 1

    .line 490
    const-class p1, Lmoxy/viewstate/strategy/OneExecutionStateStrategy;

    const-string/jumbo v0, "showNotEnoughMoneyBinanceErrorDialog"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;)V
    .locals 0

    .line 495
    invoke-interface {p1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;->showNotEnoughMoneyBinanceErrorDialog()V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 488
    check-cast p1, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView$$State$ShowNotEnoughMoneyBinanceErrorDialogCommand;->apply(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;)V

    return-void
.end method
