.class public Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayView$$State$ShowSelectTokensSortingDialogCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "WalletHomeBinancePayView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowSelectTokensSortingDialogCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayView;",
        ">;"
    }
.end annotation


# instance fields
.field public final tokenSortingData:Lcom/iMe/model/wallet/home/TokenSortingData;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayView$$State;Lcom/iMe/model/wallet/home/TokenSortingData;)V
    .locals 1

    .line 478
    const-class p1, Lmoxy/viewstate/strategy/OneExecutionStateStrategy;

    const-string/jumbo v0, "showSelectTokensSortingDialog"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 480
    iput-object p2, p0, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayView$$State$ShowSelectTokensSortingDialogCommand;->tokenSortingData:Lcom/iMe/model/wallet/home/TokenSortingData;

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayView;)V
    .locals 1

    .line 485
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayView$$State$ShowSelectTokensSortingDialogCommand;->tokenSortingData:Lcom/iMe/model/wallet/home/TokenSortingData;

    invoke-interface {p1, v0}, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayView;->showSelectTokensSortingDialog(Lcom/iMe/model/wallet/home/TokenSortingData;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 474
    check-cast p1, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayView$$State$ShowSelectTokensSortingDialogCommand;->apply(Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayView;)V

    return-void
.end method
