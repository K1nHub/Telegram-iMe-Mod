.class public Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeView$$State$OnFeeReselectedCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "WalletSwapFeeView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OnFeeReselectedCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeView;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeView$$State;)V
    .locals 1

    .line 130
    const-class p1, Lmoxy/viewstate/strategy/OneExecutionStateStrategy;

    const-string/jumbo v0, "onFeeReselected"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeView;)V
    .locals 0

    .line 135
    invoke-interface {p1}, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeView;->onFeeReselected()V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 128
    check-cast p1, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeView$$State$OnFeeReselectedCommand;->apply(Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeView;)V

    return-void
.end method
