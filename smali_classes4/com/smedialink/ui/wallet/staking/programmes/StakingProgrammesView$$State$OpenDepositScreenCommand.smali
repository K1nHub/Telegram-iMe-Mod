.class public Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesView$$State$OpenDepositScreenCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "StakingProgrammesView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OpenDepositScreenCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesView;",
        ">;"
    }
.end annotation


# instance fields
.field public final stakingDetails:Lcom/smedialink/model/staking/StakingDetailsItem;


# direct methods
.method constructor <init>(Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesView$$State;Lcom/smedialink/model/staking/StakingDetailsItem;)V
    .locals 1

    .line 247
    const-class p1, Lmoxy/viewstate/strategy/OneExecutionStateStrategy;

    const-string v0, "openDepositScreen"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 249
    iput-object p2, p0, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesView$$State$OpenDepositScreenCommand;->stakingDetails:Lcom/smedialink/model/staking/StakingDetailsItem;

    return-void
.end method


# virtual methods
.method public apply(Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesView;)V
    .locals 1

    .line 254
    iget-object v0, p0, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesView$$State$OpenDepositScreenCommand;->stakingDetails:Lcom/smedialink/model/staking/StakingDetailsItem;

    invoke-interface {p1, v0}, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesView;->openDepositScreen(Lcom/smedialink/model/staking/StakingDetailsItem;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 243
    check-cast p1, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesView;

    invoke-virtual {p0, p1}, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesView$$State$OpenDepositScreenCommand;->apply(Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesView;)V

    return-void
.end method
