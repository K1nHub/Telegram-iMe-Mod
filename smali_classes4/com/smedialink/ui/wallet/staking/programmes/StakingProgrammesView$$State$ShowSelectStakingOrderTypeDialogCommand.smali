.class public Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesView$$State$ShowSelectStakingOrderTypeDialogCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "StakingProgrammesView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowSelectStakingOrderTypeDialogCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesView;",
        ">;"
    }
.end annotation


# instance fields
.field public final orderType:Lcom/smedialink/storage/domain/model/wallet/staking/StakingOrderType;


# direct methods
.method constructor <init>(Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesView$$State;Lcom/smedialink/storage/domain/model/wallet/staking/StakingOrderType;)V
    .locals 1

    .line 262
    const-class p1, Lmoxy/viewstate/strategy/OneExecutionStateStrategy;

    const-string v0, "showSelectStakingOrderTypeDialog"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 264
    iput-object p2, p0, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesView$$State$ShowSelectStakingOrderTypeDialogCommand;->orderType:Lcom/smedialink/storage/domain/model/wallet/staking/StakingOrderType;

    return-void
.end method


# virtual methods
.method public apply(Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesView;)V
    .locals 1

    .line 269
    iget-object v0, p0, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesView$$State$ShowSelectStakingOrderTypeDialogCommand;->orderType:Lcom/smedialink/storage/domain/model/wallet/staking/StakingOrderType;

    invoke-interface {p1, v0}, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesView;->showSelectStakingOrderTypeDialog(Lcom/smedialink/storage/domain/model/wallet/staking/StakingOrderType;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 258
    check-cast p1, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesView;

    invoke-virtual {p0, p1}, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesView$$State$ShowSelectStakingOrderTypeDialogCommand;->apply(Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesView;)V

    return-void
.end method
