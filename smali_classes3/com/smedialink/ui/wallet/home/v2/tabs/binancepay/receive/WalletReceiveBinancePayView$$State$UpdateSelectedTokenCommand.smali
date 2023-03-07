.class public Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayView$$State$UpdateSelectedTokenCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "WalletReceiveBinancePayView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UpdateSelectedTokenCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayView;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayView$$State;)V
    .locals 1

    .line 208
    const-class p1, Lmoxy/viewstate/strategy/AddToEndSingleStrategy;

    const-string v0, "updateSelectedToken"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public apply(Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayView;)V
    .locals 0

    .line 213
    invoke-interface {p1}, Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayView;->updateSelectedToken()V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 206
    check-cast p1, Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayView;

    invoke-virtual {p0, p1}, Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayView$$State$UpdateSelectedTokenCommand;->apply(Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/receive/WalletReceiveBinancePayView;)V

    return-void
.end method
