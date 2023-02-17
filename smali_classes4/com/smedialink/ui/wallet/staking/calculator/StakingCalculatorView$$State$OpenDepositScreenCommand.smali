.class public Lcom/smedialink/ui/wallet/staking/calculator/StakingCalculatorView$$State$OpenDepositScreenCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "StakingCalculatorView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/ui/wallet/staking/calculator/StakingCalculatorView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OpenDepositScreenCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/smedialink/ui/wallet/staking/calculator/StakingCalculatorView;",
        ">;"
    }
.end annotation


# instance fields
.field public final presetAmount:D

.field public final stakingDetails:Lcom/smedialink/model/staking/StakingDetailsItem;


# direct methods
.method constructor <init>(Lcom/smedialink/ui/wallet/staking/calculator/StakingCalculatorView$$State;Lcom/smedialink/model/staking/StakingDetailsItem;D)V
    .locals 1

    .line 178
    const-class p1, Lmoxy/viewstate/strategy/OneExecutionStateStrategy;

    const-string v0, "openDepositScreen"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 180
    iput-object p2, p0, Lcom/smedialink/ui/wallet/staking/calculator/StakingCalculatorView$$State$OpenDepositScreenCommand;->stakingDetails:Lcom/smedialink/model/staking/StakingDetailsItem;

    .line 181
    iput-wide p3, p0, Lcom/smedialink/ui/wallet/staking/calculator/StakingCalculatorView$$State$OpenDepositScreenCommand;->presetAmount:D

    return-void
.end method


# virtual methods
.method public apply(Lcom/smedialink/ui/wallet/staking/calculator/StakingCalculatorView;)V
    .locals 3

    .line 186
    iget-object v0, p0, Lcom/smedialink/ui/wallet/staking/calculator/StakingCalculatorView$$State$OpenDepositScreenCommand;->stakingDetails:Lcom/smedialink/model/staking/StakingDetailsItem;

    iget-wide v1, p0, Lcom/smedialink/ui/wallet/staking/calculator/StakingCalculatorView$$State$OpenDepositScreenCommand;->presetAmount:D

    invoke-interface {p1, v0, v1, v2}, Lcom/smedialink/ui/wallet/staking/calculator/StakingCalculatorView;->openDepositScreen(Lcom/smedialink/model/staking/StakingDetailsItem;D)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 172
    check-cast p1, Lcom/smedialink/ui/wallet/staking/calculator/StakingCalculatorView;

    invoke-virtual {p0, p1}, Lcom/smedialink/ui/wallet/staking/calculator/StakingCalculatorView$$State$OpenDepositScreenCommand;->apply(Lcom/smedialink/ui/wallet/staking/calculator/StakingCalculatorView;)V

    return-void
.end method
