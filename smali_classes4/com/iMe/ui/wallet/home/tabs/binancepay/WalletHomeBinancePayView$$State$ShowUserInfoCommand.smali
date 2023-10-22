.class public Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayView$$State$ShowUserInfoCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "WalletHomeBinancePayView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowUserInfoCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayView;",
        ">;"
    }
.end annotation


# instance fields
.field public final userInfo:Lcom/iMe/model/wallet/home/pay/BinanceAccountItem;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayView$$State;Lcom/iMe/model/wallet/home/pay/BinanceAccountItem;)V
    .locals 1

    .line 427
    const-class p1, Lmoxy/viewstate/strategy/AddToEndSingleStrategy;

    const-string/jumbo v0, "showUserInfo"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 429
    iput-object p2, p0, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayView$$State$ShowUserInfoCommand;->userInfo:Lcom/iMe/model/wallet/home/pay/BinanceAccountItem;

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayView;)V
    .locals 1

    .line 434
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayView$$State$ShowUserInfoCommand;->userInfo:Lcom/iMe/model/wallet/home/pay/BinanceAccountItem;

    invoke-interface {p1, v0}, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayView;->showUserInfo(Lcom/iMe/model/wallet/home/pay/BinanceAccountItem;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 423
    check-cast p1, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayView$$State$ShowUserInfoCommand;->apply(Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayView;)V

    return-void
.end method
