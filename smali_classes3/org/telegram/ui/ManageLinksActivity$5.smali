.class Lorg/telegram/ui/ManageLinksActivity$5;
.super Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;
.source "ManageLinksActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ManageLinksActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ManageLinksActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ManageLinksActivity;)V
    .locals 0

    .line 1493
    iput-object p1, p0, Lorg/telegram/ui/ManageLinksActivity$5;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 3

    .line 1497
    sget v0, Lcom/smedialink/common/IdFabric$Menu;->STAKING_CONTRACT:I

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$5;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    iget-object v1, v0, Lorg/telegram/ui/ManageLinksActivity;->stakingTransactionPresenter:Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;

    if-eqz v1, :cond_0

    .line 1498
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$5;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    iget-object v0, v0, Lorg/telegram/ui/ManageLinksActivity;->stakingTransactionPresenter:Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;

    invoke-virtual {v0}, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->getStakingContractUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1499
    :cond_0
    sget v0, Lcom/smedialink/common/IdFabric$Menu;->STAKING_CONDITIONS:I

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$5;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    iget-object v0, v0, Lorg/telegram/ui/ManageLinksActivity;->stakingTransactionPresenter:Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;

    if-eqz v0, :cond_1

    .line 1500
    invoke-virtual {v0}, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->startStakingConditionsDialog()V

    goto/16 :goto_0

    .line 1501
    :cond_1
    sget v0, Lcom/smedialink/common/IdFabric$Menu;->STAKING_HELP:I

    if-ne p1, v0, :cond_4

    .line 1502
    iget-object p1, p0, Lorg/telegram/ui/ManageLinksActivity$5;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {p1}, Lorg/telegram/ui/ManageLinksActivity;->access$900(Lorg/telegram/ui/ManageLinksActivity;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1503
    iget-object p1, p0, Lorg/telegram/ui/ManageLinksActivity$5;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    .line 1504
    invoke-static {p1}, Lorg/telegram/ui/ManageLinksActivity;->access$1100(Lorg/telegram/ui/ManageLinksActivity;)Lkotlin/Lazy;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    sget v1, Lorg/telegram/messenger/R$string;->staking_calculator_help_alert_title:I

    invoke-interface {v0, v1}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ManageLinksActivity$5;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    .line 1505
    invoke-static {v1}, Lorg/telegram/ui/ManageLinksActivity;->access$1100(Lorg/telegram/ui/ManageLinksActivity;)Lkotlin/Lazy;

    move-result-object v1

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    sget v2, Lorg/telegram/messenger/R$string;->staking_calculator_help_alert_description:I

    invoke-interface {v1, v2}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1503
    invoke-static {p1, v0, v1}, Lorg/telegram/ui/ManageLinksActivity;->access$1200(Lorg/telegram/ui/ManageLinksActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1507
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/ManageLinksActivity$5;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {p1}, Lorg/telegram/ui/ManageLinksActivity;->access$1000(Lorg/telegram/ui/ManageLinksActivity;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1508
    iget-object p1, p0, Lorg/telegram/ui/ManageLinksActivity$5;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    .line 1509
    invoke-static {p1}, Lorg/telegram/ui/ManageLinksActivity;->access$1100(Lorg/telegram/ui/ManageLinksActivity;)Lkotlin/Lazy;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    sget v1, Lorg/telegram/messenger/R$string;->wallet_crypto_buy_information_dialog_title:I

    invoke-interface {v0, v1}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ManageLinksActivity$5;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    .line 1510
    invoke-static {v1}, Lorg/telegram/ui/ManageLinksActivity;->access$1100(Lorg/telegram/ui/ManageLinksActivity;)Lkotlin/Lazy;

    move-result-object v1

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    sget v2, Lorg/telegram/messenger/R$string;->staking_profit_help_alert:I

    invoke-interface {v1, v2}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1508
    invoke-static {p1, v0, v1}, Lorg/telegram/ui/ManageLinksActivity;->access$1200(Lorg/telegram/ui/ManageLinksActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1512
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/ManageLinksActivity$5;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {p1}, Lorg/telegram/ui/ManageLinksActivity;->access$800(Lorg/telegram/ui/ManageLinksActivity;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lorg/telegram/ui/ManageLinksActivity$5;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    iget-object v0, p1, Lorg/telegram/ui/ManageLinksActivity;->stakingTransactionPresenter:Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;

    if-eqz v0, :cond_5

    .line 1514
    invoke-static {p1}, Lorg/telegram/ui/ManageLinksActivity;->access$1100(Lorg/telegram/ui/ManageLinksActivity;)Lkotlin/Lazy;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    sget v1, Lorg/telegram/messenger/R$string;->wallet_crypto_buy_information_dialog_title:I

    invoke-interface {v0, v1}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ManageLinksActivity$5;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    iget-object v1, v1, Lorg/telegram/ui/ManageLinksActivity;->stakingTransactionPresenter:Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;

    .line 1515
    invoke-virtual {v1}, Lcom/smedialink/ui/wallet/staking/transaction/StakingTransactionPresenter;->getWithdrawalHelpAlertText()Ljava/lang/String;

    move-result-object v1

    .line 1513
    invoke-static {p1, v0, v1}, Lorg/telegram/ui/ManageLinksActivity;->access$1200(Lorg/telegram/ui/ManageLinksActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const/4 v0, -0x1

    if-ne p1, v0, :cond_5

    .line 1520
    iget-object p1, p0, Lorg/telegram/ui/ManageLinksActivity$5;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    :cond_5
    :goto_0
    return-void
.end method
