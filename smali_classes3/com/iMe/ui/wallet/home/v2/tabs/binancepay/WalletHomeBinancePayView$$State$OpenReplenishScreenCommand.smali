.class public Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayView$$State$OpenReplenishScreenCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "WalletHomeBinancePayView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OpenReplenishScreenCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayView;",
        ">;"
    }
.end annotation


# instance fields
.field public final networkType:Lcom/iMe/storage/domain/model/crypto/NetworkType;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayView$$State;Lcom/iMe/storage/domain/model/crypto/NetworkType;)V
    .locals 1

    .line 455
    const-class p1, Lmoxy/viewstate/strategy/OneExecutionStateStrategy;

    const-string v0, "openReplenishScreen"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 457
    iput-object p2, p0, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayView$$State$OpenReplenishScreenCommand;->networkType:Lcom/iMe/storage/domain/model/crypto/NetworkType;

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayView;)V
    .locals 1

    .line 462
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayView$$State$OpenReplenishScreenCommand;->networkType:Lcom/iMe/storage/domain/model/crypto/NetworkType;

    invoke-interface {p1, v0}, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayView;->openReplenishScreen(Lcom/iMe/storage/domain/model/crypto/NetworkType;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 451
    check-cast p1, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayView$$State$OpenReplenishScreenCommand;->apply(Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayView;)V

    return-void
.end method
