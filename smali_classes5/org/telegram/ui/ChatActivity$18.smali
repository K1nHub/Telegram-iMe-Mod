.class Lorg/telegram/ui/ChatActivity$18;
.super Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;
.source "ChatActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChatActivity;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method public static synthetic $r8$lambda$4aCGm-i6BFxFF-4v3JM4tXMbyf0(Lorg/telegram/ui/ChatActivity$18;IZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ChatActivity$18;->lambda$onItemClick$2(IZZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$BQ6ul3HgrmedHpBi9FenBmdX8gM(Lorg/telegram/ui/ChatActivity$18;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChatActivity$18;->lambda$onItemClick$1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$f9A_F7L9fVA5lOywcPjy7IaQbmA(Lorg/telegram/ui/ChatActivity$18;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatActivity$18;->lambda$onItemClick$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ubtvqJp9C19SG31uZd-6J-Lj6MQ(Lorg/telegram/ui/ChatActivity$18;ZI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChatActivity$18;->lambda$onItemClick$0(ZI)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/ChatActivity;Landroid/content/Context;)V
    .locals 0

    .line 4784
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    iput-object p2, p0, Lorg/telegram/ui/ChatActivity$18;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;-><init>()V

    return-void
.end method

.method private synthetic lambda$onItemClick$0(ZI)V
    .locals 2

    if-lez p2, :cond_2

    .line 4904
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 4907
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v0

    if-eqz p1, :cond_1

    sget-object p1, Lorg/telegram/ui/Components/BulletinFactory$FileType;->AUDIOS:Lorg/telegram/ui/Components/BulletinFactory$FileType;

    goto :goto_0

    :cond_1
    sget-object p1, Lorg/telegram/ui/Components/BulletinFactory$FileType;->UNKNOWNS:Lorg/telegram/ui/Components/BulletinFactory$FileType;

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity;->themeDelegate:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    invoke-virtual {v0, p1, p2, v1}, Lorg/telegram/ui/Components/BulletinFactory;->createDownloadBulletin(Lorg/telegram/ui/Components/BulletinFactory$FileType;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    :cond_2
    return-void
.end method

.method private synthetic lambda$onItemClick$1(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 4940
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ChatActivity;->getSavedDialogId()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/MessagesController;->deleteSavedDialog(J)V

    .line 4941
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ChatActivity;->finishFragment()V

    return-void
.end method

.method private synthetic lambda$onItemClick$2(IZZ)V
    .locals 5

    const/4 v0, 0x2

    const/16 v1, 0xf

    if-ne p1, v1, :cond_1

    .line 4973
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v3, :cond_0

    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->isPublic(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4974
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatActivity;->access$1800(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v1

    invoke-virtual {p1, v1, v2, v0, p3}, Lorg/telegram/messenger/MessagesController;->deleteDialog(JIZ)V

    goto :goto_0

    :cond_1
    if-eq p1, v1, :cond_2

    .line 4977
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    sget v1, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    invoke-virtual {p1, p2, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 4978
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    const/4 p2, 0x0

    new-array v2, p2, [Ljava/lang/Object;

    invoke-virtual {p1, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 4979
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ChatActivity;->finishFragment()V

    .line 4980
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v1, Lorg/telegram/messenger/NotificationCenter;->needDeleteDialog:I

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$1800(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, p2

    const/4 p2, 0x1

    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v4, v3, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    aput-object v4, v2, p2

    iget-object p2, v3, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    aput-object p2, v2, v0

    const/4 p2, 0x3

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    aput-object p3, v2, p2

    invoke-virtual {p1, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto :goto_0

    .line 4982
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1, p3, p2}, Lorg/telegram/ui/ChatActivity;->performHistoryClear(ZZ)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$onItemClick$3(Landroid/view/View;)V
    .locals 1

    .line 5039
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$5900(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->closeSubMenu()V

    .line 5040
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object p1, p1, Lorg/telegram/ui/ChatActivity;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 5041
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->setEditingMessageObject(Lorg/telegram/messenger/MessageObject;)V

    .line 5043
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$8700(Lorg/telegram/ui/ChatActivity;)V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 20

    move-object/from16 v1, p0

    move/from16 v0, p1

    .line 4788
    sget v2, Lcom/iMe/common/IdFabric$Menu;->GROUP_MESSAGES:I

    if-ne v0, v2, :cond_0

    .line 4789
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$11100(Lorg/telegram/ui/ChatActivity;)V

    goto/16 :goto_17

    .line 4790
    :cond_0
    sget v2, Lcom/iMe/common/IdFabric$Menu;->UNGROUP_MESSAGES:I

    if-ne v0, v2, :cond_1

    .line 4791
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$11200(Lorg/telegram/ui/ChatActivity;)V

    goto/16 :goto_17

    .line 4792
    :cond_1
    sget v2, Lcom/iMe/common/IdFabric$Menu;->CHAT_CLEAR_CACHE:I

    if-ne v0, v2, :cond_2

    .line 4793
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$11300(Lorg/telegram/ui/ChatActivity;)V

    goto/16 :goto_17

    .line 4794
    :cond_2
    sget v2, Lcom/iMe/common/IdFabric$Menu;->CHAT_CLOUD_LOCK:I

    if-ne v0, v2, :cond_3

    .line 4795
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getLockedSection()Lcom/iMe/fork/enums/LockedSection;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/ui/PasscodeActivity;->determineOpenFragment(Lcom/iMe/fork/enums/LockedSection;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_17

    .line 4796
    :cond_3
    sget v2, Lcom/iMe/common/IdFabric$Menu;->MESSAGE_SAVE_CLOUD:I

    const/4 v3, 0x1

    if-ne v0, v2, :cond_4

    .line 4797
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0, v3, v3}, Lorg/telegram/ui/ChatActivity;->access$11400(Lorg/telegram/ui/ChatActivity;ZZ)V

    goto/16 :goto_17

    .line 4798
    :cond_4
    sget v2, Lcom/iMe/common/IdFabric$Menu;->CHAT_ADD_TO_FOLDER:I

    if-ne v0, v2, :cond_5

    .line 4799
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$11500(Lorg/telegram/ui/ChatActivity;)V

    goto/16 :goto_17

    .line 4800
    :cond_5
    sget v2, Lcom/iMe/common/IdFabric$Menu;->CHAT_SELECT_TOPIC:I

    if-ne v0, v2, :cond_6

    .line 4801
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$11600(Lorg/telegram/ui/ChatActivity;)V

    goto/16 :goto_17

    .line 4802
    :cond_6
    sget v2, Lcom/iMe/common/IdFabric$Menu;->CHAT_TRANSLATE_SETTINGS:I

    if-ne v0, v2, :cond_7

    .line 4803
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$100(Lorg/telegram/ui/ChatActivity;)V

    goto/16 :goto_17

    .line 4804
    :cond_7
    sget v2, Lcom/iMe/common/IdFabric$Menu;->CHAT_JUMP_TO_START:I

    if-ne v0, v2, :cond_8

    .line 4805
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$11700(Lorg/telegram/ui/ChatActivity;)V

    goto/16 :goto_17

    .line 4806
    :cond_8
    sget v2, Lcom/iMe/common/IdFabric$Menu;->CHAT_TOGGLE_ALBUM:I

    if-ne v0, v2, :cond_9

    .line 4807
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$11800(Lorg/telegram/ui/ChatActivity;)V

    goto/16 :goto_17

    .line 4808
    :cond_9
    sget v2, Lcom/iMe/common/IdFabric$Menu;->CHAT_DONATE:I

    if-ne v0, v2, :cond_a

    .line 4809
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$11900(Lorg/telegram/ui/ChatActivity;)V

    goto/16 :goto_17

    .line 4810
    :cond_a
    sget v2, Lcom/iMe/common/IdFabric$Menu;->CHAT_ALBUMS:I

    if-ne v0, v2, :cond_c

    .line 4811
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->isAlbumsIntroShown:Z

    if-eqz v0, :cond_b

    .line 4812
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {}, Lorg/telegram/ui/DialogsActivity;->newInstanceInAlbumsMode()Lorg/telegram/ui/DialogsActivity;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_17

    .line 4814
    :cond_b
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    new-instance v2, Lorg/telegram/ui/ActionIntroActivity;

    const/16 v3, 0x64

    invoke-direct {v2, v3}, Lorg/telegram/ui/ActionIntroActivity;-><init>(I)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_17

    .line 4816
    :cond_c
    sget v2, Lcom/iMe/common/IdFabric$Menu;->CHAT_CLOUD_OPEN_BY_DEFAULT:I

    const/4 v4, 0x0

    if-ne v0, v2, :cond_d

    .line 4817
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getAlbumsController()Lcom/iMe/fork/controller/AlbumsController;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/iMe/fork/controller/AlbumsController;->setOpenAlbumsInsteadCloudEnabled(Z)V

    .line 4818
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getAlbumsController()Lcom/iMe/fork/controller/AlbumsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/fork/controller/AlbumsController;->saveConfig()V

    .line 4819
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$12000(Lorg/telegram/ui/ChatActivity;)V

    .line 4820
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$12100(Lorg/telegram/ui/ChatActivity;)V

    goto/16 :goto_17

    :cond_d
    const/4 v2, -0x1

    if-ne v0, v2, :cond_f

    .line 4823
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$12200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->isActionModeShowed()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 4824
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->clearSelectionMode()V

    goto/16 :goto_17

    .line 4826
    :cond_e
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ChatActivity;->checkRecordLocked(Z)Z

    move-result v0

    if-nez v0, :cond_57

    .line 4827
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->finishFragment()V

    goto/16 :goto_17

    :cond_f
    const/16 v5, 0x3b

    if-ne v0, v5, :cond_10

    .line 4831
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getTopicsController()Lorg/telegram/messenger/TopicsController;

    move-result-object v0

    iget-object v2, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$1800(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v2

    neg-long v2, v2

    invoke-virtual {v0, v2, v3, v4}, Lorg/telegram/messenger/TopicsController;->toggleViewForumAsMessages(JZ)V

    .line 4832
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/TopicsFragment;->prepareToSwitchAnimation(Lorg/telegram/ui/ChatActivity;)V

    goto/16 :goto_17

    :cond_10
    const/16 v5, 0xa

    const/16 v6, 0x3a

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    if-ne v0, v5, :cond_1a

    .line 4834
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    move v2, v3

    move-wide v10, v7

    :goto_0
    if-ltz v2, :cond_17

    .line 4837
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v12, v4

    .line 4838
    :goto_1
    iget-object v13, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v13}, Lorg/telegram/ui/ChatActivity;->access$12300(Lorg/telegram/ui/ChatActivity;)[Landroid/util/SparseArray;

    move-result-object v13

    aget-object v13, v13, v2

    invoke-virtual {v13}, Landroid/util/SparseArray;->size()I

    move-result v13

    if-ge v12, v13, :cond_11

    .line 4839
    iget-object v13, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v13}, Lorg/telegram/ui/ChatActivity;->access$12300(Lorg/telegram/ui/ChatActivity;)[Landroid/util/SparseArray;

    move-result-object v13

    aget-object v13, v13, v2

    invoke-virtual {v13, v12}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 4841
    :cond_11
    iget-object v12, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v12, v12, Lorg/telegram/ui/ChatActivity;->currentEncryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    if-nez v12, :cond_12

    .line 4842
    invoke-static {v5}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    goto :goto_2

    .line 4844
    :cond_12
    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object v12

    invoke-static {v5, v12}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :goto_2
    move v12, v4

    .line 4846
    :goto_3
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v12, v13, :cond_16

    .line 4847
    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    .line 4848
    iget-object v14, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v14}, Lorg/telegram/ui/ChatActivity;->access$12300(Lorg/telegram/ui/ChatActivity;)[Landroid/util/SparseArray;

    move-result-object v14

    aget-object v14, v14, v2

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual {v14, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/telegram/messenger/MessageObject;

    .line 4849
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v14

    if-eqz v14, :cond_13

    const-string v14, "\n\n"

    .line 4850
    invoke-virtual {v0, v14}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 4852
    :cond_13
    iget-object v14, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-eq v15, v3, :cond_15

    iget-object v15, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v15, v15, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v15, :cond_14

    iget-boolean v15, v15, Lorg/telegram/tgnet/TLRPC$User;->self:Z

    if-nez v15, :cond_15

    :cond_14
    move v15, v3

    goto :goto_4

    :cond_15
    move v15, v4

    :goto_4
    invoke-static {v14, v13, v10, v11, v15}, Lorg/telegram/ui/ChatActivity;->access$12400(Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessageObject;JZ)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 4853
    invoke-virtual {v13}, Lorg/telegram/messenger/MessageObject;->getFromChatId()J

    move-result-wide v10

    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    :cond_16
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_0

    .line 4856
    :cond_17
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    if-eqz v2, :cond_19

    .line 4857
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->addToClipboard(Ljava/lang/CharSequence;)Z

    .line 4858
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$12500(Lorg/telegram/ui/ChatActivity;)V

    .line 4860
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$12600(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/UndoView;

    move-result-object v0

    if-nez v0, :cond_18

    return-void

    .line 4864
    :cond_18
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$12600(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/UndoView;

    move-result-object v0

    invoke-virtual {v0, v7, v8, v6, v9}, Lorg/telegram/ui/Components/UndoView;->showWithAction(JILjava/lang/Runnable;)V

    .line 4866
    :cond_19
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->clearSelectionMode()V

    goto/16 :goto_17

    :cond_1a
    const/16 v5, 0xc

    if-ne v0, v5, :cond_1f

    .line 4868
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1b

    return-void

    .line 4872
    :cond_1b
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->isForwardingEditor()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 4873
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_5
    if-ltz v3, :cond_1d

    move v2, v4

    .line 4875
    :goto_6
    iget-object v5, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChatActivity;->access$3600(Lorg/telegram/ui/ChatActivity;)[Landroid/util/SparseArray;

    move-result-object v5

    aget-object v5, v5, v3

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v2, v5, :cond_1c

    .line 4876
    iget-object v5, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChatActivity;->access$3600(Lorg/telegram/ui/ChatActivity;)[Landroid/util/SparseArray;

    move-result-object v5

    aget-object v5, v5, v3

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 4878
    :cond_1c
    iget-object v2, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$3600(Lorg/telegram/ui/ChatActivity;)[Landroid/util/SparseArray;

    move-result-object v2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    add-int/lit8 v3, v3, -0x1

    goto :goto_5

    .line 4880
    :cond_1d
    iget-object v2, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$12700(Lorg/telegram/ui/ChatActivity;)V

    .line 4881
    iget-object v2, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2, v0, v7, v8, v4}, Lorg/telegram/ui/ChatActivity;->access$12800(Lorg/telegram/ui/ChatActivity;Ljava/util/ArrayList;JZ)V

    return-void

    .line 4885
    :cond_1e
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0, v9, v9}, Lorg/telegram/ui/ChatActivity;->access$12900(Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject$GroupedMessages;)V

    goto/16 :goto_17

    :cond_1f
    const/16 v5, 0xb

    if-ne v0, v5, :cond_20

    .line 4887
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0, v3, v4}, Lorg/telegram/ui/ChatActivity;->access$11400(Lorg/telegram/ui/ChatActivity;ZZ)V

    goto/16 :goto_17

    :cond_20
    const/16 v5, 0x19

    if-ne v0, v5, :cond_24

    .line 4889
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move v2, v3

    :goto_7
    if-ltz v2, :cond_22

    move v5, v4

    .line 4891
    :goto_8
    iget-object v6, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ChatActivity;->access$3600(Lorg/telegram/ui/ChatActivity;)[Landroid/util/SparseArray;

    move-result-object v6

    aget-object v6, v6, v2

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_21

    .line 4892
    iget-object v6, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ChatActivity;->access$3600(Lorg/telegram/ui/ChatActivity;)[Landroid/util/SparseArray;

    move-result-object v6

    aget-object v6, v6, v2

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    .line 4894
    :cond_21
    iget-object v5, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChatActivity;->access$3600(Lorg/telegram/ui/ChatActivity;)[Landroid/util/SparseArray;

    move-result-object v5

    aget-object v5, v5, v2

    invoke-virtual {v5}, Landroid/util/SparseArray;->clear()V

    .line 4895
    iget-object v5, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChatActivity;->access$12300(Lorg/telegram/ui/ChatActivity;)[Landroid/util/SparseArray;

    move-result-object v5

    aget-object v5, v5, v2

    invoke-virtual {v5}, Landroid/util/SparseArray;->clear()V

    .line 4896
    iget-object v5, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChatActivity;->access$13000(Lorg/telegram/ui/ChatActivity;)[Landroid/util/SparseArray;

    move-result-object v5

    aget-object v5, v5, v2

    invoke-virtual {v5}, Landroid/util/SparseArray;->clear()V

    add-int/lit8 v2, v2, -0x1

    goto :goto_7

    .line 4898
    :cond_22
    iget-object v2, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$13100(Lorg/telegram/ui/ChatActivity;)I

    move-result v2

    if-lez v2, :cond_23

    move v4, v3

    .line 4899
    :cond_23
    iget-object v2, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$12700(Lorg/telegram/ui/ChatActivity;)V

    .line 4900
    iget-object v2, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2, v3}, Lorg/telegram/ui/ChatActivity;->access$8100(Lorg/telegram/ui/ChatActivity;Z)V

    .line 4901
    iget-object v2, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$4000(Lorg/telegram/ui/ChatActivity;)V

    .line 4902
    iget-object v2, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;

    move-result-object v3

    new-instance v5, Lorg/telegram/ui/ChatActivity$18$$ExternalSyntheticLambda3;

    invoke-direct {v5, v1, v4}, Lorg/telegram/ui/ChatActivity$18$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/ChatActivity$18;Z)V

    invoke-static {v2, v3, v0, v5}, Lorg/telegram/messenger/MediaController;->saveFilesFromMessages(Landroid/content/Context;Lorg/telegram/messenger/AccountInstance;Ljava/util/ArrayList;Lorg/telegram/messenger/MessagesStorage$IntCallback;)V

    goto/16 :goto_17

    :cond_24
    const/16 v5, 0xd

    if-ne v0, v5, :cond_26

    .line 4911
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_25

    return-void

    .line 4914
    :cond_25
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v4, v3, Lorg/telegram/ui/ChatActivity;->currentEncryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget-object v3, v3, Lorg/telegram/ui/ChatActivity;->themeDelegate:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    invoke-static {v2, v4, v3}, Lorg/telegram/ui/Components/AlertsCreator;->createTTLAlert(Landroid/content/Context;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_17

    :cond_26
    const/16 v5, 0x1a

    const/16 v10, 0xf

    if-eq v0, v10, :cond_4a

    const/16 v11, 0x10

    if-eq v0, v11, :cond_4a

    if-ne v0, v5, :cond_27

    goto/16 :goto_11

    :cond_27
    const/16 v2, 0x11

    if-ne v0, v2, :cond_2b

    .line 4987
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v2, :cond_2a

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_28

    goto :goto_9

    .line 4990
    :cond_28
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$13200(Lorg/telegram/ui/ChatActivity;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_29

    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$13200(Lorg/telegram/ui/ChatActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_29

    .line 4991
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$13200(Lorg/telegram/ui/ChatActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2, v9}, Lorg/telegram/ui/ChatActivity;->shareMyContact(ILorg/telegram/messenger/MessageObject;)V

    goto/16 :goto_17

    .line 4993
    :cond_29
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4994
    iget-object v2, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v4, v2, Lorg/telegram/tgnet/TLRPC$User;->id:J

    const-string v2, "user_id"

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v2, "addContact"

    .line 4995
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4996
    iget-object v2, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    new-instance v3, Lorg/telegram/ui/ContactAddActivity;

    invoke-direct {v3, v0}, Lorg/telegram/ui/ContactAddActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_17

    :cond_2a
    :goto_9
    return-void

    :cond_2b
    const/16 v2, 0x12

    if-ne v0, v2, :cond_2c

    .line 4999
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0, v4}, Lorg/telegram/ui/ChatActivity;->access$13300(Lorg/telegram/ui/ChatActivity;Z)V

    goto/16 :goto_17

    :cond_2c
    const/16 v2, 0x18

    if-ne v0, v2, :cond_2d

    .line 5002
    :try_start_0
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    iget-object v2, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/MediaDataController;->installShortcut(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_17

    :catch_0
    move-exception v0

    .line 5004
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_17

    :cond_2d
    const/16 v2, 0x15

    if-ne v0, v2, :cond_2e

    .line 5007
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$1800(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v7, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v8, v7, Lorg/telegram/ui/ChatActivity;->themeDelegate:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Lorg/telegram/ui/Components/AlertsCreator;->createReportAlert(Landroid/content/Context;JIILorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/lang/Runnable;)V

    goto/16 :goto_17

    :cond_2e
    const/16 v2, 0x16

    if-ne v0, v2, :cond_31

    move v0, v4

    :goto_a
    const/4 v2, 0x2

    if-ge v0, v2, :cond_30

    move v2, v4

    .line 5010
    :goto_b
    iget-object v5, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChatActivity;->access$13000(Lorg/telegram/ui/ChatActivity;)[Landroid/util/SparseArray;

    move-result-object v5

    aget-object v5, v5, v0

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v2, v5, :cond_2f

    .line 5011
    iget-object v5, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChatActivity;->access$13000(Lorg/telegram/ui/ChatActivity;)[Landroid/util/SparseArray;

    move-result-object v5

    aget-object v5, v5, v0

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    move-object v8, v5

    check-cast v8, Lorg/telegram/messenger/MessageObject;

    .line 5012
    iget-object v5, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;

    move-result-object v6

    const/4 v7, 0x2

    invoke-virtual {v8}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    long-to-int v10, v10

    iget-object v5, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChatActivity;->access$13400(Lorg/telegram/ui/ChatActivity;)Z

    move-result v5

    xor-int/lit8 v11, v5, 0x1

    invoke-virtual/range {v6 .. v11}, Lorg/telegram/messenger/MediaDataController;->addRecentSticker(ILjava/lang/Object;Lorg/telegram/tgnet/TLRPC$Document;IZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_2f
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 5015
    :cond_30
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->clearSelectionMode()V

    goto/16 :goto_17

    :cond_31
    const/16 v2, 0x17

    if-ne v0, v2, :cond_35

    move v0, v3

    :goto_c
    if-ltz v0, :cond_34

    if-nez v9, :cond_33

    .line 5019
    iget-object v2, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$3600(Lorg/telegram/ui/ChatActivity;)[Landroid/util/SparseArray;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ne v2, v3, :cond_33

    .line 5020
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v5, v4

    .line 5021
    :goto_d
    iget-object v6, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ChatActivity;->access$3600(Lorg/telegram/ui/ChatActivity;)[Landroid/util/SparseArray;

    move-result-object v6

    aget-object v6, v6, v0

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_32

    .line 5022
    iget-object v6, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ChatActivity;->access$3600(Lorg/telegram/ui/ChatActivity;)[Landroid/util/SparseArray;

    move-result-object v6

    aget-object v6, v6, v0

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_d

    .line 5024
    :cond_32
    iget-object v5, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChatActivity;->access$13500(Lorg/telegram/ui/ChatActivity;)[Landroid/util/SparseArray;

    move-result-object v5

    aget-object v5, v5, v0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    move-object v9, v2

    .line 5026
    :cond_33
    iget-object v2, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$3600(Lorg/telegram/ui/ChatActivity;)[Landroid/util/SparseArray;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 5027
    iget-object v2, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$12300(Lorg/telegram/ui/ChatActivity;)[Landroid/util/SparseArray;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 5028
    iget-object v2, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$13000(Lorg/telegram/ui/ChatActivity;)[Landroid/util/SparseArray;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_c

    .line 5030
    :cond_34
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$12700(Lorg/telegram/ui/ChatActivity;)V

    .line 5031
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0, v9}, Lorg/telegram/ui/ChatActivity;->access$13600(Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessageObject;)V

    .line 5033
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0, v3}, Lorg/telegram/ui/ChatActivity;->access$8100(Lorg/telegram/ui/ChatActivity;Z)V

    .line 5034
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$4000(Lorg/telegram/ui/ChatActivity;)V

    goto/16 :goto_17

    :cond_35
    const/16 v2, 0xe

    if-ne v0, v2, :cond_36

    .line 5036
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    iget-object v11, v1, Lorg/telegram/ui/ChatActivity$18;->val$context:Landroid/content/Context;

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x1

    iget-object v2, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ChatActivity;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v15

    move-object v10, v0

    invoke-direct/range {v10 .. v15}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 5037
    sget v2, Lorg/telegram/messenger/R$string;->AttachMenu:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$drawable;->input_attach:I

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    .line 5038
    new-instance v2, Lorg/telegram/ui/ChatActivity$18$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1}, Lorg/telegram/ui/ChatActivity$18$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/ChatActivity$18;)V

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5045
    iget-object v2, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$5900(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v2

    iget-object v3, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$6000(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;->createView()Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->toggleSubMenu(Landroid/view/View;Landroid/view/View;)V

    goto/16 :goto_17

    :cond_36
    const/16 v2, 0x1e

    if-ne v0, v2, :cond_37

    .line 5047
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getSendMessagesHelper()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v0

    iget-object v2, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$1800(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-string v3, "/help"

    invoke-static/range {v3 .. v17}, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->of(Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$WebPage;ZLjava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;ZILorg/telegram/messenger/MessageObject$SendAnimationData;ZLjava/lang/String;)Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;)V

    goto/16 :goto_17

    :cond_37
    const/16 v2, 0x1f

    if-ne v0, v2, :cond_38

    .line 5049
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getSendMessagesHelper()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v0

    iget-object v2, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$1800(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-string v3, "/settings"

    invoke-static/range {v3 .. v17}, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->of(Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$WebPage;ZLjava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;ZILorg/telegram/messenger/MessageObject$SendAnimationData;ZLjava/lang/String;)Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;)V

    goto/16 :goto_17

    :cond_38
    const/16 v2, 0x28

    if-ne v0, v2, :cond_39

    .line 5051
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0, v9}, Lorg/telegram/ui/ChatActivity;->access$13700(Lorg/telegram/ui/ChatActivity;Ljava/lang/String;)V

    goto/16 :goto_17

    :cond_39
    const/16 v2, 0x3e

    if-ne v0, v2, :cond_3a

    .line 5053
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getTranslateController()Lorg/telegram/messenger/TranslateController;

    move-result-object v0

    iget-object v2, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6, v4, v3}, Lorg/telegram/messenger/TranslateController;->setHideTranslateDialog(JZZ)V

    .line 5054
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getTranslateController()Lorg/telegram/messenger/TranslateController;

    move-result-object v0

    iget-object v2, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5, v3}, Lorg/telegram/messenger/TranslateController;->toggleTranslatingDialog(JZ)Z

    move-result v0

    if-nez v0, :cond_57

    .line 5055
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0, v3}, Lorg/telegram/ui/ChatActivity;->access$13800(Lorg/telegram/ui/ChatActivity;Z)V

    goto/16 :goto_17

    :cond_3a
    const/16 v2, 0x20

    const/16 v5, 0x21

    if-eq v0, v2, :cond_47

    if-ne v0, v5, :cond_3b

    goto/16 :goto_e

    :cond_3b
    const/16 v2, 0x32

    if-ne v0, v2, :cond_3c

    .line 5062
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v0, :cond_57

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEditField()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v0

    if-eqz v0, :cond_57

    .line 5063
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEditField()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v0

    iget-object v2, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$6800(Lorg/telegram/ui/ChatActivity;)I

    move-result v2

    iget-object v3, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$6900(Lorg/telegram/ui/ChatActivity;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/Components/EditTextCaption;->setSelectionOverride(II)V

    .line 5064
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEditField()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextCaption;->makeSelectedBold()V

    goto/16 :goto_17

    :cond_3c
    const/16 v2, 0x33

    if-ne v0, v2, :cond_3d

    .line 5067
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v0, :cond_57

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEditField()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v0

    if-eqz v0, :cond_57

    .line 5068
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEditField()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v0

    iget-object v2, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$6800(Lorg/telegram/ui/ChatActivity;)I

    move-result v2

    iget-object v3, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$6900(Lorg/telegram/ui/ChatActivity;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/Components/EditTextCaption;->setSelectionOverride(II)V

    .line 5069
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEditField()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextCaption;->makeSelectedItalic()V

    goto/16 :goto_17

    :cond_3d
    const/16 v2, 0x39

    if-ne v0, v2, :cond_3e

    .line 5072
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v0, :cond_57

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEditField()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v0

    if-eqz v0, :cond_57

    .line 5073
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEditField()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v0

    iget-object v2, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$6800(Lorg/telegram/ui/ChatActivity;)I

    move-result v2

    iget-object v3, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$6900(Lorg/telegram/ui/ChatActivity;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/Components/EditTextCaption;->setSelectionOverride(II)V

    .line 5074
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEditField()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextCaption;->makeSelectedSpoiler()V

    goto/16 :goto_17

    :cond_3e
    if-ne v0, v6, :cond_3f

    .line 5077
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v0, :cond_57

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEditField()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v0

    if-eqz v0, :cond_57

    .line 5078
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEditField()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v0

    iget-object v2, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$6800(Lorg/telegram/ui/ChatActivity;)I

    move-result v2

    iget-object v3, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$6900(Lorg/telegram/ui/ChatActivity;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/Components/EditTextCaption;->setSelectionOverride(II)V

    .line 5079
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEditField()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextCaption;->makeSelectedQuote()V

    goto/16 :goto_17

    :cond_3f
    const/16 v2, 0x34

    if-ne v0, v2, :cond_40

    .line 5082
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v0, :cond_57

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEditField()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v0

    if-eqz v0, :cond_57

    .line 5083
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEditField()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v0

    iget-object v2, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$6800(Lorg/telegram/ui/ChatActivity;)I

    move-result v2

    iget-object v3, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$6900(Lorg/telegram/ui/ChatActivity;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/Components/EditTextCaption;->setSelectionOverride(II)V

    .line 5084
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEditField()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextCaption;->makeSelectedMono()V

    goto/16 :goto_17

    :cond_40
    const/16 v2, 0x37

    if-ne v0, v2, :cond_41

    .line 5087
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v0, :cond_57

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEditField()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v0

    if-eqz v0, :cond_57

    .line 5088
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEditField()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v0

    iget-object v2, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$6800(Lorg/telegram/ui/ChatActivity;)I

    move-result v2

    iget-object v3, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$6900(Lorg/telegram/ui/ChatActivity;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/Components/EditTextCaption;->setSelectionOverride(II)V

    .line 5089
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEditField()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextCaption;->makeSelectedStrike()V

    goto/16 :goto_17

    :cond_41
    const/16 v2, 0x38

    if-ne v0, v2, :cond_42

    .line 5092
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v0, :cond_57

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEditField()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v0

    if-eqz v0, :cond_57

    .line 5093
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEditField()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v0

    iget-object v2, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$6800(Lorg/telegram/ui/ChatActivity;)I

    move-result v2

    iget-object v3, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$6900(Lorg/telegram/ui/ChatActivity;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/Components/EditTextCaption;->setSelectionOverride(II)V

    .line 5094
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEditField()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextCaption;->makeSelectedUnderline()V

    goto/16 :goto_17

    :cond_42
    const/16 v2, 0x35

    if-ne v0, v2, :cond_43

    .line 5097
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v0, :cond_57

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEditField()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v0

    if-eqz v0, :cond_57

    .line 5098
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEditField()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v0

    iget-object v2, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$6800(Lorg/telegram/ui/ChatActivity;)I

    move-result v2

    iget-object v3, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$6900(Lorg/telegram/ui/ChatActivity;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/Components/EditTextCaption;->setSelectionOverride(II)V

    .line 5099
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEditField()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextCaption;->makeSelectedUrl()V

    goto/16 :goto_17

    :cond_43
    const/16 v2, 0x36

    if-ne v0, v2, :cond_44

    .line 5102
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v0, :cond_57

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEditField()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v0

    if-eqz v0, :cond_57

    .line 5103
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEditField()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v0

    iget-object v2, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$6800(Lorg/telegram/ui/ChatActivity;)I

    move-result v2

    iget-object v3, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$6900(Lorg/telegram/ui/ChatActivity;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/Components/EditTextCaption;->setSelectionOverride(II)V

    .line 5104
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEditField()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextCaption;->makeSelectedRegular()V

    goto/16 :goto_17

    :cond_44
    const/16 v2, 0x1b

    if-ne v0, v2, :cond_45

    .line 5107
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$13900(Lorg/telegram/ui/ChatActivity;)V

    goto/16 :goto_17

    :cond_45
    const/16 v2, 0x3c

    if-ne v0, v2, :cond_46

    .line 5109
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getTopicsController()Lorg/telegram/messenger/TopicsController;

    move-result-object v0

    iget-object v2, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v4, v2, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$14000(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    move-result-object v2

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->id:I

    iget-object v6, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ChatActivity;->access$14000(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    move-result-object v6

    iput-boolean v3, v6, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->closed:Z

    invoke-virtual {v0, v4, v5, v2, v3}, Lorg/telegram/messenger/TopicsController;->toggleCloseTopic(JIZ)V

    .line 5110
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$14100(Lorg/telegram/ui/ChatActivity;)V

    .line 5111
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$8200(Lorg/telegram/ui/ChatActivity;)V

    .line 5112
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0, v3}, Lorg/telegram/ui/ChatActivity;->access$13800(Lorg/telegram/ui/ChatActivity;Z)V

    goto/16 :goto_17

    :cond_46
    const/16 v2, 0x3d

    if-ne v0, v2, :cond_57

    .line 5114
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/TopicsFragment;->prepareToSwitchAnimation(Lorg/telegram/ui/ChatActivity;)V

    goto/16 :goto_17

    .line 5058
    :cond_47
    :goto_e
    iget-object v2, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v6, v2, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v6, :cond_57

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_57

    .line 5059
    iget-object v2, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v6, v2, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    if-ne v0, v5, :cond_48

    move v7, v3

    goto :goto_f

    :cond_48
    move v7, v4

    :goto_f
    iget-object v0, v2, Lorg/telegram/ui/ChatActivity;->userInfo:Lorg/telegram/tgnet/TLRPC$UserFull;

    if-eqz v0, :cond_49

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$UserFull;->video_calls_available:Z

    if-eqz v0, :cond_49

    move v8, v3

    goto :goto_10

    :cond_49
    move v8, v4

    :goto_10
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v9

    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v2, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/MessagesController;->getUserFull(J)Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object v10

    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;

    move-result-object v11

    invoke-static/range {v6 .. v11}, Lorg/telegram/ui/Components/voip/VoIPHelper;->startCall(Lorg/telegram/tgnet/TLRPC$User;ZZLandroid/app/Activity;Lorg/telegram/tgnet/TLRPC$UserFull;Lorg/telegram/messenger/AccountInstance;)V

    goto/16 :goto_17

    .line 4916
    :cond_4a
    :goto_11
    iget-object v6, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v6}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v6

    if-nez v6, :cond_4b

    return-void

    .line 4919
    :cond_4b
    iget-object v6, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ChatActivity;->access$6300(Lorg/telegram/ui/ChatActivity;)I

    move-result v6

    const/4 v11, 0x3

    if-ne v6, v11, :cond_51

    .line 4921
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getSavedDialogId()J

    move-result-wide v5

    cmp-long v0, v5, v7

    if-ltz v0, :cond_4c

    .line 4925
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    move-object v5, v9

    goto :goto_12

    .line 4927
    :cond_4c
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    neg-long v5, v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    move-object v5, v0

    move-object v0, v9

    .line 4929
    :goto_12
    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->isAnonymous(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v6

    if-eqz v6, :cond_4d

    .line 4930
    sget v0, Lorg/telegram/messenger/R$string;->AnonymousForward:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_13

    :cond_4d
    if-eqz v5, :cond_4e

    .line 4932
    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    goto :goto_13

    :cond_4e
    if-eqz v0, :cond_4f

    .line 4934
    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v0

    goto :goto_13

    :cond_4f
    const-string v0, ""

    .line 4936
    :goto_13
    new-instance v5, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v6, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v6}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v7}, Lorg/telegram/ui/ChatActivity;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    sget v6, Lorg/telegram/messenger/R$string;->ClearHistoryTitleSingle:I

    new-array v7, v3, [Ljava/lang/Object;

    aput-object v0, v7, v4

    .line 4937
    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v5

    sget v6, Lorg/telegram/messenger/R$string;->ClearHistoryMessageSingle:I

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    .line 4938
    invoke-static {v6, v3}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    sget v3, Lorg/telegram/messenger/R$string;->Delete:I

    .line 4939
    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ChatActivity$18$$ExternalSyntheticLambda0;

    invoke-direct {v4, v1}, Lorg/telegram/ui/ChatActivity$18$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ChatActivity$18;)V

    invoke-virtual {v0, v3, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    sget v3, Lorg/telegram/messenger/R$string;->Cancel:I

    .line 4943
    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v9}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    .line 4944
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    .line 4945
    iget-object v3, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v3, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 4946
    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/AlertDialog;->getButton(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_50

    .line 4948
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedBold:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_50
    return-void

    .line 4952
    :cond_51
    iget-object v2, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v6, v2, Lorg/telegram/ui/ChatActivity;->chatInfo:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v6, :cond_52

    iget-boolean v6, v6, Lorg/telegram/tgnet/TLRPC$ChatFull;->can_delete_channel:Z

    if-eqz v6, :cond_52

    move v6, v3

    goto :goto_14

    :cond_52
    move v6, v4

    :goto_14
    if-eq v0, v5, :cond_58

    if-ne v0, v10, :cond_54

    .line 4953
    iget-object v5, v2, Lorg/telegram/ui/ChatActivity;->currentEncryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    if-nez v5, :cond_54

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v2, :cond_53

    invoke-static {v2}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v2

    if-nez v2, :cond_53

    iget-object v2, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v2}, Lorg/telegram/messenger/UserObject;->isDeleted(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v2

    if-eqz v2, :cond_58

    :cond_53
    iget-object v2, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity;->chatInfo:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v2, :cond_54

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$ChatFull;->can_delete_channel:Z

    if-eqz v2, :cond_54

    goto :goto_18

    .line 4972
    :cond_54
    iget-object v11, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    if-ne v0, v10, :cond_55

    move v12, v3

    goto :goto_15

    :cond_55
    move v12, v4

    :goto_15
    iget-object v13, v11, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v14, v11, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v2, v11, Lorg/telegram/ui/ChatActivity;->currentEncryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    if-eqz v2, :cond_56

    move v15, v3

    goto :goto_16

    :cond_56
    move v15, v4

    :goto_16
    const/16 v16, 0x1

    new-instance v2, Lorg/telegram/ui/ChatActivity$18$$ExternalSyntheticLambda2;

    invoke-direct {v2, v1, v0, v6}, Lorg/telegram/ui/ChatActivity$18$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/ChatActivity$18;IZ)V

    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->themeDelegate:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    move/from16 v17, v6

    move-object/from16 v18, v2

    move-object/from16 v19, v0

    invoke-static/range {v11 .. v19}, Lorg/telegram/ui/Components/AlertsCreator;->createClearOrDeleteDialogAlert(Lorg/telegram/ui/ActionBar/BaseFragment;ZLorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$User;ZZZLorg/telegram/messenger/MessagesStorage$BooleanCallback;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    :cond_57
    :goto_17
    return-void

    .line 4954
    :cond_58
    :goto_18
    iget-object v11, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v12, -0x1

    iget-object v13, v11, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v14, v11, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    new-instance v0, Lorg/telegram/ui/ChatActivity$18$1;

    invoke-direct {v0, v1, v6}, Lorg/telegram/ui/ChatActivity$18$1;-><init>(Lorg/telegram/ui/ChatActivity$18;Z)V

    iget-object v2, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    .line 4969
    invoke-virtual {v2}, Lorg/telegram/ui/ChatActivity;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v17

    move v15, v6

    move-object/from16 v16, v0

    .line 4954
    invoke-static/range {v11 .. v17}, Lorg/telegram/ui/Components/AlertsCreator;->createClearDaysDialogAlert(Lorg/telegram/ui/ActionBar/BaseFragment;ILorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;ZLorg/telegram/messenger/MessagesStorage$BooleanCallback;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method
