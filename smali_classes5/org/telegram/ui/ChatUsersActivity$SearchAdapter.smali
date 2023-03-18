.class Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "ChatUsersActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ChatUsersActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SearchAdapter"
.end annotation


# instance fields
.field private contactsStartRow:I

.field private globalStartRow:I

.field private groupStartRow:I

.field private mContext:Landroid/content/Context;

.field private searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

.field private searchInProgress:Z

.field private searchResult:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private searchResultMap:Landroidx/collection/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LongSparseArray<",
            "Lorg/telegram/tgnet/TLObject;",
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

.field final synthetic this$0:Lorg/telegram/ui/ChatUsersActivity;

.field private totalCount:I


# direct methods
.method public static synthetic $r8$lambda$I13h2PXzza5Gha04RqrItLNjVag(Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->lambda$processSearch$3(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LXhjIzHbgCIIMdRWdvbJxozIxsw(Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->lambda$searchUsers$1(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XMUwwzwwfFX_3cgw-y3u_CC-1nA(Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->lambda$new$0(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$YP1QR3_Tt7Wi66gb4KP4dJ49ers(Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->lambda$processSearch$2(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hXRNZI-FVp0xax8wQVecIBdyMRw(Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;Ljava/util/ArrayList;Landroidx/collection/LongSparseArray;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->lambda$updateSearchResults$4(Ljava/util/ArrayList;Landroidx/collection/LongSparseArray;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hhK0S9w9nUX9PfJaYpauTXgjTnU(Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;Lorg/telegram/ui/Cells/ManageChatUserCell;Z)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->lambda$onCreateViewHolder$5(Lorg/telegram/ui/Cells/ManageChatUserCell;Z)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Lorg/telegram/ui/ChatUsersActivity;Landroid/content/Context;)V
    .locals 0

    .line 2581
    iput-object p1, p0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 2569
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->searchResult:Ljava/util/ArrayList;

    .line 2570
    new-instance p1, Landroidx/collection/LongSparseArray;

    invoke-direct {p1}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->searchResultMap:Landroidx/collection/LongSparseArray;

    .line 2571
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->searchResultNames:Ljava/util/ArrayList;

    const/4 p1, 0x0

    .line 2574
    iput p1, p0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->totalCount:I

    .line 2582
    iput-object p2, p0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->mContext:Landroid/content/Context;

    .line 2583
    new-instance p1, Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;-><init>(Z)V

    iput-object p1, p0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    .line 2584
    new-instance p2, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter$$ExternalSyntheticLambda4;

    invoke-direct {p2, p0}, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;)V

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->setDelegate(Lorg/telegram/ui/Adapters/SearchAdapterHelper$SearchAdapterHelperDelegate;)V

    return-void
.end method

.method private synthetic lambda$new$0(I)V
    .locals 2

    .line 2585
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->isSearchInProgress()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2586
    invoke-virtual {p0}, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->getItemCount()I

    move-result v0

    .line 2587
    invoke-virtual {p0}, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->notifyDataSetChanged()V

    .line 2588
    invoke-virtual {p0}, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->getItemCount()I

    move-result v1

    if-le v1, v0, :cond_0

    .line 2589
    iget-object v1, p0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v1, v0}, Lorg/telegram/ui/ChatUsersActivity;->access$700(Lorg/telegram/ui/ChatUsersActivity;I)V

    .line 2591
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->searchInProgress:Z

    if-nez v0, :cond_1

    .line 2592
    invoke-virtual {p0}, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->getItemCount()I

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    .line 2593
    iget-object p1, p0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatUsersActivity;->access$2400(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/ui/Components/StickerEmptyView;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Components/StickerEmptyView;->showProgress(ZZ)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$onCreateViewHolder$5(Lorg/telegram/ui/Cells/ManageChatUserCell;Z)Z
    .locals 1

    .line 2877
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->getItem(I)Lorg/telegram/tgnet/TLObject;

    move-result-object p1

    .line 2878
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    if-eqz v0, :cond_0

    .line 2879
    check-cast p1, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    .line 2880
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    xor-int/lit8 p2, p2, 0x1

    invoke-static {v0, p1, p2}, Lorg/telegram/ui/ChatUsersActivity;->access$2700(Lorg/telegram/ui/ChatUsersActivity;Lorg/telegram/tgnet/TLObject;Z)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private synthetic lambda$processSearch$2(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    .line 2629
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 2630
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_0

    .line 2631
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Landroidx/collection/LongSparseArray;

    invoke-direct {v2}, Landroidx/collection/LongSparseArray;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->updateSearchResults(Ljava/util/ArrayList;Landroidx/collection/LongSparseArray;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void

    .line 2634
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/telegram/messenger/LocaleController;->getTranslitString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2635
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_2

    :cond_1
    const/4 v4, 0x0

    :cond_2
    const/4 v5, 0x0

    const/4 v7, 0x1

    if-eqz v4, :cond_3

    const/4 v8, 0x1

    goto :goto_0

    :cond_3
    const/4 v8, 0x0

    :goto_0
    add-int/2addr v8, v7

    .line 2638
    new-array v9, v8, [Ljava/lang/String;

    .line 2639
    aput-object v3, v9, v5

    if-eqz v4, :cond_4

    .line 2641
    aput-object v4, v9, v7

    .line 2643
    :cond_4
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2644
    new-instance v4, Landroidx/collection/LongSparseArray;

    invoke-direct {v4}, Landroidx/collection/LongSparseArray;-><init>()V

    .line 2645
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 2646
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    const-string v13, "@"

    const-string v14, " "

    if-eqz v1, :cond_11

    .line 2649
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v15

    :goto_1
    if-ge v5, v15, :cond_11

    .line 2651
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v12, v16

    check-cast v12, Lorg/telegram/tgnet/TLObject;

    .line 2652
    instance-of v6, v12, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    if-eqz v6, :cond_5

    .line 2653
    move-object v6, v12

    check-cast v6, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    move/from16 v17, v8

    iget-wide v7, v6, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:J

    goto :goto_2

    :cond_5
    move/from16 v17, v8

    .line 2654
    instance-of v6, v12, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    if-eqz v6, :cond_10

    .line 2655
    move-object v6, v12

    check-cast v6, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v6}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v7

    :goto_2
    const-wide/16 v18, 0x0

    cmp-long v6, v7, v18

    if-lez v6, :cond_7

    .line 2664
    iget-object v6, v0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-virtual {v6}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v6

    .line 2665
    iget-wide v7, v6, Lorg/telegram/tgnet/TLRPC$User;->id:J

    iget-object v1, v0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v18

    cmp-long v1, v7, v18

    if-nez v1, :cond_6

    goto/16 :goto_8

    .line 2668
    :cond_6
    invoke-static {v6}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 2669
    invoke-static {v6}, Lorg/telegram/messenger/UserObject;->getPublicUsername(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v7

    .line 2670
    iget-object v8, v6, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    .line 2671
    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    move/from16 v18, v15

    goto :goto_3

    .line 2673
    :cond_7
    iget-object v1, v0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    neg-long v6, v7

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v1, v6}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    .line 2674
    iget-object v6, v1, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    .line 2675
    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->getPublicUsername(Lorg/telegram/tgnet/TLRPC$Chat;)Ljava/lang/String;

    move-result-object v7

    .line 2676
    iget-object v8, v1, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object v1, v6

    move/from16 v18, v15

    const/4 v6, 0x0

    .line 2680
    :goto_3
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v15

    invoke-virtual {v15, v1}, Lorg/telegram/messenger/LocaleController;->getTranslitString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 2681
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_8

    const/4 v15, 0x0

    :cond_8
    move-object/from16 v20, v3

    move-object/from16 v19, v4

    move/from16 v4, v17

    const/4 v3, 0x0

    const/16 v17, 0x0

    :goto_4
    move/from16 v21, v4

    if-ge v3, v4, :cond_f

    .line 2686
    aget-object v4, v9, v3

    .line 2687
    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_b

    move-object/from16 v22, v9

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_c

    if-eqz v15, :cond_9

    invoke-virtual {v15, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_c

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v15, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_9

    goto :goto_5

    :cond_9
    if-eqz v7, :cond_a

    .line 2689
    invoke-virtual {v7, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/4 v9, 0x2

    goto :goto_6

    :cond_a
    move/from16 v9, v17

    goto :goto_6

    :cond_b
    move-object/from16 v22, v9

    :cond_c
    :goto_5
    const/4 v9, 0x1

    :goto_6
    if-eqz v9, :cond_e

    const/4 v1, 0x1

    if-ne v9, v1, :cond_d

    .line 2695
    invoke-static {v8, v6, v4}, Lorg/telegram/messenger/AndroidUtilities;->generateSearchName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 2697
    :cond_d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v1, v4, v3}, Lorg/telegram/messenger/AndroidUtilities;->generateSearchName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2699
    :goto_7
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_e
    move-object/from16 v17, v1

    add-int/lit8 v3, v3, 0x1

    move/from16 v4, v21

    move/from16 v17, v9

    move-object/from16 v9, v22

    goto/16 :goto_4

    :cond_f
    move-object/from16 v22, v9

    goto :goto_9

    :cond_10
    :goto_8
    move-object/from16 v20, v3

    move-object/from16 v19, v4

    move-object/from16 v22, v9

    move/from16 v18, v15

    move/from16 v21, v17

    :goto_9
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v1, p2

    move/from16 v15, v18

    move-object/from16 v4, v19

    move-object/from16 v3, v20

    move/from16 v8, v21

    move-object/from16 v9, v22

    const/4 v7, 0x1

    goto/16 :goto_1

    :cond_11
    move-object/from16 v20, v3

    move-object/from16 v19, v4

    move/from16 v21, v8

    move-object/from16 v22, v9

    if-eqz v2, :cond_1a

    const/4 v1, 0x0

    .line 2707
    :goto_a
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1a

    .line 2708
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_contact;

    .line 2709
    iget-object v4, v0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-wide v5, v3, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v4, v3}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    .line 2710
    iget-wide v4, v3, Lorg/telegram/tgnet/TLRPC$User;->id:J

    iget-object v6, v0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-virtual {v6}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-nez v8, :cond_12

    move-object/from16 v9, v19

    move-object/from16 v15, v20

    move/from16 v8, v21

    :goto_b
    const/4 v12, 0x1

    goto/16 :goto_10

    .line 2714
    :cond_12
    invoke-static {v3}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 2715
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v5

    invoke-virtual {v5, v4}, Lorg/telegram/messenger/LocaleController;->getTranslitString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2716
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    const/4 v5, 0x0

    :cond_13
    move/from16 v8, v21

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_c
    if-ge v7, v8, :cond_19

    .line 2722
    aget-object v9, v22, v7

    .line 2723
    invoke-virtual {v4, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_15

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_15

    if-eqz v5, :cond_14

    invoke-virtual {v5, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_15

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_14

    goto :goto_d

    .line 2725
    :cond_14
    invoke-static {v3}, Lorg/telegram/messenger/UserObject;->getPublicUsername(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_16

    invoke-virtual {v12, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_16

    const/4 v6, 0x2

    goto :goto_e

    :cond_15
    :goto_d
    const/4 v6, 0x1

    :cond_16
    :goto_e
    if-eqz v6, :cond_18

    const/4 v12, 0x1

    if-ne v6, v12, :cond_17

    .line 2731
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v4, v5, v9}, Lorg/telegram/messenger/AndroidUtilities;->generateSearchName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v15, v20

    const/4 v9, 0x0

    goto :goto_f

    .line 2733
    :cond_17
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lorg/telegram/messenger/UserObject;->getPublicUsername(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v9, 0x0

    invoke-static {v4, v9, v5}, Lorg/telegram/messenger/AndroidUtilities;->generateSearchName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v15, v20

    .line 2735
    :goto_f
    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2736
    iget-wide v4, v3, Lorg/telegram/tgnet/TLRPC$User;->id:J

    move-object/from16 v6, v19

    invoke-virtual {v6, v4, v5, v3}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    move-object v9, v6

    goto :goto_10

    :cond_18
    move-object/from16 v9, v19

    move-object/from16 v15, v20

    const/4 v12, 0x1

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_c

    :cond_19
    move-object/from16 v9, v19

    move-object/from16 v15, v20

    goto/16 :goto_b

    :goto_10
    add-int/lit8 v1, v1, 0x1

    move/from16 v21, v8

    move-object/from16 v19, v9

    move-object/from16 v20, v15

    goto/16 :goto_a

    :cond_1a
    move-object/from16 v9, v19

    move-object/from16 v15, v20

    .line 2742
    invoke-direct {v0, v15, v9, v10, v11}, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->updateSearchResults(Ljava/util/ArrayList;Landroidx/collection/LongSparseArray;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method

.method private synthetic lambda$processSearch$3(Ljava/lang/String;)V
    .locals 21

    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 2621
    iput-object v1, v0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->searchRunnable:Ljava/lang/Runnable;

    .line 2623
    iget-object v2, v0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatUsersActivity;->access$2200(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatUsersActivity;->access$1700(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatUsersActivity;->access$1700(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    :cond_0
    move-object v2, v1

    .line 2624
    :goto_0
    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatUsersActivity;->access$2500(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    new-instance v3, Ljava/util/ArrayList;

    iget-object v5, v0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChatUsersActivity;->access$2800(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/messenger/ContactsController;

    move-result-object v5

    iget-object v5, v5, Lorg/telegram/messenger/ContactsController;->contacts:Ljava/util/ArrayList;

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_1

    :cond_1
    move-object v3, v1

    :goto_1
    const/4 v5, 0x0

    if-nez v2, :cond_3

    if-eqz v3, :cond_2

    goto :goto_2

    .line 2745
    :cond_2
    iput-boolean v5, v0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->searchInProgress:Z

    move-object/from16 v7, p1

    goto :goto_3

    .line 2628
    :cond_3
    :goto_2
    new-instance v1, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter$$ExternalSyntheticLambda2;

    move-object/from16 v7, p1

    invoke-direct {v1, v0, v7, v2, v3}, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :goto_3
    move-object/from16 v20, v1

    .line 2747
    iget-object v6, v0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    iget-object v1, v0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatUsersActivity;->access$2500(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v1

    if-eqz v1, :cond_4

    const/4 v8, 0x1

    goto :goto_4

    :cond_4
    const/4 v8, 0x0

    :goto_4
    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    iget-object v1, v0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatUsersActivity;->access$2200(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, v0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatUsersActivity;->access$2300(Lorg/telegram/ui/ChatUsersActivity;)J

    move-result-wide v1

    goto :goto_5

    :cond_5
    const-wide/16 v1, 0x0

    :goto_5
    move-wide v13, v1

    const/4 v15, 0x0

    iget-object v1, v0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatUsersActivity;->access$1500(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v16

    const/16 v17, 0x1

    const-wide/16 v18, 0x0

    move-object/from16 v7, p1

    invoke-virtual/range {v6 .. v20}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->queryServerSearch(Ljava/lang/String;ZZZZZJZIIJLjava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$searchUsers$1(Ljava/lang/String;)V
    .locals 0

    .line 2615
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->processSearch(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$updateSearchResults$4(Ljava/util/ArrayList;Landroidx/collection/LongSparseArray;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 1

    .line 2753
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->access$200(Lorg/telegram/ui/ChatUsersActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2756
    iput-boolean v0, p0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->searchInProgress:Z

    .line 2757
    iput-object p1, p0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->searchResult:Ljava/util/ArrayList;

    .line 2758
    iput-object p2, p0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->searchResultMap:Landroidx/collection/LongSparseArray;

    .line 2759
    iput-object p3, p0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->searchResultNames:Ljava/util/ArrayList;

    .line 2760
    iget-object p2, p0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->mergeResults(Ljava/util/ArrayList;)V

    .line 2761
    iget-object p1, p0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatUsersActivity;->access$2200(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 2762
    iget-object p1, p0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {p1}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getGroupSearch()Ljava/util/ArrayList;

    move-result-object p1

    .line 2763
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 2764
    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2766
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->getItemCount()I

    move-result p1

    .line 2767
    invoke-virtual {p0}, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->notifyDataSetChanged()V

    .line 2768
    invoke-virtual {p0}, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->getItemCount()I

    move-result p2

    if-le p2, p1, :cond_2

    .line 2769
    iget-object p2, p0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {p2, p1}, Lorg/telegram/ui/ChatUsersActivity;->access$700(Lorg/telegram/ui/ChatUsersActivity;I)V

    .line 2771
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {p1}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->isSearchInProgress()Z

    move-result p1

    if-nez p1, :cond_3

    .line 2772
    invoke-virtual {p0}, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->getItemCount()I

    move-result p1

    if-nez p1, :cond_3

    .line 2773
    iget-object p1, p0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatUsersActivity;->access$2400(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/ui/Components/StickerEmptyView;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, v0, p2}, Lorg/telegram/ui/Components/StickerEmptyView;->showProgress(ZZ)V

    :cond_3
    return-void
.end method

.method private processSearch(Ljava/lang/String;)V
    .locals 1

    .line 2620
    new-instance v0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;Ljava/lang/String;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private updateSearchResults(Ljava/util/ArrayList;Landroidx/collection/LongSparseArray;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;",
            "Landroidx/collection/LongSparseArray<",
            "Lorg/telegram/tgnet/TLObject;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/CharSequence;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLObject;",
            ">;)V"
        }
    .end annotation

    .line 2752
    new-instance v6, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter$$ExternalSyntheticLambda3;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;Ljava/util/ArrayList;Landroidx/collection/LongSparseArray;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public getItem(I)Lorg/telegram/tgnet/TLObject;
    .locals 2

    .line 2832
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getGroupSearch()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    add-int/lit8 v0, v0, 0x1

    if-le v0, p1, :cond_1

    if-nez p1, :cond_0

    return-object v1

    .line 2838
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getGroupSearch()Ljava/util/ArrayList;

    move-result-object v0

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLObject;

    return-object p1

    :cond_1
    sub-int/2addr p1, v0

    .line 2844
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_5

    add-int/lit8 v0, v0, 0x1

    if-le v0, p1, :cond_4

    if-nez p1, :cond_3

    return-object v1

    .line 2850
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->searchResult:Ljava/util/ArrayList;

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLObject;

    return-object p1

    :cond_4
    sub-int/2addr p1, v0

    .line 2856
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getGlobalSearch()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_7

    add-int/lit8 v0, v0, 0x1

    if-le v0, p1, :cond_7

    if-nez p1, :cond_6

    return-object v1

    .line 2862
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getGlobalSearch()Ljava/util/ArrayList;

    move-result-object v0

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLObject;

    return-object p1

    :cond_7
    return-object v1
.end method

.method public getItemCount()I
    .locals 1

    .line 2786
    iget v0, p0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->totalCount:I

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 3034
    iget v0, p0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->globalStartRow:I

    if-eq p1, v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->groupStartRow:I

    if-eq p1, v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->contactsStartRow:I

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    .line 2781
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 5

    const/4 v0, 0x0

    .line 2791
    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->totalCount:I

    .line 2792
    iget-object v1, p0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v1}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getGroupSearch()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 2794
    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->groupStartRow:I

    .line 2795
    iget v4, p0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->totalCount:I

    add-int/2addr v1, v3

    add-int/2addr v4, v1

    iput v4, p0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->totalCount:I

    goto :goto_0

    .line 2797
    :cond_0
    iput v2, p0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->groupStartRow:I

    .line 2799
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_1

    .line 2801
    iget v4, p0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->totalCount:I

    iput v4, p0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->contactsStartRow:I

    add-int/2addr v1, v3

    add-int/2addr v4, v1

    .line 2802
    iput v4, p0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->totalCount:I

    goto :goto_1

    .line 2804
    :cond_1
    iput v2, p0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->contactsStartRow:I

    .line 2806
    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v1}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getGlobalSearch()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_2

    .line 2808
    iget v2, p0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->totalCount:I

    iput v2, p0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->globalStartRow:I

    add-int/2addr v1, v3

    add-int/2addr v2, v1

    .line 2809
    iput v2, p0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->totalCount:I

    goto :goto_2

    .line 2811
    :cond_2
    iput v2, p0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->globalStartRow:I

    .line 2813
    :goto_2
    iget-object v1, p0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatUsersActivity;->access$200(Lorg/telegram/ui/ChatUsersActivity;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatUsersActivity;->access$500(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatUsersActivity;->access$500(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatUsersActivity;->access$400(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;

    move-result-object v2

    if-eq v1, v2, :cond_3

    .line 2814
    iget-object v1, p0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatUsersActivity;->access$500(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setAnimateEmptyView(ZI)V

    .line 2815
    iget-object v1, p0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatUsersActivity;->access$500(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatUsersActivity;->access$400(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 2816
    iget-object v1, p0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatUsersActivity;->access$500(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setFastScrollVisible(Z)V

    .line 2817
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->access$500(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    .line 2819
    :cond_3
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v0, p2

    .line 2897
    invoke-virtual/range {p1 .. p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_6

    if-eq v3, v4, :cond_0

    goto/16 :goto_7

    .line 3002
    :cond_0
    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v2, Lorg/telegram/ui/Cells/GraySectionCell;

    .line 3003
    iget v3, v1, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->groupStartRow:I

    if-ne v0, v3, :cond_4

    .line 3004
    iget-object v0, v1, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->access$1500(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    if-nez v0, :cond_1

    .line 3005
    sget v0, Lorg/telegram/messenger/R$string;->ChannelBlockedUsers:I

    const-string v3, "ChannelBlockedUsers"

    invoke-static {v3, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Cells/GraySectionCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 3006
    :cond_1
    iget-object v0, v1, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->access$1500(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_2

    .line 3007
    sget v0, Lorg/telegram/messenger/R$string;->ChannelRestrictedUsers:I

    const-string v3, "ChannelRestrictedUsers"

    invoke-static {v3, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Cells/GraySectionCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 3009
    :cond_2
    iget-object v0, v1, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->access$2600(Lorg/telegram/ui/ChatUsersActivity;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3010
    sget v0, Lorg/telegram/messenger/R$string;->ChannelSubscribers:I

    const-string v3, "ChannelSubscribers"

    invoke-static {v3, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Cells/GraySectionCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 3012
    :cond_3
    sget v0, Lorg/telegram/messenger/R$string;->ChannelMembers:I

    const-string v3, "ChannelMembers"

    invoke-static {v3, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Cells/GraySectionCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 3015
    :cond_4
    iget v3, v1, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->globalStartRow:I

    if-ne v0, v3, :cond_5

    .line 3016
    sget v0, Lorg/telegram/messenger/R$string;->GlobalSearch:I

    const-string v3, "GlobalSearch"

    invoke-static {v3, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Cells/GraySectionCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 3017
    :cond_5
    iget v3, v1, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->contactsStartRow:I

    if-ne v0, v3, :cond_14

    .line 3018
    sget v0, Lorg/telegram/messenger/R$string;->Contacts:I

    const-string v3, "Contacts"

    invoke-static {v3, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Cells/GraySectionCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 2899
    :cond_6
    invoke-virtual {v1, v0}, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->getItem(I)Lorg/telegram/tgnet/TLObject;

    move-result-object v3

    .line 2902
    instance-of v5, v3, Lorg/telegram/tgnet/TLRPC$User;

    const/4 v6, 0x0

    if-eqz v5, :cond_8

    :cond_7
    :goto_0
    move-object v5, v6

    goto :goto_1

    .line 2904
    :cond_8
    instance-of v5, v3, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    if-eqz v5, :cond_a

    .line 2905
    check-cast v3, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v3}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v3, v7, v9

    if-ltz v3, :cond_9

    .line 2907
    iget-object v3, v1, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 2909
    invoke-static {v3}, Lorg/telegram/messenger/UserObject;->getPublicUsername(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 2913
    :cond_9
    iget-object v3, v1, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    neg-long v7, v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 2915
    invoke-static {v3}, Lorg/telegram/messenger/ChatObject;->getPublicUsername(Lorg/telegram/tgnet/TLRPC$Chat;)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 2919
    :cond_a
    instance-of v5, v3, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    if-eqz v5, :cond_14

    .line 2920
    iget-object v5, v1, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    check-cast v3, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    iget-wide v7, v3, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v5, v3}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    goto :goto_0

    .line 2928
    :goto_1
    iget-object v7, v1, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v7}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getGroupSearch()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_c

    add-int/2addr v7, v4

    if-le v7, v0, :cond_b

    .line 2933
    iget-object v7, v1, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v7}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getLastFoundChannel()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x1

    goto :goto_2

    :cond_b
    sub-int/2addr v0, v7

    :cond_c
    move-object v7, v6

    const/4 v9, 0x0

    :goto_2
    const-string v10, "@"

    if-nez v9, :cond_f

    .line 2940
    iget-object v11, v1, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-eqz v11, :cond_f

    add-int/2addr v11, v4

    if-le v11, v0, :cond_e

    .line 2944
    iget-object v9, v1, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->searchResultNames:Ljava/util/ArrayList;

    add-int/lit8 v11, v0, -0x1

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/CharSequence;

    if-eqz v9, :cond_d

    .line 2945
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_d

    .line 2946
    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_d

    move-object v11, v6

    goto :goto_3

    :cond_d
    move-object v11, v9

    move-object v9, v6

    :goto_3
    move v6, v0

    const/4 v0, 0x1

    goto :goto_4

    :cond_e
    sub-int/2addr v0, v11

    :cond_f
    move-object v11, v6

    move v6, v0

    move v0, v9

    move-object v9, v11

    :goto_4
    const/16 v12, 0x21

    const-string v13, "windowBackgroundWhiteBlueText4"

    const/4 v14, -0x1

    if-nez v0, :cond_12

    if-eqz v5, :cond_12

    .line 2957
    iget-object v0, v1, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getGlobalSearch()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_12

    add-int/2addr v0, v4

    if-le v0, v6, :cond_12

    .line 2960
    iget-object v0, v1, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getLastFoundUsername()Ljava/lang/String;

    move-result-object v0

    .line 2961
    invoke-virtual {v0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_10

    .line 2962
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 2966
    :cond_10
    :try_start_0
    new-instance v9, Landroid/text/SpannableStringBuilder;

    invoke-direct {v9}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 2967
    invoke-virtual {v9, v10}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2968
    invoke-virtual {v9, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2969
    invoke-static {v5, v0}, Lorg/telegram/messenger/AndroidUtilities;->indexOfIgnoreCase(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-eq v4, v14, :cond_12

    .line 2970
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v4, :cond_11

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_11
    add-int/lit8 v4, v4, 0x1

    .line 2976
    :goto_5
    new-instance v10, Landroid/text/style/ForegroundColorSpan;

    invoke-static {v13}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v15

    invoke-direct {v10, v15}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    add-int/2addr v0, v4

    invoke-virtual {v9, v10, v4, v0, v12}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-exception v0

    .line 2981
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    move-object v9, v5

    :cond_12
    :goto_6
    if-eqz v7, :cond_13

    if-eqz v5, :cond_13

    .line 2988
    new-instance v11, Landroid/text/SpannableStringBuilder;

    invoke-direct {v11, v5}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 2989
    invoke-static {v5, v7}, Lorg/telegram/messenger/AndroidUtilities;->indexOfIgnoreCase(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eq v0, v14, :cond_13

    .line 2991
    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    invoke-static {v13}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v4, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v0

    invoke-virtual {v11, v4, v0, v5, v12}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 2995
    :cond_13
    iget-object v0, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/ManageChatUserCell;

    .line 2996
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 2997
    invoke-virtual {v0, v3, v11, v9, v8}, Lorg/telegram/ui/Cells/ManageChatUserCell;->setData(Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    :cond_14
    :goto_7
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    if-eqz p2, :cond_0

    .line 2889
    new-instance p1, Lorg/telegram/ui/Cells/GraySectionCell;

    iget-object p2, p0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/GraySectionCell;-><init>(Landroid/content/Context;)V

    goto :goto_1

    .line 2874
    :cond_0
    new-instance p1, Lorg/telegram/ui/Cells/ManageChatUserCell;

    iget-object p2, p0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->access$2500(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x2

    invoke-direct {p1, p2, v1, v1, v0}, Lorg/telegram/ui/Cells/ManageChatUserCell;-><init>(Landroid/content/Context;IIZ)V

    const-string p2, "windowBackgroundWhite"

    .line 2875
    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 2876
    new-instance p2, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter$$ExternalSyntheticLambda5;

    invoke-direct {p2, p0}, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;)V

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/ManageChatUserCell;->setDelegate(Lorg/telegram/ui/Cells/ManageChatUserCell$ManageChatUserCellDelegate;)V

    .line 2892
    :goto_1
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .line 3027
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v0, p1, Lorg/telegram/ui/Cells/ManageChatUserCell;

    if-eqz v0, :cond_0

    .line 3028
    check-cast p1, Lorg/telegram/ui/Cells/ManageChatUserCell;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ManageChatUserCell;->recycle()V

    :cond_0
    return-void
.end method

.method public removeUserId(J)V
    .locals 1

    .line 2823
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->removeUserId(J)V

    .line 2824
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->searchResultMap:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2826
    iget-object p2, p0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2828
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public searchUsers(Ljava/lang/String;)V
    .locals 14

    .line 2601
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->searchRunnable:Ljava/lang/Runnable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2602
    sget-object v0, Lorg/telegram/messenger/Utilities;->searchQueue:Lorg/telegram/messenger/DispatchQueue;

    iget-object v2, p0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->searchRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/DispatchQueue;->cancelRunnable(Ljava/lang/Runnable;)V

    .line 2603
    iput-object v1, p0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->searchRunnable:Ljava/lang/Runnable;

    .line 2605
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2606
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->searchResultMap:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0}, Landroidx/collection/LongSparseArray;->clear()V

    .line 2607
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->searchResultNames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2608
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->mergeResults(Ljava/util/ArrayList;)V

    .line 2609
    iget-object v2, p0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->access$1500(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->access$2200(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->access$2300(Lorg/telegram/ui/ChatUsersActivity;)J

    move-result-wide v9

    goto :goto_1

    :cond_2
    const-wide/16 v9, 0x0

    :goto_1
    const/4 v11, 0x0

    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->access$1500(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v12

    const/4 v13, 0x0

    invoke-virtual/range {v2 .. v13}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->queryServerSearch(Ljava/lang/String;ZZZZZJZII)V

    .line 2610
    invoke-virtual {p0}, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->notifyDataSetChanged()V

    .line 2612
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2613
    iput-boolean v1, p0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->searchInProgress:Z

    .line 2614
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->access$2400(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/ui/Components/StickerEmptyView;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Lorg/telegram/ui/Components/StickerEmptyView;->showProgress(ZZ)V

    .line 2615
    sget-object v0, Lorg/telegram/messenger/Utilities;->searchQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;Ljava/lang/String;)V

    iput-object v1, p0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->searchRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;J)Z

    :cond_3
    return-void
.end method
