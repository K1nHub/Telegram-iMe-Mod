.class Lorg/telegram/ui/DialogsActivity$13;
.super Ljava/lang/Object;
.source "DialogsActivity.java"

# interfaces
.implements Lorg/telegram/ui/Components/FilterTabsView$FilterTabsViewDelegate;


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

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method public static synthetic $r8$lambda$0oi61L2iG1MKH7DmzqwKO4__bXw(Lorg/telegram/ui/DialogsActivity$13;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/DialogsActivity$13;->lambda$didSelectTab$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$0sg3bAeK_3_5-SN2j3QYQk2faRU(Lorg/telegram/ui/DialogsActivity$13;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/DialogsActivity$13;->lambda$didSelectTab$11()V

    return-void
.end method

.method public static synthetic $r8$lambda$ACuvZ3wYoluCyHqgz51DE7Tnyms(Lorg/telegram/ui/DialogsActivity$13;Ljava/util/ArrayList;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/DialogsActivity$13;->lambda$didSelectTab$5(Ljava/util/ArrayList;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$D5_5qsZCyvm2slesIy5OoufWrvI(Lorg/telegram/ui/DialogsActivity$13;Lorg/telegram/messenger/MessagesController$DialogFilter;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/DialogsActivity$13;->lambda$didSelectTab$8(Lorg/telegram/messenger/MessagesController$DialogFilter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$DDAxERfMgAJnEJwSpX1GQlJBpko(Lorg/telegram/ui/DialogsActivity$13;ZLorg/telegram/messenger/MessagesController$DialogFilter;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/DialogsActivity$13;->lambda$didSelectTab$4(ZLorg/telegram/messenger/MessagesController$DialogFilter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$T6viODFnF23Ga3qzBOPEHuASuo4(Lorg/telegram/ui/DialogsActivity$13;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/DialogsActivity$13;->lambda$didSelectTab$6(Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UPP1_zzhCDN2I3oHYufP3BbQSkg(Lorg/telegram/ui/DialogsActivity$13;Lorg/telegram/messenger/MessagesController$DialogFilter;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/DialogsActivity$13;->lambda$didSelectTab$10(Lorg/telegram/messenger/MessagesController$DialogFilter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$eUq2IG4QzxZ0JA-so_BDM0TphLk(Lorg/telegram/ui/DialogsActivity$13;Lorg/telegram/messenger/MessagesController$DialogFilter;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/DialogsActivity$13;->lambda$showDeleteAlert$0(Lorg/telegram/messenger/MessagesController$DialogFilter;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$gJeFrJHotrnDje1JrDv7RIheBJQ(Lorg/telegram/ui/DialogsActivity$13;Lorg/telegram/messenger/MessagesController$DialogFilter;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/DialogsActivity$13;->lambda$didSelectTab$9(Lorg/telegram/messenger/MessagesController$DialogFilter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sPu4L7T-KJsdhZvR6gRtLxocf8M(Lorg/telegram/ui/DialogsActivity$13;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/DialogsActivity$13;->lambda$didSelectTab$1(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$txFRTajCUGX8q_wDu427FO4N8LI(Lorg/telegram/ui/DialogsActivity$13;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/DialogsActivity$13;->lambda$didSelectTab$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$yRcjFuYkl_JqpQgrXOMEvHEKZRs(Lorg/telegram/ui/DialogsActivity$13;[ZLorg/telegram/messenger/MessagesController$DialogFilter;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/DialogsActivity$13;->lambda$didSelectTab$7([ZLorg/telegram/messenger/MessagesController$DialogFilter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$y_CEahCXJkE2pUdwJulnTtrpedk(Lorg/telegram/ui/DialogsActivity$13;ZZLorg/telegram/ui/Components/FilterTabsView$TabView;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/DialogsActivity$13;->lambda$didSelectTab$12(ZZLorg/telegram/ui/Components/FilterTabsView$TabView;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/DialogsActivity;Landroid/content/Context;)V
    .locals 0

    .line 5036
    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$13;->this$0:Lorg/telegram/ui/DialogsActivity;

    iput-object p2, p0, Lorg/telegram/ui/DialogsActivity$13;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$didSelectTab$1(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 5355
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$13;->this$0:Lorg/telegram/ui/DialogsActivity;

    new-instance v0, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$13;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/DialogsActivity;->isArchive()Z

    move-result v1

    invoke-direct {v0, v1}, Lcom/iMe/fork/ui/fragment/SortingFilterSettingsActivity;-><init>(Z)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/DialogsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void

    .line 5359
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$13;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$17300(Lorg/telegram/ui/DialogsActivity;)V

    .line 5360
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$13;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$800(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FilterTabsView;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/FilterTabsView;->setIsEditing(Z)V

    .line 5361
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$13;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1, v0}, Lorg/telegram/ui/DialogsActivity;->access$25200(Lorg/telegram/ui/DialogsActivity;Z)V

    return-void
.end method

.method private synthetic lambda$didSelectTab$10(Lorg/telegram/messenger/MessagesController$DialogFilter;)V
    .locals 0

    .line 5407
    invoke-direct {p0, p1}, Lorg/telegram/ui/DialogsActivity$13;->showDeleteAlert(Lorg/telegram/messenger/MessagesController$DialogFilter;)V

    return-void
.end method

.method private synthetic lambda$didSelectTab$11()V
    .locals 2

    .line 5420
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$13;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFiltersController()Lcom/iMe/fork/controller/FiltersController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/iMe/fork/controller/FiltersController;->setAllChatsTabEnabled(Z)V

    .line 5421
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$13;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFiltersController()Lcom/iMe/fork/controller/FiltersController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/fork/controller/FiltersController;->saveConfig()V

    .line 5422
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$13;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0, v1, v1}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;ZZ)V

    return-void
.end method

.method private synthetic lambda$didSelectTab$12(ZZLorg/telegram/ui/Components/FilterTabsView$TabView;)V
    .locals 1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 5412
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$13;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFiltersController()Lcom/iMe/fork/controller/FiltersController;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/iMe/fork/controller/FiltersController;->setAllChatsTabEnabled(Z)V

    .line 5413
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$13;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFiltersController()Lcom/iMe/fork/controller/FiltersController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iMe/fork/controller/FiltersController;->saveConfig()V

    .line 5414
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$13;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1, v0, v0}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;ZZ)V

    .line 5415
    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->setShowDrawerHeaderArchiveEnabled(Z)V

    .line 5416
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$13;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p3, Lorg/telegram/messenger/NotificationCenter;->mainUserInfoChanged:I

    new-array p2, p2, [Ljava/lang/Object;

    invoke-virtual {p1, p3, p2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 5417
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$13;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/DialogsActivity;->getUndoView()Lorg/telegram/ui/Components/UndoView;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 5419
    sget p2, Lorg/telegram/messenger/R$string;->undo_all_chats_tab_disabled:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    new-instance p3, Lorg/telegram/ui/DialogsActivity$13$$ExternalSyntheticLambda2;

    invoke-direct {p3, p0}, Lorg/telegram/ui/DialogsActivity$13$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/DialogsActivity$13;)V

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/Components/UndoView;->showInfo(Ljava/lang/CharSequence;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 5426
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$13;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFiltersController()Lcom/iMe/fork/controller/FiltersController;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$13;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/DialogsActivity;->isArchive()Z

    move-result p2

    invoke-virtual {p3}, Lorg/telegram/ui/Components/FilterTabsView$TabView;->getId()I

    move-result p3

    invoke-static {p2, p3}, Lcom/iMe/fork/enums/SortingFilter;->getFilterByIdWithExtra(ZI)Lcom/iMe/fork/enums/SortingFilter;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/iMe/fork/controller/FiltersController;->disableSortingFilter(Lcom/iMe/fork/enums/SortingFilter;)V

    .line 5427
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$13;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFiltersController()Lcom/iMe/fork/controller/FiltersController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iMe/fork/controller/FiltersController;->saveConfig()V

    .line 5428
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$13;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1, v0, v0}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;ZZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$didSelectTab$2()V
    .locals 8

    .line 5365
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$13;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$13;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogFilters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$13;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget v1, v1, Lorg/telegram/messenger/MessagesController;->dialogFiltersLimitDefault:I

    if-lt v0, v1, :cond_0

    .line 5366
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$13;->this$0:Lorg/telegram/ui/DialogsActivity;

    new-instance v7, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$13;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    const/4 v4, 0x3

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$13;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$26300(Lorg/telegram/ui/DialogsActivity;)I

    move-result v5

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {v0, v7}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto :goto_0

    .line 5368
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$13;->this$0:Lorg/telegram/ui/DialogsActivity;

    new-instance v1, Lorg/telegram/ui/FilterCreateActivity;

    invoke-direct {v1}, Lorg/telegram/ui/FilterCreateActivity;-><init>()V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/DialogsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :goto_0
    return-void
.end method

.method private synthetic lambda$didSelectTab$3()V
    .locals 2

    .line 5371
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$13;->this$0:Lorg/telegram/ui/DialogsActivity;

    new-instance v1, Lorg/telegram/ui/FiltersSetupActivity;

    invoke-direct {v1}, Lorg/telegram/ui/FiltersSetupActivity;-><init>()V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/DialogsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$didSelectTab$4(ZLorg/telegram/messenger/MessagesController$DialogFilter;)V
    .locals 1

    .line 5374
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$13;->this$0:Lorg/telegram/ui/DialogsActivity;

    if-eqz p1, :cond_0

    new-instance p1, Lorg/telegram/ui/FiltersSetupActivity;

    invoke-direct {p1}, Lorg/telegram/ui/FiltersSetupActivity;-><init>()V

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/telegram/ui/FilterCreateActivity;

    invoke-direct {p1, p2}, Lorg/telegram/ui/FilterCreateActivity;-><init>(Lorg/telegram/messenger/MessagesController$DialogFilter;)V

    :goto_0
    invoke-virtual {v0, p1}, Lorg/telegram/ui/DialogsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$didSelectTab$5(Ljava/util/ArrayList;Z)V
    .locals 10

    const/4 v0, 0x0

    move v1, v0

    .line 5378
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 5379
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Dialog;

    if-eqz v2, :cond_1

    .line 5381
    iget-object v3, p0, Lorg/telegram/ui/DialogsActivity$13;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->access$26200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/messenger/NotificationsController;

    move-result-object v4

    iget-wide v5, v2, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    const-wide/16 v7, 0x0

    if-eqz p2, :cond_0

    const/4 v2, 0x3

    goto :goto_1

    :cond_0
    const/4 v2, 0x4

    :goto_1
    move v9, v2

    invoke-virtual/range {v4 .. v9}, Lorg/telegram/messenger/NotificationsController;->setDialogNotificationsSettings(JJI)V

    add-int/lit8 v1, v1, 0x1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5385
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$13;->this$0:Lorg/telegram/ui/DialogsActivity;

    const/4 v0, 0x0

    invoke-static {p1, p2, v1, v0}, Lorg/telegram/ui/Components/BulletinFactory;->createMuteBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;ZILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void
.end method

.method private synthetic lambda$didSelectTab$6(Ljava/util/ArrayList;)V
    .locals 1

    .line 5388
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$13;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0, p1}, Lorg/telegram/ui/DialogsActivity;->access$26100(Lorg/telegram/ui/DialogsActivity;Ljava/util/ArrayList;)V

    return-void
.end method

.method private synthetic lambda$didSelectTab$7([ZLorg/telegram/messenger/MessagesController$DialogFilter;)V
    .locals 2

    const/4 v0, 0x0

    .line 5391
    aget-boolean p1, p1, v0

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 5392
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$13;->this$0:Lorg/telegram/ui/DialogsActivity;

    new-instance v1, Lorg/telegram/ui/FilterChatlistActivity;

    invoke-direct {v1, p2, v0}, Lorg/telegram/ui/FilterChatlistActivity;-><init>(Lorg/telegram/messenger/MessagesController$DialogFilter;Lorg/telegram/tgnet/tl/TL_chatlists$TL_exportedChatlistInvite;)V

    invoke-virtual {p1, v1}, Lorg/telegram/ui/DialogsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto :goto_0

    .line 5394
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$13;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1, p2, v0}, Lorg/telegram/ui/FilterCreateActivity$FilterInvitesBottomSheet;->show(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/messenger/MessagesController$DialogFilter;Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$didSelectTab$8(Lorg/telegram/messenger/MessagesController$DialogFilter;)V
    .locals 2

    .line 5402
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$13;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFiltersController()Lcom/iMe/fork/controller/FiltersController;

    move-result-object v0

    iget p1, p1, Lorg/telegram/messenger/MessagesController$DialogFilter;->id:I

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/iMe/fork/controller/FiltersController;->setHidden(IZ)V

    return-void
.end method

.method private synthetic lambda$didSelectTab$9(Lorg/telegram/messenger/MessagesController$DialogFilter;)V
    .locals 3

    .line 5399
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$13;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFiltersController()Lcom/iMe/fork/controller/FiltersController;

    move-result-object v0

    iget v1, p1, Lorg/telegram/messenger/MessagesController$DialogFilter;->id:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/iMe/fork/controller/FiltersController;->setHidden(IZ)V

    .line 5400
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$13;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/DialogsActivity;->getUndoView()Lorg/telegram/ui/Components/UndoView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5402
    sget v1, Lorg/telegram/messenger/R$string;->undo_folder_tabs_settings_hide_folder_info:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/DialogsActivity$13$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/DialogsActivity$13$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/DialogsActivity$13;Lorg/telegram/messenger/MessagesController$DialogFilter;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/UndoView;->showInfo(Ljava/lang/CharSequence;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$showDeleteAlert$0(Lorg/telegram/messenger/MessagesController$DialogFilter;Landroid/content/DialogInterface;I)V
    .locals 1

    .line 5120
    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_messages_updateDialogFilter;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_messages_updateDialogFilter;-><init>()V

    .line 5121
    iget p3, p1, Lorg/telegram/messenger/MessagesController$DialogFilter;->id:I

    iput p3, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_updateDialogFilter;->id:I

    .line 5122
    iget-object p3, p0, Lorg/telegram/ui/DialogsActivity$13;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p3

    const/4 v0, 0x0

    invoke-virtual {p3, p2, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 5123
    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$13;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/telegram/messenger/MessagesController;->removeFilter(Lorg/telegram/messenger/MessagesController$DialogFilter;)V

    .line 5124
    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$13;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/telegram/messenger/MessagesStorage;->deleteDialogFilter(Lorg/telegram/messenger/MessagesController$DialogFilter;)V

    return-void
.end method

.method private showDeleteAlert(Lorg/telegram/messenger/MessagesController$DialogFilter;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 5112
    :cond_0
    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController$DialogFilter;->isChatlist()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 5113
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$13;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget p1, p1, Lorg/telegram/messenger/MessagesController$DialogFilter;->id:I

    invoke-static {v0, p1, v1}, Lorg/telegram/ui/Components/FolderBottomSheet;->showForDeletion(Lorg/telegram/ui/ActionBar/BaseFragment;ILorg/telegram/messenger/Utilities$Callback;)V

    goto :goto_0

    .line 5115
    :cond_1
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$13;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 5116
    sget v2, Lorg/telegram/messenger/R$string;->FilterDelete:I

    const-string v3, "FilterDelete"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 5117
    sget v2, Lorg/telegram/messenger/R$string;->FilterDeleteAlert:I

    const-string v3, "FilterDeleteAlert"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 5118
    sget v2, Lorg/telegram/messenger/R$string;->Cancel:I

    const-string v3, "Cancel"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 5119
    sget v1, Lorg/telegram/messenger/R$string;->Delete:I

    const-string v2, "Delete"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/DialogsActivity$13$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/DialogsActivity$13$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/DialogsActivity$13;Lorg/telegram/messenger/MessagesController$DialogFilter;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 5126
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    .line 5127
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$13;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    const/4 v0, -0x1

    .line 5128
    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->getButton(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_2

    .line 5130
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedBold:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public canPerformActions()Z
    .locals 1

    .line 5191
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$13;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$300(Lorg/telegram/ui/DialogsActivity;)Lcom/iMe/ui/topics/TopicsBar;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$13;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$300(Lorg/telegram/ui/DialogsActivity;)Lcom/iMe/ui/topics/TopicsBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/ui/topics/TopicsBar;->isEditing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 5195
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$13;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$13700(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public didSelectTab(Lorg/telegram/ui/Components/FilterTabsView$TabView;Z)Z
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 5266
    iget-object v2, v0, Lorg/telegram/ui/DialogsActivity$13;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$11600(Lorg/telegram/ui/DialogsActivity;)I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_25

    iget-object v2, v0, Lorg/telegram/ui/DialogsActivity$13;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->isActivityRunning(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_25

    if-nez v1, :cond_0

    goto/16 :goto_18

    .line 5269
    :cond_0
    iget-object v2, v0, Lorg/telegram/ui/DialogsActivity$13;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$25800(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBar;->isActionModeShowed()Z

    move-result v2

    if-nez v2, :cond_24

    iget-object v2, v0, Lorg/telegram/ui/DialogsActivity$13;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$6200(Lorg/telegram/ui/DialogsActivity;)F

    move-result v2

    const/4 v4, 0x0

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_1

    goto/16 :goto_17

    .line 5272
    :cond_1
    iget-object v2, v0, Lorg/telegram/ui/DialogsActivity$13;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$25900(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v2

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    iget-object v2, v0, Lorg/telegram/ui/DialogsActivity$13;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$25900(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ItemOptions;->isShown()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5273
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$13;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$25900(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ItemOptions;->dismiss()V

    .line 5274
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$13;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1, v4}, Lorg/telegram/ui/DialogsActivity;->access$25902(Lorg/telegram/ui/DialogsActivity;Lorg/telegram/ui/Components/ItemOptions;)Lorg/telegram/ui/Components/ItemOptions;

    return v3

    .line 5279
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/Components/FilterTabsView$TabView;->getId()I

    move-result v2

    iget-object v5, v0, Lorg/telegram/ui/DialogsActivity$13;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v5}, Lorg/telegram/ui/DialogsActivity;->access$800(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FilterTabsView;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/ui/Components/FilterTabsView;->getDefaultTabId()I

    move-result v5

    if-ne v2, v5, :cond_3

    move-object v2, v4

    goto :goto_0

    .line 5283
    :cond_3
    iget-object v2, v0, Lorg/telegram/ui/DialogsActivity$13;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/Components/FilterTabsView$TabView;->getId()I

    move-result v5

    invoke-static {v2, v5}, Lorg/telegram/ui/DialogsActivity;->access$26000(Lorg/telegram/ui/DialogsActivity;I)Lorg/telegram/messenger/MessagesController$DialogFilter;

    move-result-object v2

    :goto_0
    const/4 v5, 0x1

    if-nez v2, :cond_4

    move v6, v5

    goto :goto_1

    :cond_4
    move v6, v3

    .line 5290
    :goto_1
    iget-object v7, v0, Lorg/telegram/ui/DialogsActivity$13;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v7}, Lorg/telegram/ui/DialogsActivity;->isArchive()Z

    move-result v7

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/Components/FilterTabsView$TabView;->getId()I

    move-result v8

    invoke-static {v7, v8}, Lcom/iMe/fork/enums/SortingFilter;->isSortingFilter(ZI)Z

    move-result v7

    .line 5291
    iget-object v8, v0, Lorg/telegram/ui/DialogsActivity$13;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v8}, Lorg/telegram/ui/DialogsActivity;->isArchive()Z

    move-result v8

    if-nez v8, :cond_5

    if-nez v6, :cond_5

    if-nez v7, :cond_5

    move v8, v5

    goto :goto_2

    :cond_5
    move v8, v3

    .line 5292
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/Components/FilterTabsView$TabView;->getId()I

    move-result v9

    invoke-static {v9}, Lorg/telegram/ui/DialogsActivity;->isAlbumsDialogsType(I)Z

    move-result v15

    new-array v14, v5, [Z

    aput-boolean v5, v14, v3

    .line 5297
    new-instance v13, Ljava/util/ArrayList;

    iget-object v9, v0, Lorg/telegram/ui/DialogsActivity$13;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v9}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v9

    if-eqz v6, :cond_6

    iget-object v10, v0, Lorg/telegram/ui/DialogsActivity$13;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v10}, Lorg/telegram/ui/DialogsActivity;->access$7700(Lorg/telegram/ui/DialogsActivity;)I

    move-result v10

    invoke-virtual {v9, v10}, Lorg/telegram/messenger/MessagesController;->getDialogs(I)Ljava/util/ArrayList;

    move-result-object v9

    goto :goto_3

    :cond_6
    invoke-virtual {v9}, Lorg/telegram/messenger/MessagesController;->getAllDialogs()Ljava/util/ArrayList;

    move-result-object v9

    :goto_3
    invoke-direct {v13, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    if-eqz v2, :cond_12

    .line 5301
    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity$13;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/Components/FilterTabsView$TabView;->getId()I

    move-result v9

    invoke-static {v4, v9}, Lorg/telegram/ui/DialogsActivity;->access$26000(Lorg/telegram/ui/DialogsActivity;I)Lorg/telegram/messenger/MessagesController$DialogFilter;

    move-result-object v4

    if-eqz v4, :cond_d

    move v11, v3

    .line 5303
    :goto_4
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v11, v12, :cond_8

    .line 5304
    iget-object v12, v0, Lorg/telegram/ui/DialogsActivity$13;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v12}, Lorg/telegram/ui/ActionBar/BaseFragment;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;

    move-result-object v12

    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v3, v16

    check-cast v3, Lorg/telegram/tgnet/TLRPC$Dialog;

    iget-wide v9, v3, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    invoke-virtual {v4, v12, v9, v10}, Lorg/telegram/messenger/MessagesController$DialogFilter;->includesDialog(Lorg/telegram/messenger/AccountInstance;J)Z

    move-result v3

    if-nez v3, :cond_7

    .line 5305
    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v11, v11, -0x1

    :cond_7
    add-int/2addr v11, v5

    const/4 v3, 0x0

    goto :goto_4

    :cond_8
    if-eqz v7, :cond_a

    :cond_9
    const/4 v3, 0x0

    goto :goto_5

    .line 5313
    :cond_a
    invoke-virtual {v4}, Lorg/telegram/messenger/MessagesController$DialogFilter;->isChatlist()Z

    move-result v3

    if-nez v3, :cond_b

    iget-object v3, v4, Lorg/telegram/messenger/MessagesController$DialogFilter;->neverShow:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_9

    iget v3, v4, Lorg/telegram/messenger/MessagesController$DialogFilter;->flags:I

    sget v9, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_CHATLIST:I

    sget v10, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_CHATLIST_ADMIN:I

    or-int/2addr v9, v10

    not-int v9, v9

    and-int/2addr v3, v9

    if-nez v3, :cond_9

    :cond_b
    move v3, v5

    :goto_5
    if-eqz v3, :cond_e

    const/4 v9, 0x0

    .line 5315
    :goto_6
    iget-object v10, v4, Lorg/telegram/messenger/MessagesController$DialogFilter;->alwaysShow:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v9, v10, :cond_e

    .line 5316
    iget-object v10, v4, Lorg/telegram/messenger/MessagesController$DialogFilter;->alwaysShow:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    const-wide/16 v16, 0x0

    cmp-long v12, v10, v16

    if-gez v12, :cond_c

    .line 5318
    iget-object v12, v0, Lorg/telegram/ui/DialogsActivity$13;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v12}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v12

    neg-long v10, v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v12, v10}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v10

    if-eqz v10, :cond_c

    .line 5319
    invoke-static {v10}, Lorg/telegram/ui/FilterCreateActivity;->canAddToFolder(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v10

    if-eqz v10, :cond_c

    const/4 v10, 0x0

    aput-boolean v10, v14, v10

    goto :goto_7

    :cond_c
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    :cond_d
    const/4 v3, 0x0

    .line 5328
    :cond_e
    :goto_7
    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_11

    const/4 v9, 0x0

    .line 5330
    :goto_8
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v9, v10, :cond_10

    .line 5331
    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/tgnet/TLRPC$Dialog;

    .line 5332
    iget-object v11, v0, Lorg/telegram/ui/DialogsActivity$13;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v11}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v11

    move/from16 v18, v6

    iget-wide v5, v10, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    move v12, v3

    move-object v10, v4

    const-wide/16 v3, 0x0

    invoke-virtual {v11, v5, v6, v3, v4}, Lorg/telegram/messenger/MessagesController;->isDialogMuted(JJ)Z

    move-result v5

    if-nez v5, :cond_f

    const/4 v3, 0x0

    goto :goto_9

    :cond_f
    add-int/lit8 v9, v9, 0x1

    move-object v4, v10

    move v3, v12

    move/from16 v6, v18

    const/4 v5, 0x1

    goto :goto_8

    :cond_10
    move v12, v3

    move-object v10, v4

    move/from16 v18, v6

    const/4 v3, 0x1

    :goto_9
    const/4 v4, 0x1

    xor-int/2addr v3, v4

    move-object v4, v10

    move v5, v12

    goto :goto_a

    :cond_11
    move v12, v3

    move-object v10, v4

    move/from16 v18, v6

    move v5, v12

    const/4 v3, 0x0

    goto :goto_a

    :cond_12
    move/from16 v18, v6

    const/4 v3, 0x0

    const/4 v5, 0x0

    :goto_a
    const/4 v6, 0x0

    const/16 v20, 0x0

    .line 5343
    :goto_b
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v6, v9, :cond_15

    .line 5344
    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/tgnet/TLRPC$Dialog;

    iget-boolean v9, v9, Lorg/telegram/tgnet/TLRPC$Dialog;->unread_mark:Z

    if-nez v9, :cond_13

    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/tgnet/TLRPC$Dialog;

    iget v9, v9, Lorg/telegram/tgnet/TLRPC$Dialog;->unread_count:I

    if-lez v9, :cond_14

    :cond_13
    const/16 v20, 0x1

    :cond_14
    add-int/lit8 v6, v6, 0x1

    goto :goto_b

    .line 5349
    :cond_15
    iget-object v6, v0, Lorg/telegram/ui/DialogsActivity$13;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v6, v1}, Lorg/telegram/ui/Components/ItemOptions;->makeOptions(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v9

    const/4 v10, 0x6

    .line 5350
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    iget-object v11, v0, Lorg/telegram/ui/DialogsActivity$13;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v11}, Lorg/telegram/ui/DialogsActivity;->isArchive()Z

    move-result v11

    if-eqz v11, :cond_16

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultArchived:I

    goto :goto_c

    :cond_16
    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefault:I

    :goto_c
    invoke-static {v11}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v11

    const/4 v12, 0x0

    invoke-static {v10, v12, v11}, Lorg/telegram/ui/ActionBar/Theme;->createRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/telegram/ui/Components/ItemOptions;->setScrimViewBackground(Landroid/graphics/drawable/Drawable;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v9

    .line 5351
    invoke-virtual {v9}, Lorg/telegram/ui/Components/ItemOptions;->addFuturePlacement()Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v9

    if-eqz v18, :cond_17

    iget-object v10, v0, Lorg/telegram/ui/DialogsActivity$13;->this$0:Lorg/telegram/ui/DialogsActivity;

    .line 5352
    invoke-virtual {v10}, Lorg/telegram/ui/DialogsActivity;->isArchive()Z

    move-result v10

    if-nez v10, :cond_19

    :cond_17
    if-eqz v7, :cond_18

    iget-object v10, v0, Lorg/telegram/ui/DialogsActivity$13;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v10}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFiltersController()Lcom/iMe/fork/controller/FiltersController;

    move-result-object v10

    iget-object v11, v0, Lorg/telegram/ui/DialogsActivity$13;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v11}, Lorg/telegram/ui/DialogsActivity;->isArchive()Z

    move-result v11

    invoke-virtual {v10, v11}, Lcom/iMe/fork/controller/FiltersController;->getActiveSortingTabsCount(Z)I

    move-result v10

    const/4 v11, 0x1

    if-le v10, v11, :cond_19

    :cond_18
    iget-object v10, v0, Lorg/telegram/ui/DialogsActivity$13;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v10}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFiltersController()Lcom/iMe/fork/controller/FiltersController;

    move-result-object v10

    invoke-virtual {v10}, Lcom/iMe/fork/controller/FiltersController;->isFoldersHidden()Z

    move-result v10

    if-nez v10, :cond_19

    iget-object v10, v0, Lorg/telegram/ui/DialogsActivity$13;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v10}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v10

    invoke-virtual {v10}, Lorg/telegram/messenger/MessagesController;->getDialogFilters()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/4 v11, 0x1

    if-le v10, v11, :cond_19

    const/4 v10, 0x1

    goto :goto_d

    :cond_19
    const/4 v10, 0x0

    :goto_d
    sget v11, Lorg/telegram/messenger/R$drawable;->tabs_reorder:I

    sget v12, Lorg/telegram/messenger/R$string;->FilterReorder:I

    move-object/from16 v16, v13

    const-string v13, "FilterReorder"

    invoke-static {v13, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    new-instance v13, Lorg/telegram/ui/DialogsActivity$13$$ExternalSyntheticLambda9;

    invoke-direct {v13, v0, v7}, Lorg/telegram/ui/DialogsActivity$13$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/DialogsActivity$13;Z)V

    invoke-virtual {v9, v10, v11, v12, v13}, Lorg/telegram/ui/Components/ItemOptions;->addIf(ZILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v9

    iget-object v10, v0, Lorg/telegram/ui/DialogsActivity$13;->this$0:Lorg/telegram/ui/DialogsActivity;

    .line 5364
    invoke-virtual {v10}, Lorg/telegram/ui/DialogsActivity;->isArchive()Z

    move-result v10

    if-nez v10, :cond_1a

    iget-object v10, v0, Lorg/telegram/ui/DialogsActivity$13;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v10}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v10

    iget-object v10, v10, Lorg/telegram/messenger/MessagesController;->dialogFilters:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    iget-object v11, v0, Lorg/telegram/ui/DialogsActivity$13;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v11}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v11

    iget v11, v11, Lorg/telegram/messenger/MessagesController;->dialogFiltersLimitPremium:I

    if-ge v10, v11, :cond_1a

    const/4 v10, 0x1

    goto :goto_e

    :cond_1a
    const/4 v10, 0x0

    :goto_e
    sget v11, Lorg/telegram/messenger/R$drawable;->fork_create_folder:I

    sget v12, Lorg/telegram/messenger/R$string;->dialogs_tab_popup_create_folder:I

    invoke-static {v12}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v12

    new-instance v13, Lorg/telegram/ui/DialogsActivity$13$$ExternalSyntheticLambda1;

    invoke-direct {v13, v0}, Lorg/telegram/ui/DialogsActivity$13$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/DialogsActivity$13;)V

    invoke-virtual {v9, v10, v11, v12, v13}, Lorg/telegram/ui/Components/ItemOptions;->addIf(ZILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v9

    xor-int/lit8 v10, v8, 0x1

    sget v11, Lorg/telegram/messenger/R$drawable;->msg_settings:I

    sget v12, Lorg/telegram/messenger/R$string;->dialogs_tab_popup_sorting_settings:I

    .line 5371
    invoke-static {v12}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v12

    new-instance v13, Lorg/telegram/ui/DialogsActivity$13$$ExternalSyntheticLambda3;

    invoke-direct {v13, v0}, Lorg/telegram/ui/DialogsActivity$13$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/DialogsActivity$13;)V

    invoke-virtual {v9, v10, v11, v12, v13}, Lorg/telegram/ui/Components/ItemOptions;->addIf(ZILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v9

    sget v10, Lorg/telegram/messenger/R$drawable;->msg_edit:I

    if-eqz v18, :cond_1b

    .line 5373
    sget v11, Lorg/telegram/messenger/R$string;->FilterEditAll:I

    const-string v12, "FilterEditAll"

    goto :goto_f

    :cond_1b
    sget v11, Lorg/telegram/messenger/R$string;->FilterEdit:I

    const-string v12, "FilterEdit"

    :goto_f
    invoke-static {v12, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Lorg/telegram/ui/DialogsActivity$13$$ExternalSyntheticLambda10;

    move/from16 v13, v18

    invoke-direct {v12, v0, v13, v2}, Lorg/telegram/ui/DialogsActivity$13$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/DialogsActivity$13;ZLorg/telegram/messenger/MessagesController$DialogFilter;)V

    const/16 v17, 0x0

    move-object/from16 v18, v6

    move v6, v13

    move v13, v8

    move-object v1, v14

    move/from16 v14, v17

    invoke-virtual/range {v9 .. v14}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;Ljava/lang/Runnable;ZZ)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v9

    if-nez v15, :cond_1c

    if-eqz v2, :cond_1c

    .line 5376
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_1c

    const/4 v10, 0x1

    goto :goto_10

    :cond_1c
    const/4 v10, 0x0

    :goto_10
    if-eqz v3, :cond_1d

    sget v11, Lorg/telegram/messenger/R$drawable;->msg_mute:I

    goto :goto_11

    :cond_1d
    sget v11, Lorg/telegram/messenger/R$drawable;->msg_unmute:I

    :goto_11
    if-eqz v3, :cond_1e

    sget v12, Lorg/telegram/messenger/R$string;->FilterMuteAll:I

    const-string v13, "FilterMuteAll"

    goto :goto_12

    :cond_1e
    sget v12, Lorg/telegram/messenger/R$string;->FilterUnmuteAll:I

    const-string v13, "FilterUnmuteAll"

    :goto_12
    invoke-static {v13, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    new-instance v13, Lorg/telegram/ui/DialogsActivity$13$$ExternalSyntheticLambda5;

    move-object/from16 v14, v16

    invoke-direct {v13, v0, v14, v3}, Lorg/telegram/ui/DialogsActivity$13$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/DialogsActivity$13;Ljava/util/ArrayList;Z)V

    invoke-virtual {v9, v10, v11, v12, v13}, Lorg/telegram/ui/Components/ItemOptions;->addIf(ZILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v19

    sget v21, Lorg/telegram/messenger/R$drawable;->msg_markread:I

    sget v3, Lorg/telegram/messenger/R$string;->MarkAllAsRead:I

    const-string v9, "MarkAllAsRead"

    .line 5387
    invoke-static {v9, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v22

    new-instance v3, Lorg/telegram/ui/DialogsActivity$13$$ExternalSyntheticLambda4;

    invoke-direct {v3, v0, v14}, Lorg/telegram/ui/DialogsActivity$13$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/DialogsActivity$13;Ljava/util/ArrayList;)V

    const/16 v24, 0x1

    move-object/from16 v23, v3

    invoke-virtual/range {v19 .. v24}, Lorg/telegram/ui/Components/ItemOptions;->addIf(ZILjava/lang/CharSequence;Ljava/lang/Runnable;Z)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v3

    sget v9, Lorg/telegram/messenger/R$drawable;->msg_share:I

    if-eqz v4, :cond_1f

    .line 5390
    invoke-virtual {v4}, Lorg/telegram/messenger/MessagesController$DialogFilter;->isMyChatlist()Z

    move-result v10

    if-eqz v10, :cond_1f

    const/4 v10, -0x1

    goto :goto_13

    :cond_1f
    const/4 v10, 0x0

    :goto_13
    sget v11, Lorg/telegram/messenger/R$string;->LinkActionShare:I

    const-string v12, "LinkActionShare"

    invoke-static {v12, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    invoke-static {v10, v11, v12}, Lorg/telegram/ui/FilterCreateActivity;->withNew(ILjava/lang/CharSequence;Z)Ljava/lang/CharSequence;

    move-result-object v10

    new-instance v11, Lorg/telegram/ui/DialogsActivity$13$$ExternalSyntheticLambda12;

    invoke-direct {v11, v0, v1, v4}, Lorg/telegram/ui/DialogsActivity$13$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/DialogsActivity$13;[ZLorg/telegram/messenger/MessagesController$DialogFilter;)V

    invoke-virtual {v3, v5, v9, v10, v11}, Lorg/telegram/ui/Components/ItemOptions;->addIf(ZILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v1

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_stories_stealth:I

    sget v4, Lorg/telegram/messenger/R$string;->HideOnTop:I

    const-string v5, "HideOnTop"

    .line 5398
    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lorg/telegram/ui/DialogsActivity$13$$ExternalSyntheticLambda8;

    invoke-direct {v5, v0, v2}, Lorg/telegram/ui/DialogsActivity$13$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/DialogsActivity$13;Lorg/telegram/messenger/MessagesController$DialogFilter;)V

    invoke-virtual {v1, v8, v3, v4, v5}, Lorg/telegram/ui/Components/ItemOptions;->addIf(ZILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v9

    if-nez v6, :cond_20

    if-nez v7, :cond_20

    const/4 v10, 0x1

    goto :goto_14

    :cond_20
    const/4 v10, 0x0

    :goto_14
    sget v11, Lorg/telegram/messenger/R$drawable;->msg_delete:I

    sget v1, Lorg/telegram/messenger/R$string;->FilterDeleteItem:I

    const-string v3, "FilterDeleteItem"

    .line 5406
    invoke-static {v3, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    new-instance v14, Lorg/telegram/ui/DialogsActivity$13$$ExternalSyntheticLambda7;

    invoke-direct {v14, v0, v2}, Lorg/telegram/ui/DialogsActivity$13$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/DialogsActivity$13;Lorg/telegram/messenger/MessagesController$DialogFilter;)V

    invoke-virtual/range {v9 .. v14}, Lorg/telegram/ui/Components/ItemOptions;->addIf(ZILjava/lang/CharSequence;ZLjava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v1

    if-nez v8, :cond_22

    if-eqz v6, :cond_21

    iget-object v2, v0, Lorg/telegram/ui/DialogsActivity$13;->this$0:Lorg/telegram/ui/DialogsActivity;

    .line 5410
    invoke-virtual {v2}, Lorg/telegram/ui/DialogsActivity;->isArchive()Z

    move-result v2

    if-nez v2, :cond_22

    iget-object v2, v0, Lorg/telegram/ui/DialogsActivity$13;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFiltersController()Lcom/iMe/fork/controller/FiltersController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iMe/fork/controller/FiltersController;->isAllChatsTabEnabled()Z

    move-result v2

    if-eqz v2, :cond_22

    iget-object v2, v0, Lorg/telegram/ui/DialogsActivity$13;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$800(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FilterTabsView;

    move-result-object v2

    if-eqz v2, :cond_22

    iget-object v2, v0, Lorg/telegram/ui/DialogsActivity$13;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$800(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FilterTabsView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/FilterTabsView;->getTabsCount()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_22

    :cond_21
    const/4 v3, 0x1

    goto :goto_15

    :cond_22
    const/4 v3, 0x0

    :goto_15
    sget v2, Lorg/telegram/messenger/R$drawable;->msg_disable:I

    sget v4, Lorg/telegram/messenger/R$string;->dialogs_tab_popup_disable:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lorg/telegram/ui/DialogsActivity$13$$ExternalSyntheticLambda11;

    move-object/from16 v8, p1

    invoke-direct {v5, v0, v6, v7, v8}, Lorg/telegram/ui/DialogsActivity$13$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/DialogsActivity$13;ZZLorg/telegram/ui/Components/FilterTabsView$TabView;)V

    invoke-virtual {v1, v3, v2, v4, v5}, Lorg/telegram/ui/Components/ItemOptions;->addIf(ZILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v1

    const/4 v2, 0x3

    .line 5432
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/ItemOptions;->setGravity(I)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v1

    const/4 v2, -0x8

    .line 5433
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$13;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->access$5700(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v3

    if-eqz v3, :cond_23

    const/16 v3, 0xa

    goto :goto_16

    :cond_23
    const/16 v3, -0xa

    :goto_16
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/Components/ItemOptions;->translate(FF)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v1

    .line 5434
    invoke-virtual {v1}, Lorg/telegram/ui/Components/ItemOptions;->show()Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v1

    move-object/from16 v2, v18

    .line 5349
    invoke-static {v2, v1}, Lorg/telegram/ui/DialogsActivity;->access$25902(Lorg/telegram/ui/DialogsActivity;Lorg/telegram/ui/Components/ItemOptions;)Lorg/telegram/ui/Components/ItemOptions;

    const/4 v1, 0x1

    return v1

    :cond_24
    :goto_17
    move v1, v3

    return v1

    :cond_25
    :goto_18
    move v1, v3

    return v1
.end method

.method public getTabCounter(I)I
    .locals 3

    .line 5226
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$13;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$11600(Lorg/telegram/ui/DialogsActivity;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_a

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->isAlbumsDialogsType(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 5230
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$13;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/DialogsActivity;->isArchive()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$13;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$800(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FilterTabsView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/FilterTabsView;->getDefaultTabId()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 5231
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$13;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesStorage;->getArchiveUnreadCount()I

    move-result p1

    return p1

    .line 5233
    :cond_1
    sget v0, Lorg/telegram/ui/DialogsActivity;->DIALOGS_TYPE_DRAFTS:I

    if-ne p1, v0, :cond_2

    .line 5234
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$13;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MediaDataController;->getDrafts()Landroidx/collection/LongSparseArray;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/collection/LongSparseArray;->size()I

    move-result p1

    return p1

    .line 5237
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$13;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$800(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FilterTabsView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/FilterTabsView;->getDefaultTabId()I

    move-result v0

    if-ne p1, v0, :cond_3

    .line 5238
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$13;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesStorage;->getMainUnreadCount()I

    move-result p1

    return p1

    .line 5241
    :cond_3
    invoke-static {v1, p1}, Lcom/iMe/fork/enums/SortingFilter;->isSortingFilter(ZI)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_7

    invoke-static {v2, p1}, Lcom/iMe/fork/enums/SortingFilter;->isSortingFilter(ZI)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    .line 5257
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$13;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getDialogFilters()Ljava/util/ArrayList;

    move-result-object v0

    if-ltz p1, :cond_6

    .line 5258
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_5

    goto :goto_0

    .line 5261
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$13;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getDialogFilters()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/MessagesController$DialogFilter;

    iget p1, p1, Lorg/telegram/messenger/MessagesController$DialogFilter;->unreadCount:I

    return p1

    :cond_6
    :goto_0
    return v1

    .line 5244
    :cond_7
    :goto_1
    invoke-static {v2, p1}, Lcom/iMe/fork/enums/SortingFilter;->isSortingFilter(ZI)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 5245
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$13;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->archiveSortingDialogFilters:Ljava/util/ArrayList;

    .line 5246
    invoke-static {v2, p1}, Lcom/iMe/fork/enums/SortingFilter;->removeExtraFromId(ZI)I

    move-result p1

    goto :goto_2

    .line 5248
    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$13;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->sortingDialogFilters:Ljava/util/ArrayList;

    .line 5249
    invoke-static {v1, p1}, Lcom/iMe/fork/enums/SortingFilter;->removeExtraFromId(ZI)I

    move-result p1

    :goto_2
    if-ltz p1, :cond_a

    .line 5251
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt p1, v2, :cond_9

    goto :goto_3

    .line 5254
    :cond_9
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/MessagesController$DialogFilter;

    iget p1, p1, Lorg/telegram/messenger/MessagesController$DialogFilter;->unreadCount:I

    return p1

    :cond_a
    :goto_3
    return v1
.end method

.method public isTabMenuVisible()Z
    .locals 1

    .line 5441
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$13;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$25900(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$13;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$25900(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/ItemOptions;

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

.method public onDeletePressed(I)V
    .locals 1

    if-ltz p1, :cond_1

    .line 5447
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$13;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getDialogFilters()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 5451
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$13;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getDialogFilters()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/MessagesController$DialogFilter;

    invoke-direct {p0, p1}, Lorg/telegram/ui/DialogsActivity$13;->showDeleteAlert(Lorg/telegram/messenger/MessagesController$DialogFilter;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onPageReorder(II)V
    .locals 2

    const/4 v0, 0x0

    .line 5143
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$13;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$1000(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 5144
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$13;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$1000(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$000(Lorg/telegram/ui/DialogsActivity$ViewPage;)I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 5145
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$13;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$1000(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-static {v1, p2}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$002(Lorg/telegram/ui/DialogsActivity$ViewPage;I)I

    goto :goto_1

    .line 5146
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$13;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$1000(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$000(Lorg/telegram/ui/DialogsActivity$ViewPage;)I

    move-result v1

    if-ne v1, p2, :cond_1

    .line 5147
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$13;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$1000(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-static {v1, p1}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$002(Lorg/telegram/ui/DialogsActivity$ViewPage;I)I

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onPageScrolled(F)V
    .locals 6

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 5200
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$13;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$1000(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$13;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$13700(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 5203
    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$13;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$4900(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 5204
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$13;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$1000(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v2

    aget-object v2, v2, v3

    neg-float v4, p1

    iget-object v5, p0, Lorg/telegram/ui/DialogsActivity$13;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v5}, Lorg/telegram/ui/DialogsActivity;->access$1000(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v5

    aget-object v5, v5, v3

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 5205
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$13;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$1000(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v2

    aget-object v2, v2, v1

    iget-object v4, p0, Lorg/telegram/ui/DialogsActivity$13;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v4}, Lorg/telegram/ui/DialogsActivity;->access$1000(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v4

    aget-object v4, v4, v3

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lorg/telegram/ui/DialogsActivity$13;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v5}, Lorg/telegram/ui/DialogsActivity;->access$1000(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v5

    aget-object v5, v5, v3

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr p1, v5

    sub-float/2addr v4, p1

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    goto :goto_0

    .line 5207
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$13;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$1000(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v2

    aget-object v2, v2, v3

    iget-object v4, p0, Lorg/telegram/ui/DialogsActivity$13;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v4}, Lorg/telegram/ui/DialogsActivity;->access$1000(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v4

    aget-object v4, v4, v3

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, p1

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 5208
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$13;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$1000(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v2

    aget-object v2, v2, v1

    iget-object v4, p0, Lorg/telegram/ui/DialogsActivity$13;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v4}, Lorg/telegram/ui/DialogsActivity;->access$1000(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v4

    aget-object v4, v4, v3

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr p1, v4

    iget-object v4, p0, Lorg/telegram/ui/DialogsActivity$13;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v4}, Lorg/telegram/ui/DialogsActivity;->access$1000(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v4

    aget-object v4, v4, v3

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr p1, v4

    invoke-virtual {v2, p1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    :goto_0
    if-nez v0, :cond_2

    .line 5211
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$13;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$1000(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object p1

    aget-object p1, p1, v3

    .line 5212
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$13;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$1000(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$13;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$1000(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v2

    aget-object v2, v2, v1

    aput-object v2, v0, v3

    .line 5213
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$13;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$1000(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v0

    aput-object p1, v0, v1

    .line 5214
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$13;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$1000(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object p1

    aget-object p1, p1, v1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 5215
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$13;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1, v1}, Lorg/telegram/ui/DialogsActivity;->access$5000(Lorg/telegram/ui/DialogsActivity;Z)V

    .line 5216
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$13;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1, v3}, Lorg/telegram/ui/DialogsActivity;->access$15000(Lorg/telegram/ui/DialogsActivity;Z)V

    .line 5217
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$13;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$800(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FilterTabsView;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/FilterTabsView;->stopAnimatingIndicator()V

    .line 5218
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$13;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$1000(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v0

    aget-object v0, v0, v3

    invoke-static {p1, v0}, Lorg/telegram/ui/DialogsActivity;->access$15400(Lorg/telegram/ui/DialogsActivity;Lorg/telegram/ui/DialogsActivity$ViewPage;)V

    .line 5219
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$13;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$1000(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object p1

    aget-object p1, p1, v3

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$1100(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Adapters/DialogsAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Adapters/DialogsAdapter;->resume()V

    .line 5220
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$13;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$1000(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object p1

    aget-object p1, p1, v1

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$1100(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Adapters/DialogsAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Adapters/DialogsAdapter;->pause()V

    :cond_2
    return-void
.end method

.method public onPageSelected(Lorg/telegram/ui/Components/FilterTabsView$Tab;Z)V
    .locals 6

    .line 5154
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$13;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$1000(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$000(Lorg/telegram/ui/DialogsActivity$ViewPage;)I

    move-result v0

    iget v2, p1, Lorg/telegram/ui/Components/FilterTabsView$Tab;->id:I

    if-ne v0, v2, :cond_0

    return-void

    .line 5157
    :cond_0
    iget-boolean v0, p1, Lorg/telegram/ui/Components/FilterTabsView$Tab;->isLocked:Z

    if-eqz v0, :cond_1

    .line 5158
    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$13;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p2}, Lorg/telegram/ui/DialogsActivity;->access$800(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FilterTabsView;

    move-result-object p2

    iget p1, p1, Lorg/telegram/ui/Components/FilterTabsView$Tab;->id:I

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/FilterTabsView;->shakeLock(I)V

    .line 5159
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$13;->this$0:Lorg/telegram/ui/DialogsActivity;

    new-instance p2, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$13;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$13;->val$context:Landroid/content/Context;

    const/4 v3, 0x3

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$25700(Lorg/telegram/ui/DialogsActivity;)I

    move-result v4

    const/4 v5, 0x0

    move-object v0, p2

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void

    .line 5163
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$13;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getDialogFilters()Ljava/util/ArrayList;

    move-result-object v0

    .line 5165
    iget v2, p1, Lorg/telegram/ui/Components/FilterTabsView$Tab;->id:I

    invoke-static {v1, v2}, Lcom/iMe/fork/enums/SortingFilter;->isSortingFilter(ZI)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    .line 5166
    iget v0, p1, Lorg/telegram/ui/Components/FilterTabsView$Tab;->id:I

    invoke-static {v1, v0}, Lcom/iMe/fork/enums/SortingFilter;->removeExtraFromId(ZI)I

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$13;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController;->sortingDialogFilters:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_5

    return-void

    .line 5169
    :cond_2
    iget v2, p1, Lorg/telegram/ui/Components/FilterTabsView$Tab;->id:I

    invoke-static {v3, v2}, Lcom/iMe/fork/enums/SortingFilter;->isSortingFilter(ZI)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 5170
    iget v0, p1, Lorg/telegram/ui/Components/FilterTabsView$Tab;->id:I

    invoke-static {v3, v0}, Lcom/iMe/fork/enums/SortingFilter;->removeExtraFromId(ZI)I

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$13;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController;->archiveSortingDialogFilters:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_5

    return-void

    .line 5174
    :cond_3
    iget-boolean v2, p1, Lorg/telegram/ui/Components/FilterTabsView$Tab;->isDefault:Z

    if-nez v2, :cond_5

    iget v2, p1, Lorg/telegram/ui/Components/FilterTabsView$Tab;->id:I

    if-ltz v2, :cond_4

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v2, v0, :cond_5

    :cond_4
    iget v0, p1, Lorg/telegram/ui/Components/FilterTabsView$Tab;->id:I

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->isAlbumsDialogsType(I)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$13;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/DialogsActivity;->isArchive()Z

    move-result v0

    if-nez v0, :cond_5

    return-void

    .line 5177
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$13;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget v2, p1, Lorg/telegram/ui/Components/FilterTabsView$Tab;->id:I

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$800(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FilterTabsView;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/Components/FilterTabsView;->getFirstTabId()I

    move-result v4

    if-ne v2, v4, :cond_6

    move v2, v3

    goto :goto_0

    :cond_6
    move v2, v1

    :goto_0
    invoke-static {v0, v2}, Lorg/telegram/ui/DialogsActivity;->access$15102(Lorg/telegram/ui/DialogsActivity;Z)Z

    .line 5178
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$13;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$15200(Lorg/telegram/ui/DialogsActivity;)V

    .line 5180
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$13;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$1000(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v0

    aget-object v0, v0, v3

    iget p1, p1, Lorg/telegram/ui/Components/FilterTabsView$Tab;->id:I

    invoke-static {v0, p1}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$002(Lorg/telegram/ui/DialogsActivity$ViewPage;I)I

    .line 5181
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$13;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$1000(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object p1

    aget-object p1, p1, v3

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 5182
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$13;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$1000(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object p1

    aget-object p1, p1, v3

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$13;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$1000(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 5183
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$13;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1, v1}, Lorg/telegram/ui/DialogsActivity;->access$5000(Lorg/telegram/ui/DialogsActivity;Z)V

    .line 5184
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$13;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {p1, v3}, Lorg/telegram/ui/DialogsActivity;->switchToCurrentSelectedMode(Z)V

    .line 5185
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$13;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1, p2}, Lorg/telegram/ui/DialogsActivity;->access$4902(Lorg/telegram/ui/DialogsActivity;Z)Z

    return-void
.end method

.method public onSamePageSelected()V
    .locals 3

    .line 5137
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$13;->this$0:Lorg/telegram/ui/DialogsActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/DialogsActivity;->access$25500(Lorg/telegram/ui/DialogsActivity;Z)V

    .line 5138
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$13;->this$0:Lorg/telegram/ui/DialogsActivity;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lorg/telegram/ui/DialogsActivity;->scrollToTop(ZZ)V

    return-void
.end method

.method public onSwipeProgressChanged(F)V
    .locals 7

    .line 5070
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$13;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/DialogsActivity;->isMainDialogList()Z

    move-result v0

    if-eqz v0, :cond_8

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v0

    if-nez v1, :cond_0

    goto/16 :goto_3

    .line 5073
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$13;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$1000(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-static {v1, v2}, Lorg/telegram/ui/DialogsActivity;->access$25300(Lorg/telegram/ui/DialogsActivity;Lorg/telegram/ui/DialogsActivity$ViewPage;)Ljava/util/List;

    move-result-object v1

    .line 5074
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$13;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$1000(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v4, v4, v5

    invoke-static {v2, v4}, Lorg/telegram/ui/DialogsActivity;->access$25300(Lorg/telegram/ui/DialogsActivity;Lorg/telegram/ui/DialogsActivity$ViewPage;)Ljava/util/List;

    move-result-object v2

    .line 5075
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v6, 0x0

    if-le v4, v5, :cond_1

    move-object v1, v6

    goto :goto_0

    :cond_1
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iMe/storage/domain/model/filters/FilterFab;

    .line 5076
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v5, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/iMe/storage/domain/model/filters/FilterFab;

    :goto_1
    if-eq v1, v6, :cond_8

    const/high16 v2, 0x3f000000    # 0.5f

    cmpg-float v2, p1, v2

    if-gez v2, :cond_3

    move v3, v5

    .line 5079
    :cond_3
    iget-object v4, p0, Lorg/telegram/ui/DialogsActivity$13;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v4}, Lorg/telegram/ui/DialogsActivity;->access$25600(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v4

    if-eq v4, v3, :cond_7

    .line 5080
    iget-object v4, p0, Lorg/telegram/ui/DialogsActivity$13;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v4, v3}, Lorg/telegram/ui/DialogsActivity;->access$25602(Lorg/telegram/ui/DialogsActivity;Z)Z

    if-gez v2, :cond_5

    if-nez v1, :cond_4

    .line 5083
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$13;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$25400(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$drawable;->ic_ab_other:I

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RLottieImageView;->setImageResource(I)V

    goto :goto_2

    .line 5085
    :cond_4
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$13;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$25400(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/iMe/utils/extentions/model/filter/FilterFabExtKt;->bindBig(Lcom/iMe/storage/domain/model/filters/FilterFab;Lorg/telegram/ui/Components/RLottieImageView;)V

    goto :goto_2

    :cond_5
    if-nez v6, :cond_6

    .line 5089
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$13;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$25400(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$drawable;->ic_ab_other:I

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RLottieImageView;->setImageResource(I)V

    goto :goto_2

    .line 5091
    :cond_6
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$13;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$25400(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/iMe/utils/extentions/model/filter/FilterFabExtKt;->bindBig(Lcom/iMe/storage/domain/model/filters/FilterFab;Lorg/telegram/ui/Components/RLottieImageView;)V

    :cond_7
    :goto_2
    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr p1, v1

    sub-float/2addr v0, p1

    .line 5095
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    .line 5096
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$13;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$4100(Lorg/telegram/ui/DialogsActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 5097
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$13;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$4100(Lorg/telegram/ui/DialogsActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setScaleY(F)V

    .line 5098
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$13;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$4100(Lorg/telegram/ui/DialogsActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    :cond_8
    :goto_3
    return-void
.end method

.method public onTabSelected(I)V
    .locals 4

    .line 5044
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$13;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/DialogsActivity;->isMainDialogList()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$13;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$1000(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$000(Lorg/telegram/ui/DialogsActivity$ViewPage;)I

    move-result v0

    if-ne p1, v0, :cond_0

    goto/16 :goto_2

    .line 5047
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$13;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$4000(Lorg/telegram/ui/DialogsActivity;)Lcom/iMe/ui/multifab/MiniFabsContainer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5048
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$13;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$4000(Lorg/telegram/ui/DialogsActivity;)Lcom/iMe/ui/multifab/MiniFabsContainer;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5050
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$13;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$1000(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-static {v0, v2}, Lorg/telegram/ui/DialogsActivity;->access$25300(Lorg/telegram/ui/DialogsActivity;Lorg/telegram/ui/DialogsActivity$ViewPage;)Ljava/util/List;

    move-result-object v0

    .line 5051
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$13;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$4000(Lorg/telegram/ui/DialogsActivity;)Lcom/iMe/ui/multifab/MiniFabsContainer;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v3, :cond_2

    .line 5052
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$13;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$25400(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$drawable;->ic_ab_other:I

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RLottieImageView;->setImageResource(I)V

    .line 5053
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$13;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$4000(Lorg/telegram/ui/DialogsActivity;)Lcom/iMe/ui/multifab/MiniFabsContainer;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/iMe/ui/multifab/MiniFabsContainer;->setFabs(Ljava/util/List;)V

    goto :goto_0

    .line 5055
    :cond_2
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/storage/domain/model/filters/FilterFab;

    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$13;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$25400(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/iMe/utils/extentions/model/filter/FilterFabExtKt;->bindBig(Lcom/iMe/storage/domain/model/filters/FilterFab;Lorg/telegram/ui/Components/RLottieImageView;)V

    .line 5057
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$13;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0, v1}, Lorg/telegram/ui/DialogsActivity;->access$25500(Lorg/telegram/ui/DialogsActivity;Z)V

    .line 5058
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$13;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/DialogsActivity;->isMainNoFolderDialogList()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 5059
    invoke-static {v1, p1}, Lcom/iMe/fork/enums/SortingFilter;->isSortingFilter(ZI)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5060
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$13;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getForkCommonController()Lcom/iMe/fork/controller/ForkCommonController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/iMe/fork/controller/ForkCommonController;->setLastFilterTab(I)V

    goto :goto_1

    :cond_3
    if-ltz p1, :cond_4

    .line 5061
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$13;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogFilters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_4

    .line 5062
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$13;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getForkCommonController()Lcom/iMe/fork/controller/ForkCommonController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$13;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController;->dialogFilters:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/MessagesController$DialogFilter;

    iget p1, p1, Lorg/telegram/messenger/MessagesController$DialogFilter;->id:I

    invoke-virtual {v0, p1}, Lcom/iMe/fork/controller/ForkCommonController;->setLastFilterTab(I)V

    .line 5064
    :cond_4
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$13;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getForkCommonController()Lcom/iMe/fork/controller/ForkCommonController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iMe/fork/controller/ForkCommonController;->saveConfig()V

    :cond_5
    :goto_2
    return-void
.end method
