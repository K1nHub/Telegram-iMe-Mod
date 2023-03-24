.class public Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "ShareAlert.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/ShareAlert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShareSearchAdapter"
.end annotation


# instance fields
.field categoryAdapter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$CategoryAdapterRecycler;

.field private context:Landroid/content/Context;

.field firstEmptyViewCell:I

.field hintsCell:I

.field internalDialogsIsSearching:Z

.field itemsCount:I

.field lastFilledItem:I

.field private lastGlobalSearchId:I

.field lastItemCont:I

.field private lastLocalSearchId:I

.field private lastSearchId:I

.field private lastSearchText:Ljava/lang/String;

.field recentDialogsStartRow:I

.field resentTitleCell:I

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

.field private searchRunnable:Ljava/lang/Runnable;

.field private searchRunnable2:Ljava/lang/Runnable;

.field final synthetic this$0:Lorg/telegram/ui/Components/ShareAlert;


# direct methods
.method public static synthetic $r8$lambda$0sSDq1XOPQynxBeTtPg7n7ovAYk(Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->lambda$searchDialogs$3(ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$EEnMRveFfY-PsvLIN8BNCZwd8CA(Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;ILjava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->lambda$updateSearchResults$2(ILjava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Js7rkkKd8pGQQsV2FkNY8qyayIk(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->lambda$searchDialogsInternal$0(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$qDwNer1FNbxtyweBABsyBEPUlEw(Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->lambda$searchDialogsInternal$1(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$xWORWmbZu4PZ9TN-Xoxvlv-dahI(Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->lambda$searchDialogs$4(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$zvGTgGqavz5IMqLflEAZiM5-t5k(Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->lambda$onCreateViewHolder$5(Landroid/view/View;I)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/ShareAlert;Landroid/content/Context;)V
    .locals 1

    .line 2548
    iput-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 2524
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->searchResult:Ljava/util/ArrayList;

    const/4 v0, -0x1

    .line 2536
    iput v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->hintsCell:I

    .line 2537
    iput v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->resentTitleCell:I

    .line 2538
    iput v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->firstEmptyViewCell:I

    .line 2539
    iput v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->recentDialogsStartRow:I

    .line 2541
    iput v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->lastFilledItem:I

    const/4 v0, 0x0

    .line 2575
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->internalDialogsIsSearching:Z

    .line 2549
    iput-object p2, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->context:Landroid/content/Context;

    .line 2550
    new-instance p2, Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-direct {p2, v0}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;-><init>(Z)V

    iput-object p2, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    .line 2551
    new-instance v0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$1;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$1;-><init>(Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;Lorg/telegram/ui/Components/ShareAlert;)V

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->setDelegate(Lorg/telegram/ui/Adapters/SearchAdapterHelper$SearchAdapterHelperDelegate;)V

    return-void
.end method

.method static synthetic access$13002(Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;I)I
    .locals 0

    .line 2521
    iput p1, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->lastGlobalSearchId:I

    return p1
.end method

.method static synthetic access$13100(Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;)I
    .locals 0

    .line 2521
    iget p0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->lastLocalSearchId:I

    return p0
.end method

.method static synthetic access$13200(Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;)Ljava/util/ArrayList;
    .locals 0

    .line 2521
    iget-object p0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->searchResult:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$13300(Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;)Lorg/telegram/ui/Adapters/SearchAdapterHelper;
    .locals 0

    .line 2521
    iget-object p0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    return-object p0
.end method

.method static synthetic access$13400(Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;)I
    .locals 0

    .line 2521
    iget p0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->lastSearchId:I

    return p0
.end method

.method private synthetic lambda$onCreateViewHolder$5(Landroid/view/View;I)V
    .locals 6

    .line 3007
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ShareAlert;->access$14400(Lorg/telegram/ui/Components/ShareAlert;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MediaDataController;->hints:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_topPeer;

    .line 3008
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_dialog;-><init>()V

    .line 3012
    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$TL_topPeer;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v1, p2, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    goto :goto_1

    .line 3014
    :cond_0
    iget-wide v1, p2, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_1

    :goto_0
    neg-long v1, v1

    goto :goto_1

    .line 3016
    :cond_1
    iget-wide v1, p2, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:J

    cmp-long p2, v1, v3

    if-eqz p2, :cond_2

    goto :goto_0

    :cond_2
    move-wide v1, v3

    .line 3019
    :goto_1
    iput-wide v1, v0, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    .line 3020
    iget-object p2, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    const/4 v3, 0x0

    invoke-static {p2, v3, v0}, Lorg/telegram/ui/Components/ShareAlert;->access$14500(Lorg/telegram/ui/Components/ShareAlert;Lorg/telegram/ui/Cells/ShareDialogCell;Lorg/telegram/tgnet/TLRPC$Dialog;)V

    .line 3021
    check-cast p1, Lorg/telegram/ui/Cells/HintDialogCell;

    .line 3022
    iget-object p2, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    iget-object p2, p2, Lorg/telegram/ui/Components/ShareAlert;->selectedDialogs:Landroidx/collection/LongSparseArray;

    invoke-virtual {p2, v1, v2}, Landroidx/collection/LongSparseArray;->indexOfKey(J)I

    move-result p2

    const/4 v0, 0x1

    if-ltz p2, :cond_3

    move p2, v0

    goto :goto_2

    :cond_3
    const/4 p2, 0x0

    :goto_2
    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/Cells/HintDialogCell;->setChecked(ZZ)V

    return-void
.end method

.method private synthetic lambda$searchDialogs$3(ILjava/lang/String;)V
    .locals 13

    const/4 v0, 0x0

    .line 2842
    iput-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->searchRunnable2:Ljava/lang/Runnable;

    .line 2843
    iget v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->lastSearchId:I

    if-eq p1, v0, :cond_0

    return-void

    .line 2846
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v2, p2

    move v12, p1

    invoke-virtual/range {v1 .. v12}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->queryServerSearch(Ljava/lang/String;ZZZZZJZII)V

    return-void
.end method

.method private synthetic lambda$searchDialogs$4(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 2839
    iput-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->searchRunnable:Ljava/lang/Runnable;

    .line 2840
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->searchDialogsInternal(Ljava/lang/String;I)V

    .line 2841
    new-instance v0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2, p1}, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;ILjava/lang/String;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->searchRunnable2:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static synthetic lambda$searchDialogsInternal$0(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 2750
    check-cast p0, Lorg/telegram/ui/Components/ShareAlert$DialogSearchResult;

    .line 2751
    check-cast p1, Lorg/telegram/ui/Components/ShareAlert$DialogSearchResult;

    .line 2752
    iget p0, p0, Lorg/telegram/ui/Components/ShareAlert$DialogSearchResult;->date:I

    iget p1, p1, Lorg/telegram/ui/Components/ShareAlert$DialogSearchResult;->date:I

    if-ge p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-le p0, p1, :cond_1

    const/4 p0, -0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$searchDialogsInternal$1(Ljava/lang/String;I)V
    .locals 20

    move-object/from16 v1, p0

    .line 2579
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 2580
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, -0x1

    if-nez v2, :cond_0

    .line 2581
    iput v3, v1, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->lastSearchId:I

    .line 2582
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget v2, v1, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->lastSearchId:I

    invoke-direct {v1, v0, v2}, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->updateSearchResults(Ljava/util/ArrayList;I)V

    return-void

    .line 2585
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/telegram/messenger/LocaleController;->getTranslitString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2586
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2

    :cond_1
    const/4 v2, 0x0

    :cond_2
    const/4 v4, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_3

    move v7, v4

    goto :goto_0

    :cond_3
    move v7, v6

    :goto_0
    add-int/2addr v7, v4

    .line 2589
    new-array v8, v7, [Ljava/lang/String;

    .line 2590
    aput-object v0, v8, v6

    if-eqz v2, :cond_4

    .line 2592
    aput-object v2, v8, v4

    .line 2595
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2596
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2599
    new-instance v9, Landroidx/collection/LongSparseArray;

    invoke-direct {v9}, Landroidx/collection/LongSparseArray;-><init>()V

    .line 2600
    iget-object v10, v1, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v10}, Lorg/telegram/ui/Components/ShareAlert;->access$14800(Lorg/telegram/ui/Components/ShareAlert;)I

    move-result v10

    invoke-static {v10}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v10

    invoke-virtual {v10}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v10

    const-string v11, "SELECT did, date FROM dialogs ORDER BY date DESC LIMIT 400"

    new-array v12, v6, [Ljava/lang/Object;

    invoke-virtual {v10, v11, v12}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v10

    .line 2601
    :cond_5
    :goto_1
    invoke-virtual {v10}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v11

    if-eqz v11, :cond_7

    .line 2602
    invoke-virtual {v10, v6}, Lorg/telegram/SQLite/SQLiteCursor;->longValue(I)J

    move-result-wide v11

    .line 2603
    new-instance v13, Lorg/telegram/ui/Components/ShareAlert$DialogSearchResult;

    invoke-direct {v13}, Lorg/telegram/ui/Components/ShareAlert$DialogSearchResult;-><init>()V

    .line 2604
    invoke-virtual {v10, v4}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v14

    iput v14, v13, Lorg/telegram/ui/Components/ShareAlert$DialogSearchResult;->date:I

    .line 2605
    invoke-virtual {v9, v11, v12, v13}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 2607
    invoke-static {v11, v12}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 2608
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_5

    .line 2609
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2611
    :cond_6
    invoke-static {v11, v12}, Lorg/telegram/messenger/DialogObject;->isChatDialog(J)Z

    move-result v13

    if-eqz v13, :cond_5

    neg-long v11, v11

    .line 2612
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_5

    .line 2613
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2617
    :cond_7
    invoke-virtual {v10}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 2619
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v11, ";;;"

    const-string v12, ","

    const-string v13, "@"

    const-string v15, " "

    if-nez v10, :cond_14

    .line 2620
    :try_start_1
    iget-object v10, v1, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v10}, Lorg/telegram/ui/Components/ShareAlert;->access$14900(Lorg/telegram/ui/Components/ShareAlert;)I

    move-result v10

    invoke-static {v10}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v10

    invoke-virtual {v10}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v10

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "SELECT data, status, name FROM users WHERE uid IN(%s)"

    new-array v14, v4, [Ljava/lang/Object;

    invoke-static {v12, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v14, v6

    invoke-static {v5, v3, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v10, v0, v3}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v0

    move v3, v6

    .line 2621
    :goto_2
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v5

    if-eqz v5, :cond_13

    const/4 v5, 0x2

    .line 2622
    invoke-virtual {v0, v5}, Lorg/telegram/SQLite/SQLiteCursor;->stringValue(I)Ljava/lang/String;

    move-result-object v10

    .line 2623
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v5

    invoke-virtual {v5, v10}, Lorg/telegram/messenger/LocaleController;->getTranslitString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2624
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    const/4 v5, 0x0

    .line 2628
    :cond_8
    invoke-virtual {v10, v11}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v14

    const/4 v4, -0x1

    if-eq v14, v4, :cond_9

    add-int/lit8 v14, v14, 0x3

    .line 2630
    invoke-virtual {v10, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :cond_9
    const/4 v4, 0x0

    :goto_3
    move v14, v6

    :goto_4
    if-ge v6, v7, :cond_12

    move/from16 v17, v14

    .line 2633
    aget-object v14, v8, v6

    .line 2634
    invoke-virtual {v10, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_c

    move-object/from16 v18, v11

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_d

    if-eqz v5, :cond_a

    invoke-virtual {v5, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_d

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_a

    goto :goto_5

    :cond_a
    if-eqz v4, :cond_b

    .line 2636
    invoke-virtual {v4, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_b

    const/4 v11, 0x2

    goto :goto_6

    :cond_b
    move/from16 v11, v17

    goto :goto_6

    :cond_c
    move-object/from16 v18, v11

    :cond_d
    :goto_5
    const/4 v11, 0x1

    :goto_6
    if-eqz v11, :cond_11

    const/4 v4, 0x0

    .line 2640
    invoke-virtual {v0, v4}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v5

    if-eqz v5, :cond_10

    .line 2642
    invoke-virtual {v5, v4}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v6

    invoke-static {v5, v6, v4}, Lorg/telegram/tgnet/TLRPC$User;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v6

    .line 2643
    invoke-virtual {v5}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    .line 2644
    iget-wide v4, v6, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {v9, v4, v5}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Components/ShareAlert$DialogSearchResult;

    .line 2645
    iget-object v5, v6, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    move-object/from16 v19, v9

    const/4 v10, 0x1

    if-eqz v5, :cond_e

    .line 2646
    invoke-virtual {v0, v10}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v9

    iput v9, v5, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    :cond_e
    if-ne v11, v10, :cond_f

    .line 2649
    iget-object v5, v6, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v9, v6, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v5, v9, v14}, Lorg/telegram/messenger/AndroidUtilities;->generateSearchName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, v4, Lorg/telegram/ui/Components/ShareAlert$DialogSearchResult;->name:Ljava/lang/CharSequence;

    goto :goto_7

    .line 2651
    :cond_f
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lorg/telegram/messenger/UserObject;->getPublicUsername(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {v5, v10, v9}, Lorg/telegram/messenger/AndroidUtilities;->generateSearchName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, v4, Lorg/telegram/ui/Components/ShareAlert$DialogSearchResult;->name:Ljava/lang/CharSequence;

    .line 2653
    :goto_7
    iput-object v6, v4, Lorg/telegram/ui/Components/ShareAlert$DialogSearchResult;->object:Lorg/telegram/tgnet/TLObject;

    .line 2654
    iget-object v4, v4, Lorg/telegram/ui/Components/ShareAlert$DialogSearchResult;->dialog:Lorg/telegram/tgnet/TLRPC$Dialog;

    iget-wide v5, v6, Lorg/telegram/tgnet/TLRPC$User;->id:J

    iput-wide v5, v4, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_10
    move-object/from16 v19, v9

    goto :goto_8

    :cond_11
    move-object/from16 v17, v4

    move-object/from16 v19, v9

    add-int/lit8 v6, v6, 0x1

    move v14, v11

    move-object/from16 v11, v18

    goto/16 :goto_4

    :cond_12
    move-object/from16 v19, v9

    move-object/from16 v18, v11

    :goto_8
    move-object/from16 v11, v18

    move-object/from16 v9, v19

    const/4 v4, 0x1

    const/4 v6, 0x0

    goto/16 :goto_2

    :cond_13
    move-object/from16 v19, v9

    move-object/from16 v18, v11

    .line 2661
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    goto :goto_9

    :cond_14
    move-object/from16 v19, v9

    move-object/from16 v18, v11

    const/4 v3, 0x0

    .line 2664
    :goto_9
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 2665
    iget-object v0, v1, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ShareAlert;->access$15000(Lorg/telegram/ui/Components/ShareAlert;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v0

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "SELECT data, name FROM chats WHERE uid IN(%s)"

    const/4 v6, 0x1

    new-array v9, v6, [Ljava/lang/Object;

    invoke-static {v12, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x0

    aput-object v2, v9, v6

    invoke-static {v4, v5, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v4, v6, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v4}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v0

    .line 2666
    :goto_a
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v2

    if-eqz v2, :cond_1b

    const/4 v2, 0x1

    .line 2667
    invoke-virtual {v0, v2}, Lorg/telegram/SQLite/SQLiteCursor;->stringValue(I)Ljava/lang/String;

    move-result-object v4

    .line 2668
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v2

    invoke-virtual {v2, v4}, Lorg/telegram/messenger/LocaleController;->getTranslitString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2669
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    const/4 v2, 0x0

    :cond_15
    const/4 v5, 0x0

    :goto_b
    if-ge v5, v7, :cond_1a

    .line 2673
    aget-object v6, v8, v5

    .line 2674
    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_17

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_17

    if-eqz v2, :cond_16

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_17

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_16

    goto :goto_c

    :cond_16
    add-int/lit8 v5, v5, 0x1

    goto :goto_b

    :cond_17
    :goto_c
    const/4 v2, 0x0

    .line 2675
    invoke-virtual {v0, v2}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v4

    if-eqz v4, :cond_1a

    .line 2677
    invoke-virtual {v4, v2}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v5

    invoke-static {v4, v5, v2}, Lorg/telegram/tgnet/TLRPC$Chat;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v5

    .line 2678
    invoke-virtual {v4}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    if-eqz v5, :cond_1a

    .line 2679
    invoke-static {v5}, Lorg/telegram/messenger/ChatObject;->isNotInChat(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    if-nez v2, :cond_1a

    invoke-static {v5}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    if-eqz v2, :cond_19

    iget-boolean v2, v5, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-nez v2, :cond_19

    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$Chat;->admin_rights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    if-eqz v2, :cond_18

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->post_messages:Z

    if-nez v2, :cond_19

    :cond_18
    iget-boolean v2, v5, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v2, :cond_1a

    .line 2680
    :cond_19
    iget-wide v9, v5, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    neg-long v9, v9

    move-object/from16 v2, v19

    invoke-virtual {v2, v9, v10}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Components/ShareAlert$DialogSearchResult;

    .line 2681
    iget-object v9, v5, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-static {v9, v10, v6}, Lorg/telegram/messenger/AndroidUtilities;->generateSearchName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v6

    iput-object v6, v4, Lorg/telegram/ui/Components/ShareAlert$DialogSearchResult;->name:Ljava/lang/CharSequence;

    .line 2682
    iput-object v5, v4, Lorg/telegram/ui/Components/ShareAlert$DialogSearchResult;->object:Lorg/telegram/tgnet/TLObject;

    .line 2683
    iget-object v4, v4, Lorg/telegram/ui/Components/ShareAlert$DialogSearchResult;->dialog:Lorg/telegram/tgnet/TLRPC$Dialog;

    iget-wide v5, v5, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    neg-long v5, v5

    iput-wide v5, v4, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_1a
    move-object/from16 v2, v19

    :goto_d
    move-object/from16 v19, v2

    goto/16 :goto_a

    :cond_1b
    move-object/from16 v2, v19

    .line 2691
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    goto :goto_e

    :cond_1c
    move-object/from16 v2, v19

    .line 2694
    :goto_e
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    .line 2695
    :goto_f
    invoke-virtual {v2}, Landroidx/collection/LongSparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_1e

    .line 2696
    invoke-virtual {v2, v3}, Landroidx/collection/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Components/ShareAlert$DialogSearchResult;

    .line 2697
    iget-object v5, v4, Lorg/telegram/ui/Components/ShareAlert$DialogSearchResult;->object:Lorg/telegram/tgnet/TLObject;

    if-eqz v5, :cond_1d

    iget-object v5, v4, Lorg/telegram/ui/Components/ShareAlert$DialogSearchResult;->name:Ljava/lang/CharSequence;

    if-eqz v5, :cond_1d

    .line 2698
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1d
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 2702
    :cond_1e
    iget-object v3, v1, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v3}, Lorg/telegram/ui/Components/ShareAlert;->access$15100(Lorg/telegram/ui/Components/ShareAlert;)I

    move-result v3

    invoke-static {v3}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v3

    const-string v4, "SELECT u.data, u.status, u.name, u.uid FROM users as u INNER JOIN contacts as c ON u.uid = c.uid"

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v3

    .line 2703
    :goto_10
    invoke-virtual {v3}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v4

    if-eqz v4, :cond_2a

    const/4 v4, 0x3

    .line 2704
    invoke-virtual {v3, v4}, Lorg/telegram/SQLite/SQLiteCursor;->longValue(I)J

    move-result-wide v4

    .line 2705
    invoke-virtual {v2, v4, v5}, Landroidx/collection/LongSparseArray;->indexOfKey(J)I

    move-result v4

    if-ltz v4, :cond_1f

    goto :goto_10

    :cond_1f
    const/4 v5, 0x2

    .line 2708
    invoke-virtual {v3, v5}, Lorg/telegram/SQLite/SQLiteCursor;->stringValue(I)Ljava/lang/String;

    move-result-object v4

    .line 2709
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v6

    invoke-virtual {v6, v4}, Lorg/telegram/messenger/LocaleController;->getTranslitString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 2710
    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_20

    const/4 v10, 0x0

    :cond_20
    move-object/from16 v6, v18

    .line 2714
    invoke-virtual {v4, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    const/4 v11, -0x1

    if-eq v9, v11, :cond_21

    add-int/lit8 v9, v9, 0x3

    .line 2716
    invoke-virtual {v4, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_11

    :cond_21
    const/4 v9, 0x0

    :goto_11
    const/4 v12, 0x0

    const/4 v14, 0x0

    :goto_12
    if-ge v12, v7, :cond_29

    .line 2719
    aget-object v5, v8, v12

    .line 2720
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_23

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_23

    if-eqz v10, :cond_22

    invoke-virtual {v10, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_23

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_22

    goto :goto_13

    :cond_22
    if-eqz v9, :cond_24

    .line 2722
    invoke-virtual {v9, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_24

    const/4 v14, 0x2

    goto :goto_14

    :cond_23
    :goto_13
    const/4 v14, 0x1

    :cond_24
    :goto_14
    if-eqz v14, :cond_28

    const/4 v11, 0x0

    .line 2726
    invoke-virtual {v3, v11}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v4

    if-eqz v4, :cond_27

    .line 2728
    invoke-virtual {v4, v11}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v9

    invoke-static {v4, v9, v11}, Lorg/telegram/tgnet/TLRPC$User;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v9

    .line 2729
    invoke-virtual {v4}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    .line 2730
    new-instance v4, Lorg/telegram/ui/Components/ShareAlert$DialogSearchResult;

    invoke-direct {v4}, Lorg/telegram/ui/Components/ShareAlert$DialogSearchResult;-><init>()V

    .line 2731
    iget-object v10, v9, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    if-eqz v10, :cond_25

    const/4 v12, 0x1

    .line 2732
    invoke-virtual {v3, v12}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v11

    iput v11, v10, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    .line 2734
    :cond_25
    iget-object v10, v4, Lorg/telegram/ui/Components/ShareAlert$DialogSearchResult;->dialog:Lorg/telegram/tgnet/TLRPC$Dialog;

    iget-wide v11, v9, Lorg/telegram/tgnet/TLRPC$User;->id:J

    iput-wide v11, v10, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    .line 2735
    iput-object v9, v4, Lorg/telegram/ui/Components/ShareAlert$DialogSearchResult;->object:Lorg/telegram/tgnet/TLObject;

    const/4 v11, 0x1

    if-ne v14, v11, :cond_26

    .line 2737
    iget-object v10, v9, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v10, v9, v5}, Lorg/telegram/messenger/AndroidUtilities;->generateSearchName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, v4, Lorg/telegram/ui/Components/ShareAlert$DialogSearchResult;->name:Ljava/lang/CharSequence;

    const/4 v10, 0x0

    goto :goto_15

    .line 2739
    :cond_26
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9}, Lorg/telegram/messenger/UserObject;->getPublicUsername(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v10, 0x0

    invoke-static {v9, v10, v5}, Lorg/telegram/messenger/AndroidUtilities;->generateSearchName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, v4, Lorg/telegram/ui/Components/ShareAlert$DialogSearchResult;->name:Ljava/lang/CharSequence;

    .line 2741
    :goto_15
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v5, v10

    goto :goto_16

    :cond_27
    const/4 v11, 0x1

    const/4 v5, 0x0

    goto :goto_16

    :cond_28
    const/4 v5, 0x0

    const/4 v11, 0x1

    add-int/lit8 v12, v12, 0x1

    const/4 v5, 0x2

    const/4 v11, -0x1

    goto/16 :goto_12

    :cond_29
    const/4 v5, 0x0

    const/4 v11, 0x1

    :goto_16
    move-object/from16 v18, v6

    goto/16 :goto_10

    .line 2747
    :cond_2a
    invoke-virtual {v3}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 2749
    sget-object v2, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$$ExternalSyntheticLambda4;->INSTANCE:Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$$ExternalSyntheticLambda4;

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    move/from16 v2, p2

    .line 2760
    invoke-direct {v1, v0, v2}, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->updateSearchResults(Ljava/util/ArrayList;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_17

    :catch_0
    move-exception v0

    .line 2762
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_17
    return-void
.end method

.method private synthetic lambda$updateSearchResults$2(ILjava/util/ArrayList;)V
    .locals 4

    .line 2769
    iget v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->lastSearchId:I

    if-eq p1, v0, :cond_0

    return-void

    .line 2772
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->getItemCount()I

    const/4 v0, 0x0

    .line 2773
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->internalDialogsIsSearching:Z

    .line 2774
    iput p1, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->lastLocalSearchId:I

    .line 2775
    iget v1, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->lastGlobalSearchId:I

    if-eq v1, p1, :cond_1

    .line 2776
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {p1}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->clear()V

    .line 2778
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ShareAlert;->access$2000(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/ShareAlert;->access$2400(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;

    move-result-object v1

    if-eq p1, v1, :cond_2

    .line 2779
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ShareAlert;->access$2200(Lorg/telegram/ui/Components/ShareAlert;)I

    move-result v1

    invoke-static {p1, v1}, Lorg/telegram/ui/Components/ShareAlert;->access$13602(Lorg/telegram/ui/Components/ShareAlert;I)I

    .line 2780
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ShareAlert;->access$2400(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_2
    move p1, v0

    .line 2782
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge p1, v1, :cond_5

    .line 2783
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/ShareAlert$DialogSearchResult;

    .line 2784
    iget-object v1, v1, Lorg/telegram/ui/Components/ShareAlert$DialogSearchResult;->object:Lorg/telegram/tgnet/TLObject;

    instance-of v3, v1, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v3, :cond_3

    .line 2785
    check-cast v1, Lorg/telegram/tgnet/TLRPC$User;

    .line 2786
    iget-object v3, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v3}, Lorg/telegram/ui/Components/ShareAlert;->access$14600(Lorg/telegram/ui/Components/ShareAlert;)I

    move-result v3

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lorg/telegram/messenger/MessagesController;->putUser(Lorg/telegram/tgnet/TLRPC$User;Z)Z

    goto :goto_1

    .line 2787
    :cond_3
    instance-of v3, v1, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v3, :cond_4

    .line 2788
    check-cast v1, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 2789
    iget-object v3, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v3}, Lorg/telegram/ui/Components/ShareAlert;->access$14700(Lorg/telegram/ui/Components/ShareAlert;)I

    move-result v3

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lorg/telegram/messenger/MessagesController;->putChat(Lorg/telegram/tgnet/TLRPC$Chat;Z)V

    :cond_4
    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 2792
    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_6

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_6

    move p1, v2

    goto :goto_2

    :cond_6
    move p1, v0

    .line 2793
    :goto_2
    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    :cond_7
    if-eqz p1, :cond_8

    .line 2795
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ShareAlert;->access$2200(Lorg/telegram/ui/Components/ShareAlert;)I

    move-result v1

    invoke-static {p1, v1}, Lorg/telegram/ui/Components/ShareAlert;->access$13602(Lorg/telegram/ui/Components/ShareAlert;I)I

    .line 2797
    :cond_8
    iput-object p2, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->searchResult:Ljava/util/ArrayList;

    .line 2798
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->mergeResults(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 2799
    iget p1, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->lastItemCont:I

    .line 2800
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->getItemCount()I

    move-result p2

    if-nez p2, :cond_9

    iget-object p2, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {p2}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->isSearchInProgress()Z

    move-result p2

    if-nez p2, :cond_9

    iget-boolean p2, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->internalDialogsIsSearching:Z

    if-nez p2, :cond_9

    .line 2801
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ShareAlert;->access$1900(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/StickerEmptyView;

    move-result-object p1

    invoke-virtual {p1, v0, v2}, Lorg/telegram/ui/Components/StickerEmptyView;->showProgress(ZZ)V

    goto :goto_3

    .line 2803
    :cond_9
    iget-object p2, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    iget-object p2, p2, Lorg/telegram/ui/Components/ShareAlert;->recyclerItemsEnterAnimator:Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;->showItemsAnimated(I)V

    .line 2805
    :goto_3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 2806
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {p1, v2}, Lorg/telegram/ui/Components/ShareAlert;->access$1700(Lorg/telegram/ui/Components/ShareAlert;Z)V

    return-void
.end method

.method private searchDialogsInternal(Ljava/lang/String;I)V
    .locals 2

    .line 2577
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ShareAlert;->access$13500(Lorg/telegram/ui/Components/ShareAlert;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2}, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private updateSearchResults(Ljava/util/ArrayList;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;I)V"
        }
    .end annotation

    .line 2768
    new-instance v0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p2, p1}, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;ILjava/util/ArrayList;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public getItem(I)Lorg/telegram/tgnet/TLRPC$Dialog;
    .locals 3

    .line 2889
    iget v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->recentDialogsStartRow:I

    const/4 v1, 0x0

    if-lt p1, v0, :cond_3

    if-ltz v0, :cond_3

    sub-int/2addr p1, v0

    if-ltz p1, :cond_2

    .line 2891
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ShareAlert;->access$10200(Lorg/telegram/ui/Components/ShareAlert;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_1

    .line 2894
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ShareAlert;->access$10200(Lorg/telegram/ui/Components/ShareAlert;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;

    .line 2895
    iget-object p1, p1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;->object:Lorg/telegram/tgnet/TLObject;

    .line 2896
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_dialog;-><init>()V

    .line 2897
    instance-of v1, p1, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v1, :cond_1

    .line 2898
    check-cast p1, Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    iput-wide v1, v0, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    goto :goto_0

    .line 2900
    :cond_1
    check-cast p1, Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    neg-long v1, v1

    iput-wide v1, v0, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    :goto_0
    return-object v0

    :cond_2
    :goto_1
    return-object v1

    :cond_3
    add-int/lit8 p1, p1, -0x1

    if-gez p1, :cond_4

    return-object v1

    .line 2908
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_5

    .line 2909
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Components/ShareAlert$DialogSearchResult;

    iget-object p1, p1, Lorg/telegram/ui/Components/ShareAlert$DialogSearchResult;->dialog:Lorg/telegram/tgnet/TLRPC$Dialog;

    return-object p1

    .line 2911
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr p1, v0

    .line 2913
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getLocalServerSearch()Ljava/util/ArrayList;

    move-result-object v0

    .line 2914
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p1, v2, :cond_7

    .line 2915
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLObject;

    .line 2916
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_dialog;-><init>()V

    .line 2917
    instance-of v1, p1, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v1, :cond_6

    .line 2918
    check-cast p1, Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    iput-wide v1, v0, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    goto :goto_2

    .line 2920
    :cond_6
    check-cast p1, Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    neg-long v1, v1

    iput-wide v1, v0, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    :goto_2
    return-object v0

    :cond_7
    return-object v1
.end method

.method public getItemCount()I
    .locals 5

    const/4 v0, 0x0

    .line 2857
    iput v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->itemsCount:I

    const/4 v1, -0x1

    .line 2858
    iput v1, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->hintsCell:I

    .line 2859
    iput v1, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->resentTitleCell:I

    .line 2860
    iput v1, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->recentDialogsStartRow:I

    .line 2862
    iput v1, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->lastFilledItem:I

    .line 2864
    iget-object v2, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->lastSearchText:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2865
    iget v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->itemsCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->itemsCount:I

    iput v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->firstEmptyViewCell:I

    add-int/lit8 v0, v1, 0x1

    .line 2866
    iput v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->itemsCount:I

    iput v1, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->hintsCell:I

    .line 2868
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ShareAlert;->access$10200(Lorg/telegram/ui/Components/ShareAlert;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2869
    iget v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->itemsCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->itemsCount:I

    iput v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->resentTitleCell:I

    .line 2870
    iput v1, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->recentDialogsStartRow:I

    .line 2871
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ShareAlert;->access$10200(Lorg/telegram/ui/Components/ShareAlert;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v1, v0

    iput v1, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->itemsCount:I

    .line 2873
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->itemsCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->itemsCount:I

    iput v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->lastFilledItem:I

    .line 2874
    iput v1, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->lastItemCont:I

    return v1

    .line 2876
    :cond_1
    iget v2, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->itemsCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->itemsCount:I

    iput v2, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->firstEmptyViewCell:I

    .line 2878
    iget-object v2, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v4, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v4}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getLocalServerSearch()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v2, v4

    add-int/2addr v3, v2

    iput v3, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->itemsCount:I

    const/4 v2, 0x1

    if-ne v3, v2, :cond_2

    .line 2880
    iput v1, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->firstEmptyViewCell:I

    .line 2881
    iput v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->itemsCount:I

    iput v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->lastItemCont:I

    return v0

    :cond_2
    add-int/lit8 v0, v3, 0x1

    .line 2883
    iput v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->itemsCount:I

    iput v3, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->lastFilledItem:I

    .line 2885
    iput v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->lastItemCont:I

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 3127
    iget v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->lastFilledItem:I

    if-ne p1, v0, :cond_0

    const/4 p1, 0x4

    return p1

    .line 3129
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->firstEmptyViewCell:I

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    return p1

    .line 3131
    :cond_1
    iget v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->hintsCell:I

    if-ne p1, v0, :cond_2

    const/4 p1, 0x2

    return p1

    .line 3133
    :cond_2
    iget v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->resentTitleCell:I

    if-ne p1, v0, :cond_3

    const/4 p1, 0x3

    return p1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public getSpanSize(II)I
    .locals 1

    .line 3144
    iget v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->hintsCell:I

    if-eq p2, v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->resentTitleCell:I

    if-eq p2, v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->firstEmptyViewCell:I

    if-eq p2, v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->lastFilledItem:I

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :cond_1
    :goto_0
    return p1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 2

    .line 2929
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 11

    .line 3050
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    if-nez v0, :cond_a

    .line 3051
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/ShareDialogCell;

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    .line 3055
    iget-object v3, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->lastSearchText:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/16 v4, 0x21

    const-string v5, "windowBackgroundWhiteBlueText4"

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, -0x1

    if-eqz v3, :cond_5

    .line 3056
    iget v3, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->recentDialogsStartRow:I

    if-ltz v3, :cond_3

    if-lt p2, v3, :cond_3

    sub-int/2addr p2, v3

    .line 3058
    iget-object v3, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v3}, Lorg/telegram/ui/Components/ShareAlert;->access$10200(Lorg/telegram/ui/Components/ShareAlert;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;

    .line 3059
    iget-object p2, p2, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;->object:Lorg/telegram/tgnet/TLObject;

    .line 3060
    instance-of v3, p2, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v3, :cond_0

    .line 3061
    check-cast p2, Lorg/telegram/tgnet/TLRPC$User;

    .line 3062
    iget-wide v1, p2, Lorg/telegram/tgnet/TLRPC$User;->id:J

    .line 3063
    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v0, p2}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3064
    :cond_0
    instance-of v3, p2, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v3, :cond_1

    .line 3065
    check-cast p2, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 3066
    iget-wide v0, p2, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    neg-long v1, v0

    .line 3067
    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    goto :goto_0

    .line 3068
    :cond_1
    instance-of v3, p2, Lorg/telegram/tgnet/TLRPC$TL_encryptedChat;

    if-eqz v3, :cond_2

    .line 3069
    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_encryptedChat;

    .line 3070
    iget-object v3, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v3}, Lorg/telegram/ui/Components/ShareAlert;->access$14300(Lorg/telegram/ui/Components/ShareAlert;)I

    move-result v3

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-wide v9, p2, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->user_id:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v3, p2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 3072
    iget-wide v1, p2, Lorg/telegram/tgnet/TLRPC$User;->id:J

    .line 3073
    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v0, p2}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3076
    :cond_2
    :goto_0
    iget-object p2, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {p2}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getLastFoundUsername()Ljava/lang/String;

    move-result-object p2

    .line 3077
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    if-eqz v0, :cond_3

    .line 3079
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p2}, Lorg/telegram/messenger/AndroidUtilities;->indexOfIgnoreCase(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-eq v3, v8, :cond_3

    .line 3080
    new-instance v8, Landroid/text/SpannableStringBuilder;

    invoke-direct {v8, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 3081
    new-instance v0, Lorg/telegram/ui/Components/ForegroundColorSpanThemable;

    iget-object v9, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v9}, Lorg/telegram/ui/Components/ShareAlert;->access$12800(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v9

    invoke-direct {v0, v5, v9}, Lorg/telegram/ui/Components/ForegroundColorSpanThemable;-><init>(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/2addr p2, v3

    invoke-virtual {v8, v0, v3, p2, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    move-object v0, v8

    :cond_3
    long-to-int p2, v1

    int-to-long v3, p2

    .line 3087
    iget-object p2, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    iget-object p2, p2, Lorg/telegram/ui/Components/ShareAlert;->selectedDialogs:Landroidx/collection/LongSparseArray;

    invoke-virtual {p2, v1, v2}, Landroidx/collection/LongSparseArray;->indexOfKey(J)I

    move-result p2

    if-ltz p2, :cond_4

    goto :goto_1

    :cond_4
    move v6, v7

    :goto_1
    invoke-virtual {p1, v3, v4, v6, v0}, Lorg/telegram/ui/Cells/ShareDialogCell;->setDialog(JZLjava/lang/CharSequence;)V

    return-void

    :cond_5
    add-int/2addr p2, v8

    .line 3091
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p2, v0, :cond_6

    .line 3092
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/Components/ShareAlert$DialogSearchResult;

    .line 3093
    iget-object v0, p2, Lorg/telegram/ui/Components/ShareAlert$DialogSearchResult;->dialog:Lorg/telegram/tgnet/TLRPC$Dialog;

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    .line 3094
    iget-object p2, p2, Lorg/telegram/ui/Components/ShareAlert$DialogSearchResult;->name:Ljava/lang/CharSequence;

    goto :goto_3

    .line 3096
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr p2, v0

    .line 3097
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getLocalServerSearch()Ljava/util/ArrayList;

    move-result-object v0

    .line 3098
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/tgnet/TLObject;

    .line 3099
    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_7

    .line 3100
    check-cast p2, Lorg/telegram/tgnet/TLRPC$User;

    .line 3101
    iget-wide v0, p2, Lorg/telegram/tgnet/TLRPC$User;->id:J

    .line 3102
    iget-object v2, p2, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v2, p2}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    .line 3104
    :cond_7
    check-cast p2, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 3105
    iget-wide v0, p2, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    neg-long v0, v0

    .line 3106
    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    .line 3108
    :goto_2
    iget-object v2, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v2}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getLastFoundUsername()Ljava/lang/String;

    move-result-object v2

    .line 3109
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    if-eqz p2, :cond_8

    .line 3111
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lorg/telegram/messenger/AndroidUtilities;->indexOfIgnoreCase(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-eq v3, v8, :cond_8

    .line 3112
    new-instance v8, Landroid/text/SpannableStringBuilder;

    invoke-direct {v8, p2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 3113
    new-instance p2, Lorg/telegram/ui/Components/ForegroundColorSpanThemable;

    iget-object v9, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v9}, Lorg/telegram/ui/Components/ShareAlert;->access$12800(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v9

    invoke-direct {p2, v5, v9}, Lorg/telegram/ui/Components/ForegroundColorSpanThemable;-><init>(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v3

    invoke-virtual {v8, p2, v3, v2, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    move-object p2, v8

    .line 3118
    :cond_8
    :goto_3
    iget-object v2, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    iget-object v2, v2, Lorg/telegram/ui/Components/ShareAlert;->selectedDialogs:Landroidx/collection/LongSparseArray;

    invoke-virtual {v2, v0, v1}, Landroidx/collection/LongSparseArray;->indexOfKey(J)I

    move-result v2

    if-ltz v2, :cond_9

    goto :goto_4

    :cond_9
    move v6, v7

    :goto_4
    invoke-virtual {p1, v0, v1, v6, p2}, Lorg/telegram/ui/Cells/ShareDialogCell;->setDialog(JZLjava/lang/CharSequence;)V

    goto :goto_5

    .line 3119
    :cond_a
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_b

    .line 3120
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_b
    :goto_5
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3

    const/4 p1, -0x1

    if-eqz p2, :cond_6

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p2, v0, :cond_5

    const/4 v0, 0x3

    if-eq p2, v0, :cond_2

    const/4 v0, 0x4

    if-eq p2, v0, :cond_1

    .line 2947
    new-instance p2, Landroid/view/View;

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->context:Landroid/content/Context;

    invoke-direct {p2, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2948
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    iget-object v2, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/ShareAlert;->access$000(Lorg/telegram/ui/Components/ShareAlert;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/ShareAlert;->access$8500(Lorg/telegram/ui/Components/ShareAlert;)[Ljava/lang/String;

    move-result-object v2

    aget-object v1, v2, v1

    if-eqz v1, :cond_0

    const/16 v1, 0x6d

    goto :goto_0

    :cond_0
    const/16 v1, 0x38

    :goto_0
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-direct {v0, p1, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_3

    .line 3036
    :cond_1
    new-instance p2, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$5;

    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->context:Landroid/content/Context;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$5;-><init>(Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;Landroid/content/Context;)V

    goto/16 :goto_3

    .line 3028
    :cond_2
    new-instance p2, Lorg/telegram/ui/Cells/GraySectionCell;

    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->context:Landroid/content/Context;

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ShareAlert;->access$12800(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v0

    invoke-direct {p2, p1, v0}, Lorg/telegram/ui/Cells/GraySectionCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 3029
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ShareAlert;->access$000(Lorg/telegram/ui/Components/ShareAlert;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "voipgroup_nameText"

    goto :goto_1

    :cond_3
    const-string p1, "key_graySectionText"

    :goto_1
    invoke-virtual {p2, p1}, Lorg/telegram/ui/Cells/GraySectionCell;->setTextColor(Ljava/lang/String;)V

    .line 3030
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ShareAlert;->access$000(Lorg/telegram/ui/Components/ShareAlert;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "voipgroup_searchBackground"

    goto :goto_2

    :cond_4
    const-string v0, "graySection"

    :goto_2
    invoke-static {p1, v0}, Lorg/telegram/ui/Components/ShareAlert;->access$14200(Lorg/telegram/ui/Components/ShareAlert;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 3031
    sget p1, Lorg/telegram/messenger/R$string;->Recent:I

    const-string v0, "Recent"

    invoke-static {v0, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Cells/GraySectionCell;->setText(Ljava/lang/String;)V

    goto :goto_3

    .line 2952
    :cond_5
    new-instance p2, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$2;

    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->context:Landroid/content/Context;

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ShareAlert;->access$12800(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v0

    invoke-direct {p2, p0, p1, v0}, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$2;-><init>(Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/4 p1, 0x0

    .line 2962
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 2963
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    .line 2964
    new-instance p1, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$3;

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->context:Landroid/content/Context;

    invoke-direct {p1, p0, v0}, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$3;-><init>(Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 2970
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 2971
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 2972
    new-instance p1, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$4;

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->context:Landroid/content/Context;

    iget-object v2, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/ShareAlert;->access$13700(Lorg/telegram/ui/Components/ShareAlert;)I

    move-result v2

    invoke-direct {p1, p0, v0, v2, v1}, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$4;-><init>(Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;Landroid/content/Context;IZ)V

    iput-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->categoryAdapter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$CategoryAdapterRecycler;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 3006
    new-instance p1, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$$ExternalSyntheticLambda5;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;)V

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    goto :goto_3

    .line 2941
    :cond_6
    new-instance p2, Lorg/telegram/ui/Cells/ShareDialogCell;

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->context:Landroid/content/Context;

    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/ShareAlert;->access$000(Lorg/telegram/ui/Components/ShareAlert;)Z

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/ShareAlert;->access$12800(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v2

    invoke-direct {p2, v0, v1, v2}, Lorg/telegram/ui/Cells/ShareDialogCell;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 2942
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/16 v1, 0x64

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-direct {v0, p1, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3045
    :goto_3
    new-instance p1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p1
.end method

.method public searchDialogs(Ljava/lang/String;)V
    .locals 14

    if-eqz p1, :cond_0

    .line 2812
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->lastSearchText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2815
    :cond_0
    iput-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->lastSearchText:Ljava/lang/String;

    .line 2816
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->searchRunnable:Ljava/lang/Runnable;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2817
    sget-object v0, Lorg/telegram/messenger/Utilities;->searchQueue:Lorg/telegram/messenger/DispatchQueue;

    iget-object v2, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->searchRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/DispatchQueue;->cancelRunnable(Ljava/lang/Runnable;)V

    .line 2818
    iput-object v1, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->searchRunnable:Ljava/lang/Runnable;

    .line 2820
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->searchRunnable2:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 2821
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 2822
    iput-object v1, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->searchRunnable2:Ljava/lang/Runnable;

    .line 2824
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2825
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->mergeResults(Ljava/util/ArrayList;)V

    .line 2826
    iget-object v2, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v2 .. v13}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->queryServerSearch(Ljava/lang/String;ZZZZZJZII)V

    .line 2827
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 2828
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/ShareAlert;->access$1700(Lorg/telegram/ui/Components/ShareAlert;Z)V

    .line 2830
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 2831
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ShareAlert;->access$2200(Lorg/telegram/ui/Components/ShareAlert;)I

    move-result v0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/ShareAlert;->access$13602(Lorg/telegram/ui/Components/ShareAlert;I)I

    const/4 p1, -0x1

    .line 2832
    iput p1, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->lastSearchId:I

    .line 2833
    iput-boolean v2, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->internalDialogsIsSearching:Z

    goto :goto_0

    .line 2835
    :cond_3
    iput-boolean v1, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->internalDialogsIsSearching:Z

    .line 2836
    iget v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->lastSearchId:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->lastSearchId:I

    .line 2837
    iget-object v3, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v3}, Lorg/telegram/ui/Components/ShareAlert;->access$1900(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/StickerEmptyView;

    move-result-object v3

    invoke-virtual {v3, v1, v1}, Lorg/telegram/ui/Components/StickerEmptyView;->showProgress(ZZ)V

    .line 2838
    sget-object v1, Lorg/telegram/messenger/Utilities;->searchQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v3, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0, p1, v0}, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;Ljava/lang/String;I)V

    iput-object v3, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->searchRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x12c

    invoke-virtual {v1, v3, v4, v5}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;J)Z

    .line 2850
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {p1, v2}, Lorg/telegram/ui/Components/ShareAlert;->access$1700(Lorg/telegram/ui/Components/ShareAlert;Z)V

    return-void
.end method
