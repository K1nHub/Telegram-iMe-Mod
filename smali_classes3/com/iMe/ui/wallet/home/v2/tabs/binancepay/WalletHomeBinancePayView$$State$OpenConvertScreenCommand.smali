.class public Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayView$$State$OpenConvertScreenCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "WalletHomeBinancePayView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OpenConvertScreenCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayView;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayView$$State;)V
    .locals 1

    .line 449
    const-class p1, Lmoxy/viewstate/strategy/OneExecutionStateStrategy;

    const-string v0, "openConvertScreen"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayView;)V
    .locals 0

    .line 454
    invoke-interface {p1}, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayView;->openConvertScreen()V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 447
    check-cast p1, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayView$$State$OpenConvertScreenCommand;->apply(Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayView;)V

    return-void
.end method
