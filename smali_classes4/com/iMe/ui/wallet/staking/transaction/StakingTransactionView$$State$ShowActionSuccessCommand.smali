.class public Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionView$$State$ShowActionSuccessCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "StakingTransactionView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowActionSuccessCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionView;",
        ">;"
    }
.end annotation


# instance fields
.field public final message:Ljava/lang/String;

.field public final title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionView$$State;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 411
    const-class p1, Lmoxy/viewstate/strategy/OneExecutionStateStrategy;

    const-string/jumbo v0, "showActionSuccess"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 413
    iput-object p2, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionView$$State$ShowActionSuccessCommand;->title:Ljava/lang/String;

    .line 414
    iput-object p3, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionView$$State$ShowActionSuccessCommand;->message:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionView;)V
    .locals 2

    .line 419
    iget-object v0, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionView$$State$ShowActionSuccessCommand;->title:Ljava/lang/String;

    iget-object v1, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionView$$State$ShowActionSuccessCommand;->message:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionView;->showActionSuccess(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 405
    check-cast p1, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionView$$State$ShowActionSuccessCommand;->apply(Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionView;)V

    return-void
.end method
