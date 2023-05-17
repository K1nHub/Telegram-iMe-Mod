.class public Lcom/iMe/ui/wallet/staking/StakingView$$State$ShowRefreshingCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "StakingView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/staking/StakingView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowRefreshingCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/wallet/staking/StakingView;",
        ">;"
    }
.end annotation


# instance fields
.field public final show:Z


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/staking/StakingView$$State;Z)V
    .locals 1

    .line 324
    const-class p1, Lmoxy/viewstate/strategy/AddToEndSingleStrategy;

    const-string/jumbo v0, "showRefreshing"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 326
    iput-boolean p2, p0, Lcom/iMe/ui/wallet/staking/StakingView$$State$ShowRefreshingCommand;->show:Z

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/staking/StakingView;)V
    .locals 1

    .line 331
    iget-boolean v0, p0, Lcom/iMe/ui/wallet/staking/StakingView$$State$ShowRefreshingCommand;->show:Z

    invoke-interface {p1, v0}, Lcom/iMe/ui/base/mvp/SwipeRefreshView;->showRefreshing(Z)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 320
    check-cast p1, Lcom/iMe/ui/wallet/staking/StakingView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/staking/StakingView$$State$ShowRefreshingCommand;->apply(Lcom/iMe/ui/wallet/staking/StakingView;)V

    return-void
.end method
