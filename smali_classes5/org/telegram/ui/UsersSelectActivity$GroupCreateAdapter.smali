.class public Lorg/telegram/ui/UsersSelectActivity$GroupCreateAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$FastScrollAdapter;
.source "UsersSelectActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/UsersSelectActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GroupCreateAdapter"
.end annotation


# instance fields
.field private contacts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLObject;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

.field private searchResult:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private searchResultNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private searchRunnable:Ljava/lang/Runnable;

.field private searching:Z

.field final synthetic this$0:Lorg/telegram/ui/UsersSelectActivity;

.field private usersStartRow:I


# direct methods
.method public static synthetic $r8$lambda$-ncJsMLAeO3aJ24W_C9MLAUc8DI(Lorg/telegram/ui/UsersSelectActivity$GroupCreateAdapter;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/UsersSelectActivity$GroupCreateAdapter;->lambda$searchDialogs$2(Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$Dzpo97_976MQ2Dg84qPGvQvpQjU(Lorg/telegram/ui/UsersSelectActivity$GroupCreateAdapter;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/UsersSelectActivity$GroupCreateAdapter;->lambda$updateSearchResults$4(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JFvYSSFW1JNlfrHiITh418AZ928(Lorg/telegram/ui/UsersSelectActivity$GroupCreateAdapter;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/UsersSelectActivity$GroupCreateAdapter;->lambda$searchDialogs$1(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$KyllRpeOrSqeP-TFvNq4sLX0kPw(Lorg/telegram/ui/UsersSelectActivity$GroupCreateAdapter;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/UsersSelectActivity$GroupCreateAdapter;->lambda$new$0(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$NYM4pgO1tc7Hb11Me1kATHkydsg(Lorg/telegram/ui/UsersSelectActivity$GroupCreateAdapter;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/UsersSelectActivity$GroupCreateAdapter;->lambda$searchDialogs$3(Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/UsersSelectActivity;Landroid/content/Context;)V
    .locals 10

    .line 1053
    iput-object p1, p0, Lorg/telegram/ui/UsersSelectActivity$GroupCreateAdapter;->this$0:Lorg/telegram/ui/UsersSelectActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$FastScrollAdapter;-><init>()V

    .line 1045
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/UsersSelectActivity$GroupCreateAdapter;->searchResult:Ljava/util/ArrayList;

    .line 1046
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/UsersSelectActivity$GroupCreateAdapter;->searchResultNames:Ljava/util/ArrayList;

    .line 1050
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/UsersSelectActivity$GroupCreateAdapter;->contacts:Ljava/util/ArrayList;

    .line 1051
    invoke-static {p1}, Lorg/telegram/ui/UsersSelectActivity;->access$2800(Lorg/telegram/ui/UsersSelectActivity;)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-static {p1}, Lorg/telegram/ui/UsersSelectActivity;->access$2900(Lorg/telegram/ui/UsersSelectActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    iput v0, p0, Lorg/telegram/ui/UsersSelectActivity$GroupCreateAdapter;->usersStartRow:I

    .line 1055
    iget-boolean v0, p1, Lorg/telegram/ui/UsersSelectActivity;->topicMode:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 1056
    iput v2, p0, Lorg/telegram/ui/UsersSelectActivity$GroupCreateAdapter;->usersStartRow:I

    .line 1059
    :cond_2
    iput-object p2, p0, Lorg/telegram/ui/UsersSelectActivity$GroupCreateAdapter;->context:Landroid/content/Context;

    .line 1062
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/MessagesController;->getAllDialogs()Ljava/util/ArrayList;

    move-result-object p2

    .line 1063
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v3, v1

    move v4, v3

    :goto_1
    if-ge v3, v0, :cond_a

    .line 1064
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$Dialog;

    .line 1066
    iget-boolean v6, p1, Lorg/telegram/ui/UsersSelectActivity;->topicMode:Z

    if-eqz v6, :cond_3

    iget v6, v5, Lorg/telegram/tgnet/TLRPC$Dialog;->folder_id:I

    iget v7, p1, Lorg/telegram/ui/UsersSelectActivity;->topicModeFilterFolderId:I

    if-eq v6, v7, :cond_3

    goto/16 :goto_2

    .line 1070
    :cond_3
    iget-wide v6, v5, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    invoke-static {v6, v7}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v6

    if-eqz v6, :cond_4

    goto/16 :goto_2

    .line 1073
    :cond_4
    iget-wide v6, v5, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    invoke-static {v6, v7}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1074
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    iget-wide v7, v5, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v6, v5}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v5

    if-eqz v5, :cond_9

    .line 1077
    iget-boolean v6, p1, Lorg/telegram/ui/UsersSelectActivity;->topicMode:Z

    if-eqz v6, :cond_5

    invoke-static {v5}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v6

    if-nez v6, :cond_9

    invoke-static {v5}, Lorg/telegram/messenger/UserObject;->isReplyUser(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v6

    if-nez v6, :cond_9

    invoke-static {v5}, Lorg/telegram/messenger/MessagesController;->isSupportUser(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v6

    if-eqz v6, :cond_5

    goto :goto_2

    .line 1081
    :cond_5
    invoke-static {p1}, Lorg/telegram/ui/UsersSelectActivity;->access$2800(Lorg/telegram/ui/UsersSelectActivity;)I

    move-result v6

    if-ne v6, v2, :cond_6

    invoke-static {v5}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v6

    if-eqz v6, :cond_6

    goto :goto_2

    .line 1084
    :cond_6
    iget-object v6, p0, Lorg/telegram/ui/UsersSelectActivity$GroupCreateAdapter;->contacts:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1085
    invoke-static {v5}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v5

    if-eqz v5, :cond_9

    move v4, v2

    goto :goto_2

    .line 1090
    :cond_7
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    iget-wide v7, v5, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    neg-long v7, v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v6

    .line 1092
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getAlbumsController()Lcom/iMe/fork/controller/AlbumsController;

    move-result-object v7

    iget-wide v8, v5, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    invoke-virtual {v7, v8, v9}, Lcom/iMe/fork/controller/AlbumsController;->isDialogAlbum(J)Z

    move-result v5

    if-eqz v5, :cond_8

    goto :goto_2

    :cond_8
    if-eqz v6, :cond_9

    .line 1097
    iget-object v5, p0, Lorg/telegram/ui/UsersSelectActivity$GroupCreateAdapter;->contacts:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 1102
    :cond_a
    iget-boolean p2, p1, Lorg/telegram/ui/UsersSelectActivity;->topicMode:Z

    if-nez p2, :cond_b

    if-nez v4, :cond_b

    .line 1103
    invoke-static {p1}, Lorg/telegram/ui/UsersSelectActivity;->access$2800(Lorg/telegram/ui/UsersSelectActivity;)I

    move-result p2

    if-eq p2, v2, :cond_b

    .line 1104
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    iget-wide v2, v0, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p2

    .line 1105
    iget-object v0, p0, Lorg/telegram/ui/UsersSelectActivity$GroupCreateAdapter;->contacts:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1108
    :cond_b
    new-instance p2, Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-direct {p2, v1}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;-><init>(Z)V

    iput-object p2, p0, Lorg/telegram/ui/UsersSelectActivity$GroupCreateAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    .line 1110
    iget-boolean v0, p1, Lorg/telegram/ui/UsersSelectActivity;->topicMode:Z

    iput-boolean v0, p2, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->topicMode:Z

    .line 1111
    iget p1, p1, Lorg/telegram/ui/UsersSelectActivity;->topicModeFilterFolderId:I

    iput p1, p2, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->topicModeFilterFolderId:I

    .line 1113
    invoke-virtual {p2, v1}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->setAllowGlobalResults(Z)V

    .line 1114
    iget-object p1, p0, Lorg/telegram/ui/UsersSelectActivity$GroupCreateAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    new-instance p2, Lorg/telegram/ui/UsersSelectActivity$GroupCreateAdapter$$ExternalSyntheticLambda4;

    invoke-direct {p2, p0}, Lorg/telegram/ui/UsersSelectActivity$GroupCreateAdapter$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/UsersSelectActivity$GroupCreateAdapter;)V

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->setDelegate(Lorg/telegram/ui/Adapters/SearchAdapterHelper$SearchAdapterHelperDelegate;)V

    return-void
.end method

.method static synthetic access$2300(Lorg/telegram/ui/UsersSelectActivity$GroupCreateAdapter;)Z
    .locals 0

    .line 1042
    iget-boolean p0, p0, Lorg/telegram/ui/UsersSelectActivity$GroupCreateAdapter;->searching:Z

    return p0
.end method

.method private synthetic lambda$new$0(I)V
    .locals 0

    .line 1115
    iget-object p1, p0, Lorg/telegram/ui/UsersSelectActivity$GroupCreateAdapter;->searchRunnable:Ljava/lang/Runnable;

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/UsersSelectActivity$GroupCreateAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {p1}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->isSearchInProgress()Z

    move-result p1

    if-nez p1, :cond_0

    .line 1116
    iget-object p1, p0, Lorg/telegram/ui/UsersSelectActivity$GroupCreateAdapter;->this$0:Lorg/telegram/ui/UsersSelectActivity;

    invoke-static {p1}, Lorg/telegram/ui/UsersSelectActivity;->access$1400(Lorg/telegram/ui/UsersSelectActivity;)Lorg/telegram/ui/Components/EmptyTextProgressView;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/EmptyTextProgressView;->showTextView()V

    .line 1118
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method private synthetic lambda$searchDialogs$1(Ljava/lang/String;)V
    .locals 18

    move-object/from16 v0, p0

    .line 1438
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 1439
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    .line 1440
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/UsersSelectActivity$GroupCreateAdapter;->updateSearchResults(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void

    .line 1443
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/telegram/messenger/LocaleController;->getTranslitString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1444
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    move-object v2, v4

    :cond_2
    const/4 v3, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_3

    move v6, v5

    goto :goto_0

    :cond_3
    move v6, v3

    :goto_0
    add-int/2addr v6, v5

    .line 1447
    new-array v7, v6, [Ljava/lang/String;

    .line 1448
    aput-object v1, v7, v3

    if-eqz v2, :cond_4

    .line 1450
    aput-object v2, v7, v5

    .line 1453
    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1454
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v8, v3

    .line 1456
    :goto_1
    iget-object v9, v0, Lorg/telegram/ui/UsersSelectActivity$GroupCreateAdapter;->contacts:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_12

    .line 1457
    iget-object v9, v0, Lorg/telegram/ui/UsersSelectActivity$GroupCreateAdapter;->contacts:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/tgnet/TLObject;

    const/4 v10, 0x3

    new-array v11, v10, [Ljava/lang/String;

    .line 1462
    instance-of v12, v9, Lorg/telegram/tgnet/TLRPC$User;

    const/4 v13, 0x2

    if-eqz v12, :cond_6

    .line 1463
    move-object v14, v9

    check-cast v14, Lorg/telegram/tgnet/TLRPC$User;

    .line 1464
    iget-object v15, v14, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v10, v14, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v15, v10}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v11, v3

    .line 1465
    invoke-static {v14}, Lorg/telegram/messenger/UserObject;->getPublicUsername(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v10

    .line 1466
    invoke-static {v14}, Lorg/telegram/messenger/UserObject;->isReplyUser(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 1467
    sget v14, Lorg/telegram/messenger/R$string;->RepliesTitle:I

    const-string v15, "RepliesTitle"

    invoke-static {v15, v14}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v11, v13

    goto :goto_2

    .line 1468
    :cond_5
    iget-boolean v14, v14, Lorg/telegram/tgnet/TLRPC$User;->self:Z

    if-eqz v14, :cond_7

    .line 1469
    sget v14, Lorg/telegram/messenger/R$string;->SavedMessages:I

    const-string v15, "SavedMessages"

    invoke-static {v15, v14}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v11, v13

    goto :goto_2

    .line 1472
    :cond_6
    move-object v10, v9

    check-cast v10, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 1473
    iget-object v14, v10, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v11, v3

    .line 1474
    iget-object v10, v10, Lorg/telegram/tgnet/TLRPC$Chat;->username:Ljava/lang/String;

    .line 1476
    :cond_7
    :goto_2
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v14

    aget-object v15, v11, v3

    invoke-virtual {v14, v15}, Lorg/telegram/messenger/LocaleController;->getTranslitString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v11, v5

    .line 1477
    aget-object v14, v11, v3

    aget-object v15, v11, v5

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    aput-object v4, v11, v5

    :cond_8
    move v14, v3

    move v15, v14

    :goto_3
    if-ge v14, v6, :cond_11

    .line 1482
    aget-object v3, v7, v14

    const/4 v4, 0x0

    :goto_4
    const/4 v13, 0x3

    if-ge v4, v13, :cond_c

    .line 1484
    aget-object v13, v11, v4

    if-eqz v13, :cond_a

    .line 1485
    invoke-virtual {v13, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_9

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v17, v6

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v13, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_b

    goto :goto_5

    :cond_9
    move/from16 v17, v6

    :goto_5
    const/4 v15, 0x1

    goto :goto_6

    :cond_a
    move/from16 v17, v6

    :cond_b
    add-int/lit8 v4, v4, 0x1

    move/from16 v6, v17

    const/4 v5, 0x1

    goto :goto_4

    :cond_c
    move/from16 v17, v6

    :goto_6
    if-nez v15, :cond_d

    if-eqz v10, :cond_d

    .line 1490
    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    const/4 v15, 0x2

    :cond_d
    if-eqz v15, :cond_10

    const/4 v4, 0x1

    if-ne v15, v4, :cond_f

    if-eqz v12, :cond_e

    .line 1497
    move-object v5, v9

    check-cast v5, Lorg/telegram/tgnet/TLRPC$User;

    .line 1498
    iget-object v6, v5, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v6, v5, v3}, Lorg/telegram/messenger/AndroidUtilities;->generateSearchName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 1500
    :cond_e
    move-object v5, v9

    check-cast v5, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 1501
    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v5, v6, v3}, Lorg/telegram/messenger/AndroidUtilities;->generateSearchName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_7
    const/4 v6, 0x0

    goto :goto_8

    .line 1504
    :cond_f
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "@"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    invoke-static {v5, v6, v3}, Lorg/telegram/messenger/AndroidUtilities;->generateSearchName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1506
    :goto_8
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_10
    const/4 v4, 0x1

    const/4 v6, 0x0

    add-int/lit8 v14, v14, 0x1

    move v5, v4

    move-object v4, v6

    move/from16 v6, v17

    const/4 v3, 0x0

    const/4 v13, 0x2

    goto/16 :goto_3

    :cond_11
    move/from16 v17, v6

    move-object v6, v4

    move v4, v5

    :goto_9
    add-int/lit8 v8, v8, 0x1

    move v5, v4

    move-object v4, v6

    move/from16 v6, v17

    const/4 v3, 0x0

    goto/16 :goto_1

    .line 1511
    :cond_12
    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/UsersSelectActivity$GroupCreateAdapter;->updateSearchResults(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method

.method private synthetic lambda$searchDialogs$2(Ljava/lang/String;Z)V
    .locals 12

    .line 1436
    iget-object v0, p0, Lorg/telegram/ui/UsersSelectActivity$GroupCreateAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    iget-object v1, p0, Lorg/telegram/ui/UsersSelectActivity$GroupCreateAdapter;->this$0:Lorg/telegram/ui/UsersSelectActivity;

    invoke-static {v1}, Lorg/telegram/ui/UsersSelectActivity;->access$2800(Lorg/telegram/ui/UsersSelectActivity;)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    move v5, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    move v5, v1

    :goto_0
    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v2, 0x1

    const/4 v4, 0x1

    move-object v1, p1

    move v3, p2

    invoke-virtual/range {v0 .. v11}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->queryServerSearch(Ljava/lang/String;ZZZZZJZII)V

    .line 1437
    sget-object p2, Lorg/telegram/messenger/Utilities;->searchQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v0, Lorg/telegram/ui/UsersSelectActivity$GroupCreateAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/UsersSelectActivity$GroupCreateAdapter$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/UsersSelectActivity$GroupCreateAdapter;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/telegram/ui/UsersSelectActivity$GroupCreateAdapter;->searchRunnable:Ljava/lang/Runnable;

    invoke-virtual {p2, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$searchDialogs$3(Ljava/lang/String;Z)V
    .locals 1

    .line 1435
    new-instance v0, Lorg/telegram/ui/UsersSelectActivity$GroupCreateAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1, p2}, Lorg/telegram/ui/UsersSelectActivity$GroupCreateAdapter$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/UsersSelectActivity$GroupCreateAdapter;Ljava/lang/String;Z)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$updateSearchResults$4(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 1

    .line 1519
    iget-boolean v0, p0, Lorg/telegram/ui/UsersSelectActivity$GroupCreateAdapter;->searching:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 1522
    iput-object v0, p0, Lorg/telegram/ui/UsersSelectActivity$GroupCreateAdapter;->searchRunnable:Ljava/lang/Runnable;

    .line 1523
    iput-object p1, p0, Lorg/telegram/ui/UsersSelectActivity$GroupCreateAdapter;->searchResult:Ljava/util/ArrayList;

    .line 1524
    iput-object p2, p0, Lorg/telegram/ui/UsersSelectActivity$GroupCreateAdapter;->searchResultNames:Ljava/util/ArrayList;

    .line 1525
    iget-object p2, p0, Lorg/telegram/ui/UsersSelectActivity$GroupCreateAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->mergeResults(Ljava/util/ArrayList;)V

    .line 1526
    iget-boolean p1, p0, Lorg/telegram/ui/UsersSelectActivity$GroupCreateAdapter;->searching:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/UsersSelectActivity$GroupCreateAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {p1}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->isSearchInProgress()Z

    move-result p1

    if-nez p1, :cond_1

    .line 1527
    iget-object p1, p0, Lorg/telegram/ui/UsersSelectActivity$GroupCreateAdapter;->this$0:Lorg/telegram/ui/UsersSelectActivity;

    invoke-static {p1}, Lorg/telegram/ui/UsersSelectActivity;->access$1400(Lorg/telegram/ui/UsersSelectActivity;)Lorg/telegram/ui/Components/EmptyTextProgressView;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/EmptyTextProgressView;->showTextView()V

    .line 1529
    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method private updateSearchResults(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .line 1518
    new-instance v0, Lorg/telegram/ui/UsersSelectActivity$GroupCreateAdapter$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1, p2}, Lorg/telegram/ui/UsersSelectActivity$GroupCreateAdapter$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/UsersSelectActivity$GroupCreateAdapter;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 3

    .line 1138
    iget-boolean v0, p0, Lorg/telegram/ui/UsersSelectActivity$GroupCreateAdapter;->searching:Z

    if-eqz v0, :cond_0

    .line 1139
    iget-object v0, p0, Lorg/telegram/ui/UsersSelectActivity$GroupCreateAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1140
    iget-object v1, p0, Lorg/telegram/ui/UsersSelectActivity$GroupCreateAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v1}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getLocalServerSearch()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1141
    iget-object v2, p0, Lorg/telegram/ui/UsersSelectActivity$GroupCreateAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v2}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getGlobalSearch()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v1, v2

    :goto_0
    add-int/2addr v0, v1

    return v0

    .line 1145
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/UsersSelectActivity$GroupCreateAdapter;->this$0:Lorg/telegram/ui/UsersSelectActivity;

    invoke-static {v0}, Lorg/telegram/ui/UsersSelectActivity;->access$2800(Lorg/telegram/ui/UsersSelectActivity;)I

    move-result v0

    if-nez v0, :cond_2

    .line 1146
    iget-object v0, p0, Lorg/telegram/ui/UsersSelectActivity$GroupCreateAdapter;->this$0:Lorg/telegram/ui/UsersSelectActivity;

    invoke-static {v0}, Lorg/telegram/ui/UsersSelectActivity;->access$2900(Lorg/telegram/ui/UsersSelectActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x7

    goto :goto_1

    :cond_1
    const/4 v0, 0x5

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 1155
    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/UsersSelectActivity$GroupCreateAdapter;->this$0:Lorg/telegram/ui/UsersSelectActivity;

    iget-boolean v1, v1, Lorg/telegram/ui/UsersSelectActivity;->topicMode:Z

    if-eqz v1, :cond_3

    const/4 v0, 0x1

    .line 1159
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/UsersSelectActivity$GroupCreateAdapter;->contacts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 4

    .line 1378
    iget-boolean v0, p0, Lorg/telegram/ui/UsersSelectActivity$GroupCreateAdapter;->searching:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 1382
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/UsersSelectActivity$GroupCreateAdapter;->this$0:Lorg/telegram/ui/UsersSelectActivity;

    iget-boolean v2, v0, Lorg/telegram/ui/UsersSelectActivity;->topicMode:Z

    const/4 v3, 0x2

    if-eqz v2, :cond_2

    if-nez p1, :cond_1

    move v1, v3

    :cond_1
    return v1

    .line 1386
    :cond_2
    invoke-static {v0}, Lorg/telegram/ui/UsersSelectActivity;->access$2800(Lorg/telegram/ui/UsersSelectActivity;)I

    move-result v0

    if-nez v0, :cond_6

    .line 1387
    iget-object v0, p0, Lorg/telegram/ui/UsersSelectActivity$GroupCreateAdapter;->this$0:Lorg/telegram/ui/UsersSelectActivity;

    invoke-static {v0}, Lorg/telegram/ui/UsersSelectActivity;->access$2900(Lorg/telegram/ui/UsersSelectActivity;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz p1, :cond_3

    const/4 v0, 0x6

    if-ne p1, v0, :cond_6

    :cond_3
    return v3

    :cond_4
    if-eqz p1, :cond_5

    const/4 v0, 0x4

    if-ne p1, v0, :cond_6

    :cond_5
    return v3

    :cond_6
    return v1
.end method

.method public getLetter(I)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getPositionForScrollProgress(Lorg/telegram/ui/Components/RecyclerListView;F[I)V
    .locals 0

    .line 1403
    invoke-virtual {p0}, Lorg/telegram/ui/UsersSelectActivity$GroupCreateAdapter;->getItemCount()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, p2

    float-to-int p1, p1

    const/4 p2, 0x0

    aput p1, p3, p2

    const/4 p1, 0x1

    .line 1404
    aput p2, p3, p1

    return-void
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    .line 1416
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 1181
    invoke-virtual/range {p1 .. p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v3, v5, :cond_2

    if-eq v3, v4, :cond_0

    goto/16 :goto_f

    .line 1365
    :cond_0
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Cells/GraySectionCell;

    if-nez v2, :cond_1

    .line 1366
    iget-object v2, v0, Lorg/telegram/ui/UsersSelectActivity$GroupCreateAdapter;->this$0:Lorg/telegram/ui/UsersSelectActivity;

    iget-boolean v2, v2, Lorg/telegram/ui/UsersSelectActivity;->topicMode:Z

    if-nez v2, :cond_1

    .line 1367
    sget v2, Lorg/telegram/messenger/R$string;->FilterChatTypes:I

    const-string v3, "FilterChatTypes"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/GraySectionCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_f

    .line 1369
    :cond_1
    sget v2, Lorg/telegram/messenger/R$string;->FilterChats:I

    const-string v3, "FilterChats"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/GraySectionCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_f

    .line 1183
    :cond_2
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Cells/GroupCreateUserCell;

    .line 1187
    iget-boolean v3, v0, Lorg/telegram/ui/UsersSelectActivity$GroupCreateAdapter;->searching:Z

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-eqz v3, :cond_b

    .line 1188
    iget-object v3, v0, Lorg/telegram/ui/UsersSelectActivity$GroupCreateAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1189
    iget-object v4, v0, Lorg/telegram/ui/UsersSelectActivity$GroupCreateAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v4}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getGlobalSearch()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1190
    iget-object v8, v0, Lorg/telegram/ui/UsersSelectActivity$GroupCreateAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v8}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getLocalServerSearch()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ltz v2, :cond_3

    if-ge v2, v3, :cond_3

    .line 1193
    iget-object v4, v0, Lorg/telegram/ui/UsersSelectActivity$GroupCreateAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    goto :goto_0

    :cond_3
    if-lt v2, v3, :cond_4

    add-int v9, v8, v3

    if-ge v2, v9, :cond_4

    .line 1195
    iget-object v4, v0, Lorg/telegram/ui/UsersSelectActivity$GroupCreateAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v4}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getLocalServerSearch()Ljava/util/ArrayList;

    move-result-object v4

    sub-int v8, v2, v3

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    goto :goto_0

    :cond_4
    add-int v9, v3, v8

    if-le v2, v9, :cond_5

    add-int/2addr v4, v3

    add-int/2addr v4, v8

    if-ge v2, v4, :cond_5

    .line 1197
    iget-object v4, v0, Lorg/telegram/ui/UsersSelectActivity$GroupCreateAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v4}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getGlobalSearch()Ljava/util/ArrayList;

    move-result-object v4

    sub-int v9, v2, v3

    sub-int/2addr v9, v8

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    goto :goto_0

    :cond_5
    move-object v4, v6

    :goto_0
    if-eqz v4, :cond_15

    .line 1203
    instance-of v8, v4, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v8, :cond_6

    .line 1204
    move-object v8, v4

    check-cast v8, Lorg/telegram/tgnet/TLRPC$User;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    goto :goto_1

    .line 1206
    :cond_6
    move-object v8, v4

    check-cast v8, Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v8}, Lorg/telegram/messenger/ChatObject;->getPublicUsername(Lorg/telegram/tgnet/TLRPC$Chat;)Ljava/lang/String;

    move-result-object v8

    :goto_1
    const-string v9, "@"

    if-ge v2, v3, :cond_7

    .line 1209
    iget-object v3, v0, Lorg/telegram/ui/UsersSelectActivity$GroupCreateAdapter;->searchResultNames:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    if-eqz v2, :cond_16

    .line 1210
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_16

    .line 1211
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_16

    move-object/from16 v16, v6

    move-object v6, v2

    move-object/from16 v2, v16

    goto/16 :goto_5

    :cond_7
    if-le v2, v3, :cond_15

    .line 1216
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_15

    .line 1217
    iget-object v2, v0, Lorg/telegram/ui/UsersSelectActivity$GroupCreateAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v2}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getLastFoundUsername()Ljava/lang/String;

    move-result-object v2

    .line 1218
    invoke-virtual {v2, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1219
    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 1223
    :cond_8
    :try_start_0
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 1224
    invoke-virtual {v3, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1225
    invoke-virtual {v3, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1226
    invoke-static {v8, v2}, Lorg/telegram/messenger/AndroidUtilities;->indexOfIgnoreCase(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_a

    .line 1227
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v9, :cond_9

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_9
    add-int/lit8 v9, v9, 0x1

    .line 1233
    :goto_2
    new-instance v10, Landroid/text/style/ForegroundColorSpan;

    const-string v11, "windowBackgroundWhiteBlueText4"

    invoke-static {v11}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v11

    invoke-direct {v10, v11}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    add-int/2addr v2, v9

    const/16 v11, 0x21

    invoke-virtual {v3, v10, v9, v2, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_a
    move-object v2, v6

    move-object v6, v3

    goto/16 :goto_5

    :catch_0
    move-object v2, v6

    move-object v6, v8

    goto/16 :goto_5

    .line 1242
    :cond_b
    iget v3, v0, Lorg/telegram/ui/UsersSelectActivity$GroupCreateAdapter;->usersStartRow:I

    if-ge v2, v3, :cond_14

    .line 1244
    iget-object v3, v0, Lorg/telegram/ui/UsersSelectActivity$GroupCreateAdapter;->this$0:Lorg/telegram/ui/UsersSelectActivity;

    invoke-static {v3}, Lorg/telegram/ui/UsersSelectActivity;->access$2900(Lorg/telegram/ui/UsersSelectActivity;)Z

    move-result v3

    if-eqz v3, :cond_10

    if-ne v2, v5, :cond_c

    .line 1246
    sget v2, Lorg/telegram/messenger/R$string;->FilterContacts:I

    const-string v3, "FilterContacts"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 1248
    sget v3, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_CONTACTS:I

    const-string v4, "contacts"

    goto :goto_3

    :cond_c
    if-ne v2, v4, :cond_d

    .line 1250
    sget v2, Lorg/telegram/messenger/R$string;->FilterNonContacts:I

    const-string v3, "FilterNonContacts"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 1252
    sget v3, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_NON_CONTACTS:I

    const-string v4, "non_contacts"

    goto :goto_3

    :cond_d
    const/4 v3, 0x3

    if-ne v2, v3, :cond_e

    .line 1254
    sget v2, Lorg/telegram/messenger/R$string;->FilterGroups:I

    const-string v3, "FilterGroups"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 1256
    sget v3, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_GROUPS:I

    const-string v4, "groups"

    goto :goto_3

    :cond_e
    const/4 v3, 0x4

    if-ne v2, v3, :cond_f

    .line 1258
    sget v2, Lorg/telegram/messenger/R$string;->FilterChannels:I

    const-string v3, "FilterChannels"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 1260
    sget v3, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_CHANNELS:I

    const-string v4, "channels"

    goto :goto_3

    .line 1262
    :cond_f
    sget v2, Lorg/telegram/messenger/R$string;->FilterBots:I

    const-string v3, "FilterBots"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 1264
    sget v3, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_BOTS:I

    const-string v4, "bots"

    goto :goto_3

    :cond_10
    if-ne v2, v5, :cond_11

    .line 1268
    sget v2, Lorg/telegram/messenger/R$string;->FilterMuted:I

    const-string v3, "FilterMuted"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 1270
    sget v3, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_EXCLUDE_MUTED:I

    const-string v4, "muted"

    goto :goto_3

    :cond_11
    if-ne v2, v4, :cond_12

    .line 1272
    sget v2, Lorg/telegram/messenger/R$string;->FilterRead:I

    const-string v3, "FilterRead"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 1274
    sget v3, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_EXCLUDE_READ:I

    const-string v4, "read"

    goto :goto_3

    .line 1276
    :cond_12
    sget v2, Lorg/telegram/messenger/R$string;->FilterArchived:I

    const-string v3, "FilterArchived"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 1278
    sget v3, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_EXCLUDE_ARCHIVED:I

    const-string v4, "archived"

    .line 1281
    :goto_3
    invoke-virtual {v1, v4, v2, v6}, Lorg/telegram/ui/Cells/GroupCreateUserCell;->setObject(Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 1282
    iget-object v2, v0, Lorg/telegram/ui/UsersSelectActivity$GroupCreateAdapter;->this$0:Lorg/telegram/ui/UsersSelectActivity;

    invoke-static {v2}, Lorg/telegram/ui/UsersSelectActivity;->access$1900(Lorg/telegram/ui/UsersSelectActivity;)I

    move-result v2

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_13

    move v2, v5

    goto :goto_4

    :cond_13
    move v2, v7

    :goto_4
    invoke-virtual {v1, v2, v7}, Lorg/telegram/ui/Cells/GroupCreateUserCell;->setChecked(ZZ)V

    .line 1283
    invoke-virtual {v1, v5}, Lorg/telegram/ui/Cells/GroupCreateUserCell;->setCheckBoxEnabled(Z)V

    return-void

    .line 1286
    :cond_14
    iget-object v4, v0, Lorg/telegram/ui/UsersSelectActivity$GroupCreateAdapter;->contacts:Ljava/util/ArrayList;

    sub-int/2addr v2, v3

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    :cond_15
    move-object v2, v6

    .line 1289
    :cond_16
    :goto_5
    instance-of v3, v4, Lorg/telegram/tgnet/TLRPC$User;

    const-wide/16 v8, 0x0

    if-eqz v3, :cond_17

    .line 1290
    move-object v3, v4

    check-cast v3, Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v10, v3, Lorg/telegram/tgnet/TLRPC$User;->id:J

    goto :goto_6

    .line 1291
    :cond_17
    instance-of v3, v4, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v3, :cond_18

    .line 1292
    move-object v3, v4

    check-cast v3, Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v10, v3, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    neg-long v10, v10

    goto :goto_6

    :cond_18
    move-wide v10, v8

    .line 1298
    :goto_6
    iget-object v3, v0, Lorg/telegram/ui/UsersSelectActivity$GroupCreateAdapter;->this$0:Lorg/telegram/ui/UsersSelectActivity;

    invoke-static {v3}, Lorg/telegram/ui/UsersSelectActivity;->access$2800(Lorg/telegram/ui/UsersSelectActivity;)I

    move-result v3

    if-nez v3, :cond_1c

    .line 1299
    iget-boolean v3, v0, Lorg/telegram/ui/UsersSelectActivity$GroupCreateAdapter;->searching:Z

    if-nez v3, :cond_1b

    .line 1300
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 1301
    iget-object v3, v0, Lorg/telegram/ui/UsersSelectActivity$GroupCreateAdapter;->this$0:Lorg/telegram/ui/UsersSelectActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController;->dialogFilters:Ljava/util/ArrayList;

    .line 1302
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v12

    move v13, v7

    :goto_7
    if-ge v13, v12, :cond_1b

    .line 1303
    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/telegram/messenger/MessagesController$DialogFilter;

    .line 1304
    iget-object v15, v0, Lorg/telegram/ui/UsersSelectActivity$GroupCreateAdapter;->this$0:Lorg/telegram/ui/UsersSelectActivity;

    invoke-virtual {v15}, Lorg/telegram/ui/ActionBar/BaseFragment;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;

    move-result-object v15

    invoke-virtual {v14, v15, v10, v11}, Lorg/telegram/messenger/MessagesController$DialogFilter;->includesDialog(Lorg/telegram/messenger/AccountInstance;J)Z

    move-result v15

    if-eqz v15, :cond_1a

    .line 1305
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v15

    if-lez v15, :cond_19

    const-string v15, ", "

    .line 1306
    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1308
    :cond_19
    iget-object v14, v14, Lorg/telegram/messenger/MessagesController$DialogFilter;->name:Ljava/lang/String;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1a
    add-int/lit8 v13, v13, 0x1

    goto :goto_7

    :cond_1b
    move v12, v5

    move v3, v7

    goto/16 :goto_a

    .line 1315
    :cond_1c
    iget-object v3, v0, Lorg/telegram/ui/UsersSelectActivity$GroupCreateAdapter;->this$0:Lorg/telegram/ui/UsersSelectActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Landroidx/collection/LongSparseArray;

    invoke-virtual {v3, v10, v11}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1d

    .line 1316
    iget-object v3, v0, Lorg/telegram/ui/UsersSelectActivity$GroupCreateAdapter;->this$0:Lorg/telegram/ui/UsersSelectActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Landroidx/collection/LongSparseArray;

    invoke-virtual {v3, v10, v11}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$Dialog;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$Dialog;->ttl_period:I

    goto :goto_8

    :cond_1d
    move v3, v7

    :goto_8
    const-string v6, "d"

    if-lez v3, :cond_1e

    .line 1320
    new-instance v12, Landroid/text/SpannableStringBuilder;

    invoke-direct {v12}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 1321
    invoke-virtual {v12, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1322
    new-instance v6, Lorg/telegram/ui/Components/ColoredImageSpan;

    sget v13, Lorg/telegram/messenger/R$drawable;->msg_mini_fireon:I

    invoke-direct {v6, v13}, Lorg/telegram/ui/Components/ColoredImageSpan;-><init>(I)V

    invoke-virtual {v12, v6, v7, v5, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1323
    sget v6, Lorg/telegram/messenger/R$string;->AutoDeleteAfter:I

    new-array v13, v5, [Ljava/lang/Object;

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->formatTTLString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v13, v7

    const-string v3, "AutoDeleteAfter"

    invoke-static {v3, v6, v13}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move v3, v5

    move-object v6, v12

    goto :goto_9

    .line 1326
    :cond_1e
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 1327
    invoke-virtual {v3, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1328
    new-instance v6, Lorg/telegram/ui/Components/ColoredImageSpan;

    sget v12, Lorg/telegram/messenger/R$drawable;->msg_mini_fireoff:I

    invoke-direct {v6, v12}, Lorg/telegram/ui/Components/ColoredImageSpan;-><init>(I)V

    invoke-virtual {v3, v6, v7, v5, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1329
    sget v6, Lorg/telegram/messenger/R$string;->AutoDeleteDisabled:I

    new-array v12, v7, [Ljava/lang/Object;

    const-string v13, "AutoDeleteDisabled"

    invoke-static {v13, v6, v12}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-object v6, v3

    move v3, v7

    .line 1332
    :goto_9
    instance-of v12, v4, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v12, :cond_1f

    .line 1333
    move-object v12, v4

    check-cast v12, Lorg/telegram/tgnet/TLRPC$Chat;

    const/16 v13, 0xd

    invoke-static {v12, v13}, Lorg/telegram/messenger/ChatObject;->canUserDoAdminAction(Lorg/telegram/tgnet/TLRPC$Chat;I)Z

    move-result v12

    goto :goto_a

    :cond_1f
    move v12, v5

    .line 1337
    :goto_a
    iget-object v13, v0, Lorg/telegram/ui/UsersSelectActivity$GroupCreateAdapter;->this$0:Lorg/telegram/ui/UsersSelectActivity;

    iget-boolean v14, v13, Lorg/telegram/ui/UsersSelectActivity;->topicMode:Z

    if-eqz v14, :cond_22

    .line 1338
    invoke-virtual {v13}, Lorg/telegram/ui/ActionBar/BaseFragment;->getTopicsController()Lcom/iMe/fork/controller/ForkTopicsController;

    move-result-object v13

    invoke-virtual {v13, v10, v11}, Lcom/iMe/fork/controller/ForkTopicsController;->getTopicForDialog(J)Lcom/iMe/storage/domain/model/topics/TopicModel;

    move-result-object v13

    if-eqz v13, :cond_21

    .line 1340
    invoke-virtual {v13}, Lcom/iMe/storage/domain/model/topics/TopicModel;->isUserTopic()Z

    move-result v14

    if-eqz v14, :cond_20

    .line 1341
    invoke-virtual {v13}, Lcom/iMe/storage/domain/model/topics/TopicModel;->getName()Ljava/lang/String;

    move-result-object v6

    goto :goto_b

    .line 1342
    :cond_20
    invoke-virtual {v13}, Lcom/iMe/storage/domain/model/topics/TopicModel;->isAutoTopic()Z

    move-result v14

    if-eqz v14, :cond_22

    .line 1343
    invoke-virtual {v13}, Lcom/iMe/storage/domain/model/topics/TopicModel;->getIcon()Lcom/iMe/storage/data/repository/topics/Topic;

    move-result-object v6

    invoke-static {v6}, Lcom/iMe/utils/extentions/model/topic/TopicExtKt;->info(Lcom/iMe/storage/data/repository/topics/Topic;)Lcom/iMe/ui/topics/TopicInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/iMe/ui/topics/TopicInfo;->getTitleResId()I

    move-result v6

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_b

    :cond_21
    const-string v6, ""

    :cond_22
    :goto_b
    if-eqz v12, :cond_23

    const/high16 v12, 0x3f800000    # 1.0f

    .line 1352
    invoke-virtual {v1, v12}, Landroid/widget/FrameLayout;->setAlpha(F)V

    goto :goto_c

    :cond_23
    const/high16 v12, 0x3f000000    # 0.5f

    .line 1354
    invoke-virtual {v1, v12}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 1356
    :goto_c
    invoke-virtual {v1, v4, v2, v6}, Lorg/telegram/ui/Cells/GroupCreateUserCell;->setObject(Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 1357
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/GroupCreateUserCell;->getStatusTextView()Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v2

    if-eqz v3, :cond_24

    const-string v3, "windowBackgroundWhiteBlueText"

    goto :goto_d

    :cond_24
    const-string v3, "windowBackgroundWhiteGrayText"

    :goto_d
    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    cmp-long v2, v10, v8

    if-eqz v2, :cond_26

    .line 1359
    iget-object v2, v0, Lorg/telegram/ui/UsersSelectActivity$GroupCreateAdapter;->this$0:Lorg/telegram/ui/UsersSelectActivity;

    invoke-static {v2}, Lorg/telegram/ui/UsersSelectActivity;->access$600(Lorg/telegram/ui/UsersSelectActivity;)Landroidx/collection/LongSparseArray;

    move-result-object v2

    invoke-virtual {v2, v10, v11}, Landroidx/collection/LongSparseArray;->indexOfKey(J)I

    move-result v2

    if-ltz v2, :cond_25

    move v2, v5

    goto :goto_e

    :cond_25
    move v2, v7

    :goto_e
    invoke-virtual {v1, v2, v7}, Lorg/telegram/ui/Cells/GroupCreateUserCell;->setChecked(ZZ)V

    .line 1360
    invoke-virtual {v1, v5}, Lorg/telegram/ui/Cells/GroupCreateUserCell;->setCheckBoxEnabled(Z)V

    :cond_26
    :goto_f
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    const/4 p1, 0x1

    if-eq p2, p1, :cond_0

    .line 1173
    new-instance p1, Lorg/telegram/ui/Cells/GraySectionCell;

    iget-object p2, p0, Lorg/telegram/ui/UsersSelectActivity$GroupCreateAdapter;->context:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/GraySectionCell;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 1169
    :cond_0
    new-instance p2, Lorg/telegram/ui/Cells/GroupCreateUserCell;

    iget-object v0, p0, Lorg/telegram/ui/UsersSelectActivity$GroupCreateAdapter;->context:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-direct {p2, v0, p1, v1, p1}, Lorg/telegram/ui/Cells/GroupCreateUserCell;-><init>(Landroid/content/Context;IIZ)V

    move-object p1, p2

    .line 1176
    :goto_0
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .line 1409
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v0, p1, Lorg/telegram/ui/Cells/GroupCreateUserCell;

    if-eqz v0, :cond_0

    .line 1410
    check-cast p1, Lorg/telegram/ui/Cells/GroupCreateUserCell;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/GroupCreateUserCell;->recycle()V

    :cond_0
    return-void
.end method

.method public searchDialogs(Ljava/lang/String;)V
    .locals 14

    .line 1420
    iget-object v0, p0, Lorg/telegram/ui/UsersSelectActivity$GroupCreateAdapter;->searchRunnable:Ljava/lang/Runnable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1421
    sget-object v0, Lorg/telegram/messenger/Utilities;->searchQueue:Lorg/telegram/messenger/DispatchQueue;

    iget-object v2, p0, Lorg/telegram/ui/UsersSelectActivity$GroupCreateAdapter;->searchRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/DispatchQueue;->cancelRunnable(Ljava/lang/Runnable;)V

    .line 1422
    iput-object v1, p0, Lorg/telegram/ui/UsersSelectActivity$GroupCreateAdapter;->searchRunnable:Ljava/lang/Runnable;

    :cond_0
    const/4 v0, 0x1

    if-nez p1, :cond_1

    .line 1427
    iget-object p1, p0, Lorg/telegram/ui/UsersSelectActivity$GroupCreateAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 1428
    iget-object p1, p0, Lorg/telegram/ui/UsersSelectActivity$GroupCreateAdapter;->searchResultNames:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 1429
    iget-object p1, p0, Lorg/telegram/ui/UsersSelectActivity$GroupCreateAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->mergeResults(Ljava/util/ArrayList;)V

    .line 1431
    iget-object v2, p0, Lorg/telegram/ui/UsersSelectActivity$GroupCreateAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v5, 0x1

    invoke-virtual/range {v2 .. v13}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->queryServerSearch(Ljava/lang/String;ZZZZZJZII)V

    .line 1432
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 1435
    :cond_1
    sget-object v1, Lorg/telegram/messenger/Utilities;->searchQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v2, Lorg/telegram/ui/UsersSelectActivity$GroupCreateAdapter$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, p1, v0}, Lorg/telegram/ui/UsersSelectActivity$GroupCreateAdapter$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/UsersSelectActivity$GroupCreateAdapter;Ljava/lang/String;Z)V

    iput-object v2, p0, Lorg/telegram/ui/UsersSelectActivity$GroupCreateAdapter;->searchRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0x12c

    invoke-virtual {v1, v2, v3, v4}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method

.method public setSearching(Z)V
    .locals 1

    .line 1123
    iget-boolean v0, p0, Lorg/telegram/ui/UsersSelectActivity$GroupCreateAdapter;->searching:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 1126
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/UsersSelectActivity$GroupCreateAdapter;->searching:Z

    .line 1127
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
