.class public Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionView$$State$UpdateProgressCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "StakingTransactionView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UpdateProgressCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionView;",
        ">;"
    }
.end annotation


# instance fields
.field public final progress:F


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionView$$State;F)V
    .locals 1

    .line 553
    const-class p1, Lmoxy/viewstate/strategy/AddToEndSingleStrategy;

    const-string/jumbo v0, "updateProgress"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 555
    iput p2, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionView$$State$UpdateProgressCommand;->progress:F

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionView;)V
    .locals 1

    .line 560
    iget v0, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionView$$State$UpdateProgressCommand;->progress:F

    invoke-interface {p1, v0}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionView;->updateProgress(F)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 549
    check-cast p1, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionView$$State$UpdateProgressCommand;->apply(Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionView;)V

    return-void
.end method
