.class public final synthetic Lorg/telegram/ui/ManageLinksActivity$ListAdapter$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/fork/utils/Callbacks$Callback1;


# instance fields
.field public final synthetic f$0:Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;


# direct methods
.method public synthetic constructor <init>(Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter$$ExternalSyntheticLambda11;->f$0:Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$ListAdapter$$ExternalSyntheticLambda11;->f$0:Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->switchSafeWithdrawal(Z)V

    return-void
.end method
