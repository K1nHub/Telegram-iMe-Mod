.class public Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesView$$State$ShowLevelRequiredDialogCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "StakingProgrammesView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowLevelRequiredDialogCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesView;",
        ">;"
    }
.end annotation


# instance fields
.field public final minimalRank:Lcom/smedialink/storage/domain/model/crypto/level/AccountLevel;


# direct methods
.method constructor <init>(Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesView$$State;Lcom/smedialink/storage/domain/model/crypto/level/AccountLevel;)V
    .locals 1

    .line 277
    const-class p1, Lmoxy/viewstate/strategy/OneExecutionStateStrategy;

    const-string v0, "showLevelRequiredDialog"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 279
    iput-object p2, p0, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesView$$State$ShowLevelRequiredDialogCommand;->minimalRank:Lcom/smedialink/storage/domain/model/crypto/level/AccountLevel;

    return-void
.end method


# virtual methods
.method public apply(Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesView;)V
    .locals 1

    .line 284
    iget-object v0, p0, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesView$$State$ShowLevelRequiredDialogCommand;->minimalRank:Lcom/smedialink/storage/domain/model/crypto/level/AccountLevel;

    invoke-interface {p1, v0}, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesView;->showLevelRequiredDialog(Lcom/smedialink/storage/domain/model/crypto/level/AccountLevel;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 273
    check-cast p1, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesView;

    invoke-virtual {p0, p1}, Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesView$$State$ShowLevelRequiredDialogCommand;->apply(Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesView;)V

    return-void
.end method
