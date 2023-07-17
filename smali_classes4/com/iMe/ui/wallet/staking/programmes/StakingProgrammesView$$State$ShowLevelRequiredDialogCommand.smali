.class public Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesView$$State$ShowLevelRequiredDialogCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "StakingProgrammesView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowLevelRequiredDialogCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesView;",
        ">;"
    }
.end annotation


# instance fields
.field public final minimalRank:Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;

.field public final token:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesView$$State;Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V
    .locals 1

    .line 314
    const-class p1, Lmoxy/viewstate/strategy/OneExecutionStateStrategy;

    const-string/jumbo v0, "showLevelRequiredDialog"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 316
    iput-object p2, p0, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesView$$State$ShowLevelRequiredDialogCommand;->minimalRank:Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;

    .line 317
    iput-object p3, p0, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesView$$State$ShowLevelRequiredDialogCommand;->token:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesView;)V
    .locals 2

    .line 322
    iget-object v0, p0, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesView$$State$ShowLevelRequiredDialogCommand;->minimalRank:Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;

    iget-object v1, p0, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesView$$State$ShowLevelRequiredDialogCommand;->token:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    invoke-interface {p1, v0, v1}, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesView;->showLevelRequiredDialog(Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 308
    check-cast p1, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesView$$State$ShowLevelRequiredDialogCommand;->apply(Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesView;)V

    return-void
.end method
