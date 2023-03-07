.class public Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionView$$State$ShowActionErrorCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "StakingTransactionView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowActionErrorCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionView;",
        ">;"
    }
.end annotation


# instance fields
.field public final message:Ljava/lang/String;

.field public final title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionView$$State;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 296
    const-class p1, Lmoxy/viewstate/strategy/OneExecutionStateStrategy;

    const-string v0, "showActionError"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 298
    iput-object p2, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionView$$State$ShowActionErrorCommand;->title:Ljava/lang/String;

    .line 299
    iput-object p3, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionView$$State$ShowActionErrorCommand;->message:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public apply(Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionView;)V
    .locals 2

    .line 304
    iget-object v0, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionView$$State$ShowActionErrorCommand;->title:Ljava/lang/String;

    iget-object v1, p0, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionView$$State$ShowActionErrorCommand;->message:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionView;->showActionError(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 290
    check-cast p1, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionView;

    invoke-virtual {p0, p1}, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionView$$State$ShowActionErrorCommand;->apply(Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionView;)V

    return-void
.end method
