.class public Lorg/telegram/ui/Adapters/SearchAdapterHelper;
.super Ljava/lang/Object;
.source "SearchAdapterHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Adapters/SearchAdapterHelper$SearchAdapterHelperDelegate;,
        Lorg/telegram/ui/Adapters/SearchAdapterHelper$HashtagObject;
    }
.end annotation


# instance fields
.field private accountInstance:Lorg/telegram/messenger/AccountInstance;

.field private allResultsAreGlobal:Z

.field private allowGlobalResults:Z

.field private currentAccount:I

.field private delegate:Lorg/telegram/ui/Adapters/SearchAdapterHelper$SearchAdapterHelperDelegate;

.field private filter:Lorg/telegram/messenger/MessagesController$DialogFilter;

.field private final globalSearch:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLObject;",
            ">;"
        }
    .end annotation
.end field

.field private final globalSearchMap:Landroidx/collection/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LongSparseArray<",
            "Lorg/telegram/tgnet/TLObject;",
            ">;"
        }
    .end annotation
.end field

.field private final groupSearch:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLObject;",
            ">;"
        }
    .end annotation
.end field

.field private final groupSearchMap:Landroidx/collection/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LongSparseArray<",
            "Lorg/telegram/tgnet/TLObject;",
            ">;"
        }
    .end annotation
.end field

.field private hashtags:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Adapters/SearchAdapterHelper$HashtagObject;",
            ">;"
        }
    .end annotation
.end field

.field private hashtagsByText:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/telegram/ui/Adapters/SearchAdapterHelper$HashtagObject;",
            ">;"
        }
    .end annotation
.end field

.field private hashtagsLoadedFromDb:Z

.field private lastFoundChannel:Ljava/lang/String;

.field private lastFoundUsername:Ljava/lang/String;

.field private localRecentResults:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;",
            ">;"
        }
    .end annotation
.end field

.field private localSearchResults:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final localServerSearch:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLObject;",
            ">;"
        }
    .end annotation
.end field

.field private final pendingRequestIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final phoneSearchMap:Landroidx/collection/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LongSparseArray<",
            "Lorg/telegram/tgnet/TLObject;",
            ">;"
        }
    .end annotation
.end field

.field private final phonesSearch:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public topicMode:Z

.field public topicModeFilterFolderId:I


