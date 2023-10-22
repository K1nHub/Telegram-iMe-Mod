.class public final Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment$setupInputField$2$1$1;
.super Ljava/lang/Object;
.source "StakingTransactionFragment.kt"

# interfaces
.implements Lcom/iMe/fork/utils/Callbacks$Callback;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStakingTransactionFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StakingTransactionFragment.kt\ncom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment$setupInputField$2$1$1\n*L\n1#1,425:1\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment;


# direct methods
.method public constructor <init>(Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment$setupInputField$2$1$1;->this$0:Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()V
    .locals 1

    .line 409
    iget-object v0, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment$setupInputField$2$1$1;->this$0:Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment;

    invoke-static {v0}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment;->access$getPresenter(Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment;)Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->setMaxAmount()V

    return-void
.end method
