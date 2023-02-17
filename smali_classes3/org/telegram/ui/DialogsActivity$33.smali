.class Lorg/telegram/ui/DialogsActivity$33;
.super Ljava/lang/Object;
.source "DialogsActivity.java"

# interfaces
.implements Lcom/smedialink/ui/recent_chats/RecentChatsBar$HorizontalListViewDelegate;


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
.method public static synthetic $r8$lambda$Fqtg2evyiBndSNvzu1EXTbQYgcE(Lorg/telegram/ui/DialogsActivity$33;JLandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/DialogsActivity$33;->lambda$onItemLongListener$2(JLandroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Helzj_CM9WjRm1-LIkEahisNLwo(Lorg/telegram/ui/DialogsActivity$33;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/DialogsActivity$33;->lambda$onItemLongListener$5(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$IlgR_sbfshZPDv1iK4288HncDz4(Lorg/telegram/ui/DialogsActivity$33;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/DialogsActivity$33;->lambda$showDialogDelete$1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$XALT9kLPLQpMg2IejHXsi5DNdr8(Lorg/telegram/ui/DialogsActivity$33;JLandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/DialogsActivity$33;->lambda$onItemLongListener$3(JLandroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hBC1jV-_DKm3XlmBMmBlMj0Z_jo(Lorg/telegram/ui/DialogsActivity$33;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/DialogsActivity$33;->lambda$showDialogDelete$0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$msgCVE9xitEcI_BvP2f19SljS74(Lorg/telegram/ui/DialogsActivity$33;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/DialogsActivity$33;->lambda$onItemLongListener$4(Landroid/view/View;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/DialogsActivity;)V
    .locals 0

    .line 6278
    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$33;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onItemLongListener$2(JLandroid/view/View;)V
    .locals 0

    .line 6360
    iget-object p3, p0, Lorg/telegram/ui/DialogsActivity$33;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p3}, Lorg/telegram/ui/DialogsActivity;->access$9000(Lorg/telegram/ui/DialogsActivity;)Lcom/smedialink/ui/recent_chats/RecentChatsBar;

    move-result-object p3

    if-nez p3, :cond_0

    return-void

    .line 6363
    :cond_0
    iget-object p3, p0, Lorg/telegram/ui/DialogsActivity$33;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getRecentChatsController()Lorg/fork/controller/RecentChatsController;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lorg/fork/controller/RecentChatsController;->updatePin(J)V

    .line 6364
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$33;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$9000(Lorg/telegram/ui/DialogsActivity;)Lcom/smedialink/ui/recent_chats/RecentChatsBar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smedialink/ui/recent_chats/RecentChatsBar;->scrollToStart()V

    .line 6365
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$33;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishPreviewFragment()V

    return-void
.end method

.method private synthetic lambda$onItemLongListener$3(JLandroid/view/View;)V
    .locals 0

    .line 6375
    iget-object p3, p0, Lorg/telegram/ui/DialogsActivity$33;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getRecentChatsController()Lorg/fork/controller/RecentChatsController;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lorg/fork/controller/RecentChatsController;->removeRecentChat(J)V

    .line 6376
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$33;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->recentChatsDidLoad:I

    const/4 p3, 0x0

    new-array p3, p3, [Ljava/lang/Object;

    invoke-virtual {p1, p2, p3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 6377
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$33;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishPreviewFragment()V

    return-void
.end method

.method private synthetic lambda$onItemLongListener$4(Landroid/view/View;)V
    .locals 0

    .line 6387
    invoke-direct {p0}, Lorg/telegram/ui/DialogsActivity$33;->showDialogDelete()V

    .line 6388
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$33;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishPreviewFragment()V

    return-void
.end method

.method private synthetic lambda$onItemLongListener$5(Landroid/view/View;)V
    .locals 2

    .line 6400
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$33;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->recentChatsDidLoad:I

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 6401
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$33;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getRecentChatsController()Lorg/fork/controller/RecentChatsController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/fork/controller/RecentChatsController;->toggleEnabled()V

    .line 6402
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$33;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishPreviewFragment()V

    return-void
.end method

.method private synthetic lambda$showDialogDelete$0(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 6284
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$33;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishPreviewFragment()V

    return-void
.end method

.method private synthetic lambda$showDialogDelete$1(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 6286
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$33;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getRecentChatsController()Lorg/fork/controller/RecentChatsController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/fork/controller/RecentChatsController;->clearRecentChatsHistory()V

    .line 6287
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$33;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$9000(Lorg/telegram/ui/DialogsActivity;)Lcom/smedialink/ui/recent_chats/RecentChatsBar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smedialink/ui/recent_chats/RecentChatsBar;->removeData()V

    .line 6288
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$33;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$9000(Lorg/telegram/ui/DialogsActivity;)Lcom/smedialink/ui/recent_chats/RecentChatsBar;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method private showDialogDelete()V
    .locals 5

    .line 6281
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$33;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 6282
    sget v1, Lorg/telegram/messenger/R$string;->ClearHistory:I

    const-string v2, "ClearHistory"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 6283
    sget v3, Lorg/telegram/messenger/R$string;->recent_chats_clear_history:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 6284
    sget v3, Lorg/telegram/messenger/R$string;->Cancel:I

    const-string v4, "Cancel"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/DialogsActivity$33$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0}, Lorg/telegram/ui/DialogsActivity$33$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/DialogsActivity$33;)V

    invoke-virtual {v0, v3, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 6285
    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/DialogsActivity$33$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lorg/telegram/ui/DialogsActivity$33$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/DialogsActivity$33;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 6291
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    .line 6292
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$33;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    const/4 v1, -0x1

    .line 6293
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->getButton(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const-string v1, "dialogTextRed2"

    .line 6295
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onItemListener(Lcom/smedialink/storage/domain/model/HistoryDialogModel;Landroid/view/View;)V
    .locals 7

    .line 6301
    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/HistoryDialogModel;->getDialogId()J

    move-result-wide p1

    .line 6302
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$33;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    neg-long v1, p1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 6304
    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->forum:Z

    if-eqz v0, :cond_5

    .line 6305
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$33;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$13200(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$33;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$6500(Lorg/telegram/ui/DialogsActivity;)I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 6306
    :goto_0
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v6, "chat_id"

    .line 6307
    invoke-virtual {v5, v6, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v1, "forward_to"

    .line 6308
    invoke-virtual {v5, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 6309
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I

    move-result v1

    if-nez v1, :cond_2

    .line 6310
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$33;->this$0:Lorg/telegram/ui/DialogsActivity;

    new-instance p2, Lorg/telegram/ui/TopicsFragment;

    invoke-direct {p2, v5}, Lorg/telegram/ui/TopicsFragment;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p1, p2}, Lorg/telegram/ui/DialogsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto :goto_2

    :cond_2
    if-nez v0, :cond_3

    .line 6313
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$33;->this$0:Lorg/telegram/ui/DialogsActivity;

    new-instance p2, Lorg/telegram/ui/TopicsFragment;

    invoke-direct {p2, v5}, Lorg/telegram/ui/TopicsFragment;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p1, p2}, Lorg/telegram/ui/DialogsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto :goto_2

    .line 6314
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$33;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$13200(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 6315
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$33;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity;->rightSlidingDialogContainer:Lorg/telegram/ui/RightSlidingDialogContainer;

    iget-object v0, v0, Lorg/telegram/ui/RightSlidingDialogContainer;->currentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz v0, :cond_4

    check-cast v0, Lorg/telegram/ui/TopicsFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/TopicsFragment;->getDialogId()J

    move-result-wide v0

    cmp-long v2, v0, p1

    if-nez v2, :cond_4

    .line 6316
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$33;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-object p1, p1, Lorg/telegram/ui/DialogsActivity;->rightSlidingDialogContainer:Lorg/telegram/ui/RightSlidingDialogContainer;

    invoke-virtual {p1}, Lorg/telegram/ui/RightSlidingDialogContainer;->finishPreview()V

    goto :goto_1

    .line 6318
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$33;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$3700(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object p1

    aget-object p1, p1, v4

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$15100(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->prepareSelectorForAnimation()V

    .line 6319
    new-instance p1, Lorg/telegram/ui/TopicsFragment;

    invoke-direct {p1, v5}, Lorg/telegram/ui/TopicsFragment;-><init>(Landroid/os/Bundle;)V

    .line 6320
    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$33;->this$0:Lorg/telegram/ui/DialogsActivity;

    iput-object p2, p1, Lorg/telegram/ui/TopicsFragment;->parentDialogsActivity:Lorg/telegram/ui/DialogsActivity;

    .line 6321
    iget-object v0, p2, Lorg/telegram/ui/DialogsActivity;->rightSlidingDialogContainer:Lorg/telegram/ui/RightSlidingDialogContainer;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object p2

    invoke-virtual {v0, p2, p1}, Lorg/telegram/ui/RightSlidingDialogContainer;->presentFragment(Lorg/telegram/ui/ActionBar/INavigationLayout;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 6323
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$33;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$4300(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/SearchViewPager;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/SearchViewPager;->updateTabs()V

    goto :goto_2

    .line 6327
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$33;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1, p2}, Lorg/telegram/ui/ChatActivity;->newInstanceForDialogId(J)Lorg/telegram/ui/ChatActivity;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/DialogsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_6
    :goto_2
    return-void
.end method

.method public onItemLongListener(Lcom/smedialink/storage/domain/model/HistoryDialogModel;Landroid/view/View;)V
    .locals 10

    .line 6333
    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/HistoryDialogModel;->getDialogId()J

    move-result-wide v0

    .line 6334
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 6335
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$33;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getLockedSectionsController()Lorg/fork/controller/LockedSectionsController;

    move-result-object v2

    sget-object v3, Lorg/fork/enums/LockedSection;->CLOUD:Lorg/fork/enums/LockedSection;

    invoke-virtual {v2, v3}, Lorg/fork/controller/LockedSectionsController;->getSectionsPasscodeData(Lorg/fork/enums/LockedSection;)Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;

    move-result-object v2

    .line 6336
    iget-object v3, p0, Lorg/telegram/ui/DialogsActivity$33;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    .line 6337
    invoke-static {v3}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;->getPasscodeHash()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 6338
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$33;->this$0:Lorg/telegram/ui/DialogsActivity;

    sget p2, Lorg/telegram/messenger/R$string;->section_is_locked:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/smedialink/ui/base/mvp/MvpFragment;->showToast(Ljava/lang/String;)V

    return-void

    .line 6340
    :cond_0
    invoke-static {v0, v1}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "user_id"

    .line 6341
    invoke-virtual {p2, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_0

    :cond_1
    neg-long v2, v0

    const-string v4, "chat_id"

    .line 6343
    invoke-virtual {p2, v4, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :goto_0
    const/4 v2, 0x1

    new-array v3, v2, [Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    const/4 v4, 0x2

    .line 6348
    new-instance v5, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    iget-object v6, p0, Lorg/telegram/ui/DialogsActivity$33;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v6}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v6

    sget v7, Lorg/telegram/messenger/R$drawable;->popup_fixed_alert:I

    iget-object v8, p0, Lorg/telegram/ui/DialogsActivity$33;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v8}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v8

    invoke-direct {v5, v6, v7, v8, v4}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;I)V

    const/4 v4, 0x0

    aput-object v5, v3, v4

    .line 6350
    new-instance v5, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    iget-object v6, p0, Lorg/telegram/ui/DialogsActivity$33;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v6}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6, v4, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZ)V

    .line 6352
    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/HistoryDialogModel;->isPinned()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 6353
    sget p1, Lorg/telegram/messenger/R$string;->UnpinMessage:I

    const-string v6, "UnpinMessage"

    invoke-static {v6, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    sget v6, Lorg/telegram/messenger/R$drawable;->msg_calls_unpin:I

    invoke-virtual {v5, p1, v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    goto :goto_1

    .line 6355
    :cond_2
    sget p1, Lorg/telegram/messenger/R$string;->PinMessage:I

    const-string v6, "PinMessage"

    invoke-static {v6, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    sget v6, Lorg/telegram/messenger/R$drawable;->msg_calls_pin:I

    invoke-virtual {v5, p1, v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    :goto_1
    const/16 p1, 0xa0

    .line 6358
    invoke-virtual {v5, p1}, Landroid/widget/FrameLayout;->setMinimumWidth(I)V

    .line 6359
    new-instance v6, Lorg/telegram/ui/DialogsActivity$33$$ExternalSyntheticLambda4;

    invoke-direct {v6, p0, v0, v1}, Lorg/telegram/ui/DialogsActivity$33$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/DialogsActivity$33;J)V

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6367
    aget-object v6, v3, v4

    invoke-virtual {v6, v5}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;)V

    .line 6369
    new-instance v5, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    iget-object v6, p0, Lorg/telegram/ui/DialogsActivity$33;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v6}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6, v4, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZ)V

    .line 6370
    iget-object v6, p0, Lorg/telegram/ui/DialogsActivity$33;->this$0:Lorg/telegram/ui/DialogsActivity;

    const-string v7, "dialogRedIcon"

    invoke-virtual {v6, v7}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setIconColor(I)V

    .line 6371
    iget-object v6, p0, Lorg/telegram/ui/DialogsActivity$33;->this$0:Lorg/telegram/ui/DialogsActivity;

    const-string v8, "dialogTextRed"

    invoke-virtual {v6, v8}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextColor(I)V

    .line 6372
    sget v6, Lorg/telegram/messenger/R$string;->DeleteFromRecent:I

    const-string v9, "DeleteFromRecent"

    invoke-static {v9, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    sget v9, Lorg/telegram/messenger/R$drawable;->msg_delete:I

    invoke-virtual {v5, v6, v9}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    .line 6373
    invoke-virtual {v5, p1}, Landroid/widget/FrameLayout;->setMinimumWidth(I)V

    .line 6374
    new-instance v6, Lorg/telegram/ui/DialogsActivity$33$$ExternalSyntheticLambda5;

    invoke-direct {v6, p0, v0, v1}, Lorg/telegram/ui/DialogsActivity$33$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/DialogsActivity$33;J)V

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6379
    aget-object v0, v3, v4

    invoke-virtual {v0, v5}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;)V

    .line 6381
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$33;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, v4, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZ)V

    .line 6382
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$33;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v1, v7}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setIconColor(I)V

    .line 6383
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$33;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v1, v8}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextColor(I)V

    .line 6384
    sget v1, Lorg/telegram/messenger/R$string;->ClearRecentHistory:I

    const-string v5, "ClearRecentHistory"

    invoke-static {v5, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    sget v5, Lorg/telegram/messenger/R$drawable;->msg_clear:I

    invoke-virtual {v0, v1, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    .line 6385
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setMinimumWidth(I)V

    .line 6386
    new-instance v1, Lorg/telegram/ui/DialogsActivity$33$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lorg/telegram/ui/DialogsActivity$33$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/DialogsActivity$33;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6390
    aget-object v1, v3, v4

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;)V

    .line 6392
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$33;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 6393
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$33;->this$0:Lorg/telegram/ui/DialogsActivity;

    const-string v5, "actionBarDefaultSubmenuSeparator"

    invoke-virtual {v1, v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 6394
    aget-object v1, v3, v4

    const/4 v5, -0x1

    const/16 v6, 0x8

    invoke-static {v5, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v1, v0, v5}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    .line 6396
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$33;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, v4, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZ)V

    .line 6397
    sget v1, Lorg/telegram/messenger/R$string;->Disable:I

    const-string v5, "Disable"

    invoke-static {v5, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setText(Ljava/lang/CharSequence;)V

    .line 6398
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setMinimumWidth(I)V

    .line 6399
    new-instance p1, Lorg/telegram/ui/DialogsActivity$33$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lorg/telegram/ui/DialogsActivity$33$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/DialogsActivity$33;)V

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6404
    aget-object p1, v3, v4

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;)V

    new-array p1, v2, [Lorg/telegram/ui/ChatActivity;

    .line 6408
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$33;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$33;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v0, p2, v1}, Lorg/telegram/messenger/MessagesController;->checkCanOpenChat(Landroid/os/Bundle;Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 6410
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$33;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$30400(Lorg/telegram/ui/DialogsActivity;)V

    .line 6411
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$33;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$30500(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v0

    invoke-interface {v0, v2}, Lorg/telegram/ui/ActionBar/INavigationLayout;->setHighlightActionButtons(Z)V

    .line 6413
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-le v1, v0, :cond_3

    .line 6414
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$33;->this$0:Lorg/telegram/ui/DialogsActivity;

    new-instance v1, Lorg/telegram/ui/ChatActivity;

    invoke-direct {v1, p2}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    aput-object v1, p1, v4

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragmentAsPreview(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto :goto_2

    .line 6416
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$33;->this$0:Lorg/telegram/ui/DialogsActivity;

    new-instance v1, Lorg/telegram/ui/ChatActivity;

    invoke-direct {v1, p2}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    aput-object v1, p1, v4

    aget-object p2, v3, v4

    invoke-virtual {v0, v1, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragmentAsPreviewWithMenu(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;)Z

    .line 6417
    aget-object p2, p1, v4

    iput-boolean v4, p2, Lorg/telegram/ui/ChatActivity;->allowExpandPreviewByClick:Z

    .line 6419
    :try_start_0
    aget-object p1, p1, v4

    invoke-virtual {p1}, Lorg/telegram/ui/ChatActivity;->getAvatarContainer()Lorg/telegram/ui/Components/ChatAvatarContainer;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAvatarContainer;->getAvatarImageView()Lorg/telegram/ui/Components/BackupImageView;

    move-result-object p1

    const/16 p2, 0x40

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_4
    :goto_2
    return-void
.end method

.method public onLongClickRelease()V
    .locals 1

    .line 6428
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$33;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishPreviewFragment()V

    return-void
.end method

.method public onMove(F)V
    .locals 1

    .line 6433
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$33;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->movePreviewFragment(F)V

    return-void
.end method
