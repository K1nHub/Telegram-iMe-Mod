.class public Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/history/WalletBinancePayHistoryView$$State$ResetLoadMoreCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "WalletBinancePayHistoryView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/history/WalletBinancePayHistoryView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ResetLoadMoreCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/history/WalletBinancePayHistoryView;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/history/WalletBinancePayHistoryView$$State;)V
    .locals 1

    .line 495
    const-class p1, Lmoxy/viewstate/strategy/AddToEndSingleStrategy;

    const-string v0, "resetLoadMore"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/history/WalletBinancePayHistoryView;)V
    .locals 0

    .line 500
    invoke-interface {p1}, Lcom/iMe/ui/base/mvp/LoadMoreView;->resetLoadMore()V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 493
    check-cast p1, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/history/WalletBinancePayHistoryView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/history/WalletBinancePayHistoryView$$State$ResetLoadMoreCommand;->apply(Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/history/WalletBinancePayHistoryView;)V

    return-void
.end method