.class public Lcom/smedialink/ui/wallet/swap/WalletSwapProtocolsView$$State$OpenBinanceConvertScreenCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "WalletSwapProtocolsView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/ui/wallet/swap/WalletSwapProtocolsView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OpenBinanceConvertScreenCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/smedialink/ui/wallet/swap/WalletSwapProtocolsView;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/smedialink/ui/wallet/swap/WalletSwapProtocolsView$$State;)V
    .locals 1

    .line 175
    const-class p1, Lmoxy/viewstate/strategy/OneExecutionStateStrategy;

    const-string v0, "openBinanceConvertScreen"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public apply(Lcom/smedialink/ui/wallet/swap/WalletSwapProtocolsView;)V
    .locals 0

    .line 180
    invoke-interface {p1}, Lcom/smedialink/ui/wallet/swap/WalletSwapProtocolsView;->openBinanceConvertScreen()V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 173
    check-cast p1, Lcom/smedialink/ui/wallet/swap/WalletSwapProtocolsView;

    invoke-virtual {p0, p1}, Lcom/smedialink/ui/wallet/swap/WalletSwapProtocolsView$$State$OpenBinanceConvertScreenCommand;->apply(Lcom/smedialink/ui/wallet/swap/WalletSwapProtocolsView;)V

    return-void
.end method
