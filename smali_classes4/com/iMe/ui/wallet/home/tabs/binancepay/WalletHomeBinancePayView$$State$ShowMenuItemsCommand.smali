.class public Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayView$$State$ShowMenuItemsCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "WalletHomeBinancePayView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowMenuItemsCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayView;",
        ">;"
    }
.end annotation


# instance fields
.field public final items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/iMe/model/wallet/ItemOptionsModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayView$$State;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/iMe/model/wallet/ItemOptionsModel;",
            ">;)V"
        }
    .end annotation

    .line 493
    const-class p1, Lmoxy/viewstate/strategy/OneExecutionStateStrategy;

    const-string/jumbo v0, "showMenuItems"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 495
    iput-object p2, p0, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayView$$State$ShowMenuItemsCommand;->items:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayView;)V
    .locals 1

    .line 500
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayView$$State$ShowMenuItemsCommand;->items:Ljava/util/List;

    invoke-interface {p1, v0}, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayView;->showMenuItems(Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 489
    check-cast p1, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayView$$State$ShowMenuItemsCommand;->apply(Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayView;)V

    return-void
.end method
