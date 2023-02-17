.class public Lcom/smedialink/ui/wallet/staking/conditions/StakingConditionsView$$State$SetupScreenWithDataCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "StakingConditionsView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/ui/wallet/staking/conditions/StakingConditionsView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SetupScreenWithDataCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/smedialink/ui/wallet/staking/conditions/StakingConditionsView;",
        ">;"
    }
.end annotation


# instance fields
.field public final annualPercentage:Ljava/lang/String;

.field public final author:Ljava/lang/String;

.field public final completionDate:Ljava/lang/String;

.field public final compoundThreshold:Ljava/lang/String;

.field public final finishedFeeText:Ljava/lang/String;

.field public final iconResId:I

.field public final immediateWithdrawalFeeText:Ljava/lang/String;

.field public final name:Ljava/lang/String;

.field public final networkIconResId:I

.field public final plannedWithdrawalFeeText:Ljava/lang/String;

.field public final startDate:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/smedialink/ui/wallet/staking/conditions/StakingConditionsView$$State;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 123
    const-class p1, Lmoxy/viewstate/strategy/AddToEndSingleStrategy;

    const-string v0, "setupScreenWithData"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 125
    iput p2, p0, Lcom/smedialink/ui/wallet/staking/conditions/StakingConditionsView$$State$SetupScreenWithDataCommand;->iconResId:I

    .line 126
    iput p3, p0, Lcom/smedialink/ui/wallet/staking/conditions/StakingConditionsView$$State$SetupScreenWithDataCommand;->networkIconResId:I

    .line 127
    iput-object p4, p0, Lcom/smedialink/ui/wallet/staking/conditions/StakingConditionsView$$State$SetupScreenWithDataCommand;->name:Ljava/lang/String;

    .line 128
    iput-object p5, p0, Lcom/smedialink/ui/wallet/staking/conditions/StakingConditionsView$$State$SetupScreenWithDataCommand;->author:Ljava/lang/String;

    .line 129
    iput-object p6, p0, Lcom/smedialink/ui/wallet/staking/conditions/StakingConditionsView$$State$SetupScreenWithDataCommand;->annualPercentage:Ljava/lang/String;

    .line 130
    iput-object p7, p0, Lcom/smedialink/ui/wallet/staking/conditions/StakingConditionsView$$State$SetupScreenWithDataCommand;->startDate:Ljava/lang/String;

    .line 131
    iput-object p8, p0, Lcom/smedialink/ui/wallet/staking/conditions/StakingConditionsView$$State$SetupScreenWithDataCommand;->completionDate:Ljava/lang/String;

    .line 132
    iput-object p9, p0, Lcom/smedialink/ui/wallet/staking/conditions/StakingConditionsView$$State$SetupScreenWithDataCommand;->compoundThreshold:Ljava/lang/String;

    .line 133
    iput-object p10, p0, Lcom/smedialink/ui/wallet/staking/conditions/StakingConditionsView$$State$SetupScreenWithDataCommand;->plannedWithdrawalFeeText:Ljava/lang/String;

    .line 134
    iput-object p11, p0, Lcom/smedialink/ui/wallet/staking/conditions/StakingConditionsView$$State$SetupScreenWithDataCommand;->immediateWithdrawalFeeText:Ljava/lang/String;

    .line 135
    iput-object p12, p0, Lcom/smedialink/ui/wallet/staking/conditions/StakingConditionsView$$State$SetupScreenWithDataCommand;->finishedFeeText:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public apply(Lcom/smedialink/ui/wallet/staking/conditions/StakingConditionsView;)V
    .locals 12

    .line 140
    iget v1, p0, Lcom/smedialink/ui/wallet/staking/conditions/StakingConditionsView$$State$SetupScreenWithDataCommand;->iconResId:I

    iget v2, p0, Lcom/smedialink/ui/wallet/staking/conditions/StakingConditionsView$$State$SetupScreenWithDataCommand;->networkIconResId:I

    iget-object v3, p0, Lcom/smedialink/ui/wallet/staking/conditions/StakingConditionsView$$State$SetupScreenWithDataCommand;->name:Ljava/lang/String;

    iget-object v4, p0, Lcom/smedialink/ui/wallet/staking/conditions/StakingConditionsView$$State$SetupScreenWithDataCommand;->author:Ljava/lang/String;

    iget-object v5, p0, Lcom/smedialink/ui/wallet/staking/conditions/StakingConditionsView$$State$SetupScreenWithDataCommand;->annualPercentage:Ljava/lang/String;

    iget-object v6, p0, Lcom/smedialink/ui/wallet/staking/conditions/StakingConditionsView$$State$SetupScreenWithDataCommand;->startDate:Ljava/lang/String;

    iget-object v7, p0, Lcom/smedialink/ui/wallet/staking/conditions/StakingConditionsView$$State$SetupScreenWithDataCommand;->completionDate:Ljava/lang/String;

    iget-object v8, p0, Lcom/smedialink/ui/wallet/staking/conditions/StakingConditionsView$$State$SetupScreenWithDataCommand;->compoundThreshold:Ljava/lang/String;

    iget-object v9, p0, Lcom/smedialink/ui/wallet/staking/conditions/StakingConditionsView$$State$SetupScreenWithDataCommand;->plannedWithdrawalFeeText:Ljava/lang/String;

    iget-object v10, p0, Lcom/smedialink/ui/wallet/staking/conditions/StakingConditionsView$$State$SetupScreenWithDataCommand;->immediateWithdrawalFeeText:Ljava/lang/String;

    iget-object v11, p0, Lcom/smedialink/ui/wallet/staking/conditions/StakingConditionsView$$State$SetupScreenWithDataCommand;->finishedFeeText:Ljava/lang/String;

    move-object v0, p1

    invoke-interface/range {v0 .. v11}, Lcom/smedialink/ui/wallet/staking/conditions/StakingConditionsView;->setupScreenWithData(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 97
    check-cast p1, Lcom/smedialink/ui/wallet/staking/conditions/StakingConditionsView;

    invoke-virtual {p0, p1}, Lcom/smedialink/ui/wallet/staking/conditions/StakingConditionsView$$State$SetupScreenWithDataCommand;->apply(Lcom/smedialink/ui/wallet/staking/conditions/StakingConditionsView;)V

    return-void
.end method
