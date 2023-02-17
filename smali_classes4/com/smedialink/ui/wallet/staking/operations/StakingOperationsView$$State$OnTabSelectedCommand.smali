.class public Lcom/smedialink/ui/wallet/staking/operations/StakingOperationsView$$State$OnTabSelectedCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "StakingOperationsView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/ui/wallet/staking/operations/StakingOperationsView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OnTabSelectedCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/smedialink/ui/wallet/staking/operations/StakingOperationsView;",
        ">;"
    }
.end annotation


# instance fields
.field public final position:I


# direct methods
.method constructor <init>(Lcom/smedialink/ui/wallet/staking/operations/StakingOperationsView$$State;I)V
    .locals 1

    .line 152
    const-class p1, Lmoxy/viewstate/strategy/AddToEndSingleStrategy;

    const-string v0, "onTabSelected"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 154
    iput p2, p0, Lcom/smedialink/ui/wallet/staking/operations/StakingOperationsView$$State$OnTabSelectedCommand;->position:I

    return-void
.end method


# virtual methods
.method public apply(Lcom/smedialink/ui/wallet/staking/operations/StakingOperationsView;)V
    .locals 1

    .line 159
    iget v0, p0, Lcom/smedialink/ui/wallet/staking/operations/StakingOperationsView$$State$OnTabSelectedCommand;->position:I

    invoke-interface {p1, v0}, Lcom/smedialink/ui/wallet/staking/operations/StakingOperationsView;->onTabSelected(I)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 148
    check-cast p1, Lcom/smedialink/ui/wallet/staking/operations/StakingOperationsView;

    invoke-virtual {p0, p1}, Lcom/smedialink/ui/wallet/staking/operations/StakingOperationsView$$State$OnTabSelectedCommand;->apply(Lcom/smedialink/ui/wallet/staking/operations/StakingOperationsView;)V

    return-void
.end method
