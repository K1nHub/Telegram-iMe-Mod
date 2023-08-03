.class public Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayView$$State$OpenHistoryScreenCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "WalletHomeBinancePayView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OpenHistoryScreenCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayView;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayView$$State;)V
    .locals 1

    .line 475
    const-class p1, Lmoxy/viewstate/strategy/OneExecutionStateStrategy;

    const-string/jumbo v0, "openHistoryScreen"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayView;)V
    .locals 0

    .line 480
    invoke-interface {p1}, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayView;->openHistoryScreen()V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 473
    check-cast p1, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayView$$State$OpenHistoryScreenCommand;->apply(Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayView;)V

    return-void
.end method