# direct methods
.method public static synthetic $r8$lambda$7Hd04alMcoiyT3rek9muAjtxUvE(Lorg/telegram/ui/Adapters/SearchAdapterHelper;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->lambda$loadRecentHashtags$6()V

    return-void
.end method

.method public static synthetic $r8$lambda$F7c1AWvIM3gsZb7X4nbaWITmAdY(Lorg/telegram/ui/Adapters/SearchAdapterHelper;Ljava/util/ArrayList;ILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/ArrayList;ILjava/lang/Runnable;)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->lambda$queryServerSearch$2(Ljava/util/ArrayList;ILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/ArrayList;ILjava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UKMxjoESfz-yT5PgCkinZgiznWI(Lorg/telegram/ui/Adapters/SearchAdapterHelper;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->lambda$putRecentHashtags$7(Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VSnDZ-5-qMHfn0NNvCKoPk4QNRg(Lorg/telegram/ui/Adapters/SearchAdapterHelper;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->lambda$clearRecentHashtags$8()V

    return-void
.end method

.method public static synthetic $r8$lambda$YdWE92Km409eWlx_bx1n8VH9p3w(Lorg/telegram/ui/Adapters/SearchAdapterHelper;Ljava/lang/String;ZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->lambda$queryServerSearch$0(Ljava/lang/String;ZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$atRj3vW_BV2wtUuARv3hdo2o9dw(Lorg/telegram/ui/Adapters/SearchAdapterHelper$HashtagObject;Lorg/telegram/ui/Adapters/SearchAdapterHelper$HashtagObject;)I
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->lambda$loadRecentHashtags$4(Lorg/telegram/ui/Adapters/SearchAdapterHelper$HashtagObject;Lorg/telegram/ui/Adapters/SearchAdapterHelper$HashtagObject;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$g0FW_jHpPY1LJVI1eRvJ-ZC0PDc(Lorg/telegram/ui/Adapters/SearchAdapterHelper;Ljava/util/ArrayList;Ljava/util/HashMap;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->lambda$loadRecentHashtags$5(Ljava/util/ArrayList;Ljava/util/HashMap;)V

    return-void
.end method

.method public static synthetic $r8$lambda$s70GXoby_vLl5BalVFHPStNaty8(Lorg/telegram/ui/Adapters/SearchAdapterHelper;IZZZZJLjava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct/range {p0 .. p10}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->lambda$queryServerSearch$1(IZZZZJLjava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$s8lr6IO6mOUpgNYy4fAsiXCGv_E(Lorg/telegram/ui/Adapters/SearchAdapterHelper;Ljava/util/ArrayList;ILjava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/ArrayList;ILjava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->lambda$queryServerSearch$3(Ljava/util/ArrayList;ILjava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/ArrayList;ILjava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .line 62
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;-><init>(ZI)V

    return-void
.end method

.method public constructor <init>(ZI)V
    .locals 3

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 57
    iput-object v0, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->filter:Lorg/telegram/messenger/MessagesController$DialogFilter;

    const/4 v1, 0x0

    .line 58
    invoke-static {v1}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->accountInstance:Lorg/telegram/messenger/AccountInstance;

    .line 103
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->pendingRequestIds:Ljava/util/ArrayList;

    .line 104
    iput-object v0, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->lastFoundUsername:Ljava/lang/String;

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->localServerSearch:Ljava/util/ArrayList;

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->globalSearch:Ljava/util/ArrayList;

    .line 107
    new-instance v0, Landroidx/collection/LongSparseArray;

    invoke-direct {v0}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->globalSearchMap:Landroidx/collection/LongSparseArray;

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->groupSearch:Ljava/util/ArrayList;

    .line 109
    new-instance v0, Landroidx/collection/LongSparseArray;

    invoke-direct {v0}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->groupSearchMap:Landroidx/collection/LongSparseArray;

    .line 110
    new-instance v0, Landroidx/collection/LongSparseArray;

    invoke-direct {v0}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->phoneSearchMap:Landroidx/collection/LongSparseArray;

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->phonesSearch:Ljava/util/ArrayList;

    .line 115
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iput v0, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->currentAccount:I

    const/4 v0, 0x1

    .line 120
    iput-boolean v0, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->allowGlobalResults:Z

    .line 124
    iput-boolean v1, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->hashtagsLoadedFromDb:Z

    .line 134
    iput p2, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->currentAccount:I

    .line 136
    iput-boolean p1, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->allResultsAreGlobal:Z

    return-void
.end method

.method private synthetic lambda$clearRecentHashtags$8()V
    .locals 2

    .line 714
    :try_start_0
    iget v0, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "DELETE FROM hashtag_recent_v2 WHERE 1"

    invoke-virtual {v0, v1}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 716
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private static synthetic lambda$loadRecentHashtags$4(Lorg/telegram/ui/Adapters/SearchAdapterHelper$HashtagObject;Lorg/telegram/ui/Adapters/SearchAdapterHelper$HashtagObject;)I
    .locals 0

    .line 489
    iget p0, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper$HashtagObject;->date:I

    iget p1, p1, Lorg/telegram/ui/Adapters/SearchAdapterHelper$HashtagObject;->date:I

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

.method private synthetic lambda$loadRecentHashtags$5(Ljava/util/ArrayList;Ljava/util/HashMap;)V
    .locals 0

    .line 497
    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->setHashtags(Ljava/util/ArrayList;Ljava/util/HashMap;)V

    return-void
.end method

.method private synthetic lambda$loadRecentHashtags$6()V
    .locals 6

    .line 477
    :try_start_0
    iget v0, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "SELECT id, date FROM hashtag_recent_v2 WHERE 1"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v0

    .line 478
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 479
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 480
    :goto_0
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 481
    new-instance v4, Lorg/telegram/ui/Adapters/SearchAdapterHelper$HashtagObject;

    invoke-direct {v4}, Lorg/telegram/ui/Adapters/SearchAdapterHelper$HashtagObject;-><init>()V

    .line 482
    invoke-virtual {v0, v2}, Lorg/telegram/SQLite/SQLiteCursor;->stringValue(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lorg/telegram/ui/Adapters/SearchAdapterHelper$HashtagObject;->hashtag:Ljava/lang/String;

    const/4 v5, 0x1

    .line 483
    invoke-virtual {v0, v5}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v5

    iput v5, v4, Lorg/telegram/ui/Adapters/SearchAdapterHelper$HashtagObject;->date:I

    .line 484
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 485
    iget-object v5, v4, Lorg/telegram/ui/Adapters/SearchAdapterHelper$HashtagObject;->hashtag:Ljava/lang/String;

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 487
    :cond_0
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 488
    sget-object v0, Lorg/telegram/ui/Adapters/SearchAdapterHelper$$ExternalSyntheticLambda5;->INSTANCE:Lorg/telegram/ui/Adapters/SearchAdapterHelper$$ExternalSyntheticLambda5;

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 497
    new-instance v0, Lorg/telegram/ui/Adapters/SearchAdapterHelper$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, v1, v3}, Lorg/telegram/ui/Adapters/SearchAdapterHelper$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Adapters/SearchAdapterHelper;Ljava/util/ArrayList;Ljava/util/HashMap;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 499
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method private synthetic lambda$putRecentHashtags$7(Ljava/util/ArrayList;)V
    .locals 5

    .line 641
    :try_start_0
    iget v0, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteDatabase;->beginTransaction()V

    .line 642
    iget v0, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "REPLACE INTO hashtag_recent_v2 VALUES(?, ?)"

    invoke-virtual {v0, v1}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    const/4 v1, 0x0

    .line 643
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v3, 0x64

    const/4 v4, 0x1

    if-ge v1, v2, :cond_1

    if-ne v1, v3, :cond_0

    goto :goto_1

    .line 647
    :cond_0
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Adapters/SearchAdapterHelper$HashtagObject;

    .line 648
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    .line 649
    iget-object v3, v2, Lorg/telegram/ui/Adapters/SearchAdapterHelper$HashtagObject;->hashtag:Ljava/lang/String;

    invoke-virtual {v0, v4, v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindString(ILjava/lang/String;)V

    const/4 v3, 0x2

    .line 650
    iget v2, v2, Lorg/telegram/ui/Adapters/SearchAdapterHelper$HashtagObject;->date:I

    invoke-virtual {v0, v3, v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 651
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 653
    :cond_1
    :goto_1
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 654
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v3, :cond_3

    .line 655
    iget v0, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "DELETE FROM hashtag_recent_v2 WHERE id = ?"

    invoke-virtual {v0, v1}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    .line 656
    :goto_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v3, v1, :cond_2

    .line 657
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    .line 658
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Adapters/SearchAdapterHelper$HashtagObject;

    iget-object v1, v1, Lorg/telegram/ui/Adapters/SearchAdapterHelper$HashtagObject;->hashtag:Ljava/lang/String;

    invoke-virtual {v0, v4, v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindString(ILjava/lang/String;)V

    .line 659
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 661
    :cond_2
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 663
    :cond_3
    iget p1, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/SQLite/SQLiteDatabase;->commitTransaction()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 665
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_3
    return-void
.end method

.method private synthetic lambda$queryServerSearch$0(Ljava/lang/String;ZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 6

    if-nez p4, :cond_1

    .line 189
    check-cast p3, Lorg/telegram/tgnet/TLRPC$TL_channels_channelParticipants;

    .line 190
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->lastFoundChannel:Ljava/lang/String;

    .line 191
    iget p1, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object p4, p3, Lorg/telegram/tgnet/TLRPC$channels_ChannelParticipants;->users:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p1, p4, v0}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 192
    iget p1, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object p4, p3, Lorg/telegram/tgnet/TLRPC$channels_ChannelParticipants;->chats:Ljava/util/ArrayList;

    invoke-virtual {p1, p4, v0}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    .line 193
    iget-object p1, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->groupSearch:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 194
    iget-object p1, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->groupSearchMap:Landroidx/collection/LongSparseArray;

    invoke-virtual {p1}, Landroidx/collection/LongSparseArray;->clear()V

    .line 195
    iget-object p1, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->groupSearch:Ljava/util/ArrayList;

    iget-object p4, p3, Lorg/telegram/tgnet/TLRPC$channels_ChannelParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 196
    iget p1, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v1

    .line 197
    iget-object p1, p3, Lorg/telegram/tgnet/TLRPC$channels_ChannelParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_0
    if-ge v0, p1, :cond_1

    .line 198
    iget-object p4, p3, Lorg/telegram/tgnet/TLRPC$channels_ChannelParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    .line 199
    iget-object v3, p4, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v3}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v3

    if-nez p2, :cond_0

    cmp-long v5, v3, v1

    if-nez v5, :cond_0

    .line 201
    iget-object v3, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->groupSearch:Ljava/util/ArrayList;

    invoke-virtual {v3, p4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 204
    :cond_0
    iget-object v5, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->groupSearchMap:Landroidx/collection/LongSparseArray;

    invoke-virtual {v5, v3, v4, p4}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private synthetic lambda$queryServerSearch$1(IZZZZJLjava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 17

    move-object/from16 v0, p0

    .line 222
    iget-object v1, v0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->delegate:Lorg/telegram/ui/Adapters/SearchAdapterHelper$SearchAdapterHelperDelegate;

    move/from16 v2, p1

    invoke-interface {v1, v2}, Lorg/telegram/ui/Adapters/SearchAdapterHelper$SearchAdapterHelperDelegate;->canApplySearchResults(I)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 223
    iget v1, v0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->currentAccount:I

    invoke-static {v1}, Lcom/iMe/fork/controller/HiddenChatsController;->getInstance(I)Lcom/iMe/fork/controller/HiddenChatsController;

    move-result-object v1

    if-nez p10, :cond_31

    .line 225
    move-object/from16 v2, p9

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_contacts_found;

    .line 226
    iget-object v3, v0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->globalSearch:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 227
    iget-object v3, v0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->globalSearchMap:Landroidx/collection/LongSparseArray;

    invoke-virtual {v3}, Landroidx/collection/LongSparseArray;->clear()V

    .line 228
    iget-object v3, v0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->localServerSearch:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 229
    iget v3, v0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_contacts_found;->chats:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    .line 230
    iget v3, v0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_contacts_found;->users:Ljava/util/ArrayList;

    invoke-virtual {v3, v4, v5}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 231
    iget v3, v0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v3

    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_contacts_found;->users:Ljava/util/ArrayList;

    iget-object v6, v2, Lorg/telegram/tgnet/TLRPC$TL_contacts_found;->chats:Ljava/util/ArrayList;

    const/4 v7, 0x1

    invoke-virtual {v3, v4, v6, v7, v7}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/List;Ljava/util/List;ZZ)V

    .line 232
    new-instance v3, Landroidx/collection/LongSparseArray;

    invoke-direct {v3}, Landroidx/collection/LongSparseArray;-><init>()V

    .line 233
    new-instance v4, Landroidx/collection/LongSparseArray;

    invoke-direct {v4}, Landroidx/collection/LongSparseArray;-><init>()V

    move v6, v5

    .line 234
    :goto_0
    iget-object v8, v2, Lorg/telegram/tgnet/TLRPC$TL_contacts_found;->chats:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v6, v8, :cond_0

    .line 235
    iget-object v8, v2, Lorg/telegram/tgnet/TLRPC$TL_contacts_found;->chats:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 236
    iget-wide v9, v8, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-virtual {v3, v9, v10, v8}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    move v6, v5

    .line 238
    :goto_1
    iget-object v8, v2, Lorg/telegram/tgnet/TLRPC$TL_contacts_found;->users:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v6, v8, :cond_1

    .line 239
    iget-object v8, v2, Lorg/telegram/tgnet/TLRPC$TL_contacts_found;->users:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/tgnet/TLRPC$User;

    .line 240
    iget-wide v9, v8, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {v4, v9, v10, v8}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    move v6, v5

    :goto_2
    const/4 v8, 0x2

    const-wide/16 v9, 0x0

    if-ge v6, v8, :cond_1c

    if-nez v6, :cond_3

    .line 245
    iget-boolean v8, v0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->allResultsAreGlobal:Z

    if-nez v8, :cond_2

    goto/16 :goto_a

    .line 248
    :cond_2
    iget-object v8, v2, Lorg/telegram/tgnet/TLRPC$TL_contacts_found;->my_results:Ljava/util/ArrayList;

    goto :goto_3

    .line 250
    :cond_3
    iget-object v8, v2, Lorg/telegram/tgnet/TLRPC$TL_contacts_found;->results:Ljava/util/ArrayList;

    :goto_3
    move v12, v5

    .line 252
    :goto_4
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v12, v13, :cond_1b

    .line 253
    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/telegram/tgnet/TLRPC$Peer;

    .line 256
    iget-wide v14, v13, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    cmp-long v16, v14, v9

    if-eqz v16, :cond_4

    .line 257
    invoke-virtual {v4, v14, v15}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/telegram/tgnet/TLRPC$User;

    move-object v14, v13

    const/4 v13, 0x0

    goto :goto_6

    .line 258
    :cond_4
    iget-wide v14, v13, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:J

    cmp-long v16, v14, v9

    if-eqz v16, :cond_5

    .line 259
    invoke-virtual {v3, v14, v15}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/telegram/tgnet/TLRPC$Chat;

    goto :goto_5

    .line 260
    :cond_5
    iget-wide v13, v13, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J

    cmp-long v15, v13, v9

    if-eqz v15, :cond_6

    .line 261
    invoke-virtual {v3, v13, v14}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/telegram/tgnet/TLRPC$Chat;

    goto :goto_5

    :cond_6
    const/4 v13, 0x0

    :goto_5
    const/4 v14, 0x0

    .line 264
    :goto_6
    iget-boolean v15, v0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->topicMode:Z

    if-eqz v15, :cond_b

    if-eqz v13, :cond_7

    .line 267
    iget v15, v0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->currentAccount:I

    invoke-static {v15}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v15

    iget-object v15, v15, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Landroidx/collection/LongSparseArray;

    iget-wide v9, v13, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    neg-long v9, v9

    invoke-virtual {v15, v9, v10}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/tgnet/TLRPC$Dialog;

    move v10, v12

    goto :goto_8

    :cond_7
    if-eqz v14, :cond_a

    .line 269
    invoke-static {v14}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v9

    if-nez v9, :cond_9

    invoke-static {v14}, Lorg/telegram/messenger/UserObject;->isReplyUser(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v9

    if-nez v9, :cond_9

    invoke-static {v14}, Lorg/telegram/messenger/MessagesController;->isSupportUser(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v9

    if-eqz v9, :cond_8

    goto :goto_7

    .line 272
    :cond_8
    iget v9, v0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->currentAccount:I

    invoke-static {v9}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v9

    iget-object v9, v9, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Landroidx/collection/LongSparseArray;

    move v10, v12

    iget-wide v11, v14, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {v9, v11, v12}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/tgnet/TLRPC$Dialog;

    goto :goto_8

    :cond_9
    :goto_7
    move v10, v12

    goto/16 :goto_9

    :cond_a
    move v10, v12

    const/4 v9, 0x0

    :goto_8
    if-eqz v9, :cond_1a

    .line 274
    iget v9, v9, Lorg/telegram/tgnet/TLRPC$Dialog;->folder_id:I

    iget v11, v0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->topicModeFilterFolderId:I

    if-eq v9, v11, :cond_c

    goto/16 :goto_9

    :cond_b
    move v10, v12

    :cond_c
    if-eqz v13, :cond_13

    .line 281
    iget-wide v11, v13, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    neg-long v11, v11

    invoke-virtual {v1, v11, v12}, Lcom/iMe/fork/controller/HiddenChatsController;->isChatHidden(J)Z

    move-result v9

    if-eqz v9, :cond_d

    goto/16 :goto_9

    :cond_d
    if-eqz p2, :cond_1a

    if-eqz p3, :cond_e

    .line 285
    invoke-static {v13}, Lorg/telegram/messenger/ChatObject;->canAddBotsToChat(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v9

    if-eqz v9, :cond_1a

    :cond_e
    iget-boolean v9, v0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->allowGlobalResults:Z

    if-nez v9, :cond_f

    invoke-static {v13}, Lorg/telegram/messenger/ChatObject;->isNotInChat(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v9

    if-nez v9, :cond_1a

    :cond_f
    invoke-virtual {v0, v13}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->filter(Lorg/telegram/tgnet/TLObject;)Z

    move-result v9

    if-nez v9, :cond_10

    goto :goto_9

    .line 289
    :cond_10
    iget-object v9, v0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->filter:Lorg/telegram/messenger/MessagesController$DialogFilter;

    if-eqz v9, :cond_11

    iget-object v11, v0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->accountInstance:Lorg/telegram/messenger/AccountInstance;

    iget-wide v14, v13, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    neg-long v14, v14

    invoke-virtual {v9, v11, v14, v15}, Lorg/telegram/messenger/MessagesController$DialogFilter;->includesDialog(Lorg/telegram/messenger/AccountInstance;J)Z

    move-result v9

    if-eqz v9, :cond_12

    .line 290
    :cond_11
    iget-object v9, v0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->globalSearch:Ljava/util/ArrayList;

    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 291
    :cond_12
    iget-object v9, v0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->globalSearchMap:Landroidx/collection/LongSparseArray;

    iget-wide v11, v13, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    neg-long v11, v11

    invoke-virtual {v9, v11, v12, v13}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_9

    :cond_13
    if-eqz v14, :cond_1a

    .line 294
    iget-wide v11, v14, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {v1, v11, v12}, Lcom/iMe/fork/controller/HiddenChatsController;->isChatHidden(J)Z

    move-result v9

    if-eqz v9, :cond_14

    goto :goto_9

    :cond_14
    if-nez p3, :cond_1a

    if-nez p4, :cond_15

    .line 298
    iget-boolean v9, v14, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-nez v9, :cond_1a

    :cond_15
    if-nez p5, :cond_16

    iget-boolean v9, v14, Lorg/telegram/tgnet/TLRPC$User;->self:Z

    if-nez v9, :cond_1a

    :cond_16
    iget-boolean v9, v0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->allowGlobalResults:Z

    if-nez v9, :cond_17

    if-ne v6, v7, :cond_17

    iget-boolean v9, v14, Lorg/telegram/tgnet/TLRPC$User;->contact:Z

    if-eqz v9, :cond_1a

    :cond_17
    invoke-virtual {v0, v14}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->filter(Lorg/telegram/tgnet/TLObject;)Z

    move-result v9

    if-nez v9, :cond_18

    goto :goto_9

    .line 302
    :cond_18
    iget-object v9, v0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->filter:Lorg/telegram/messenger/MessagesController$DialogFilter;

    if-nez v9, :cond_19

    .line 303
    iget-object v9, v0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->globalSearch:Ljava/util/ArrayList;

    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 304
    :cond_19
    iget-object v9, v0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->globalSearchMap:Landroidx/collection/LongSparseArray;

    iget-wide v11, v14, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {v9, v11, v12, v14}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    :cond_1a
    :goto_9
    add-int/lit8 v12, v10, 0x1

    const-wide/16 v9, 0x0

    goto/16 :goto_4

    :cond_1b
    :goto_a
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2

    .line 308
    :cond_1c
    iget-boolean v6, v0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->allResultsAreGlobal:Z

    if-nez v6, :cond_30

    .line 309
    :goto_b
    iget-object v6, v2, Lorg/telegram/tgnet/TLRPC$TL_contacts_found;->my_results:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_30

    .line 310
    iget-object v6, v2, Lorg/telegram/tgnet/TLRPC$TL_contacts_found;->my_results:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$Peer;

    .line 313
    iget-wide v7, v6, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    const-wide/16 v9, 0x0

    cmp-long v11, v7, v9

    if-eqz v11, :cond_1d

    .line 314
    invoke-virtual {v4, v7, v8}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$User;

    move-object v7, v6

    const/4 v6, 0x0

    goto :goto_d

    .line 315
    :cond_1d
    iget-wide v7, v6, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:J

    cmp-long v11, v7, v9

    if-eqz v11, :cond_1e

    .line 316
    invoke-virtual {v3, v7, v8}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$Chat;

    goto :goto_c

    .line 317
    :cond_1e
    iget-wide v6, v6, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J

    cmp-long v8, v6, v9

    if-eqz v8, :cond_1f

    .line 318
    invoke-virtual {v3, v6, v7}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$Chat;

    goto :goto_c

    :cond_1f
    const/4 v6, 0x0

    :goto_c
    const/4 v7, 0x0

    .line 321
    :goto_d
    iget-boolean v8, v0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->topicMode:Z

    if-eqz v8, :cond_23

    if-eqz v6, :cond_20

    .line 324
    iget v8, v0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->currentAccount:I

    invoke-static {v8}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v8

    iget-object v8, v8, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Landroidx/collection/LongSparseArray;

    iget-wide v11, v6, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    neg-long v11, v11

    invoke-virtual {v8, v11, v12}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/tgnet/TLRPC$Dialog;

    goto :goto_e

    :cond_20
    if-eqz v7, :cond_22

    .line 326
    invoke-static {v7}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v8

    if-nez v8, :cond_2f

    invoke-static {v7}, Lorg/telegram/messenger/UserObject;->isReplyUser(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v8

    if-nez v8, :cond_2f

    invoke-static {v7}, Lorg/telegram/messenger/MessagesController;->isSupportUser(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v8

    if-eqz v8, :cond_21

    goto/16 :goto_f

    .line 329
    :cond_21
    iget v8, v0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->currentAccount:I

    invoke-static {v8}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v8

    iget-object v8, v8, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Landroidx/collection/LongSparseArray;

    iget-wide v11, v7, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {v8, v11, v12}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/tgnet/TLRPC$Dialog;

    goto :goto_e

    :cond_22
    const/4 v8, 0x0

    :goto_e
    if-eqz v8, :cond_2f

    .line 331
    iget v8, v8, Lorg/telegram/tgnet/TLRPC$Dialog;->folder_id:I

    iget v11, v0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->topicModeFilterFolderId:I

    if-eq v8, v11, :cond_23

    goto/16 :goto_f

    :cond_23
    if-eqz v6, :cond_29

    .line 338
    iget-wide v7, v6, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    neg-long v7, v7

    invoke-virtual {v1, v7, v8}, Lcom/iMe/fork/controller/HiddenChatsController;->isChatHidden(J)Z

    move-result v7

    if-eqz v7, :cond_24

    goto/16 :goto_f

    :cond_24
    if-eqz p2, :cond_2f

    if-eqz p3, :cond_25

    .line 342
    invoke-static {v6}, Lorg/telegram/messenger/ChatObject;->canAddBotsToChat(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v7

    if-eqz v7, :cond_2f

    :cond_25
    iget-wide v7, v6, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    neg-long v7, v7

    cmp-long v7, v7, p6

    if-eqz v7, :cond_2f

    invoke-virtual {v0, v6}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->filter(Lorg/telegram/tgnet/TLObject;)Z

    move-result v7

    if-nez v7, :cond_26

    goto :goto_f

    .line 346
    :cond_26
    iget-object v7, v0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->filter:Lorg/telegram/messenger/MessagesController$DialogFilter;

    if-eqz v7, :cond_27

    iget-object v8, v0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->accountInstance:Lorg/telegram/messenger/AccountInstance;

    iget-wide v11, v6, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    neg-long v11, v11

    invoke-virtual {v7, v8, v11, v12}, Lorg/telegram/messenger/MessagesController$DialogFilter;->includesDialog(Lorg/telegram/messenger/AccountInstance;J)Z

    move-result v7

    if-eqz v7, :cond_28

    .line 347
    :cond_27
    iget-object v7, v0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->localServerSearch:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 348
    :cond_28
    iget-object v7, v0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->globalSearchMap:Landroidx/collection/LongSparseArray;

    iget-wide v11, v6, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    neg-long v11, v11

    invoke-virtual {v7, v11, v12, v6}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_f

    :cond_29
    if-eqz v7, :cond_2f

    .line 351
    iget-wide v11, v7, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {v1, v11, v12}, Lcom/iMe/fork/controller/HiddenChatsController;->isChatHidden(J)Z

    move-result v6

    if-eqz v6, :cond_2a

    goto :goto_f

    :cond_2a
    if-nez p3, :cond_2f

    if-nez p4, :cond_2b

    .line 355
    iget-boolean v6, v7, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-nez v6, :cond_2f

    :cond_2b
    if-nez p5, :cond_2c

    iget-boolean v6, v7, Lorg/telegram/tgnet/TLRPC$User;->self:Z

    if-nez v6, :cond_2f

    :cond_2c
    iget-wide v11, v7, Lorg/telegram/tgnet/TLRPC$User;->id:J

    cmp-long v6, v11, p6

    if-eqz v6, :cond_2f

    invoke-virtual {v0, v7}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->filter(Lorg/telegram/tgnet/TLObject;)Z

    move-result v6

    if-nez v6, :cond_2d

    goto :goto_f

    .line 359
    :cond_2d
    iget-object v6, v0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->filter:Lorg/telegram/messenger/MessagesController$DialogFilter;

    if-nez v6, :cond_2e

    .line 360
    iget-object v6, v0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->localServerSearch:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 361
    :cond_2e
    iget-object v6, v0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->globalSearchMap:Landroidx/collection/LongSparseArray;

    iget-wide v11, v7, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {v6, v11, v12, v7}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    :cond_2f
    :goto_f
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_b

    .line 365
    :cond_30
    invoke-virtual/range {p8 .. p8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->lastFoundUsername:Ljava/lang/String;

    :cond_31
    return-void
.end method

.method private synthetic lambda$queryServerSearch$2(Ljava/util/ArrayList;ILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/ArrayList;ILjava/lang/Runnable;)V
    .locals 1

    .line 417
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, p3, p4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, p2, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 418
    invoke-virtual {p5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 419
    iget-object p3, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->pendingRequestIds:Ljava/util/ArrayList;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_0

    return-void

    .line 422
    :cond_0
    iget-object p3, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->pendingRequestIds:Ljava/util/ArrayList;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 423
    invoke-virtual {p6}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p2

    invoke-virtual {p7}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-ne p2, p3, :cond_4

    const/4 p2, 0x0

    .line 424
    :goto_0
    invoke-virtual {p7}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-ge p2, p3, :cond_2

    .line 425
    invoke-virtual {p7, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/util/Pair;

    iget-object p3, p3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p3, Lorg/telegram/tgnet/RequestDelegate;

    .line 426
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/util/Pair;

    if-nez p4, :cond_1

    goto :goto_1

    .line 429
    :cond_1
    iget-object p5, p4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p5, Lorg/telegram/tgnet/TLObject;

    iget-object p4, p4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p4, Lorg/telegram/tgnet/TLRPC$TL_error;

    invoke-interface {p3, p5, p4}, Lorg/telegram/tgnet/RequestDelegate;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 431
    :cond_2
    invoke-direct {p0}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->removeGroupSearchFromGlobal()V

    .line 432
    iget-object p1, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->localSearchResults:Ljava/util/ArrayList;

    if-eqz p1, :cond_3

    .line 433
    iget-object p2, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->localRecentResults:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->mergeResults(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 435
    :cond_3
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->mergeExcludeResults()V

    .line 436
    iget-object p1, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->delegate:Lorg/telegram/ui/Adapters/SearchAdapterHelper$SearchAdapterHelperDelegate;

    invoke-interface {p1, p8}, Lorg/telegram/ui/Adapters/SearchAdapterHelper$SearchAdapterHelperDelegate;->onDataSetChanged(I)V

    if-eqz p9, :cond_4

    .line 438
    invoke-interface {p9}, Ljava/lang/Runnable;->run()V

    :cond_4
    return-void
.end method

.method private synthetic lambda$queryServerSearch$3(Ljava/util/ArrayList;ILjava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/ArrayList;ILjava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 12

    .line 416
    new-instance v11, Lorg/telegram/ui/Adapters/SearchAdapterHelper$$ExternalSyntheticLambda3;

    move-object v0, v11

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object/from16 v4, p8

    move-object/from16 v5, p9

    move-object v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p7

    invoke-direct/range {v0 .. v10}, Lorg/telegram/ui/Adapters/SearchAdapterHelper$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Adapters/SearchAdapterHelper;Ljava/util/ArrayList;ILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/ArrayList;ILjava/lang/Runnable;)V

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private putRecentHashtags(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Adapters/SearchAdapterHelper$HashtagObject;",
            ">;)V"
        }
    .end annotation

    .line 639
    iget v0, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Adapters/SearchAdapterHelper$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Adapters/SearchAdapterHelper$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Adapters/SearchAdapterHelper;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private removeGroupSearchFromGlobal()V
    .locals 6

    .line 447
    iget-object v0, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->globalSearchMap:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0}, Landroidx/collection/LongSparseArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 450
    iget-object v1, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->groupSearchMap:Landroidx/collection/LongSparseArray;

    invoke-virtual {v1}, Landroidx/collection/LongSparseArray;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_2

    .line 451
    iget-object v2, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->groupSearchMap:Landroidx/collection/LongSparseArray;

    invoke-virtual {v2, v0}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    move-result-wide v2

    .line 452
    iget-object v4, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->globalSearchMap:Landroidx/collection/LongSparseArray;

    invoke-virtual {v4, v2, v3}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v2, :cond_1

    .line 454
    iget-object v3, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->globalSearch:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 455
    iget-object v3, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->localServerSearch:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 456
    iget-object v3, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->globalSearchMap:Landroidx/collection/LongSparseArray;

    iget-wide v4, v2, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {v3, v4, v5}, Landroidx/collection/LongSparseArray;->remove(J)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public addGroupMembers(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLObject;",
            ">;)V"
        }
    .end annotation

    .line 506
    iget-object v0, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->groupSearch:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 507
    iget-object v0, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->groupSearch:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 508
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 509
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLObject;

    .line 510
    instance-of v3, v2, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    if-eqz v3, :cond_0

    .line 511
    iget-object v3, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->groupSearchMap:Landroidx/collection/LongSparseArray;

    move-object v4, v2

    check-cast v4, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:J

    invoke-virtual {v3, v4, v5, v2}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_1

    .line 512
    :cond_0
    instance-of v3, v2, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    if-eqz v3, :cond_1

    .line 513
    iget-object v3, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->groupSearchMap:Landroidx/collection/LongSparseArray;

    move-object v4, v2

    check-cast v4, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v4}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5, v2}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 516
    :cond_2
    invoke-direct {p0}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->removeGroupSearchFromGlobal()V

    return-void
.end method

.method public addHashtagsFromMessage(Ljava/lang/CharSequence;)V
    .locals 8

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "(^|\\s)#[^0-9][\\w@.]+"

    .line 608
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 609
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 610
    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 611
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v2

    .line 612
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v3

    .line 613
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v5, 0x40

    if-eq v4, v5, :cond_1

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v5, 0x23

    if-eq v4, v5, :cond_1

    add-int/lit8 v2, v2, 0x1

    .line 616
    :cond_1
    invoke-interface {p1, v2, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 617
    iget-object v3, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->hashtagsByText:Ljava/util/HashMap;

    if-nez v3, :cond_2

    .line 618
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->hashtagsByText:Ljava/util/HashMap;

    .line 619
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->hashtags:Ljava/util/ArrayList;

    .line 621
    :cond_2
    iget-object v3, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->hashtagsByText:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Adapters/SearchAdapterHelper$HashtagObject;

    if-nez v3, :cond_3

    .line 623
    new-instance v3, Lorg/telegram/ui/Adapters/SearchAdapterHelper$HashtagObject;

    invoke-direct {v3}, Lorg/telegram/ui/Adapters/SearchAdapterHelper$HashtagObject;-><init>()V

    .line 624
    iput-object v2, v3, Lorg/telegram/ui/Adapters/SearchAdapterHelper$HashtagObject;->hashtag:Ljava/lang/String;

    .line 625
    iget-object v4, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->hashtagsByText:Ljava/util/HashMap;

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 627
    :cond_3
    iget-object v2, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->hashtags:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 629
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    long-to-int v2, v4

    iput v2, v3, Lorg/telegram/ui/Adapters/SearchAdapterHelper$HashtagObject;->date:I

    .line 630
    iget-object v2, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->hashtags:Ljava/util/ArrayList;

    invoke-virtual {v2, v1, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/4 v2, 0x1

    goto :goto_0

    :cond_4
    if-eqz v2, :cond_5

    .line 634
    iget-object p1, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->hashtags:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->putRecentHashtags(Ljava/util/ArrayList;)V

    :cond_5
    return-void
.end method

.method public clear()V
    .locals 1

    .line 462
    iget-object v0, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->globalSearch:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 463
    iget-object v0, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->globalSearchMap:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0}, Landroidx/collection/LongSparseArray;->clear()V

    .line 464
    iget-object v0, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->localServerSearch:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public clearRecentHashtags()V
    .locals 2

    .line 710
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->hashtags:Ljava/util/ArrayList;

    .line 711
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->hashtagsByText:Ljava/util/HashMap;

    .line 712
    iget v0, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Adapters/SearchAdapterHelper$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Adapters/SearchAdapterHelper$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Adapters/SearchAdapterHelper;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected filter(Lorg/telegram/tgnet/TLObject;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public getGlobalSearch()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLObject;",
            ">;"
        }
    .end annotation

    .line 682
    iget-object v0, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->globalSearch:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getGroupSearch()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLObject;",
            ">;"
        }
    .end annotation

    .line 694
    iget-object v0, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->groupSearch:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getHashtags()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Adapters/SearchAdapterHelper$HashtagObject;",
            ">;"
        }
    .end annotation

    .line 698
    iget-object v0, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->hashtags:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getLastFoundChannel()Ljava/lang/String;
    .locals 1

    .line 706
    iget-object v0, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->lastFoundChannel:Ljava/lang/String;

    return-object v0
.end method

.method public getLastFoundUsername()Ljava/lang/String;
    .locals 1

    .line 702
    iget-object v0, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->lastFoundUsername:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalServerSearch()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLObject;",
            ">;"
        }
    .end annotation

    .line 690
    iget-object v0, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->localServerSearch:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPhoneSearch()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 686
    iget-object v0, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->phonesSearch:Ljava/util/ArrayList;

    return-object v0
.end method

.method public isSearchInProgress()Z
    .locals 1

    .line 144
    iget-object v0, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->pendingRequestIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public loadRecentHashtags()Z
    .locals 2

    .line 472
    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->hashtagsLoadedFromDb:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 475
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Adapters/SearchAdapterHelper$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Adapters/SearchAdapterHelper$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Adapters/SearchAdapterHelper;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    return v0
.end method

.method public mergeExcludeResults()V
    .locals 8

    .line 572
    iget-object v0, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->delegate:Lorg/telegram/ui/Adapters/SearchAdapterHelper$SearchAdapterHelperDelegate;

    if-nez v0, :cond_0

    return-void

    .line 575
    :cond_0
    invoke-interface {v0}, Lorg/telegram/ui/Adapters/SearchAdapterHelper$SearchAdapterHelperDelegate;->getExcludeUsers()Landroidx/collection/LongSparseArray;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 577
    invoke-virtual {v0}, Landroidx/collection/LongSparseArray;->size()I

    move-result v2

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_2

    .line 578
    iget-object v4, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->globalSearchMap:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0, v3}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v4, :cond_1

    .line 580
    iget-object v5, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->globalSearch:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 581
    iget-object v5, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->localServerSearch:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 582
    iget-object v5, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->globalSearchMap:Landroidx/collection/LongSparseArray;

    iget-wide v6, v4, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {v5, v6, v7}, Landroidx/collection/LongSparseArray;->remove(J)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 586
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->delegate:Lorg/telegram/ui/Adapters/SearchAdapterHelper$SearchAdapterHelperDelegate;

    invoke-interface {v0}, Lorg/telegram/ui/Adapters/SearchAdapterHelper$SearchAdapterHelperDelegate;->getExcludeCallParticipants()Landroidx/collection/LongSparseArray;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 588
    invoke-virtual {v0}, Landroidx/collection/LongSparseArray;->size()I

    move-result v2

    :goto_1
    if-ge v1, v2, :cond_4

    .line 589
    iget-object v3, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->globalSearchMap:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0, v1}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v3, :cond_3

    .line 591
    iget-object v4, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->globalSearch:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 592
    iget-object v4, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->localServerSearch:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 593
    iget-object v4, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->globalSearchMap:Landroidx/collection/LongSparseArray;

    iget-wide v5, v3, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {v4, v5, v6}, Landroidx/collection/LongSparseArray;->remove(J)V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method public mergeResults(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 520
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->mergeResults(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method

.method public mergeResults(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;",
            ">;)V"
        }
    .end annotation

    .line 524
    iput-object p1, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->localSearchResults:Ljava/util/ArrayList;

    .line 525
    iput-object p2, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->localRecentResults:Ljava/util/ArrayList;

    .line 526
    iget-object v0, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->globalSearchMap:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0}, Landroidx/collection/LongSparseArray;->size()I

    move-result v0

    if-eqz v0, :cond_a

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    goto/16 :goto_5

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    move v1, v0

    goto :goto_0

    .line 529
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_0
    if-nez p2, :cond_2

    move v2, v0

    goto :goto_1

    .line 530
    :cond_2
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_1
    add-int/2addr v2, v1

    :goto_2
    if-ge v0, v2, :cond_a

    if-ge v0, v1, :cond_3

    .line 533
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    goto :goto_3

    :cond_3
    sub-int v3, v0, v1

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 534
    :goto_3
    instance-of v4, v3, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;

    if-eqz v4, :cond_4

    .line 535
    check-cast v3, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;

    iget-object v3, v3, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;->object:Lorg/telegram/tgnet/TLObject;

    .line 537
    :cond_4
    instance-of v4, v3, Lorg/telegram/ui/Components/ShareAlert$DialogSearchResult;

    if-eqz v4, :cond_5

    .line 538
    check-cast v3, Lorg/telegram/ui/Components/ShareAlert$DialogSearchResult;

    .line 539
    iget-object v3, v3, Lorg/telegram/ui/Components/ShareAlert$DialogSearchResult;->object:Lorg/telegram/tgnet/TLObject;

    .line 541
    :cond_5
    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v4, :cond_8

    .line 542
    check-cast v3, Lorg/telegram/tgnet/TLRPC$User;

    .line 543
    iget-object v4, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->globalSearchMap:Landroidx/collection/LongSparseArray;

    iget-wide v5, v3, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {v4, v5, v6}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v4, :cond_6

    .line 545
    iget-object v5, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->globalSearch:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 546
    iget-object v5, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->localServerSearch:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 547
    iget-object v5, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->globalSearchMap:Landroidx/collection/LongSparseArray;

    iget-wide v6, v4, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {v5, v6, v7}, Landroidx/collection/LongSparseArray;->remove(J)V

    .line 549
    :cond_6
    iget-object v4, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->groupSearchMap:Landroidx/collection/LongSparseArray;

    iget-wide v5, v3, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {v4, v5, v6}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLObject;

    if-eqz v4, :cond_7

    .line 551
    iget-object v5, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->groupSearch:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 552
    iget-object v4, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->groupSearchMap:Landroidx/collection/LongSparseArray;

    iget-wide v5, v3, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {v4, v5, v6}, Landroidx/collection/LongSparseArray;->remove(J)V

    .line 554
    :cond_7
    iget-object v4, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->phoneSearchMap:Landroidx/collection/LongSparseArray;

    iget-wide v5, v3, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {v4, v5, v6}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 556
    iget-object v5, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->phonesSearch:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 557
    iget-object v4, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->phoneSearchMap:Landroidx/collection/LongSparseArray;

    iget-wide v5, v3, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {v4, v5, v6}, Landroidx/collection/LongSparseArray;->remove(J)V

    goto :goto_4

    .line 559
    :cond_8
    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v4, :cond_9

    .line 560
    check-cast v3, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 561
    iget-object v4, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->globalSearchMap:Landroidx/collection/LongSparseArray;

    iget-wide v5, v3, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    neg-long v5, v5

    invoke-virtual {v4, v5, v6}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v3, :cond_9

    .line 563
    iget-object v4, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->globalSearch:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 564
    iget-object v4, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->localServerSearch:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 565
    iget-object v4, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->globalSearchMap:Landroidx/collection/LongSparseArray;

    iget-wide v5, v3, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    neg-long v5, v5

    invoke-virtual {v4, v5, v6}, Landroidx/collection/LongSparseArray;->remove(J)V

    :cond_9
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    :cond_a
    :goto_5
    return-void
.end method

.method public queryServerSearch(Ljava/lang/String;ZZZZZJZII)V
    .locals 15

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-wide/from16 v7, p7

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    .line 147
    invoke-virtual/range {v0 .. v14}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->queryServerSearch(Ljava/lang/String;ZZZZZJZIIJLjava/lang/Runnable;)V

    return-void
.end method

.method public queryServerSearch(Ljava/lang/String;ZZZZZJZIIJ)V
    .locals 15

    const/4 v14, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-wide/from16 v7, p7

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move-wide/from16 v12, p12

    .line 150
    invoke-virtual/range {v0 .. v14}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->queryServerSearch(Ljava/lang/String;ZZZZZJZIIJLjava/lang/Runnable;)V

    return-void
.end method

.method public queryServerSearch(Ljava/lang/String;ZZZZZJZIIJLjava/lang/Runnable;)V
    .locals 17

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-wide/from16 v0, p7

    move/from16 v2, p10

    move/from16 v12, p11

    .line 153
    iget-object v3, v10, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->pendingRequestIds:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v13, 0x1

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 154
    iget v5, v10, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v5

    invoke-virtual {v5, v4, v13}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    goto :goto_0

    .line 156
    :cond_0
    iget-object v3, v10, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->pendingRequestIds:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    if-nez v11, :cond_1

    .line 158
    iget-object v0, v10, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->groupSearch:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 159
    iget-object v0, v10, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->groupSearchMap:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0}, Landroidx/collection/LongSparseArray;->clear()V

    .line 160
    iget-object v0, v10, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->globalSearch:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 161
    iget-object v0, v10, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->globalSearchMap:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0}, Landroidx/collection/LongSparseArray;->clear()V

    .line 162
    iget-object v0, v10, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->localServerSearch:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 163
    iget-object v0, v10, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->phonesSearch:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 164
    iget-object v0, v10, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->phoneSearchMap:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0}, Landroidx/collection/LongSparseArray;->clear()V

    .line 165
    iget-object v0, v10, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->delegate:Lorg/telegram/ui/Adapters/SearchAdapterHelper$SearchAdapterHelperDelegate;

    invoke-interface {v0, v12}, Lorg/telegram/ui/Adapters/SearchAdapterHelper$SearchAdapterHelperDelegate;->onDataSetChanged(I)V

    return-void

    .line 170
    :cond_1
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 171
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v15, 0x3

    const/4 v9, 0x0

    if-lez v3, :cond_6

    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-eqz v3, :cond_5

    .line 173
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;-><init>()V

    if-ne v2, v13, :cond_2

    .line 175
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsAdmins;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsAdmins;-><init>()V

    iput-object v2, v3, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;->filter:Lorg/telegram/tgnet/TLRPC$ChannelParticipantsFilter;

    goto :goto_1

    :cond_2
    if-ne v2, v15, :cond_3

    .line 177
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsBanned;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsBanned;-><init>()V

    iput-object v2, v3, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;->filter:Lorg/telegram/tgnet/TLRPC$ChannelParticipantsFilter;

    goto :goto_1

    :cond_3
    if-nez v2, :cond_4

    .line 179
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsKicked;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsKicked;-><init>()V

    iput-object v2, v3, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;->filter:Lorg/telegram/tgnet/TLRPC$ChannelParticipantsFilter;

    goto :goto_1

    .line 181
    :cond_4
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsSearch;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsSearch;-><init>()V

    iput-object v2, v3, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;->filter:Lorg/telegram/tgnet/TLRPC$ChannelParticipantsFilter;

    .line 183
    :goto_1
    iget-object v2, v3, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;->filter:Lorg/telegram/tgnet/TLRPC$ChannelParticipantsFilter;

    iput-object v11, v2, Lorg/telegram/tgnet/TLRPC$ChannelParticipantsFilter;->q:Ljava/lang/String;

    const/16 v2, 0x32

    .line 184
    iput v2, v3, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;->limit:I

    .line 185
    iput v9, v3, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;->offset:I

    .line 186
    iget v2, v10, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lorg/telegram/messenger/MessagesController;->getInputChannel(J)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v0

    iput-object v0, v3, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 187
    new-instance v0, Landroid/util/Pair;

    new-instance v1, Lorg/telegram/ui/Adapters/SearchAdapterHelper$$ExternalSyntheticLambda7;

    move/from16 v6, p5

    invoke-direct {v1, v10, v11, v6}, Lorg/telegram/ui/Adapters/SearchAdapterHelper$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Adapters/SearchAdapterHelper;Ljava/lang/String;Z)V

    invoke-direct {v0, v3, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    move/from16 v6, p5

    .line 209
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->lastFoundChannel:Ljava/lang/String;

    :goto_2
    move/from16 v16, v9

    goto :goto_3

    :cond_6
    move/from16 v6, p5

    .line 212
    iget-object v0, v10, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->groupSearch:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 213
    iget-object v0, v10, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->groupSearchMap:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0}, Landroidx/collection/LongSparseArray;->clear()V

    move/from16 v16, v13

    :goto_3
    if-eqz p2, :cond_8

    .line 217
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_7

    .line 218
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_contacts_search;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_contacts_search;-><init>()V

    .line 219
    iput-object v11, v7, Lorg/telegram/tgnet/TLRPC$TL_contacts_search;->q:Ljava/lang/String;

    const/16 v0, 0x14

    .line 220
    iput v0, v7, Lorg/telegram/tgnet/TLRPC$TL_contacts_search;->limit:I

    .line 221
    new-instance v8, Landroid/util/Pair;

    new-instance v5, Lorg/telegram/ui/Adapters/SearchAdapterHelper$$ExternalSyntheticLambda6;

    move-object v0, v5

    move-object/from16 v1, p0

    move/from16 v2, p11

    move/from16 v3, p3

    move/from16 v4, p6

    move-object v13, v5

    move/from16 v5, p4

    move/from16 v6, p5

    move-object v15, v7

    move-object v12, v8

    move-wide/from16 v7, p12

    move-object/from16 v9, p1

    invoke-direct/range {v0 .. v9}, Lorg/telegram/ui/Adapters/SearchAdapterHelper$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Adapters/SearchAdapterHelper;IZZZZJLjava/lang/String;)V

    invoke-direct {v12, v15, v13}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 370
    :cond_7
    iget-object v0, v10, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->globalSearch:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 371
    iget-object v0, v10, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->globalSearchMap:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0}, Landroidx/collection/LongSparseArray;->clear()V

    .line 372
    iget-object v0, v10, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->localServerSearch:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v9, 0x0

    goto :goto_5

    :cond_8
    :goto_4
    move/from16 v9, v16

    :goto_5
    if-nez p6, :cond_f

    if-eqz p9, :cond_f

    const-string v0, "+"

    .line 376
    invoke-virtual {v11, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_f

    .line 377
    iget-object v0, v10, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->phonesSearch:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 378
    iget-object v0, v10, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->phoneSearchMap:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0}, Landroidx/collection/LongSparseArray;->clear()V

    .line 379
    invoke-static/range {p1 .. p1}, Lorg/telegram/PhoneFormat/PhoneFormat;->stripExceptNumbers(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 380
    iget v1, v10, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/ContactsController;->getInstance(I)Lorg/telegram/messenger/ContactsController;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/ContactsController;->contacts:Ljava/util/ArrayList;

    .line 382
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v9, 0x0

    :goto_6
    if-ge v9, v2, :cond_d

    .line 383
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_contact;

    .line 384
    iget v5, v10, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    iget-wide v6, v4, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v5, v4}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v4

    if-nez v4, :cond_9

    goto :goto_8

    .line 388
    :cond_9
    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    if-eqz v5, :cond_c

    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    if-nez v3, :cond_b

    .line 390
    iget-object v3, v4, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v3, v5, :cond_a

    const/4 v3, 0x1

    goto :goto_7

    :cond_a
    const/4 v3, 0x0

    .line 392
    :cond_b
    :goto_7
    iget-object v5, v10, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->phonesSearch:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 393
    iget-object v5, v10, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->phoneSearchMap:Landroidx/collection/LongSparseArray;

    iget-wide v6, v4, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {v5, v6, v7, v4}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    :cond_c
    :goto_8
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    :cond_d
    if-nez v3, :cond_e

    .line 397
    iget-object v1, v10, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->phonesSearch:Ljava/util/ArrayList;

    const-string v2, "section"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 398
    iget-object v1, v10, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->phonesSearch:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 399
    iget-object v1, v10, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->phonesSearch:Ljava/util/ArrayList;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "searchByTel"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e
    const/4 v9, 0x0

    :cond_f
    if-eqz v9, :cond_10

    .line 405
    iget-object v0, v10, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->delegate:Lorg/telegram/ui/Adapters/SearchAdapterHelper$SearchAdapterHelperDelegate;

    move/from16 v1, p11

    invoke-interface {v0, v1}, Lorg/telegram/ui/Adapters/SearchAdapterHelper$SearchAdapterHelperDelegate;->onDataSetChanged(I)V

    goto :goto_9

    :cond_10
    move/from16 v1, p11

    .line 408
    :goto_9
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 409
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v9, v2

    .line 410
    :goto_a
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v9, v2, :cond_11

    .line 412
    invoke-virtual {v14, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 413
    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lorg/telegram/tgnet/TLObject;

    const/4 v4, 0x0

    .line 414
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 415
    new-instance v4, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 416
    iget v5, v10, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v5

    new-instance v6, Lorg/telegram/ui/Adapters/SearchAdapterHelper$$ExternalSyntheticLambda8;

    move-object/from16 p1, v6

    move-object/from16 p2, p0

    move-object/from16 p3, v3

    move/from16 p4, v9

    move-object/from16 p5, v4

    move-object/from16 p6, v0

    move-object/from16 p7, v14

    move/from16 p8, p11

    move-object/from16 p9, p14

    invoke-direct/range {p1 .. p9}, Lorg/telegram/ui/Adapters/SearchAdapterHelper$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Adapters/SearchAdapterHelper;Ljava/util/ArrayList;ILjava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/ArrayList;ILjava/lang/Runnable;)V

    invoke-virtual {v5, v2, v6}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 442
    iget-object v2, v10, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->pendingRequestIds:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_a

    :cond_11
    return-void
.end method

.method public removeUserId(J)V
    .locals 2

    .line 671
    iget-object v0, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->globalSearchMap:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 673
    iget-object v1, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->globalSearch:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 675
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->groupSearchMap:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 677
    iget-object p2, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->groupSearch:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public setAllowGlobalResults(Z)V
    .locals 0

    .line 140
    iput-boolean p1, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->allowGlobalResults:Z

    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/Adapters/SearchAdapterHelper$SearchAdapterHelperDelegate;)V
    .locals 0

    .line 600
    iput-object p1, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->delegate:Lorg/telegram/ui/Adapters/SearchAdapterHelper$SearchAdapterHelperDelegate;

    return-void
.end method

.method public setHashtags(Ljava/util/ArrayList;Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Adapters/SearchAdapterHelper$HashtagObject;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/telegram/ui/Adapters/SearchAdapterHelper$HashtagObject;",
            ">;)V"
        }
    .end annotation

    .line 722
    iput-object p1, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->hashtags:Ljava/util/ArrayList;

    .line 723
    iput-object p2, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->hashtagsByText:Ljava/util/HashMap;

    const/4 v0, 0x1

    .line 724
    iput-boolean v0, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->hashtagsLoadedFromDb:Z

    .line 725
    iget-object v0, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->delegate:Lorg/telegram/ui/Adapters/SearchAdapterHelper$SearchAdapterHelperDelegate;

    invoke-interface {v0, p1, p2}, Lorg/telegram/ui/Adapters/SearchAdapterHelper$SearchAdapterHelperDelegate;->onSetHashtags(Ljava/util/ArrayList;Ljava/util/HashMap;)V

    return-void
.end method

.method public setupFilter(Lorg/telegram/messenger/MessagesController$DialogFilter;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->filter:Lorg/telegram/messenger/MessagesController$DialogFilter;

    .line 69
    iget p1, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->accountInstance:Lorg/telegram/messenger/AccountInstance;

    return-void
.end method

.method public unloadRecentHashtags()V
    .locals 1

    const/4 v0, 0x0

    .line 468
    iput-boolean v0, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->hashtagsLoadedFromDb:Z

    return-void
.end method
