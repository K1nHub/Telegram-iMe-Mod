.class Lorg/telegram/ui/DialogsActivity$38;
.super Ljava/lang/Object;
.source "DialogsActivity.java"

# interfaces
.implements Lcom/iMe/ui/topics/TopicsBar$Delegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/DialogsActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/DialogsActivity;


# direct methods
.method public static synthetic $r8$lambda$2mbKT0mJQ5IibN1jviGthQot4IE(Lorg/telegram/ui/DialogsActivity$38;Lcom/iMe/storage/domain/model/topics/TopicModel;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/DialogsActivity$38;->lambda$showDeleteAlert$6(Lcom/iMe/storage/domain/model/topics/TopicModel;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$IBSxfWUuN0n8HdvykCctoPZl2Ew(Lorg/telegram/ui/DialogsActivity$38;Lcom/iMe/storage/domain/model/topics/TopicModel;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/DialogsActivity$38;->lambda$onTopicLongClick$2(Lcom/iMe/storage/domain/model/topics/TopicModel;)V

    return-void
.end method

.method public static synthetic $r8$lambda$KjlDvskUn0T9_eA471-pGzxgS0k(Lorg/telegram/ui/DialogsActivity$38;Lcom/iMe/storage/domain/model/topics/TopicModel;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/DialogsActivity$38;->lambda$onTopicLongClick$3(Lcom/iMe/storage/domain/model/topics/TopicModel;)V

    return-void
.end method

.method public static synthetic $r8$lambda$M_WS6_7a4_OBRqJTtBBJ45BBS9s(Lorg/telegram/ui/DialogsActivity$38;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/DialogsActivity$38;->lambda$onTopicLongClick$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$c4Tu_DqtS6PDjs5ZqFVIg16l1lo(Lorg/telegram/ui/DialogsActivity$38;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/DialogsActivity$38;->lambda$onTopicLongClick$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$tyXnZtemn1fiwc5X1EZMwdCSHp0(Lorg/telegram/ui/DialogsActivity$38;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/DialogsActivity$38;->lambda$onTopicLongClick$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$y5Sre-bexFluoz6NNr6s0Ax0kOk(Lorg/telegram/ui/DialogsActivity$38;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/DialogsActivity$38;->lambda$onTopicLongClick$5()V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/DialogsActivity;)V
    .locals 0

    .line 7088
    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$38;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onTopicLongClick$0()V
    .locals 2

    .line 7118
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$38;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$16800(Lorg/telegram/ui/DialogsActivity;)V

    .line 7119
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$38;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$300(Lorg/telegram/ui/DialogsActivity;)Lcom/iMe/ui/topics/TopicsBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/iMe/ui/topics/TopicsBar;->setEditing(Z)V

    .line 7120
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$38;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0, v1}, Lorg/telegram/ui/DialogsActivity;->access$25300(Lorg/telegram/ui/DialogsActivity;Z)V

    return-void
.end method

.method private synthetic lambda$onTopicLongClick$1()V
    .locals 3

    .line 7122
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$38;->this$0:Lorg/telegram/ui/DialogsActivity;

    new-instance v1, Lorg/telegram/ui/FiltersSetupActivity;

    sget-object v2, Lcom/iMe/fork/enums/FilterActivityType;->TOPIC:Lcom/iMe/fork/enums/FilterActivityType;

    invoke-direct {v1, v2}, Lorg/telegram/ui/FiltersSetupActivity;-><init>(Lcom/iMe/fork/enums/FilterActivityType;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/DialogsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$onTopicLongClick$2(Lcom/iMe/storage/domain/model/topics/TopicModel;)V
    .locals 4

    .line 7123
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$38;->this$0:Lorg/telegram/ui/DialogsActivity;

    new-instance v1, Lorg/telegram/ui/FilterCreateActivity;

    sget-object v2, Lcom/iMe/fork/enums/FilterActivityType;->TOPIC:Lcom/iMe/fork/enums/FilterActivityType;

    const/4 v3, 0x0

    invoke-direct {v1, p1, v3, v2}, Lorg/telegram/ui/FilterCreateActivity;-><init>(Lcom/iMe/storage/domain/model/topics/TopicModel;Ljava/util/Set;Lcom/iMe/fork/enums/FilterActivityType;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/DialogsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$onTopicLongClick$3(Lcom/iMe/storage/domain/model/topics/TopicModel;)V
    .locals 0

    .line 7124
    invoke-direct {p0, p1}, Lorg/telegram/ui/DialogsActivity$38;->showDeleteAlert(Lcom/iMe/storage/domain/model/topics/TopicModel;)V

    return-void
.end method

.method private synthetic lambda$onTopicLongClick$4()V
    .locals 1

    .line 7128
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$38;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$30400(Lorg/telegram/ui/DialogsActivity;)V

    return-void
.end method

.method private synthetic lambda$onTopicLongClick$5()V
    .locals 3

    .line 7126
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$38;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getTopicsController()Lcom/iMe/fork/controller/ForkTopicsController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$38;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getTopicsController()Lcom/iMe/fork/controller/ForkTopicsController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/fork/controller/ForkTopicsController;->isNoTopicFirstEnabled()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/iMe/fork/controller/ForkTopicsController;->setNoTopicFirstEnabled(Z)V

    .line 7127
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$38;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getTopicsController()Lcom/iMe/fork/controller/ForkTopicsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/fork/controller/ForkTopicsController;->saveConfig()V

    .line 7128
    new-instance v0, Lorg/telegram/ui/DialogsActivity$38$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lorg/telegram/ui/DialogsActivity$38$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/DialogsActivity$38;)V

    const-wide/16 v1, 0x12c

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private synthetic lambda$showDeleteAlert$6(Lcom/iMe/storage/domain/model/topics/TopicModel;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 7177
    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$38;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getTopicsController()Lcom/iMe/fork/controller/ForkTopicsController;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/iMe/fork/controller/ForkTopicsController;->removeTopicFilterDialogs(Lcom/iMe/storage/domain/model/topics/TopicModel;)V

    return-void
.end method

.method private showDeleteAlert(Lcom/iMe/storage/domain/model/topics/TopicModel;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 7170
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$38;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->isActivityRunning(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 7173
    :cond_0
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$38;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 7174
    sget v1, Lorg/telegram/messenger/R$string;->topics_remove:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 7175
    sget v1, Lorg/telegram/messenger/R$string;->topics_remove_alert:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 7176
    sget v1, Lorg/telegram/messenger/R$string;->Cancel:I

    const-string v2, "Cancel"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 7177
    sget v1, Lorg/telegram/messenger/R$string;->Delete:I

    const-string v2, "Delete"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/DialogsActivity$38$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/DialogsActivity$38$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/DialogsActivity$38;Lcom/iMe/storage/domain/model/topics/TopicModel;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 7178
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    .line 7179
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$38;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    const/4 v0, -0x1

    .line 7180
    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->getButton(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_1

    .line 7182
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedBold:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public canPerformActions()Z
    .locals 2

    .line 7094
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$38;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$1200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FilterTabsView;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$38;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$1200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FilterTabsView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/FilterTabsView;->isEditing()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 7097
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$38;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$13600(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$38;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$30100(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->isActionModeShowed()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public isTabMenuVisible()Z
    .locals 1

    .line 7162
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$38;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$26000(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$38;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$26000(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ItemOptions;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onTopicClick(J)V
    .locals 5

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 7140
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$38;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0, v2}, Lorg/telegram/ui/DialogsActivity;->access$25600(Lorg/telegram/ui/DialogsActivity;Z)V

    .line 7141
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$38;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$30300(Lorg/telegram/ui/DialogsActivity;)I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_2

    .line 7142
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$38;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$1200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FilterTabsView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/FilterTabsView;->getCurrentTabId()I

    move-result v0

    .line 7143
    iget-object v3, p0, Lorg/telegram/ui/DialogsActivity$38;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/DialogsActivity;->isArchive()Z

    move-result v3

    invoke-static {v3, v0}, Lcom/iMe/fork/enums/SortingFilter;->isSortingFilter(ZI)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 7144
    iget-object v3, p0, Lorg/telegram/ui/DialogsActivity$38;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v3, v0}, Lorg/telegram/ui/DialogsActivity;->access$30302(Lorg/telegram/ui/DialogsActivity;I)I

    goto :goto_0

    :cond_0
    if-ltz v0, :cond_2

    .line 7145
    iget-object v3, p0, Lorg/telegram/ui/DialogsActivity$38;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController;->dialogFilters:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 7146
    iget-object v3, p0, Lorg/telegram/ui/DialogsActivity$38;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/messenger/MessagesController;->dialogFilters:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessagesController$DialogFilter;

    iget v0, v0, Lorg/telegram/messenger/MessagesController$DialogFilter;->id:I

    invoke-static {v3, v0}, Lorg/telegram/ui/DialogsActivity;->access$30302(Lorg/telegram/ui/DialogsActivity;I)I

    goto :goto_0

    .line 7150
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$38;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0, v1}, Lorg/telegram/ui/DialogsActivity;->access$25600(Lorg/telegram/ui/DialogsActivity;Z)V

    .line 7151
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$38;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$1200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FilterTabsView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 7152
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$38;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$1200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FilterTabsView;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/ui/DialogsActivity$38;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->access$1200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FilterTabsView;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/FilterTabsView;->getDefaultTabId()I

    move-result v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/FilterTabsView;->notifyTabCounterChanged(I)V

    .line 7155
    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$38;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getTopicsController()Lcom/iMe/fork/controller/ForkTopicsController;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/ui/DialogsActivity$38;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/DialogsActivity;->isArchive()Z

    move-result v3

    invoke-virtual {v0, v3, p1, p2}, Lcom/iMe/fork/controller/ForkTopicsController;->selectTopic(ZJ)V

    .line 7156
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$38;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1, v2, v2}, Lorg/telegram/ui/DialogsActivity;->access$1800(Lorg/telegram/ui/DialogsActivity;ZZ)V

    .line 7157
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$38;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/DialogsActivity;->switchToCurrentSelectedMode(Z)V

    return-void
.end method

.method public onTopicLongClick(Lcom/iMe/ui/topics/TopicView;)Z
    .locals 9

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    .line 7102
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$38;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->isActivityRunning(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$38;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$30200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBar;->isActionModeShowed()Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$38;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getTopicsController()Lcom/iMe/fork/controller/ForkTopicsController;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$38;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/DialogsActivity;->isArchive()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/iMe/fork/controller/ForkTopicsController;->hasSelectedTopic(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_4

    .line 7105
    :cond_0
    invoke-virtual {p1}, Lcom/iMe/ui/topics/TopicView;->getTopic()Lcom/iMe/storage/domain/model/topics/TopicModel;

    move-result-object v1

    if-nez v1, :cond_1

    return v0

    .line 7109
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$38;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$26000(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$38;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$26000(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ItemOptions;->isShown()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 7110
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$38;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$26000(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ItemOptions;->dismiss()V

    .line 7111
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$38;->this$0:Lorg/telegram/ui/DialogsActivity;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lorg/telegram/ui/DialogsActivity;->access$26002(Lorg/telegram/ui/DialogsActivity;Lorg/telegram/ui/Components/ItemOptions;)Lorg/telegram/ui/Components/ItemOptions;

    return v0

    .line 7114
    :cond_2
    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/topics/TopicModel;->getTopicId()J

    move-result-wide v2

    const-wide/16 v4, -0x2

    cmp-long v2, v2, v4

    const/4 v3, 0x1

    if-nez v2, :cond_3

    move v2, v3

    goto :goto_0

    :cond_3
    move v2, v0

    .line 7115
    :goto_0
    iget-object v4, p0, Lorg/telegram/ui/DialogsActivity$38;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v4, p1}, Lorg/telegram/ui/Components/ItemOptions;->makeOptions(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    const/4 v5, 0x4

    .line 7116
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v6

    invoke-static {v5, v6}, Lorg/telegram/ui/ActionBar/Theme;->createRoundRectDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {p1, v5}, Lorg/telegram/ui/Components/ItemOptions;->setScrimViewBackground(Landroid/graphics/drawable/Drawable;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    iget-object v5, p0, Lorg/telegram/ui/DialogsActivity$38;->this$0:Lorg/telegram/ui/DialogsActivity;

    .line 7117
    invoke-static {v5}, Lorg/telegram/ui/DialogsActivity;->access$300(Lorg/telegram/ui/DialogsActivity;)Lcom/iMe/ui/topics/TopicsBar;

    move-result-object v5

    invoke-virtual {v5}, Lcom/iMe/ui/topics/TopicsBar;->allowReorder()Z

    move-result v5

    if-eqz v5, :cond_4

    if-nez v2, :cond_4

    move v0, v3

    :cond_4
    sget v5, Lorg/telegram/messenger/R$drawable;->tabs_reorder:I

    sget v6, Lorg/telegram/messenger/R$string;->FilterReorder:I

    const-string v7, "FilterReorder"

    invoke-static {v7, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lorg/telegram/ui/DialogsActivity$38$$ExternalSyntheticLambda1;

    invoke-direct {v7, p0}, Lorg/telegram/ui/DialogsActivity$38$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/DialogsActivity$38;)V

    invoke-virtual {p1, v0, v5, v6, v7}, Lorg/telegram/ui/Components/ItemOptions;->addIf(ZILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$drawable;->msg_settings:I

    sget v6, Lorg/telegram/messenger/R$string;->Settings:I

    const-string v7, "Settings"

    .line 7122
    invoke-static {v7, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lorg/telegram/ui/DialogsActivity$38$$ExternalSyntheticLambda3;

    invoke-direct {v7, p0}, Lorg/telegram/ui/DialogsActivity$38$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/DialogsActivity$38;)V

    invoke-virtual {p1, v0, v6, v7}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    xor-int/lit8 v0, v2, 0x1

    sget v6, Lorg/telegram/messenger/R$drawable;->msg_edit:I

    sget v7, Lorg/telegram/messenger/R$string;->topic_edit:I

    .line 7123
    invoke-static {v7}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lorg/telegram/ui/DialogsActivity$38$$ExternalSyntheticLambda5;

    invoke-direct {v8, p0, v1}, Lorg/telegram/ui/DialogsActivity$38$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/DialogsActivity$38;Lcom/iMe/storage/domain/model/topics/TopicModel;)V

    invoke-virtual {p1, v0, v6, v7, v8}, Lorg/telegram/ui/Components/ItemOptions;->addIf(ZILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    xor-int/lit8 v0, v2, 0x1

    sget v6, Lorg/telegram/messenger/R$drawable;->msg_delete:I

    sget v7, Lorg/telegram/messenger/R$string;->Delete:I

    const-string v8, "Delete"

    .line 7124
    invoke-static {v8, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lorg/telegram/ui/DialogsActivity$38$$ExternalSyntheticLambda6;

    invoke-direct {v8, p0, v1}, Lorg/telegram/ui/DialogsActivity$38$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/DialogsActivity$38;Lcom/iMe/storage/domain/model/topics/TopicModel;)V

    invoke-virtual {p1, v0, v6, v7, v8}, Lorg/telegram/ui/Components/ItemOptions;->addIf(ZILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    .line 7125
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$38;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getTopicsController()Lcom/iMe/fork/controller/ForkTopicsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/fork/controller/ForkTopicsController;->isNoTopicFirstEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_1

    :cond_5
    sget v5, Lorg/telegram/messenger/R$drawable;->fork_move_to_beginning:I

    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$38;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getTopicsController()Lcom/iMe/fork/controller/ForkTopicsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/fork/controller/ForkTopicsController;->isNoTopicFirstEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    sget v0, Lorg/telegram/messenger/R$string;->topics_move_no_topic_to_end:I

    goto :goto_2

    :cond_6
    sget v0, Lorg/telegram/messenger/R$string;->topics_move_no_topic_to_beginning:I

    :goto_2
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/DialogsActivity$38$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lorg/telegram/ui/DialogsActivity$38$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/DialogsActivity$38;)V

    invoke-virtual {p1, v2, v5, v0, v1}, Lorg/telegram/ui/Components/ItemOptions;->addIf(ZILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    const/4 v0, 0x3

    .line 7130
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/ItemOptions;->setGravity(I)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    const/4 v0, -0x8

    .line 7131
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$38;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getTopicsController()Lcom/iMe/fork/controller/ForkTopicsController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/fork/controller/ForkTopicsController;->isTopicsBarAtBottomEnabled()Z

    move-result v1

    if-eqz v1, :cond_7

    const/16 v1, 0xa

    goto :goto_3

    :cond_7
    const/16 v1, -0xa

    :goto_3
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Components/ItemOptions;->translate(FF)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    .line 7132
    invoke-virtual {p1}, Lorg/telegram/ui/Components/ItemOptions;->show()Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    .line 7115
    invoke-static {v4, p1}, Lorg/telegram/ui/DialogsActivity;->access$26002(Lorg/telegram/ui/DialogsActivity;Lorg/telegram/ui/Components/ItemOptions;)Lorg/telegram/ui/Components/ItemOptions;

    return v3

    :cond_8
    :goto_4
    return v0
.end method
