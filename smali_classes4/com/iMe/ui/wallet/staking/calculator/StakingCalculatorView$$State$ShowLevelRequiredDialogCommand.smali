.class public Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorView$$State$ShowLevelRequiredDialogCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "StakingCalculatorView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowLevelRequiredDialogCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorView;",
        ">;"
    }
.end annotation


# instance fields
.field public final minimalRank:Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorView$$State;Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;)V
    .locals 1

    .line 212
    const-class p1, Lmoxy/viewstate/strategy/OneExecutionStateStrategy;

    const-string/jumbo v0, "showLevelRequiredDialog"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 214
    iput-object p2, p0, Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorView$$State$ShowLevelRequiredDialogCommand;->minimalRank:Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorView;)V
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorView$$State$ShowLevelRequiredDialogCommand;->minimalRank:Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;

    invoke-interface {p1, v0}, Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorView;->showLevelRequiredDialog(Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 208
    check-cast p1, Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorView$$State$ShowLevelRequiredDialogCommand;->apply(Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorView;)V

    return-void
.end method
