.class public final Lcom/smedialink/ui/wallet/staking/operations/StakingOperationsFragment$setupActionBar$1$1;
.super Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;
.source "StakingOperationsFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/ui/wallet/staking/operations/StakingOperationsFragment;->setupActionBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smedialink/ui/wallet/staking/operations/StakingOperationsFragment;


# direct methods
.method constructor <init>(Lcom/smedialink/ui/wallet/staking/operations/StakingOperationsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/ui/wallet/staking/operations/StakingOperationsFragment$setupActionBar$1$1;->this$0:Lcom/smedialink/ui/wallet/staking/operations/StakingOperationsFragment;

    .line 190
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 193
    iget-object p1, p0, Lcom/smedialink/ui/wallet/staking/operations/StakingOperationsFragment$setupActionBar$1$1;->this$0:Lcom/smedialink/ui/wallet/staking/operations/StakingOperationsFragment;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    goto :goto_0

    .line 194
    :cond_0
    sget v0, Lcom/smedialink/common/IdFabric$Menu;->NETWORK_SWITCH:I

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/smedialink/ui/wallet/staking/operations/StakingOperationsFragment$setupActionBar$1$1;->this$0:Lcom/smedialink/ui/wallet/staking/operations/StakingOperationsFragment;

    invoke-static {p1}, Lcom/smedialink/ui/wallet/staking/operations/StakingOperationsFragment;->access$getPresenter(Lcom/smedialink/ui/wallet/staking/operations/StakingOperationsFragment;)Lcom/smedialink/ui/wallet/staking/operations/StakingOperationsPresenter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smedialink/ui/wallet/staking/operations/StakingOperationsPresenter;->startChooseNetworkDialog()V

    :cond_1
    :goto_0
    return-void
.end method
