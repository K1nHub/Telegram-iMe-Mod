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
.method public static synthetic $r8$lambda$PsWjQY5qLKWql69IvKJjnDssyJ4(Lorg/telegram/ui/ChatActivity$18;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatActivity$18;->lambda$onItemClick$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZiUu77vasCSztPyVK6_GyTOluSg(Lorg/telegram/ui/ChatActivity$18;IZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ChatActivity$18;->lambda$onItemClick$1(IZZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$ubtvqJp9C19SG31uZd-6J-Lj6MQ(Lorg/telegram/ui/ChatActivity$18;ZI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChatActivity$18;->lambda$onItemClick$0(ZI)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/ChatActivity;Landroid/content/Context;)V
    .locals 0

    .line 4822
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    iput-object p2, p0, Lorg/telegram/ui/ChatActivity$18;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;-><init>()V

    return-void
.end method

.method private synthetic lambda$onItemClick$0(ZI)V
    .locals 2

    if-lez p2, :cond_2

    .line 4972
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 4975
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

.method private synthetic lambda$onItemClick$1(IZZ)V
    .locals 5

    const/4 v0, 0x2

    const/16 v1, 0xf

    if-ne p1, v1, :cond_1

    .line 5008
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

    .line 5009
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatActivity;->access$2200(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v1

    invoke-virtual {p1, v1, v2, v0, p3}, Lorg/telegram/messenger/MessagesController;->deleteDialog(JIZ)V

    goto :goto_0

    :cond_1
    if-eq p1, v1, :cond_2

    .line 5012
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    sget v1, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    invoke-virtual {p1, p2, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 5013
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    const/4 p2, 0x0

    new-array v2, p2, [Ljava/lang/Object;

    invoke-virtual {p1, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 5014
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ChatActivity;->finishFragment()V

    .line 5015
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v1, Lorg/telegram/messenger/NotificationCenter;->needDeleteDialog:I

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$2200(Lorg/telegram/ui/ChatActivity;)J

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

    .line 5017
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p1, p3, p2}, Lorg/telegram/ui/ChatActivity;->performHistoryClear(ZZ)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$onItemClick$2(Landroid/view/View;)V
    .locals 1

    .line 5074
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$6800(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->closeSubMenu()V

    .line 5075
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object p1, p1, Lorg/telegram/ui/ChatActivity;->chatAttachAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 5076
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->setEditingMessageObject(Lorg/telegram/messenger/MessageObject;)V

    .line 5078
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$9300(Lorg/telegram/ui/ChatActivity;)V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 23

    move-object/from16 v1, p0

    move/from16 v0, p1

    .line 4826
    sget v2, Lcom/smedialink/common/IdFabric$Menu;->GROUP_MESSAGES:I

    if-ne v0, v2, :cond_0

    .line 4827
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$11400(Lorg/telegram/ui/ChatActivity;)V

    goto/16 :goto_1a

    .line 4828
    :cond_0
    sget v2, Lcom/smedialink/common/IdFabric$Menu;->UNGROUP_MESSAGES:I

    if-ne v0, v2, :cond_1

    .line 4829
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$11500(Lorg/telegram/ui/ChatActivity;)V

    goto/16 :goto_1a

    .line 4830
    :cond_1
    sget v2, Lcom/smedialink/common/IdFabric$Menu;->CHAT_ADD_TO_BOOKMARKS:I

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v0, v2, :cond_53

    sget v2, Lcom/smedialink/common/IdFabric$Menu;->CHAT_REMOVE_FROM_BOOKMARKS:I

    if-ne v0, v2, :cond_2

    goto/16 :goto_16

    .line 4862
    :cond_2
    sget v2, Lcom/smedialink/common/IdFabric$Menu;->CHAT_BOOKMARKS:I

    if-ne v0, v2, :cond_3

    .line 4863
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0, v5, v6}, Lorg/telegram/ui/ChatActivity;->access$12300(Lorg/telegram/ui/ChatActivity;ZZ)V

    goto/16 :goto_1a

    .line 4864
    :cond_3
    sget v2, Lcom/smedialink/common/IdFabric$Menu;->CHAT_CLEAR_CACHE:I

    if-ne v0, v2, :cond_4

    .line 4865
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$12400(Lorg/telegram/ui/ChatActivity;)V

    goto/16 :goto_1a

    .line 4866
    :cond_4
    sget v2, Lcom/smedialink/common/IdFabric$Menu;->CHAT_CLOUD_LOCK:I

    if-ne v0, v2, :cond_5

    .line 4867
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getScreenLockedSection()Lorg/fork/enums/LockedSection;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/ui/PasscodeActivity;->determineOpenFragment(Lorg/fork/enums/LockedSection;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_1a

    .line 4868
    :cond_5
    sget v2, Lcom/smedialink/common/IdFabric$Menu;->MESSAGE_FORWARD_CLOUD:I

    if-ne v0, v2, :cond_6

    .line 4869
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0, v6, v6}, Lorg/telegram/ui/ChatActivity;->access$12500(Lorg/telegram/ui/ChatActivity;ZZ)V

    goto/16 :goto_1a

    .line 4870
    :cond_6
    sget v2, Lcom/smedialink/common/IdFabric$Menu;->SWITCH_ARCHIVE:I

    if-ne v0, v2, :cond_7

    .line 4871
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$12600(Lorg/telegram/ui/ChatActivity;)V

    goto/16 :goto_1a

    .line 4872
    :cond_7
    sget v2, Lcom/smedialink/common/IdFabric$Menu;->CHAT_ADD_TO_FOLDER:I

    if-ne v0, v2, :cond_8

    .line 4873
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$12700(Lorg/telegram/ui/ChatActivity;)V

    goto/16 :goto_1a

    .line 4874
    :cond_8
    sget v2, Lcom/smedialink/common/IdFabric$Menu;->CHAT_SELECT_TOPIC:I

    if-ne v0, v2, :cond_9

    .line 4875
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$12800(Lorg/telegram/ui/ChatActivity;)V

    goto/16 :goto_1a

    .line 4876
    :cond_9
    sget v2, Lcom/smedialink/common/IdFabric$Menu;->CHAT_TRANSLATE_SETTINGS:I

    if-ne v0, v2, :cond_a

    .line 4877
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$100(Lorg/telegram/ui/ChatActivity;)V

    goto/16 :goto_1a

    .line 4878
    :cond_a
    sget v2, Lcom/smedialink/common/IdFabric$Menu;->CHAT_JUMP_TO_START:I

    if-ne v0, v2, :cond_b

    .line 4879
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$12900(Lorg/telegram/ui/ChatActivity;)V

    goto/16 :goto_1a

    .line 4880
    :cond_b
    sget v2, Lcom/smedialink/common/IdFabric$Menu;->CHAT_TOGGLE_ALBUM:I

    if-ne v0, v2, :cond_c

    .line 4881
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$13000(Lorg/telegram/ui/ChatActivity;)V

    goto/16 :goto_1a

    .line 4882
    :cond_c
    sget v2, Lcom/smedialink/common/IdFabric$Menu;->CHAT_DONATE:I

    if-ne v0, v2, :cond_d

    .line 4883
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$13100(Lorg/telegram/ui/ChatActivity;)V

    goto/16 :goto_1a

    .line 4884
    :cond_d
    sget v2, Lcom/smedialink/common/IdFabric$Menu;->CHAT_ALBUMS:I

    if-ne v0, v2, :cond_f

    .line 4885
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->isAlbumsIntroShown:Z

    if-eqz v0, :cond_e

    .line 4886
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {}, Lorg/telegram/ui/DialogsActivity;->newInstanceInAlbumsMode()Lorg/telegram/ui/DialogsActivity;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_1a

    .line 4888
    :cond_e
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    new-instance v2, Lorg/telegram/ui/ActionIntroActivity;

    const/16 v3, 0x64

    invoke-direct {v2, v3}, Lorg/telegram/ui/ActionIntroActivity;-><init>(I)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_1a

    .line 4890
    :cond_f
    sget v2, Lcom/smedialink/common/IdFabric$Menu;->CHAT_CLOUD_OPEN_BY_DEFAULT:I

    if-ne v0, v2, :cond_10

    .line 4891
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getAlbumsController()Lorg/fork/controller/AlbumsController;

    move-result-object v0

    invoke-virtual {v0, v5}, Lorg/fork/controller/AlbumsController;->setOpenAlbumsInsteadCloudEnabled(Z)V

    .line 4892
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getAlbumsController()Lorg/fork/controller/AlbumsController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fork/controller/AlbumsController;->saveConfig()V

    .line 4893
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$13200(Lorg/telegram/ui/ChatActivity;)V

    .line 4894
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$13300(Lorg/telegram/ui/ChatActivity;)V

    goto/16 :goto_1a

    :cond_10
    const/4 v2, -0x1

    if-ne v0, v2, :cond_12

    .line 4897
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$13400(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->isActionModeShowed()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 4898
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->clearSelectionMode()V

    goto/16 :goto_1a

    .line 4900
    :cond_11
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0, v6}, Lorg/telegram/ui/ChatActivity;->checkRecordLocked(Z)Z

    move-result v0

    if-nez v0, :cond_5c

    .line 4901
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->finishFragment()V

    goto/16 :goto_1a

    :cond_12
    const/16 v2, 0x3a

    if-ne v0, v2, :cond_13

    .line 4905
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/TopicsFragment;->prepareToSwitchAnimation(Lorg/telegram/ui/ChatActivity;)V

    goto/16 :goto_1a

    :cond_13
    const/16 v7, 0xa

    const-wide/16 v8, 0x0

    if-ne v0, v7, :cond_1c

    .line 4907
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    move-wide v10, v8

    const/4 v3, 0x1

    :goto_0
    if-ltz v3, :cond_1a

    .line 4910
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v12, 0x0

    .line 4911
    :goto_1
    iget-object v13, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v13}, Lorg/telegram/ui/ChatActivity;->access$11700(Lorg/telegram/ui/ChatActivity;)[Landroid/util/SparseArray;

    move-result-object v13

    aget-object v13, v13, v3

    invoke-virtual {v13}, Landroid/util/SparseArray;->size()I

    move-result v13

    if-ge v12, v13, :cond_14

    .line 4912
    iget-object v13, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v13}, Lorg/telegram/ui/ChatActivity;->access$11700(Lorg/telegram/ui/ChatActivity;)[Landroid/util/SparseArray;

    move-result-object v13

    aget-object v13, v13, v3

    invoke-virtual {v13, v12}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 4914
    :cond_14
    iget-object v12, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v12, v12, Lorg/telegram/ui/ChatActivity;->currentEncryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    if-nez v12, :cond_15

    .line 4915
    invoke-static {v7}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    goto :goto_2

    .line 4917
    :cond_15
    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object v12

    invoke-static {v7, v12}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :goto_2
    const/4 v12, 0x0

    .line 4919
    :goto_3
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v12, v13, :cond_19

    .line 4920
    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    .line 4921
    iget-object v14, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v14}, Lorg/telegram/ui/ChatActivity;->access$11700(Lorg/telegram/ui/ChatActivity;)[Landroid/util/SparseArray;

    move-result-object v14

    aget-object v14, v14, v3

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual {v14, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/telegram/messenger/MessageObject;

    .line 4922
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v14

    if-eqz v14, :cond_16

    const-string v14, "\n\n"

    .line 4923
    invoke-virtual {v0, v14}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 4925
    :cond_16
    iget-object v14, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-eq v15, v6, :cond_18

    iget-object v15, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v15, v15, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v15, :cond_17

    iget-boolean v15, v15, Lorg/telegram/tgnet/TLRPC$User;->self:Z

    if-nez v15, :cond_18

    :cond_17
    const/4 v15, 0x1

    goto :goto_4

    :cond_18
    const/4 v15, 0x0

    :goto_4
    invoke-static {v14, v13, v10, v11, v15}, Lorg/telegram/ui/ChatActivity;->access$13500(Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessageObject;JZ)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 4926
    invoke-virtual {v13}, Lorg/telegram/messenger/MessageObject;->getFromChatId()J

    move-result-wide v10

    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    :cond_19
    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_0

    .line 4929
    :cond_1a
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    if-eqz v3, :cond_1b

    .line 4930
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->addToClipboard(Ljava/lang/CharSequence;)Z

    .line 4931
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$13600(Lorg/telegram/ui/ChatActivity;)V

    .line 4932
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$13700(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/UndoView;

    move-result-object v0

    invoke-virtual {v0, v8, v9, v2, v4}, Lorg/telegram/ui/Components/UndoView;->showWithAction(JILjava/lang/Runnable;)V

    .line 4934
    :cond_1b
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->clearSelectionMode()V

    goto/16 :goto_1a

    :cond_1c
    const/16 v2, 0xc

    if-ne v0, v2, :cond_21

    .line 4936
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1d

    return-void

    .line 4940
    :cond_1d
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->isForwardingEditor()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 4941
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_5
    if-ltz v6, :cond_1f

    const/4 v2, 0x0

    .line 4943
    :goto_6
    iget-object v3, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$4000(Lorg/telegram/ui/ChatActivity;)[Landroid/util/SparseArray;

    move-result-object v3

    aget-object v3, v3, v6

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1e

    .line 4944
    iget-object v3, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$4000(Lorg/telegram/ui/ChatActivity;)[Landroid/util/SparseArray;

    move-result-object v3

    aget-object v3, v3, v6

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 4946
    :cond_1e
    iget-object v2, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$4000(Lorg/telegram/ui/ChatActivity;)[Landroid/util/SparseArray;

    move-result-object v2

    aget-object v2, v2, v6

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    add-int/lit8 v6, v6, -0x1

    goto :goto_5

    .line 4948
    :cond_1f
    iget-object v2, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$12200(Lorg/telegram/ui/ChatActivity;)V

    .line 4949
    iget-object v2, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2, v0, v8, v9}, Lorg/telegram/ui/ChatActivity;->access$13800(Lorg/telegram/ui/ChatActivity;Ljava/util/ArrayList;J)V

    return-void

    .line 4953
    :cond_20
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0, v4, v4}, Lorg/telegram/ui/ChatActivity;->access$13900(Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject$GroupedMessages;)V

    goto/16 :goto_1a

    :cond_21
    const/16 v2, 0xb

    if-ne v0, v2, :cond_22

    .line 4955
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0, v6, v5}, Lorg/telegram/ui/ChatActivity;->access$12500(Lorg/telegram/ui/ChatActivity;ZZ)V

    goto/16 :goto_1a

    :cond_22
    const/16 v2, 0x19

    if-ne v0, v2, :cond_26

    .line 4957
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x1

    :goto_7
    if-ltz v2, :cond_24

    const/4 v3, 0x0

    .line 4959
    :goto_8
    iget-object v4, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$4000(Lorg/telegram/ui/ChatActivity;)[Landroid/util/SparseArray;

    move-result-object v4

    aget-object v4, v4, v2

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_23

    .line 4960
    iget-object v4, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$4000(Lorg/telegram/ui/ChatActivity;)[Landroid/util/SparseArray;

    move-result-object v4

    aget-object v4, v4, v2

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 4962
    :cond_23
    iget-object v3, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$4000(Lorg/telegram/ui/ChatActivity;)[Landroid/util/SparseArray;

    move-result-object v3

    aget-object v3, v3, v2

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    .line 4963
    iget-object v3, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$11700(Lorg/telegram/ui/ChatActivity;)[Landroid/util/SparseArray;

    move-result-object v3

    aget-object v3, v3, v2

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    .line 4964
    iget-object v3, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$11800(Lorg/telegram/ui/ChatActivity;)[Landroid/util/SparseArray;

    move-result-object v3

    aget-object v3, v3, v2

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    add-int/lit8 v2, v2, -0x1

    goto :goto_7

    .line 4966
    :cond_24
    iget-object v2, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$14000(Lorg/telegram/ui/ChatActivity;)I

    move-result v2

    if-lez v2, :cond_25

    const/4 v5, 0x1

    .line 4967
    :cond_25
    iget-object v2, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$12200(Lorg/telegram/ui/ChatActivity;)V

    .line 4968
    iget-object v2, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2, v6}, Lorg/telegram/ui/ChatActivity;->access$8700(Lorg/telegram/ui/ChatActivity;Z)V

    .line 4969
    iget-object v2, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$4400(Lorg/telegram/ui/ChatActivity;)V

    .line 4970
    iget-object v2, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ChatActivity$18$$ExternalSyntheticLambda2;

    invoke-direct {v4, v1, v5}, Lorg/telegram/ui/ChatActivity$18$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/ChatActivity$18;Z)V

    invoke-static {v2, v3, v0, v4}, Lorg/telegram/messenger/MediaController;->saveFilesFromMessages(Landroid/content/Context;Lorg/telegram/messenger/AccountInstance;Ljava/util/ArrayList;Lorg/telegram/messenger/MessagesStorage$IntCallback;)V

    goto/16 :goto_1a

    :cond_26
    const/16 v2, 0xd

    if-ne v0, v2, :cond_28

    .line 4979
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_27

    return-void

    .line 4982
    :cond_27
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

    goto/16 :goto_1a

    :cond_28
    const/16 v2, 0x1a

    const/16 v7, 0xf

    if-eq v0, v7, :cond_4b

    const/16 v8, 0x10

    if-eq v0, v8, :cond_4b

    if-ne v0, v2, :cond_29

    goto/16 :goto_11

    :cond_29
    const/16 v2, 0x11

    if-ne v0, v2, :cond_2d

    .line 5022
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v0, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v2, :cond_2c

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_2a

    goto :goto_9

    .line 5025
    :cond_2a
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$14100(Lorg/telegram/ui/ChatActivity;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_2b

    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$14100(Lorg/telegram/ui/ChatActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2b

    .line 5026
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$14100(Lorg/telegram/ui/ChatActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2, v4}, Lorg/telegram/ui/ChatActivity;->shareMyContact(ILorg/telegram/messenger/MessageObject;)V

    goto/16 :goto_1a

    .line 5028
    :cond_2b
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 5029
    iget-object v2, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$User;->id:J

    const-string v4, "user_id"

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v2, "addContact"

    .line 5030
    invoke-virtual {v0, v2, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 5031
    iget-object v2, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    new-instance v3, Lorg/telegram/ui/ContactAddActivity;

    invoke-direct {v3, v0}, Lorg/telegram/ui/ContactAddActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_1a

    :cond_2c
    :goto_9
    return-void

    :cond_2d
    const/16 v2, 0x12

    if-ne v0, v2, :cond_2e

    .line 5034
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0, v5}, Lorg/telegram/ui/ChatActivity;->access$14200(Lorg/telegram/ui/ChatActivity;Z)V

    goto/16 :goto_1a

    :cond_2e
    const/16 v2, 0x18

    if-ne v0, v2, :cond_2f

    .line 5037
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

    goto/16 :goto_1a

    :catch_0
    move-exception v0

    .line 5039
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_1a

    :cond_2f
    const/16 v2, 0x15

    if-ne v0, v2, :cond_30

    .line 5042
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$2200(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v3

    const/4 v5, 0x0

    iget-object v6, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v7, v6, Lorg/telegram/ui/ChatActivity;->themeDelegate:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/AlertsCreator;->createReportAlert(Landroid/content/Context;JILorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/lang/Runnable;)V

    goto/16 :goto_1a

    :cond_30
    const/16 v2, 0x16

    if-ne v0, v2, :cond_33

    const/4 v0, 0x0

    :goto_a
    if-ge v0, v3, :cond_32

    const/4 v2, 0x0

    .line 5045
    :goto_b
    iget-object v4, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$11800(Lorg/telegram/ui/ChatActivity;)[Landroid/util/SparseArray;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v2, v4, :cond_31

    .line 5046
    iget-object v4, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$11800(Lorg/telegram/ui/ChatActivity;)[Landroid/util/SparseArray;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    move-object v9, v4

    check-cast v9, Lorg/telegram/messenger/MessageObject;

    .line 5047
    iget-object v4, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMediaDataController()Lorg/telegram/messenger/MediaDataController;

    move-result-object v7

    const/4 v8, 0x2

    invoke-virtual {v9}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    const-wide/16 v13, 0x3e8

    div-long/2addr v11, v13

    long-to-int v11, v11

    iget-object v4, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$14300(Lorg/telegram/ui/ChatActivity;)Z

    move-result v4

    xor-int/lit8 v12, v4, 0x1

    invoke-virtual/range {v7 .. v12}, Lorg/telegram/messenger/MediaDataController;->addRecentSticker(ILjava/lang/Object;Lorg/telegram/tgnet/TLRPC$Document;IZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_31
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 5050
    :cond_32
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->clearSelectionMode()V

    goto/16 :goto_1a

    :cond_33
    const/16 v2, 0x17

    if-ne v0, v2, :cond_37

    const/4 v0, 0x1

    :goto_c
    if-ltz v0, :cond_36

    if-nez v4, :cond_35

    .line 5054
    iget-object v2, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$4000(Lorg/telegram/ui/ChatActivity;)[Landroid/util/SparseArray;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ne v2, v6, :cond_35

    .line 5055
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    .line 5056
    :goto_d
    iget-object v4, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$4000(Lorg/telegram/ui/ChatActivity;)[Landroid/util/SparseArray;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_34

    .line 5057
    iget-object v4, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$4000(Lorg/telegram/ui/ChatActivity;)[Landroid/util/SparseArray;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 5059
    :cond_34
    iget-object v3, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$14400(Lorg/telegram/ui/ChatActivity;)[Landroid/util/SparseArray;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    move-object v4, v2

    .line 5061
    :cond_35
    iget-object v2, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$4000(Lorg/telegram/ui/ChatActivity;)[Landroid/util/SparseArray;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 5062
    iget-object v2, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$11700(Lorg/telegram/ui/ChatActivity;)[Landroid/util/SparseArray;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 5063
    iget-object v2, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$11800(Lorg/telegram/ui/ChatActivity;)[Landroid/util/SparseArray;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_c

    .line 5065
    :cond_36
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$12200(Lorg/telegram/ui/ChatActivity;)V

    .line 5066
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0, v4}, Lorg/telegram/ui/ChatActivity;->access$14500(Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessageObject;)V

    .line 5068
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0, v6}, Lorg/telegram/ui/ChatActivity;->access$8700(Lorg/telegram/ui/ChatActivity;Z)V

    .line 5069
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$4400(Lorg/telegram/ui/ChatActivity;)V

    goto/16 :goto_1a

    :cond_37
    const/16 v2, 0xe

    if-ne v0, v2, :cond_38

    .line 5071
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    iget-object v8, v1, Lorg/telegram/ui/ChatActivity$18;->val$context:Landroid/content/Context;

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x1

    iget-object v2, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ChatActivity;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v12

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 5072
    sget v2, Lorg/telegram/messenger/R$string;->AttachMenu:I

    const-string v3, "AttachMenu"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$drawable;->input_attach:I

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    .line 5073
    new-instance v2, Lorg/telegram/ui/ChatActivity$18$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lorg/telegram/ui/ChatActivity$18$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ChatActivity$18;)V

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5080
    iget-object v2, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$6800(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v2

    iget-object v3, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$6900(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/ActionBarMenu$LazyItem;->createView()Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->toggleSubMenu(Landroid/view/View;Landroid/view/View;)V

    goto/16 :goto_1a

    :cond_38
    const/16 v2, 0x1e

    if-ne v0, v2, :cond_39

    .line 5082
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getSendMessagesHelper()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v2

    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$2200(Lorg/telegram/ui/ChatActivity;)J

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

    invoke-virtual/range {v2 .. v17}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$WebPage;ZLjava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;ZILorg/telegram/messenger/MessageObject$SendAnimationData;ZLjava/lang/String;)V

    goto/16 :goto_1a

    :cond_39
    const/16 v2, 0x1f

    if-ne v0, v2, :cond_3a

    .line 5084
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getSendMessagesHelper()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v2

    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$2200(Lorg/telegram/ui/ChatActivity;)J

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

    invoke-virtual/range {v2 .. v17}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$WebPage;ZLjava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;ZILorg/telegram/messenger/MessageObject$SendAnimationData;ZLjava/lang/String;)V

    goto/16 :goto_1a

    :cond_3a
    const/16 v2, 0x28

    if-ne v0, v2, :cond_3b

    .line 5086
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0, v4}, Lorg/telegram/ui/ChatActivity;->access$14600(Lorg/telegram/ui/ChatActivity;Ljava/lang/String;)V

    goto/16 :goto_1a

    :cond_3b
    const/16 v2, 0x3e

    if-ne v0, v2, :cond_3c

    .line 5088
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getTranslateController()Lorg/telegram/messenger/TranslateController;

    move-result-object v0

    iget-object v2, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, v5, v6}, Lorg/telegram/messenger/TranslateController;->setHideTranslateDialog(JZZ)V

    .line 5089
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getTranslateController()Lorg/telegram/messenger/TranslateController;

    move-result-object v0

    iget-object v2, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, v6}, Lorg/telegram/messenger/TranslateController;->toggleTranslatingDialog(JZ)Z

    move-result v0

    if-nez v0, :cond_5c

    .line 5090
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0, v6}, Lorg/telegram/ui/ChatActivity;->access$14700(Lorg/telegram/ui/ChatActivity;Z)V

    goto/16 :goto_1a

    :cond_3c
    const/16 v2, 0x20

    const/16 v3, 0x21

    if-eq v0, v2, :cond_48

    if-ne v0, v3, :cond_3d

    goto/16 :goto_e

    :cond_3d
    const/16 v2, 0x32

    if-ne v0, v2, :cond_3e

    .line 5097
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v0, :cond_5c

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEditField()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v0

    if-eqz v0, :cond_5c

    .line 5098
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEditField()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v0

    iget-object v2, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$7700(Lorg/telegram/ui/ChatActivity;)I

    move-result v2

    iget-object v3, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$7800(Lorg/telegram/ui/ChatActivity;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/Components/EditTextCaption;->setSelectionOverride(II)V

    .line 5099
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEditField()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextCaption;->makeSelectedBold()V

    goto/16 :goto_1a

    :cond_3e
    const/16 v2, 0x33

    if-ne v0, v2, :cond_3f

    .line 5102
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v0, :cond_5c

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEditField()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v0

    if-eqz v0, :cond_5c

    .line 5103
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEditField()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v0

    iget-object v2, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$7700(Lorg/telegram/ui/ChatActivity;)I

    move-result v2

    iget-object v3, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$7800(Lorg/telegram/ui/ChatActivity;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/Components/EditTextCaption;->setSelectionOverride(II)V

    .line 5104
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEditField()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextCaption;->makeSelectedItalic()V

    goto/16 :goto_1a

    :cond_3f
    const/16 v2, 0x39

    if-ne v0, v2, :cond_40

    .line 5107
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v0, :cond_5c

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEditField()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v0

    if-eqz v0, :cond_5c

    .line 5108
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEditField()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v0

    iget-object v2, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$7700(Lorg/telegram/ui/ChatActivity;)I

    move-result v2

    iget-object v3, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$7800(Lorg/telegram/ui/ChatActivity;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/Components/EditTextCaption;->setSelectionOverride(II)V

    .line 5109
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEditField()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextCaption;->makeSelectedSpoiler()V

    goto/16 :goto_1a

    :cond_40
    const/16 v2, 0x34

    if-ne v0, v2, :cond_41

    .line 5112
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v0, :cond_5c

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEditField()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v0

    if-eqz v0, :cond_5c

    .line 5113
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEditField()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v0

    iget-object v2, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$7700(Lorg/telegram/ui/ChatActivity;)I

    move-result v2

    iget-object v3, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$7800(Lorg/telegram/ui/ChatActivity;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/Components/EditTextCaption;->setSelectionOverride(II)V

    .line 5114
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEditField()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextCaption;->makeSelectedMono()V

    goto/16 :goto_1a

    :cond_41
    const/16 v2, 0x37

    if-ne v0, v2, :cond_42

    .line 5117
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v0, :cond_5c

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEditField()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v0

    if-eqz v0, :cond_5c

    .line 5118
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEditField()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v0

    iget-object v2, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$7700(Lorg/telegram/ui/ChatActivity;)I

    move-result v2

    iget-object v3, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$7800(Lorg/telegram/ui/ChatActivity;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/Components/EditTextCaption;->setSelectionOverride(II)V

    .line 5119
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEditField()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextCaption;->makeSelectedStrike()V

    goto/16 :goto_1a

    :cond_42
    const/16 v2, 0x38

    if-ne v0, v2, :cond_43

    .line 5122
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v0, :cond_5c

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEditField()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v0

    if-eqz v0, :cond_5c

    .line 5123
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEditField()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v0

    iget-object v2, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$7700(Lorg/telegram/ui/ChatActivity;)I

    move-result v2

    iget-object v3, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$7800(Lorg/telegram/ui/ChatActivity;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/Components/EditTextCaption;->setSelectionOverride(II)V

    .line 5124
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEditField()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextCaption;->makeSelectedUnderline()V

    goto/16 :goto_1a

    :cond_43
    const/16 v2, 0x35

    if-ne v0, v2, :cond_44

    .line 5127
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v0, :cond_5c

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEditField()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v0

    if-eqz v0, :cond_5c

    .line 5128
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEditField()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v0

    iget-object v2, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$7700(Lorg/telegram/ui/ChatActivity;)I

    move-result v2

    iget-object v3, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$7800(Lorg/telegram/ui/ChatActivity;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/Components/EditTextCaption;->setSelectionOverride(II)V

    .line 5129
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEditField()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextCaption;->makeSelectedUrl()V

    goto/16 :goto_1a

    :cond_44
    const/16 v2, 0x36

    if-ne v0, v2, :cond_45

    .line 5132
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    if-eqz v0, :cond_5c

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEditField()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v0

    if-eqz v0, :cond_5c

    .line 5133
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEditField()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v0

    iget-object v2, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$7700(Lorg/telegram/ui/ChatActivity;)I

    move-result v2

    iget-object v3, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$7800(Lorg/telegram/ui/ChatActivity;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/Components/EditTextCaption;->setSelectionOverride(II)V

    .line 5134
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getEditField()Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextCaption;->makeSelectedRegular()V

    goto/16 :goto_1a

    :cond_45
    const/16 v2, 0x1b

    if-ne v0, v2, :cond_46

    .line 5137
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$14800(Lorg/telegram/ui/ChatActivity;)V

    goto/16 :goto_1a

    :cond_46
    const/16 v2, 0x3c

    if-ne v0, v2, :cond_47

    .line 5139
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getTopicsController()Lorg/telegram/messenger/TopicsController;

    move-result-object v0

    iget-object v2, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v3, v2, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v3, v3, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$14900(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    move-result-object v2

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->id:I

    iget-object v5, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChatActivity;->access$14900(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    move-result-object v5

    iput-boolean v6, v5, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->closed:Z

    invoke-virtual {v0, v3, v4, v2, v6}, Lorg/telegram/messenger/TopicsController;->toggleCloseTopic(JIZ)V

    .line 5140
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$15000(Lorg/telegram/ui/ChatActivity;)V

    .line 5141
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$8800(Lorg/telegram/ui/ChatActivity;)V

    .line 5142
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0, v6}, Lorg/telegram/ui/ChatActivity;->access$14700(Lorg/telegram/ui/ChatActivity;Z)V

    goto/16 :goto_1a

    :cond_47
    const/16 v2, 0x3d

    if-ne v0, v2, :cond_5c

    .line 5144
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/TopicsFragment;->prepareToSwitchAnimation(Lorg/telegram/ui/ChatActivity;)V

    goto/16 :goto_1a

    .line 5093
    :cond_48
    :goto_e
    iget-object v2, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v4, v2, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v4, :cond_5c

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_5c

    .line 5094
    iget-object v2, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v7, v2, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    if-ne v0, v3, :cond_49

    const/4 v8, 0x1

    goto :goto_f

    :cond_49
    const/4 v8, 0x0

    :goto_f
    iget-object v0, v2, Lorg/telegram/ui/ChatActivity;->userInfo:Lorg/telegram/tgnet/TLRPC$UserFull;

    if-eqz v0, :cond_4a

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$UserFull;->video_calls_available:Z

    if-eqz v0, :cond_4a

    const/4 v9, 0x1

    goto :goto_10

    :cond_4a
    const/4 v9, 0x0

    :goto_10
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v10

    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v2, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/MessagesController;->getUserFull(J)Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object v11

    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;

    move-result-object v12

    invoke-static/range {v7 .. v12}, Lorg/telegram/ui/Components/voip/VoIPHelper;->startCall(Lorg/telegram/tgnet/TLRPC$User;ZZLandroid/app/Activity;Lorg/telegram/tgnet/TLRPC$UserFull;Lorg/telegram/messenger/AccountInstance;)V

    goto/16 :goto_1a

    .line 4984
    :cond_4b
    :goto_11
    iget-object v3, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-nez v3, :cond_4c

    return-void

    .line 4987
    :cond_4c
    iget-object v3, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v4, v3, Lorg/telegram/ui/ChatActivity;->chatInfo:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v4, :cond_4d

    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$ChatFull;->can_delete_channel:Z

    if-eqz v4, :cond_4d

    const/4 v4, 0x1

    goto :goto_12

    :cond_4d
    const/4 v4, 0x0

    :goto_12
    if-eq v0, v2, :cond_52

    if-ne v0, v7, :cond_4f

    .line 4988
    iget-object v2, v3, Lorg/telegram/ui/ChatActivity;->currentEncryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    if-nez v2, :cond_4f

    iget-object v2, v3, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v2, :cond_4e

    invoke-static {v2}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v2

    if-nez v2, :cond_4e

    iget-object v2, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v2}, Lorg/telegram/messenger/UserObject;->isDeleted(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v2

    if-eqz v2, :cond_52

    :cond_4e
    iget-object v2, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity;->chatInfo:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v2, :cond_4f

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$ChatFull;->can_delete_channel:Z

    if-eqz v2, :cond_4f

    goto :goto_15

    .line 5007
    :cond_4f
    iget-object v8, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    if-ne v0, v7, :cond_50

    const/4 v9, 0x1

    goto :goto_13

    :cond_50
    const/4 v9, 0x0

    :goto_13
    iget-object v10, v8, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v11, v8, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v2, v8, Lorg/telegram/ui/ChatActivity;->currentEncryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    if-eqz v2, :cond_51

    const/4 v12, 0x1

    goto :goto_14

    :cond_51
    const/4 v12, 0x0

    :goto_14
    const/4 v13, 0x1

    new-instance v15, Lorg/telegram/ui/ChatActivity$18$$ExternalSyntheticLambda1;

    invoke-direct {v15, v1, v0, v4}, Lorg/telegram/ui/ChatActivity$18$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/ChatActivity$18;IZ)V

    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->themeDelegate:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    move v14, v4

    move-object/from16 v16, v0

    invoke-static/range {v8 .. v16}, Lorg/telegram/ui/Components/AlertsCreator;->createClearOrDeleteDialogAlert(Lorg/telegram/ui/ActionBar/BaseFragment;ZLorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$User;ZZZLorg/telegram/messenger/MessagesStorage$BooleanCallback;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto/16 :goto_1a

    .line 4989
    :cond_52
    :goto_15
    iget-object v8, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v9, -0x1

    iget-object v10, v8, Lorg/telegram/ui/ChatActivity;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v11, v8, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    new-instance v13, Lorg/telegram/ui/ChatActivity$18$1;

    invoke-direct {v13, v1, v4}, Lorg/telegram/ui/ChatActivity$18$1;-><init>(Lorg/telegram/ui/ChatActivity$18;Z)V

    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    .line 5004
    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v14

    move v12, v4

    .line 4989
    invoke-static/range {v8 .. v14}, Lorg/telegram/ui/Components/AlertsCreator;->createClearDaysDialogAlert(Lorg/telegram/ui/ActionBar/BaseFragment;ILorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;ZLorg/telegram/messenger/MessagesStorage$BooleanCallback;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void

    .line 4831
    :cond_53
    :goto_16
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4832
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    const/4 v8, 0x1

    :goto_17
    if-ltz v8, :cond_58

    const/4 v9, 0x0

    .line 4834
    :goto_18
    iget-object v10, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v10}, Lorg/telegram/ui/ChatActivity;->access$4000(Lorg/telegram/ui/ChatActivity;)[Landroid/util/SparseArray;

    move-result-object v10

    aget-object v10, v10, v8

    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v10

    if-ge v9, v10, :cond_57

    .line 4835
    iget-object v10, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v10}, Lorg/telegram/ui/ChatActivity;->access$4000(Lorg/telegram/ui/ChatActivity;)[Landroid/util/SparseArray;

    move-result-object v10

    aget-object v10, v10, v8

    invoke-virtual {v10, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/messenger/MessageObject;

    .line 4836
    iget-object v11, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v11}, Lorg/telegram/ui/ChatActivity;->access$2800(Lorg/telegram/ui/ChatActivity;)Landroidx/collection/LongSparseArray;

    move-result-object v11

    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->getGroupId()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/messenger/MessageObject$GroupedMessages;

    if-eqz v11, :cond_54

    .line 4837
    iget-object v12, v11, Lorg/telegram/messenger/MessageObject$GroupedMessages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_54

    .line 4838
    iget-object v10, v11, Lorg/telegram/messenger/MessageObject$GroupedMessages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/messenger/MessageObject;

    .line 4840
    :cond_54
    sget v11, Lcom/smedialink/common/IdFabric$Menu;->CHAT_REMOVE_FROM_BOOKMARKS:I

    if-eq v0, v11, :cond_55

    iget-object v11, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v11}, Lorg/telegram/ui/ChatActivity;->access$11600(Lorg/telegram/ui/ChatActivity;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_56

    .line 4841
    :cond_55
    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4842
    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v7, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_56
    add-int/lit8 v9, v9, 0x1

    goto :goto_18

    .line 4845
    :cond_57
    iget-object v9, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v9}, Lorg/telegram/ui/ChatActivity;->access$4000(Lorg/telegram/ui/ChatActivity;)[Landroid/util/SparseArray;

    move-result-object v9

    aget-object v9, v9, v8

    invoke-virtual {v9}, Landroid/util/SparseArray;->clear()V

    .line 4846
    iget-object v9, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v9}, Lorg/telegram/ui/ChatActivity;->access$11700(Lorg/telegram/ui/ChatActivity;)[Landroid/util/SparseArray;

    move-result-object v9

    aget-object v9, v9, v8

    invoke-virtual {v9}, Landroid/util/SparseArray;->clear()V

    .line 4847
    iget-object v9, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v9}, Lorg/telegram/ui/ChatActivity;->access$11800(Lorg/telegram/ui/ChatActivity;)[Landroid/util/SparseArray;

    move-result-object v9

    aget-object v9, v9, v8

    invoke-virtual {v9}, Landroid/util/SparseArray;->clear()V

    add-int/lit8 v8, v8, -0x1

    goto/16 :goto_17

    .line 4849
    :cond_58
    sget v8, Lcom/smedialink/common/IdFabric$Menu;->CHAT_REMOVE_FROM_BOOKMARKS:I

    if-ne v0, v8, :cond_5b

    .line 4850
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$11900(Lorg/telegram/ui/ChatActivity;)I

    move-result v0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v0, v3, :cond_59

    const/4 v5, 0x1

    :cond_59
    if-eqz v5, :cond_5a

    .line 4852
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->finishFragment()V

    .line 4854
    :cond_5a
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$12000(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatActivityDelegate;

    move-result-object v15

    const/16 v16, 0x1

    const/16 v17, 0x0

    xor-int/lit8 v18, v5, 0x1

    const/16 v19, 0x1

    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    move-object/from16 v20, v0

    move-object/from16 v21, v2

    move-object/from16 v22, v7

    invoke-interface/range {v15 .. v22}, Lorg/telegram/ui/ChatActivity$ChatActivityDelegate;->onUnpin(ZZZZLorg/telegram/ui/ChatActivity;Ljava/util/ArrayList;Ljava/util/HashMap;)V

    goto :goto_19

    .line 4856
    :cond_5b
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getBookmarksController()Lorg/fork/controller/BookmarksController;

    move-result-object v0

    iget-object v8, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v8}, Lorg/telegram/ui/ChatActivity;->access$2200(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v8

    invoke-virtual {v0, v8, v9, v2}, Lorg/fork/controller/BookmarksController;->bookmarkMessages(JLjava/util/ArrayList;)V

    .line 4857
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v8, Lorg/telegram/messenger/NotificationCenter;->didLoadBookmarkMessages:I

    const/16 v9, 0x8

    new-array v9, v9, [Ljava/lang/Object;

    iget-object v10, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v10}, Lorg/telegram/ui/ChatActivity;->access$2200(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v9, v5

    aput-object v2, v9, v6

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v6, v9, v3

    const/4 v3, 0x3

    new-instance v6, Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    aput-object v6, v9, v3

    const/4 v3, 0x4

    aput-object v4, v9, v3

    const/4 v3, 0x5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v9, v3

    const/4 v3, 0x6

    iget-object v4, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$11600(Lorg/telegram/ui/ChatActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v9, v3

    const/4 v3, 0x7

    iget-object v4, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$12100(Lorg/telegram/ui/ChatActivity;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v9, v3

    invoke-virtual {v0, v8, v9}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 4858
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v3, v0, Lorg/telegram/ui/ChatActivity;->themeDelegate:Lorg/telegram/ui/ChatActivity$ThemeDelegate;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v0, v3, v2}, Lorg/telegram/ui/Components/BulletinFactory;->createPinMessageBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    .line 4860
    :goto_19
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$12200(Lorg/telegram/ui/ChatActivity;)V

    .line 4861
    iget-object v0, v1, Lorg/telegram/ui/ChatActivity$18;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$4400(Lorg/telegram/ui/ChatActivity;)V

    :cond_5c
    :goto_1a
    return-void
.end method
