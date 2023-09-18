.class public Lcom/iMe/ui/wallet/home/WalletHomeView$$State$LoadBalancesCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "WalletHomeView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/home/WalletHomeView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LoadBalancesCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/wallet/home/WalletHomeView;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/home/WalletHomeView$$State;)V
    .locals 1

    .line 190
    const-class p1, Lmoxy/viewstate/strategy/AddToEndSingleStrategy;

    const-string v0, "loadBalances"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/home/WalletHomeView;)V
    .locals 0

    .line 195
    invoke-interface {p1}, Lcom/iMe/ui/wallet/home/WalletHomeView;->loadBalances()V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 188
    check-cast p1, Lcom/iMe/ui/wallet/home/WalletHomeView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/home/WalletHomeView$$State$LoadBalancesCommand;->apply(Lcom/iMe/ui/wallet/home/WalletHomeView;)V

    return-void
.end method
