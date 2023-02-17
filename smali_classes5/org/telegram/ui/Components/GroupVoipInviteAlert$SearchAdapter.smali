.class Lorg/telegram/ui/Components/GroupVoipInviteAlert$SearchAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "GroupVoipInviteAlert.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/GroupVoipInviteAlert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SearchAdapter"
.end annotation


# instance fields
.field private emptyRow:I

.field private globalStartRow:I

.field private groupStartRow:I

.field private lastRow:I

.field private lastSearchId:I

.field private mContext:Landroid/content/Context;

.field private searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

.field private searchInProgress:Z

.field private searchRunnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lorg/telegram/ui/Components/GroupVoipInviteAlert;

.field private totalCount:I


# direct methods
.method public static synthetic $r8$lambda$4nZ20IC-SvnJLPBoi2FJXb2kTBE(Lorg/telegram/ui/Components/GroupVoipInviteAlert$SearchAdapter;ILjava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/GroupVoipInviteAlert$SearchAdapter;->lambda$updateSearchResults$3(ILjava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$CjJVFO4QLy91LWrj5CbugY1KnwU(Lorg/telegram/ui/Components/GroupVoipInviteAlert$SearchAdapter;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/GroupVoipInviteAlert$SearchAdapter;->lambda$searchUsers$0(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$Fv1oi_u___PWbcmcedFAJ4NyRkA(Lorg/telegram/ui/Components/GroupVoipInviteAlert$SearchAdapter;Ljava/lang/String;ILjava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/GroupVoipInviteAlert$SearchAdapter;->lambda$processSearch$1(Ljava/lang/String;ILjava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LYsFyLfj4A_aAUQPdYHxSvdlJp0(Lorg/telegram/ui/Components/GroupVoipInviteAlert$SearchAdapter;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/GroupVoipInviteAlert$SearchAdapter;->lambda$processSearch$2(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/GroupVoipInviteAlert;Landroid/content/Context;)V
    .locals 1

    .line 454
    iput-object p1, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert$SearchAdapter;->this$0:Lorg/telegram/ui/Components/GroupVoipInviteAlert;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 455
    iput-object p2, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert$SearchAdapter;->mContext:Landroid/content/Context;

    .line 456
    new-instance p2, Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    const/4 v0, 0x1

    invoke-direct {p2, v0}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;-><init>(Z)V

    iput-object p2, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert$SearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    .line 457
    new-instance v0, Lorg/telegram/ui/Components/GroupVoipInviteAlert$SearchAdapter$1;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/GroupVoipInviteAlert$SearchAdapter$1;-><init>(Lorg/telegram/ui/Components/GroupVoipInviteAlert$SearchAdapter;Lorg/telegram/ui/Components/GroupVoipInviteAlert;)V

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->setDelegate(Lorg/telegram/ui/Adapters/SearchAdapterHelper$SearchAdapterHelperDelegate;)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/GroupVoipInviteAlert$SearchAdapter;)I
    .locals 0

    .line 438
    iget p0, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert$SearchAdapter;->lastSearchId:I

    return p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/GroupVoipInviteAlert$SearchAdapter;)Z
    .locals 0

    .line 438
    iget-boolean p0, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert$SearchAdapter;->searchInProgress:Z

    return p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/GroupVoipInviteAlert$SearchAdapter;)Lorg/telegram/ui/Adapters/SearchAdapterHelper;
    .locals 0

    .line 438
    iget-object p0, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert$SearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    return-object p0
.end method

.method private synthetic lambda$processSearch$1(Ljava/lang/String;ILjava/util/ArrayList;)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p2

    .line 522
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 523
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    .line 524
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, v2, v1}, Lorg/telegram/ui/Components/GroupVoipInviteAlert$SearchAdapter;->updateSearchResults(Ljava/util/ArrayList;I)V

    return-void

    .line 527
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/telegram/messenger/LocaleController;->getTranslitString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 528
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2

    :cond_1
    const/4 v3, 0x0

    :cond_2
    const/4 v4, 0x0

    const/4 v6, 0x1

    if-eqz v3, :cond_3

    const/4 v7, 0x1

    goto :goto_0

    :cond_3
    const/4 v7, 0x0

    :goto_0
    add-int/2addr v7, v6

    .line 531
    new-array v8, v7, [Ljava/lang/String;

    .line 532
    aput-object v2, v8, v4

    if-eqz v3, :cond_4

    .line 534
    aput-object v3, v8, v6

    .line 536
    :cond_4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 538
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v3, :cond_d

    move-object/from16 v10, p3

    .line 540
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/tgnet/TLObject;

    .line 541
    instance-of v12, v11, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    if-eqz v12, :cond_5

    .line 542
    move-object v12, v11

    check-cast v12, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    iget-wide v12, v12, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:J

    goto :goto_2

    .line 543
    :cond_5
    instance-of v12, v11, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    if-eqz v12, :cond_c

    .line 544
    move-object v12, v11

    check-cast v12, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    iget-object v12, v12, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v12}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v12

    .line 548
    :goto_2
    iget-object v14, v0, Lorg/telegram/ui/Components/GroupVoipInviteAlert$SearchAdapter;->this$0:Lorg/telegram/ui/Components/GroupVoipInviteAlert;

    invoke-static {v14}, Lorg/telegram/ui/Components/GroupVoipInviteAlert;->access$900(Lorg/telegram/ui/Components/GroupVoipInviteAlert;)I

    move-result v14

    invoke-static {v14}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v14

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v14, v12}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v12

    .line 549
    invoke-static {v12}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v13

    if-eqz v13, :cond_6

    goto/16 :goto_6

    .line 553
    :cond_6
    invoke-static {v12}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    .line 554
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v14

    invoke-virtual {v14, v13}, Lorg/telegram/messenger/LocaleController;->getTranslitString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 555
    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_7

    const/4 v14, 0x0

    :cond_7
    const/4 v15, 0x0

    const/16 v16, 0x0

    :goto_3
    if-ge v15, v7, :cond_c

    .line 561
    aget-object v4, v8, v15

    .line 562
    invoke-virtual {v13, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_9

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v13, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_9

    if-eqz v14, :cond_8

    invoke-virtual {v14, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_9

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v14, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_8

    goto :goto_4

    .line 564
    :cond_8
    invoke-static {v12}, Lorg/telegram/messenger/UserObject;->getPublicUsername(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_a

    invoke-virtual {v5, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    const/16 v16, 0x2

    goto :goto_5

    :cond_9
    :goto_4
    const/16 v16, 0x1

    :cond_a
    :goto_5
    if-eqz v16, :cond_b

    .line 569
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_b
    add-int/lit8 v15, v15, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x1

    goto :goto_3

    :cond_c
    :goto_6
    add-int/lit8 v9, v9, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x1

    goto/16 :goto_1

    .line 574
    :cond_d
    invoke-direct {v0, v2, v1}, Lorg/telegram/ui/Components/GroupVoipInviteAlert$SearchAdapter;->updateSearchResults(Ljava/util/ArrayList;I)V

    return-void
.end method

.method private synthetic lambda$processSearch$2(Ljava/lang/String;I)V
    .locals 13

    const/4 v0, 0x0

    .line 516
    iput-object v0, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert$SearchAdapter;->searchRunnable:Ljava/lang/Runnable;

    .line 518
    iget-object v1, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert$SearchAdapter;->this$0:Lorg/telegram/ui/Components/GroupVoipInviteAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/GroupVoipInviteAlert;->access$400(Lorg/telegram/ui/Components/GroupVoipInviteAlert;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert$SearchAdapter;->this$0:Lorg/telegram/ui/Components/GroupVoipInviteAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/GroupVoipInviteAlert;->access$800(Lorg/telegram/ui/Components/GroupVoipInviteAlert;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert$SearchAdapter;->this$0:Lorg/telegram/ui/Components/GroupVoipInviteAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/GroupVoipInviteAlert;->access$800(Lorg/telegram/ui/Components/GroupVoipInviteAlert;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :cond_0
    if-eqz v0, :cond_1

    .line 521
    sget-object v1, Lorg/telegram/messenger/Utilities;->searchQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v2, Lorg/telegram/ui/Components/GroupVoipInviteAlert$SearchAdapter$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, p1, p2, v0}, Lorg/telegram/ui/Components/GroupVoipInviteAlert$SearchAdapter$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/GroupVoipInviteAlert$SearchAdapter;Ljava/lang/String;ILjava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 577
    iput-boolean v0, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert$SearchAdapter;->searchInProgress:Z

    .line 579
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert$SearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    iget-object v0, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert$SearchAdapter;->this$0:Lorg/telegram/ui/Components/GroupVoipInviteAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/GroupVoipInviteAlert;->access$400(Lorg/telegram/ui/Components/GroupVoipInviteAlert;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->canAddUsers(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v0, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert$SearchAdapter;->this$0:Lorg/telegram/ui/Components/GroupVoipInviteAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/GroupVoipInviteAlert;->access$400(Lorg/telegram/ui/Components/GroupVoipInviteAlert;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert$SearchAdapter;->this$0:Lorg/telegram/ui/Components/GroupVoipInviteAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/GroupVoipInviteAlert;->access$400(Lorg/telegram/ui/Components/GroupVoipInviteAlert;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    goto :goto_1

    :cond_2
    const-wide/16 v8, 0x0

    :goto_1
    const/4 v10, 0x0

    const/4 v11, 0x2

    move-object v2, p1

    move v12, p2

    invoke-virtual/range {v1 .. v12}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->queryServerSearch(Ljava/lang/String;ZZZZZJZII)V

    return-void
.end method

.method private synthetic lambda$searchUsers$0(Ljava/lang/String;I)V
    .locals 1

    .line 499
    iget-object v0, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert$SearchAdapter;->searchRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 502
    iput-object v0, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert$SearchAdapter;->searchRunnable:Ljava/lang/Runnable;

    .line 503
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/GroupVoipInviteAlert$SearchAdapter;->processSearch(Ljava/lang/String;I)V

    return-void
.end method

.method private synthetic lambda$updateSearchResults$3(ILjava/util/ArrayList;)V
    .locals 2

    .line 585
    iget v0, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert$SearchAdapter;->lastSearchId:I

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 588
    iput-boolean p1, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert$SearchAdapter;->searchInProgress:Z

    .line 589
    iget-object v0, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert$SearchAdapter;->this$0:Lorg/telegram/ui/Components/GroupVoipInviteAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/GroupVoipInviteAlert;->access$400(Lorg/telegram/ui/Components/GroupVoipInviteAlert;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 590
    iget-object v0, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert$SearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v0, p2}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->addGroupMembers(Ljava/util/ArrayList;)V

    .line 592
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/Components/GroupVoipInviteAlert$SearchAdapter;->getItemCount()I

    move-result p2

    const/4 v0, 0x1

    sub-int/2addr p2, v0

    .line 593
    iget-object v1, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert$SearchAdapter;->this$0:Lorg/telegram/ui/Components/GroupVoipInviteAlert;

    iget-object v1, v1, Lorg/telegram/ui/Components/UsersAlertBase;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 594
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/GroupVoipInviteAlert$SearchAdapter;->notifyDataSetChanged()V

    .line 595
    invoke-virtual {p0}, Lorg/telegram/ui/Components/GroupVoipInviteAlert$SearchAdapter;->getItemCount()I

    move-result v1

    if-le v1, p2, :cond_3

    .line 596
    iget-object v1, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert$SearchAdapter;->this$0:Lorg/telegram/ui/Components/GroupVoipInviteAlert;

    invoke-virtual {v1, p2}, Lorg/telegram/ui/Components/UsersAlertBase;->showItemsAnimated(I)V

    .line 598
    :cond_3
    iget-boolean p2, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert$SearchAdapter;->searchInProgress:Z

    if-nez p2, :cond_4

    iget-object p2, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert$SearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {p2}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->isSearchInProgress()Z

    move-result p2

    if-nez p2, :cond_4

    .line 599
    iget-object p2, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert$SearchAdapter;->this$0:Lorg/telegram/ui/Components/GroupVoipInviteAlert;

    iget-object p2, p2, Lorg/telegram/ui/Components/UsersAlertBase;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/RecyclerListView;->emptyViewIsVisible()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 600
    iget-object p2, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert$SearchAdapter;->this$0:Lorg/telegram/ui/Components/GroupVoipInviteAlert;

    iget-object p2, p2, Lorg/telegram/ui/Components/UsersAlertBase;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    invoke-virtual {p2, p1, v0}, Lorg/telegram/ui/Components/StickerEmptyView;->showProgress(ZZ)V

    :cond_4
    return-void
.end method

.method private processSearch(Ljava/lang/String;I)V
    .locals 1

    .line 515
    new-instance v0, Lorg/telegram/ui/Components/GroupVoipInviteAlert$SearchAdapter$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1, p2}, Lorg/telegram/ui/Components/GroupVoipInviteAlert$SearchAdapter$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/GroupVoipInviteAlert$SearchAdapter;Ljava/lang/String;I)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private updateSearchResults(Ljava/util/ArrayList;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLObject;",
            ">;I)V"
        }
    .end annotation

    .line 584
    new-instance v0, Lorg/telegram/ui/Components/GroupVoipInviteAlert$SearchAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2, p1}, Lorg/telegram/ui/Components/GroupVoipInviteAlert$SearchAdapter$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/GroupVoipInviteAlert$SearchAdapter;ILjava/util/ArrayList;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public getItem(I)Lorg/telegram/tgnet/TLObject;
    .locals 2

    .line 645
    iget v0, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert$SearchAdapter;->groupStartRow:I

    if-ltz v0, :cond_0

    if-le p1, v0, :cond_0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert$SearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v1}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getGroupSearch()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    if-ge p1, v0, :cond_0

    .line 646
    iget-object v0, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert$SearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getGroupSearch()Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert$SearchAdapter;->groupStartRow:I

    sub-int/2addr p1, v1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLObject;

    return-object p1

    .line 648
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert$SearchAdapter;->globalStartRow:I

    if-ltz v0, :cond_1

    if-le p1, v0, :cond_1

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert$SearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v1}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getGlobalSearch()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    if-ge p1, v0, :cond_1

    .line 649
    iget-object v0, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert$SearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getGlobalSearch()Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert$SearchAdapter;->globalStartRow:I

    sub-int/2addr p1, v1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLObject;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    .line 619
    iget v0, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert$SearchAdapter;->totalCount:I

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 783
    iget v0, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert$SearchAdapter;->emptyRow:I

    if-ne p1, v0, :cond_0

    const/4 p1, 0x2

    return p1

    .line 785
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert$SearchAdapter;->lastRow:I

    if-ne p1, v0, :cond_1

    const/4 p1, 0x3

    return p1

    .line 788
    :cond_1
    iget v0, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert$SearchAdapter;->globalStartRow:I

    if-eq p1, v0, :cond_3

    iget v0, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert$SearchAdapter;->groupStartRow:I

    if-ne p1, v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return p1

    :cond_3
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 5

    .line 608
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v1, v0, Lorg/telegram/ui/Cells/ManageChatUserCell;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 609
    check-cast v0, Lorg/telegram/ui/Cells/ManageChatUserCell;

    .line 610
    iget-object v1, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert$SearchAdapter;->this$0:Lorg/telegram/ui/Components/GroupVoipInviteAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/GroupVoipInviteAlert;->access$500(Lorg/telegram/ui/Components/GroupVoipInviteAlert;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ManageChatUserCell;->getUserId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    .line 614
    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p1

    if-nez p1, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method public notifyDataSetChanged()V
    .locals 3

    const/4 v0, 0x0

    .line 624
    iput v0, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert$SearchAdapter;->totalCount:I

    const/4 v1, 0x0

    add-int/lit8 v1, v1, 0x1

    .line 625
    iput v1, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert$SearchAdapter;->totalCount:I

    iput v0, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert$SearchAdapter;->emptyRow:I

    .line 626
    iget-object v0, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert$SearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getGroupSearch()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 628
    iget v2, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert$SearchAdapter;->totalCount:I

    iput v2, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert$SearchAdapter;->groupStartRow:I

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v2, v0

    .line 629
    iput v2, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert$SearchAdapter;->totalCount:I

    goto :goto_0

    .line 631
    :cond_0
    iput v1, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert$SearchAdapter;->groupStartRow:I

    .line 633
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert$SearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getGlobalSearch()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 635
    iget v1, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert$SearchAdapter;->totalCount:I

    iput v1, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert$SearchAdapter;->globalStartRow:I

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v1, v0

    .line 636
    iput v1, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert$SearchAdapter;->totalCount:I

    goto :goto_1

    .line 638
    :cond_1
    iput v1, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert$SearchAdapter;->globalStartRow:I

    .line 640
    :goto_1
    iget v0, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert$SearchAdapter;->totalCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert$SearchAdapter;->totalCount:I

    iput v0, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert$SearchAdapter;->lastRow:I

    .line 641
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 13

    .line 686
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_0

    goto/16 :goto_4

    .line 763
    :cond_0
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/GraySectionCell;

    .line 764
    iget v0, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert$SearchAdapter;->groupStartRow:I

    if-ne p2, v0, :cond_1

    .line 765
    sget p2, Lorg/telegram/messenger/R$string;->ChannelMembers:I

    const-string v0, "ChannelMembers"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/GraySectionCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 766
    :cond_1
    iget v0, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert$SearchAdapter;->globalStartRow:I

    if-ne p2, v0, :cond_c

    .line 767
    sget p2, Lorg/telegram/messenger/R$string;->GlobalSearch:I

    const-string v0, "GlobalSearch"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/GraySectionCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 688
    :cond_2
    invoke-virtual {p0, p2}, Lorg/telegram/ui/Components/GroupVoipInviteAlert$SearchAdapter;->getItem(I)Lorg/telegram/tgnet/TLObject;

    move-result-object v0

    .line 690
    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v2, :cond_3

    .line 691
    check-cast v0, Lorg/telegram/tgnet/TLRPC$User;

    goto :goto_0

    .line 692
    :cond_3
    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    if-eqz v2, :cond_4

    .line 693
    iget-object v2, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert$SearchAdapter;->this$0:Lorg/telegram/ui/Components/GroupVoipInviteAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/GroupVoipInviteAlert;->access$600(Lorg/telegram/ui/Components/GroupVoipInviteAlert;)I

    move-result v2

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    check-cast v0, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    goto :goto_0

    .line 694
    :cond_4
    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    if-eqz v2, :cond_c

    .line 695
    iget-object v2, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert$SearchAdapter;->this$0:Lorg/telegram/ui/Components/GroupVoipInviteAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/GroupVoipInviteAlert;->access$700(Lorg/telegram/ui/Components/GroupVoipInviteAlert;)I

    move-result v2

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    check-cast v0, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    iget-wide v3, v0, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    .line 700
    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->getPublicUsername(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v2

    .line 704
    iget-object v3, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert$SearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v3}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getGroupSearch()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v3, :cond_6

    add-int/2addr v3, v1

    if-le v3, p2, :cond_5

    .line 709
    iget-object v3, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert$SearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v3}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getLastFoundChannel()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x1

    goto :goto_1

    :cond_5
    sub-int/2addr p2, v3

    :cond_6
    move-object v3, v5

    const/4 v6, 0x0

    :goto_1
    const/16 v7, 0x21

    const-string/jumbo v8, "voipgroup_listeningText"

    const/4 v9, -0x1

    if-nez v6, :cond_a

    if-eqz v2, :cond_a

    .line 716
    iget-object v6, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert$SearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v6}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getGlobalSearch()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-eqz v6, :cond_a

    add-int/2addr v6, v1

    if-le v6, p2, :cond_a

    .line 719
    iget-object v6, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert$SearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v6}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getLastFoundUsername()Ljava/lang/String;

    move-result-object v6

    const-string v10, "@"

    .line 720
    invoke-virtual {v6, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 721
    invoke-virtual {v6, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 725
    :cond_7
    :try_start_0
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 726
    invoke-virtual {v1, v10}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 727
    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 728
    invoke-static {v2, v6}, Lorg/telegram/messenger/AndroidUtilities;->indexOfIgnoreCase(Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    if-eq v10, v9, :cond_9

    .line 729
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v10, :cond_8

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_8
    add-int/lit8 v10, v10, 0x1

    .line 735
    :goto_2
    new-instance v11, Landroid/text/style/ForegroundColorSpan;

    invoke-static {v8}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v12

    invoke-direct {v11, v12}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    add-int/2addr v6, v10

    invoke-virtual {v1, v11, v10, v6, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_9
    move-object v2, v1

    goto :goto_3

    :catch_0
    move-exception v1

    .line 740
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_a
    move-object v2, v5

    :goto_3
    if-eqz v3, :cond_b

    .line 747
    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v1

    .line 748
    new-instance v5, Landroid/text/SpannableStringBuilder;

    invoke-direct {v5, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 749
    invoke-static {v1, v3}, Lorg/telegram/messenger/AndroidUtilities;->indexOfIgnoreCase(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eq v1, v9, :cond_b

    .line 751
    new-instance v6, Landroid/text/style/ForegroundColorSpan;

    invoke-static {v8}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v8

    invoke-direct {v6, v8}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {v5, v6, v1, v3, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 755
    :cond_b
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/ManageChatUserCell;

    .line 756
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 757
    iget-object p2, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert$SearchAdapter;->this$0:Lorg/telegram/ui/Components/GroupVoipInviteAlert;

    invoke-static {p2}, Lorg/telegram/ui/Components/GroupVoipInviteAlert;->access$500(Lorg/telegram/ui/Components/GroupVoipInviteAlert;)Ljava/util/HashSet;

    move-result-object p2

    iget-wide v6, v0, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/ManageChatUserCell;->setCustomImageVisible(Z)V

    .line 758
    invoke-virtual {p1, v0, v5, v2, v4}, Lorg/telegram/ui/Cells/ManageChatUserCell;->setData(Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    :cond_c
    :goto_4
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    const/4 p1, 0x2

    if-eqz p2, :cond_2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    if-eq p2, p1, :cond_0

    .line 678
    new-instance p1, Landroid/view/View;

    iget-object p2, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert$SearchAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 673
    :cond_0
    new-instance p1, Landroid/view/View;

    iget-object p2, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert$SearchAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 674
    new-instance p2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v0, -0x1

    const/16 v1, 0x38

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-direct {p2, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 667
    :cond_1
    new-instance p1, Lorg/telegram/ui/Cells/GraySectionCell;

    iget-object p2, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert$SearchAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/GraySectionCell;-><init>(Landroid/content/Context;)V

    const-string/jumbo p2, "voipgroup_actionBarUnscrolled"

    .line 668
    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    const-string/jumbo p2, "voipgroup_searchPlaceholder"

    .line 669
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/GraySectionCell;->setTextColor(Ljava/lang/String;)V

    goto :goto_0

    .line 659
    :cond_2
    new-instance p2, Lorg/telegram/ui/Cells/ManageChatUserCell;

    iget-object v0, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert$SearchAdapter;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-direct {p2, v0, p1, p1, v1}, Lorg/telegram/ui/Cells/ManageChatUserCell;-><init>(Landroid/content/Context;IIZ)V

    .line 660
    sget p1, Lorg/telegram/messenger/R$drawable;->msg_invited:I

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Cells/ManageChatUserCell;->setCustomRightImage(I)V

    const-string/jumbo p1, "voipgroup_nameText"

    .line 661
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Cells/ManageChatUserCell;->setNameColor(I)V

    const-string/jumbo p1, "voipgroup_lastSeenTextUnscrolled"

    .line 662
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p1

    const-string/jumbo v0, "voipgroup_listeningText"

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, p1, v0}, Lorg/telegram/ui/Cells/ManageChatUserCell;->setStatusColors(II)V

    const-string/jumbo p1, "voipgroup_listViewBackground"

    .line 663
    invoke-virtual {p2, p1}, Lorg/telegram/ui/Cells/ManageChatUserCell;->setDividerColor(Ljava/lang/String;)V

    move-object p1, p2

    .line 681
    :goto_0
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .line 776
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v0, p1, Lorg/telegram/ui/Cells/ManageChatUserCell;

    if-eqz v0, :cond_0

    .line 777
    check-cast p1, Lorg/telegram/ui/Cells/ManageChatUserCell;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ManageChatUserCell;->recycle()V

    :cond_0
    return-void
.end method

.method public searchUsers(Ljava/lang/String;)V
    .locals 14

    .line 484
    iget-object v0, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert$SearchAdapter;->searchRunnable:Ljava/lang/Runnable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 485
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 486
    iput-object v1, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert$SearchAdapter;->searchRunnable:Ljava/lang/Runnable;

    .line 488
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert$SearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->mergeResults(Ljava/util/ArrayList;)V

    .line 489
    iget-object v2, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert$SearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v0, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert$SearchAdapter;->this$0:Lorg/telegram/ui/Components/GroupVoipInviteAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/GroupVoipInviteAlert;->access$400(Lorg/telegram/ui/Components/GroupVoipInviteAlert;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    iget-wide v9, v0, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    const/4 v11, 0x0

    const/4 v12, 0x2

    const/4 v13, -0x1

    invoke-virtual/range {v2 .. v13}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->queryServerSearch(Ljava/lang/String;ZZZZZJZII)V

    .line 491
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 492
    iget-object v0, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert$SearchAdapter;->this$0:Lorg/telegram/ui/Components/GroupVoipInviteAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/UsersAlertBase;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Lorg/telegram/ui/Components/StickerEmptyView;->showProgress(ZZ)V

    .line 493
    iget-object v0, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert$SearchAdapter;->this$0:Lorg/telegram/ui/Components/GroupVoipInviteAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/UsersAlertBase;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setAnimateEmptyView(ZI)V

    .line 494
    invoke-virtual {p0}, Lorg/telegram/ui/Components/GroupVoipInviteAlert$SearchAdapter;->notifyDataSetChanged()V

    .line 495
    iget-object v0, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert$SearchAdapter;->this$0:Lorg/telegram/ui/Components/GroupVoipInviteAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/UsersAlertBase;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setAnimateEmptyView(ZI)V

    .line 496
    iput-boolean v1, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert$SearchAdapter;->searchInProgress:Z

    .line 497
    iget v0, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert$SearchAdapter;->lastSearchId:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert$SearchAdapter;->lastSearchId:I

    .line 498
    new-instance v1, Lorg/telegram/ui/Components/GroupVoipInviteAlert$SearchAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, v0}, Lorg/telegram/ui/Components/GroupVoipInviteAlert$SearchAdapter$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/GroupVoipInviteAlert$SearchAdapter;Ljava/lang/String;I)V

    iput-object v1, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert$SearchAdapter;->searchRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x12c

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 506
    iget-object p1, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert$SearchAdapter;->this$0:Lorg/telegram/ui/Components/GroupVoipInviteAlert;

    iget-object p1, p1, Lorg/telegram/ui/Components/UsersAlertBase;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert$SearchAdapter;->this$0:Lorg/telegram/ui/Components/GroupVoipInviteAlert;

    iget-object v1, v0, Lorg/telegram/ui/Components/UsersAlertBase;->searchListViewAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eq p1, v1, :cond_2

    .line 507
    iget-object p1, v0, Lorg/telegram/ui/Components/UsersAlertBase;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    .line 510
    iput p1, p0, Lorg/telegram/ui/Components/GroupVoipInviteAlert$SearchAdapter;->lastSearchId:I

    :cond_2
    :goto_0
    return-void
.end method
