.class public Lcom/iMe/ui/wallet/home/v2/WalletHomeView$$State$OnSetupNavigationRouterCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "WalletHomeView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/home/v2/WalletHomeView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OnSetupNavigationRouterCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/wallet/home/v2/WalletHomeView;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/home/v2/WalletHomeView$$State;)V
    .locals 1

    .line 200
    const-class p1, Lmoxy/viewstate/strategy/AddToEndSingleStrategy;

    const-string v0, "onSetupNavigationRouter"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/home/v2/WalletHomeView;)V
    .locals 0

    .line 205
    invoke-interface {p1}, Lcom/iMe/ui/wallet/home/v2/WalletHomeView;->onSetupNavigationRouter()V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 198
    check-cast p1, Lcom/iMe/ui/wallet/home/v2/WalletHomeView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/home/v2/WalletHomeView$$State$OnSetupNavigationRouterCommand;->apply(Lcom/iMe/ui/wallet/home/v2/WalletHomeView;)V

    return-void
.end method