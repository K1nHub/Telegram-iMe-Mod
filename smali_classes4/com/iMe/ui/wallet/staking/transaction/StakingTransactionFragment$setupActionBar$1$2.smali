.class public final Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment$setupActionBar$1$2;
.super Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;
.source "StakingTransactionFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment;->setupActionBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment$setupActionBar$1$2$WhenMappings;
    }
.end annotation


# instance fields
.field final synthetic $this_with:Lorg/telegram/ui/ActionBar/ActionBar;

.field final synthetic this$0:Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment;Lorg/telegram/ui/ActionBar/ActionBar;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment$setupActionBar$1$2;->this$0:Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment;

    iput-object p2, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment$setupActionBar$1$2;->$this_with:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 288
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 4

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 291
    iget-object p1, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment$setupActionBar$1$2;->this$0:Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    goto :goto_0

    .line 292
    :cond_0
    sget v0, Lcom/iMe/common/IdFabric$Menu;->STAKING_CONDITIONS:I

    if-ne p1, v0, :cond_1

    .line 293
    iget-object p1, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment$setupActionBar$1$2;->this$0:Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment;

    invoke-static {p1}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment;->access$getPresenter(Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment;)Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->startStakingConditionsDialog()V

    goto :goto_0

    .line 296
    :cond_1
    sget v0, Lcom/iMe/common/IdFabric$Menu;->SMART_CONTRACT:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_4

    .line 297
    iget-object p1, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment$setupActionBar$1$2;->$this_with:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment$setupActionBar$1$2;->this$0:Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment;

    invoke-static {v0}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment;->access$getStakingDetails$p(Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment;)Lcom/iMe/model/staking/StakingDetailsItem;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/iMe/model/staking/StakingDetailsItem;->getContractUrl()Ljava/lang/String;

    move-result-object v1

    :cond_2
    if-nez v1, :cond_3

    const-string v1, ""

    :cond_3
    invoke-static {p1, v1}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 300
    :cond_4
    sget v0, Lcom/iMe/common/IdFabric$Menu;->STAKING_HELP:I

    if-ne p1, v0, :cond_7

    .line 301
    iget-object p1, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment$setupActionBar$1$2;->this$0:Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment;

    invoke-static {p1}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment;->access$getScreenType$p(Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment;)Lcom/iMe/model/wallet/staking/StakingScreenType;

    move-result-object p1

    sget-object v0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment$setupActionBar$1$2$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_6

    const/4 v0, 0x2

    if-eq p1, v0, :cond_5

    goto :goto_0

    .line 311
    :cond_5
    iget-object p1, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment$setupActionBar$1$2;->this$0:Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment;

    invoke-static {p1}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment;->access$getPresenter(Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment;)Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->onWithdrawHelpClick()V

    goto :goto_0

    .line 303
    :cond_6
    iget-object p1, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment$setupActionBar$1$2;->this$0:Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment;

    .line 304
    invoke-static {p1}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment;->access$getResourceManager(Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment;)Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v2

    .line 305
    sget v3, Lorg/telegram/messenger/R$string;->staking_profit_help_alert:I

    .line 304
    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 303
    invoke-static {p1, v1, v2, v0, v1}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment;->showCommonInfoAlert$default(Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    :cond_7
    :goto_0
    return-void
.end method
