.class public Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayView$$State$NotifyDataSetChangedCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "WalletHomeBinancePayView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NotifyDataSetChangedCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayView;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayView$$State;)V
    .locals 1

    .line 637
    const-class p1, Lmoxy/viewstate/strategy/OneExecutionStateStrategy;

    const-string v0, "notifyDataSetChanged"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public apply(Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayView;)V
    .locals 0

    .line 642
    invoke-interface {p1}, Lcom/smedialink/ui/base/mvp/AdapterNotifyView;->notifyDataSetChanged()V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 635
    check-cast p1, Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayView;

    invoke-virtual {p0, p1}, Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayView$$State$NotifyDataSetChangedCommand;->apply(Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayView;)V

    return-void
.end method
