.class public Lcom/iMe/ui/wallet/staking/StakingView$$State$OnTabSelectedCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "StakingView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/staking/StakingView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OnTabSelectedCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/wallet/staking/StakingView;",
        ">;"
    }
.end annotation


# instance fields
.field public final position:I


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/staking/StakingView$$State;I)V
    .locals 1

    .line 164
    const-class p1, Lmoxy/viewstate/strategy/AddToEndSingleStrategy;

    const-string v0, "onTabSelected"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 166
    iput p2, p0, Lcom/iMe/ui/wallet/staking/StakingView$$State$OnTabSelectedCommand;->position:I

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/staking/StakingView;)V
    .locals 1

    .line 171
    iget v0, p0, Lcom/iMe/ui/wallet/staking/StakingView$$State$OnTabSelectedCommand;->position:I

    invoke-interface {p1, v0}, Lcom/iMe/ui/wallet/staking/StakingView;->onTabSelected(I)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 160
    check-cast p1, Lcom/iMe/ui/wallet/staking/StakingView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/staking/StakingView$$State$OnTabSelectedCommand;->apply(Lcom/iMe/ui/wallet/staking/StakingView;)V

    return-void
.end method
