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
.field private allResultsAreGlobal:Z

.field private allowGlobalResults:Z

.field public crossAccountsForward:Z

.field private currentAccount:I

.field private delegate:Lorg/telegram/ui/Adapters/SearchAdapterHelper$SearchAdapterHelperDelegate;

.field private globalSearch:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLObject;",
            ">;"
        }
    .end annotation
.end field

.field private globalSearchMap:Landroidx/collection/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LongSparseArray<",
            "Lorg/telegram/tgnet/TLObject;",
            ">;"
        }
    .end annotation
.end field

.field private groupSearch:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLObject;",
            ">;"
        }
    .end annotation
.end field

.field private groupSearchMap:Landroidx/collection/LongSparseArray;
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

.field private localServerSearch:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLObject;",
            ">;"
        }
    .end annotation
.end field

.field private pendingRequestIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private phoneSearchMap:Landroidx/collection/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LongSparseArray<",
            "Lorg/telegram/tgnet/TLObject;",
            ">;"
        }
    .end annotation
.end field

.field private phonesSearch:Ljava/util/ArrayList;
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

    .line 57
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;-><init>(ZI)V

    return-void
.end method

.method public constructor <init>(ZI)V
    .locals 1

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->pendingRequestIds:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 90
    iput-object v0, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->lastFoundUsername:Ljava/lang/String;

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->localServerSearch:Ljava/util/ArrayList;

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->globalSearch:Ljava/util/ArrayList;

    .line 93
    new-instance v0, Landroidx/collection/LongSparseArray;

    invoke-direct {v0}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->globalSearchMap:Landroidx/collection/LongSparseArray;

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->groupSearch:Ljava/util/ArrayList;

    .line 95
    new-instance v0, Landroidx/collection/LongSparseArray;

    invoke-direct {v0}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->groupSearchMap:Landroidx/collection/LongSparseArray;

    .line 96
    new-instance v0, Landroidx/collection/LongSparseArray;

    invoke-direct {v0}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->phoneSearchMap:Landroidx/collection/LongSparseArray;

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->phonesSearch:Ljava/util/ArrayList;

    .line 101
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iput v0, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->currentAccount:I

    const/4 v0, 0x1

    .line 106
    iput-boolean v0, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->allowGlobalResults:Z

    const/4 v0, 0x0

    .line 110
    iput-boolean v0, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->hashtagsLoadedFromDb:Z

    .line 120
    iput p2, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->currentAccount:I

    .line 121
    iget-boolean p2, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->crossAccountsForward:Z

    iput-boolean p2, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->crossAccountsForward:Z

    .line 123
    iput-boolean p1, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->allResultsAreGlobal:Z

    return-void
.end method

.method private synthetic lambda$clearRecentHashtags$8()V
    .locals 2

    .line 682
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

    .line 684
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private static synthetic lambda$loadRecentHashtags$4(Lorg/telegram/ui/Adapters/SearchAdapterHelper$HashtagObject;Lorg/telegram/ui/Adapters/SearchAdapterHelper$HashtagObject;)I
    .locals 0

    .line 457
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

    .line 465
    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->setHashtags(Ljava/util/ArrayList;Ljava/util/HashMap;)V

    return-void
.end method

.method private synthetic lambda$loadRecentHashtags$6()V
    .locals 6

    .line 445
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

    .line 446
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 447
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 448
    :goto_0
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 449
    new-instance v4, Lorg/telegram/ui/Adapters/SearchAdapterHelper$HashtagObject;

    invoke-direct {v4}, Lorg/telegram/ui/Adapters/SearchAdapterHelper$HashtagObject;-><init>()V

    .line 450
    invoke-virtual {v0, v2}, Lorg/telegram/SQLite/SQLiteCursor;->stringValue(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lorg/telegram/ui/Adapters/SearchAdapterHelper$HashtagObject;->hashtag:Ljava/lang/String;

    const/4 v5, 0x1

    .line 451
    invoke-virtual {v0, v5}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v5

    iput v5, v4, Lorg/telegram/ui/Adapters/SearchAdapterHelper$HashtagObject;->date:I

    .line 452
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 453
    iget-object v5, v4, Lorg/telegram/ui/Adapters/SearchAdapterHelper$HashtagObject;->hashtag:Ljava/lang/String;

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 455
    :cond_0
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 456
    sget-object v0, Lorg/telegram/ui/Adapters/SearchAdapterHelper$$ExternalSyntheticLambda5;->INSTANCE:Lorg/telegram/ui/Adapters/SearchAdapterHelper$$ExternalSyntheticLambda5;

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 465
    new-instance v0, Lorg/telegram/ui/Adapters/SearchAdapterHelper$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, v1, v3}, Lorg/telegram/ui/Adapters/SearchAdapterHelper$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Adapters/SearchAdapterHelper;Ljava/util/ArrayList;Ljava/util/HashMap;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 467
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method private synthetic lambda$putRecentHashtags$7(Ljava/util/ArrayList;)V
    .locals 5

    .line 609
    :try_start_0
    iget v0, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteDatabase;->beginTransaction()V

    .line 610
    iget v0, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "REPLACE INTO hashtag_recent_v2 VALUES(?, ?)"

    invoke-virtual {v0, v1}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    const/4 v1, 0x0

    .line 611
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v3, 0x64

    const/4 v4, 0x1

    if-ge v1, v2, :cond_1

    if-ne v1, v3, :cond_0

    goto :goto_1

    .line 615
    :cond_0
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Adapters/SearchAdapterHelper$HashtagObject;

    .line 616
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    .line 617
    iget-object v3, v2, Lorg/telegram/ui/Adapters/SearchAdapterHelper$HashtagObject;->hashtag:Ljava/lang/String;

    invoke-virtual {v0, v4, v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindString(ILjava/lang/String;)V

    const/4 v3, 0x2

    .line 618
    iget v2, v2, Lorg/telegram/ui/Adapters/SearchAdapterHelper$HashtagObject;->date:I

    invoke-virtual {v0, v3, v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 619
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 621
    :cond_1
    :goto_1
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 622
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v3, :cond_3

    .line 623
    iget v0, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "DELETE FROM hashtag_recent_v2 WHERE id = ?"

    invoke-virtual {v0, v1}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    .line 624
    :goto_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v3, v1, :cond_2

    .line 625
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    .line 626
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Adapters/SearchAdapterHelper$HashtagObject;

    iget-object v1, v1, Lorg/telegram/ui/Adapters/SearchAdapterHelper$HashtagObject;->hashtag:Ljava/lang/String;

    invoke-virtual {v0, v4, v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindString(ILjava/lang/String;)V

    .line 627
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 629
    :cond_2
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 631
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

    .line 633
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_3
    return-void
.end method

.method private synthetic lambda$queryServerSearch$0(Ljava/lang/String;ZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 6

    if-nez p4, :cond_1

    .line 176
    check-cast p3, Lorg/telegram/tgnet/TLRPC$TL_channels_channelParticipants;

    .line 177
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->lastFoundChannel:Ljava/lang/String;

    .line 178
    iget p1, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object p4, p3, Lorg/telegram/tgnet/TLRPC$channels_ChannelParticipants;->users:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p1, p4, v0}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 179
    iget p1, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object p4, p3, Lorg/telegram/tgnet/TLRPC$channels_ChannelParticipants;->chats:Ljava/util/ArrayList;

    invoke-virtual {p1, p4, v0}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    .line 180
    iget-object p1, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->groupSearch:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 181
    iget-object p1, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->groupSearchMap:Landroidx/collection/LongSparseArray;

    invoke-virtual {p1}, Landroidx/collection/LongSparseArray;->clear()V

    .line 182
    iget-object p1, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->groupSearch:Ljava/util/ArrayList;

    iget-object p4, p3, Lorg/telegram/tgnet/TLRPC$channels_ChannelParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 183
    iget p1, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v1

    .line 184
    iget-object p1, p3, Lorg/telegram/tgnet/TLRPC$channels_ChannelParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_0
    if-ge v0, p1, :cond_1

    .line 185
    iget-object p4, p3, Lorg/telegram/tgnet/TLRPC$channels_ChannelParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    .line 186
    iget-object v3, p4, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v3}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v3

    if-nez p2, :cond_0

    cmp-long v5, v3, v1

    if-nez v5, :cond_0

    .line 188
    iget-object v3, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->groupSearch:Ljava/util/ArrayList;

    invoke-virtual {v3, p4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 191
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
    .locals 16

    move-object/from16 v0, p0

    .line 209
    iget-object v1, v0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->delegate:Lorg/telegram/ui/Adapters/SearchAdapterHelper$SearchAdapterHelperDelegate;

    move/from16 v2, p1

    invoke-interface {v1, v2}, Lorg/telegram/ui/Adapters/SearchAdapterHelper$SearchAdapterHelperDelegate;->canApplySearchResults(I)Z

    move-result v1

    if-eqz v1, :cond_25

    if-nez p10, :cond_25

    .line 211
    move-object/from16 v1, p9

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_contacts_found;

    .line 212
    iget-object v2, v0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->globalSearch:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 213
    iget-object v2, v0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->globalSearchMap:Landroidx/collection/LongSparseArray;

    invoke-virtual {v2}, Landroidx/collection/LongSparseArray;->clear()V

    .line 214
    iget-object v2, v0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->localServerSearch:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 215
    iget v2, v0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_contacts_found;->chats:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    .line 216
    iget v2, v0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_contacts_found;->users:Ljava/util/ArrayList;

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 217
    iget v2, v0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_contacts_found;->users:Ljava/util/ArrayList;

    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$TL_contacts_found;->chats:Ljava/util/ArrayList;

    const/4 v6, 0x1

    invoke-virtual {v2, v3, v5, v6, v6}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/ArrayList;Ljava/util/ArrayList;ZZ)V

    .line 218
    new-instance v2, Landroidx/collection/LongSparseArray;

    invoke-direct {v2}, Landroidx/collection/LongSparseArray;-><init>()V

    .line 219
    new-instance v3, Landroidx/collection/LongSparseArray;

    invoke-direct {v3}, Landroidx/collection/LongSparseArray;-><init>()V

    move v5, v4

    .line 220
    :goto_0
    iget-object v7, v1, Lorg/telegram/tgnet/TLRPC$TL_contacts_found;->chats:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v5, v7, :cond_0

    .line 221
    iget-object v7, v1, Lorg/telegram/tgnet/TLRPC$TL_contacts_found;->chats:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 222
    iget-wide v8, v7, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-virtual {v2, v8, v9, v7}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    move v5, v4

    .line 224
    :goto_1
    iget-object v7, v1, Lorg/telegram/tgnet/TLRPC$TL_contacts_found;->users:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v5, v7, :cond_1

    .line 225
    iget-object v7, v1, Lorg/telegram/tgnet/TLRPC$TL_contacts_found;->users:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/tgnet/TLRPC$User;

    .line 226
    iget-wide v8, v7, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {v3, v8, v9, v7}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    move v5, v4

    :goto_2
    const/4 v7, 0x2

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    if-ge v5, v7, :cond_14

    if-nez v5, :cond_3

    .line 231
    iget-boolean v7, v0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->allResultsAreGlobal:Z

    if-nez v7, :cond_2

    goto/16 :goto_9

    .line 234
    :cond_2
    iget-object v7, v1, Lorg/telegram/tgnet/TLRPC$TL_contacts_found;->my_results:Ljava/util/ArrayList;

    goto :goto_3

    .line 236
    :cond_3
    iget-object v7, v1, Lorg/telegram/tgnet/TLRPC$TL_contacts_found;->results:Ljava/util/ArrayList;

    :goto_3
    move v11, v4

    .line 238
    :goto_4
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v11, v12, :cond_13

    .line 239
    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/tgnet/TLRPC$Peer;

    .line 242
    iget-wide v13, v12, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    cmp-long v15, v13, v8

    if-eqz v15, :cond_4

    .line 243
    invoke-virtual {v3, v13, v14}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/tgnet/TLRPC$User;

    move-object v13, v12

    move-object v12, v10

    goto :goto_6

    .line 244
    :cond_4
    iget-wide v13, v12, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:J

    cmp-long v15, v13, v8

    if-eqz v15, :cond_5

    .line 245
    invoke-virtual {v2, v13, v14}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/tgnet/TLRPC$Chat;

    :goto_5
    move-object v13, v10

    goto :goto_6

    .line 246
    :cond_5
    iget-wide v12, v12, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J

    cmp-long v14, v12, v8

    if-eqz v14, :cond_6

    .line 247
    invoke-virtual {v2, v12, v13}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/tgnet/TLRPC$Chat;

    goto :goto_5

    :cond_6
    move-object v12, v10

    move-object v13, v12

    .line 250
    :goto_6
    iget-boolean v14, v0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->topicMode:Z

    if-eqz v14, :cond_a

    if-eqz v12, :cond_7

    .line 253
    iget v14, v0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->currentAccount:I

    invoke-static {v14}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v14

    iget-object v14, v14, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Landroidx/collection/LongSparseArray;

    iget-wide v8, v12, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    neg-long v8, v8

    invoke-virtual {v14, v8, v9}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/tgnet/TLRPC$Dialog;

    goto :goto_7

    :cond_7
    if-eqz v13, :cond_9

    .line 255
    invoke-static {v13}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v8

    if-nez v8, :cond_12

    invoke-static {v13}, Lorg/telegram/messenger/UserObject;->isReplyUser(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v8

    if-nez v8, :cond_12

    invoke-static {v13}, Lorg/telegram/messenger/MessagesController;->isSupportUser(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v8

    if-eqz v8, :cond_8

    goto/16 :goto_8

    .line 258
    :cond_8
    iget v8, v0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->currentAccount:I

    invoke-static {v8}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v8

    iget-object v8, v8, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Landroidx/collection/LongSparseArray;

    iget-wide v14, v13, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {v8, v14, v15}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/tgnet/TLRPC$Dialog;

    goto :goto_7

    :cond_9
    move-object v8, v10

    :goto_7
    if-eqz v8, :cond_12

    .line 260
    iget v8, v8, Lorg/telegram/tgnet/TLRPC$Dialog;->folder_id:I

    iget v9, v0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->topicModeFilterFolderId:I

    if-eq v8, v9, :cond_a

    goto :goto_8

    :cond_a
    if-eqz v12, :cond_d

    if-eqz p2, :cond_12

    if-eqz p3, :cond_b

    .line 266
    invoke-static {v12}, Lorg/telegram/messenger/ChatObject;->canAddBotsToChat(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v8

    if-eqz v8, :cond_12

    :cond_b
    iget-boolean v8, v0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->allowGlobalResults:Z

    if-nez v8, :cond_c

    invoke-static {v12}, Lorg/telegram/messenger/ChatObject;->isNotInChat(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v8

    if-eqz v8, :cond_c

    goto :goto_8

    .line 269
    :cond_c
    iget-object v8, v0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->globalSearch:Ljava/util/ArrayList;

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 270
    iget-object v8, v0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->globalSearchMap:Landroidx/collection/LongSparseArray;

    iget-wide v13, v12, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    neg-long v13, v13

    invoke-virtual {v8, v13, v14, v12}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_8

    :cond_d
    if-eqz v13, :cond_12

    .line 273
    iget-boolean v8, v0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->crossAccountsForward:Z

    if-eqz v8, :cond_e

    iget-wide v8, v13, Lorg/telegram/tgnet/TLRPC$User;->id:J

    sget v12, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v12}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v14

    cmp-long v8, v8, v14

    if-nez v8, :cond_e

    goto :goto_8

    :cond_e
    if-nez p3, :cond_12

    if-nez p4, :cond_f

    .line 277
    iget-boolean v8, v13, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-nez v8, :cond_12

    :cond_f
    if-nez p5, :cond_10

    iget-boolean v8, v13, Lorg/telegram/tgnet/TLRPC$User;->self:Z

    if-nez v8, :cond_12

    :cond_10
    iget-boolean v8, v0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->allowGlobalResults:Z

    if-nez v8, :cond_11

    if-ne v5, v6, :cond_11

    iget-boolean v8, v13, Lorg/telegram/tgnet/TLRPC$User;->contact:Z

    if-nez v8, :cond_11

    goto :goto_8

    .line 280
    :cond_11
    iget-object v8, v0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->globalSearch:Ljava/util/ArrayList;

    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 281
    iget-object v8, v0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->globalSearchMap:Landroidx/collection/LongSparseArray;

    iget-wide v14, v13, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {v8, v14, v15, v13}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    :cond_12
    :goto_8
    add-int/lit8 v11, v11, 0x1

    const-wide/16 v8, 0x0

    goto/16 :goto_4

    :cond_13
    :goto_9
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    .line 285
    :cond_14
    iget-boolean v5, v0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->allResultsAreGlobal:Z

    if-nez v5, :cond_24

    .line 286
    :goto_a
    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$TL_contacts_found;->my_results:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_24

    .line 287
    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$TL_contacts_found;->my_results:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$Peer;

    .line 290
    iget-wide v6, v5, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    const-wide/16 v8, 0x0

    cmp-long v11, v6, v8

    if-eqz v11, :cond_15

    .line 291
    invoke-virtual {v3, v6, v7}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$User;

    move-object v6, v5

    move-object v5, v10

    goto :goto_c

    .line 292
    :cond_15
    iget-wide v6, v5, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:J

    cmp-long v11, v6, v8

    if-eqz v11, :cond_16

    .line 293
    invoke-virtual {v2, v6, v7}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$Chat;

    :goto_b
    move-object v6, v10

    goto :goto_c

    .line 294
    :cond_16
    iget-wide v5, v5, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J

    cmp-long v7, v5, v8

    if-eqz v7, :cond_17

    .line 295
    invoke-virtual {v2, v5, v6}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$Chat;

    goto :goto_b

    :cond_17
    move-object v5, v10

    move-object v6, v5

    .line 298
    :goto_c
    iget-boolean v7, v0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->topicMode:Z

    if-eqz v7, :cond_1b

    if-eqz v5, :cond_18

    .line 301
    iget v7, v0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->currentAccount:I

    invoke-static {v7}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    iget-object v7, v7, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Landroidx/collection/LongSparseArray;

    iget-wide v11, v5, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    neg-long v11, v11

    invoke-virtual {v7, v11, v12}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/tgnet/TLRPC$Dialog;

    goto :goto_d

    :cond_18
    if-eqz v6, :cond_1a

    .line 303
    invoke-static {v6}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v7

    if-nez v7, :cond_23

    invoke-static {v6}, Lorg/telegram/messenger/UserObject;->isReplyUser(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v7

    if-nez v7, :cond_23

    invoke-static {v6}, Lorg/telegram/messenger/MessagesController;->isSupportUser(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v7

    if-eqz v7, :cond_19

    goto/16 :goto_e

    .line 306
    :cond_19
    iget v7, v0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->currentAccount:I

    invoke-static {v7}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    iget-object v7, v7, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Landroidx/collection/LongSparseArray;

    iget-wide v11, v6, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {v7, v11, v12}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/tgnet/TLRPC$Dialog;

    goto :goto_d

    :cond_1a
    move-object v7, v10

    :goto_d
    if-eqz v7, :cond_23

    .line 308
    iget v7, v7, Lorg/telegram/tgnet/TLRPC$Dialog;->folder_id:I

    iget v11, v0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->topicModeFilterFolderId:I

    if-eq v7, v11, :cond_1b

    goto :goto_e

    :cond_1b
    if-eqz v5, :cond_1e

    if-eqz p2, :cond_23

    if-eqz p3, :cond_1c

    .line 314
    invoke-static {v5}, Lorg/telegram/messenger/ChatObject;->canAddBotsToChat(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v6

    if-eqz v6, :cond_23

    :cond_1c
    iget-wide v6, v5, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    neg-long v6, v6

    cmp-long v6, v6, p6

    if-nez v6, :cond_1d

    goto :goto_e

    .line 317
    :cond_1d
    iget-object v6, v0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->localServerSearch:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 318
    iget-object v6, v0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->globalSearchMap:Landroidx/collection/LongSparseArray;

    iget-wide v11, v5, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    neg-long v11, v11

    invoke-virtual {v6, v11, v12, v5}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_e

    :cond_1e
    if-eqz v6, :cond_23

    .line 321
    iget-boolean v5, v0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->crossAccountsForward:Z

    if-eqz v5, :cond_1f

    iget-wide v11, v6, Lorg/telegram/tgnet/TLRPC$User;->id:J

    sget v5, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v13

    cmp-long v5, v11, v13

    if-nez v5, :cond_1f

    goto :goto_e

    :cond_1f
    if-nez p3, :cond_23

    if-nez p4, :cond_20

    .line 325
    iget-boolean v5, v6, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-nez v5, :cond_23

    :cond_20
    if-nez p5, :cond_21

    iget-boolean v5, v6, Lorg/telegram/tgnet/TLRPC$User;->self:Z

    if-nez v5, :cond_23

    :cond_21
    iget-wide v11, v6, Lorg/telegram/tgnet/TLRPC$User;->id:J

    cmp-long v5, v11, p6

    if-nez v5, :cond_22

    goto :goto_e

    .line 328
    :cond_22
    iget-object v5, v0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->localServerSearch:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 329
    iget-object v5, v0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->globalSearchMap:Landroidx/collection/LongSparseArray;

    iget-wide v11, v6, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {v5, v11, v12, v6}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    :cond_23
    :goto_e
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_a

    .line 333
    :cond_24
    invoke-virtual/range {p8 .. p8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->lastFoundUsername:Ljava/lang/String;

    :cond_25
    return-void
.end method

.method private synthetic lambda$queryServerSearch$2(Ljava/util/ArrayList;ILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/ArrayList;ILjava/lang/Runnable;)V
    .locals 1

    .line 385
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, p3, p4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, p2, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 386
    invoke-virtual {p5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 387
    iget-object p3, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->pendingRequestIds:Ljava/util/ArrayList;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_0

    return-void

    .line 390
    :cond_0
    iget-object p3, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->pendingRequestIds:Ljava/util/ArrayList;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 391
    invoke-virtual {p6}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p2

    invoke-virtual {p7}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-ne p2, p3, :cond_4

    const/4 p2, 0x0

    .line 392
    :goto_0
    invoke-virtual {p7}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-ge p2, p3, :cond_2

    .line 393
    invoke-virtual {p7, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/util/Pair;

    iget-object p3, p3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p3, Lorg/telegram/tgnet/RequestDelegate;

    .line 394
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/util/Pair;

    if-nez p4, :cond_1

    goto :goto_1

    .line 397
    :cond_1
    iget-object p5, p4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p5, Lorg/telegram/tgnet/TLObject;

    iget-object p4, p4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p4, Lorg/telegram/tgnet/TLRPC$TL_error;

    invoke-interface {p3, p5, p4}, Lorg/telegram/tgnet/RequestDelegate;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 399
    :cond_2
    invoke-direct {p0}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->removeGroupSearchFromGlobal()V

    .line 400
    iget-object p1, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->localSearchResults:Ljava/util/ArrayList;

    if-eqz p1, :cond_3

    .line 401
    iget-object p2, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->localRecentResults:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->mergeResults(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 403
    :cond_3
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->mergeExcludeResults()V

    .line 404
    iget-object p1, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->delegate:Lorg/telegram/ui/Adapters/SearchAdapterHelper$SearchAdapterHelperDelegate;

    invoke-interface {p1, p8}, Lorg/telegram/ui/Adapters/SearchAdapterHelper$SearchAdapterHelperDelegate;->onDataSetChanged(I)V

    if-eqz p9, :cond_4

    .line 406
    invoke-interface {p9}, Ljava/lang/Runnable;->run()V

    :cond_4
    return-void
.end method

.method private synthetic lambda$queryServerSearch$3(Ljava/util/ArrayList;ILjava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/ArrayList;ILjava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 12

    .line 384
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

    .line 607
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

    .line 415
    iget-object v0, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->globalSearchMap:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0}, Landroidx/collection/LongSparseArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 418
    iget-object v1, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->groupSearchMap:Landroidx/collection/LongSparseArray;

    invoke-virtual {v1}, Landroidx/collection/LongSparseArray;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_2

    .line 419
    iget-object v2, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->groupSearchMap:Landroidx/collection/LongSparseArray;

    invoke-virtual {v2, v0}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    move-result-wide v2

    .line 420
    iget-object v4, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->globalSearchMap:Landroidx/collection/LongSparseArray;

    invoke-virtual {v4, v2, v3}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v2, :cond_1

    .line 422
    iget-object v3, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->globalSearch:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 423
    iget-object v3, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->localServerSearch:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 424
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

    .line 474
    iget-object v0, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->groupSearch:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 475
    iget-object v0, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->groupSearch:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 476
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 477
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLObject;

    .line 478
    instance-of v3, v2, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    if-eqz v3, :cond_0

    .line 479
    iget-object v3, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->groupSearchMap:Landroidx/collection/LongSparseArray;

    move-object v4, v2

    check-cast v4, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:J

    invoke-virtual {v3, v4, v5, v2}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_1

    .line 480
    :cond_0
    instance-of v3, v2, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    if-eqz v3, :cond_1

    .line 481
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

    .line 484
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

    .line 576
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 577
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 578
    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 579
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v2

    .line 580
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v3

    .line 581
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v5, 0x40

    if-eq v4, v5, :cond_1

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v5, 0x23

    if-eq v4, v5, :cond_1

    add-int/lit8 v2, v2, 0x1

    .line 584
    :cond_1
    invoke-interface {p1, v2, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 585
    iget-object v3, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->hashtagsByText:Ljava/util/HashMap;

    if-nez v3, :cond_2

    .line 586
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->hashtagsByText:Ljava/util/HashMap;

    .line 587
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->hashtags:Ljava/util/ArrayList;

    .line 589
    :cond_2
    iget-object v3, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->hashtagsByText:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Adapters/SearchAdapterHelper$HashtagObject;

    if-nez v3, :cond_3

    .line 591
    new-instance v3, Lorg/telegram/ui/Adapters/SearchAdapterHelper$HashtagObject;

    invoke-direct {v3}, Lorg/telegram/ui/Adapters/SearchAdapterHelper$HashtagObject;-><init>()V

    .line 592
    iput-object v2, v3, Lorg/telegram/ui/Adapters/SearchAdapterHelper$HashtagObject;->hashtag:Ljava/lang/String;

    .line 593
    iget-object v4, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->hashtagsByText:Ljava/util/HashMap;

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 595
    :cond_3
    iget-object v2, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->hashtags:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 597
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    long-to-int v2, v4

    iput v2, v3, Lorg/telegram/ui/Adapters/SearchAdapterHelper$HashtagObject;->date:I

    .line 598
    iget-object v2, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->hashtags:Ljava/util/ArrayList;

    invoke-virtual {v2, v1, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/4 v2, 0x1

    goto :goto_0

    :cond_4
    if-eqz v2, :cond_5

    .line 602
    iget-object p1, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->hashtags:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->putRecentHashtags(Ljava/util/ArrayList;)V

    :cond_5
    return-void
.end method

.method public clear()V
    .locals 1

    .line 430
    iget-object v0, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->globalSearch:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 431
    iget-object v0, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->globalSearchMap:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0}, Landroidx/collection/LongSparseArray;->clear()V

    .line 432
    iget-object v0, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->localServerSearch:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public clearRecentHashtags()V
    .locals 2

    .line 678
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->hashtags:Ljava/util/ArrayList;

    .line 679
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->hashtagsByText:Ljava/util/HashMap;

    .line 680
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

    .line 650
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

    .line 662
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

    .line 666
    iget-object v0, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->hashtags:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getLastFoundChannel()Ljava/lang/String;
    .locals 1

    .line 674
    iget-object v0, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->lastFoundChannel:Ljava/lang/String;

    return-object v0
.end method

.method public getLastFoundUsername()Ljava/lang/String;
    .locals 1

    .line 670
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

    .line 658
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

    .line 654
    iget-object v0, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->phonesSearch:Ljava/util/ArrayList;

    return-object v0
.end method

.method public isSearchInProgress()Z
    .locals 1

    .line 131
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

    .line 440
    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->hashtagsLoadedFromDb:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 443
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

    .line 540
    iget-object v0, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->delegate:Lorg/telegram/ui/Adapters/SearchAdapterHelper$SearchAdapterHelperDelegate;

    if-nez v0, :cond_0

    return-void

    .line 543
    :cond_0
    invoke-interface {v0}, Lorg/telegram/ui/Adapters/SearchAdapterHelper$SearchAdapterHelperDelegate;->getExcludeUsers()Landroidx/collection/LongSparseArray;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 545
    invoke-virtual {v0}, Landroidx/collection/LongSparseArray;->size()I

    move-result v2

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_2

    .line 546
    iget-object v4, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->globalSearchMap:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0, v3}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v4, :cond_1

    .line 548
    iget-object v5, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->globalSearch:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 549
    iget-object v5, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->localServerSearch:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 550
    iget-object v5, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->globalSearchMap:Landroidx/collection/LongSparseArray;

    iget-wide v6, v4, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {v5, v6, v7}, Landroidx/collection/LongSparseArray;->remove(J)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 554
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->delegate:Lorg/telegram/ui/Adapters/SearchAdapterHelper$SearchAdapterHelperDelegate;

    invoke-interface {v0}, Lorg/telegram/ui/Adapters/SearchAdapterHelper$SearchAdapterHelperDelegate;->getExcludeCallParticipants()Landroidx/collection/LongSparseArray;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 556
    invoke-virtual {v0}, Landroidx/collection/LongSparseArray;->size()I

    move-result v2

    :goto_1
    if-ge v1, v2, :cond_4

    .line 557
    iget-object v3, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->globalSearchMap:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0, v1}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v3, :cond_3

    .line 559
    iget-object v4, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->globalSearch:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 560
    iget-object v4, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->localServerSearch:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 561
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

    .line 488
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

    .line 492
    iput-object p1, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->localSearchResults:Ljava/util/ArrayList;

    .line 493
    iput-object p2, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->localRecentResults:Ljava/util/ArrayList;

    .line 494
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

    .line 497
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_0
    if-nez p2, :cond_2

    move v2, v0

    goto :goto_1

    .line 498
    :cond_2
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_1
    add-int/2addr v2, v1

    :goto_2
    if-ge v0, v2, :cond_a

    if-ge v0, v1, :cond_3

    .line 501
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    goto :goto_3

    :cond_3
    sub-int v3, v0, v1

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 502
    :goto_3
    instance-of v4, v3, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;

    if-eqz v4, :cond_4

    .line 503
    check-cast v3, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;

    iget-object v3, v3, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;->object:Lorg/telegram/tgnet/TLObject;

    .line 505
    :cond_4
    instance-of v4, v3, Lorg/telegram/ui/Components/ShareAlert$DialogSearchResult;

    if-eqz v4, :cond_5

    .line 506
    check-cast v3, Lorg/telegram/ui/Components/ShareAlert$DialogSearchResult;

    .line 507
    iget-object v3, v3, Lorg/telegram/ui/Components/ShareAlert$DialogSearchResult;->object:Lorg/telegram/tgnet/TLObject;

    .line 509
    :cond_5
    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v4, :cond_8

    .line 510
    check-cast v3, Lorg/telegram/tgnet/TLRPC$User;

    .line 511
    iget-object v4, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->globalSearchMap:Landroidx/collection/LongSparseArray;

    iget-wide v5, v3, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {v4, v5, v6}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v4, :cond_6

    .line 513
    iget-object v5, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->globalSearch:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 514
    iget-object v5, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->localServerSearch:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 515
    iget-object v5, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->globalSearchMap:Landroidx/collection/LongSparseArray;

    iget-wide v6, v4, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {v5, v6, v7}, Landroidx/collection/LongSparseArray;->remove(J)V

    .line 517
    :cond_6
    iget-object v4, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->groupSearchMap:Landroidx/collection/LongSparseArray;

    iget-wide v5, v3, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {v4, v5, v6}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLObject;

    if-eqz v4, :cond_7

    .line 519
    iget-object v5, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->groupSearch:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 520
    iget-object v4, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->groupSearchMap:Landroidx/collection/LongSparseArray;

    iget-wide v5, v3, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {v4, v5, v6}, Landroidx/collection/LongSparseArray;->remove(J)V

    .line 522
    :cond_7
    iget-object v4, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->phoneSearchMap:Landroidx/collection/LongSparseArray;

    iget-wide v5, v3, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {v4, v5, v6}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 524
    iget-object v5, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->phonesSearch:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 525
    iget-object v4, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->phoneSearchMap:Landroidx/collection/LongSparseArray;

    iget-wide v5, v3, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {v4, v5, v6}, Landroidx/collection/LongSparseArray;->remove(J)V

    goto :goto_4

    .line 527
    :cond_8
    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v4, :cond_9

    .line 528
    check-cast v3, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 529
    iget-object v4, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->globalSearchMap:Landroidx/collection/LongSparseArray;

    iget-wide v5, v3, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    neg-long v5, v5

    invoke-virtual {v4, v5, v6}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v3, :cond_9

    .line 531
    iget-object v4, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->globalSearch:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 532
    iget-object v4, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->localServerSearch:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 533
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

    .line 134
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

    .line 137
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

    .line 140
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

    .line 141
    iget v5, v10, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v5

    invoke-virtual {v5, v4, v13}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    goto :goto_0

    .line 143
    :cond_0
    iget-object v3, v10, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->pendingRequestIds:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    if-nez v11, :cond_1

    .line 145
    iget-object v0, v10, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->groupSearch:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 146
    iget-object v0, v10, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->groupSearchMap:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0}, Landroidx/collection/LongSparseArray;->clear()V

    .line 147
    iget-object v0, v10, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->globalSearch:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 148
    iget-object v0, v10, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->globalSearchMap:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0}, Landroidx/collection/LongSparseArray;->clear()V

    .line 149
    iget-object v0, v10, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->localServerSearch:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 150
    iget-object v0, v10, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->phonesSearch:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 151
    iget-object v0, v10, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->phoneSearchMap:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0}, Landroidx/collection/LongSparseArray;->clear()V

    .line 152
    iget-object v0, v10, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->delegate:Lorg/telegram/ui/Adapters/SearchAdapterHelper$SearchAdapterHelperDelegate;

    invoke-interface {v0, v12}, Lorg/telegram/ui/Adapters/SearchAdapterHelper$SearchAdapterHelperDelegate;->onDataSetChanged(I)V

    return-void

    .line 157
    :cond_1
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 158
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v15, 0x3

    const/4 v9, 0x0

    if-lez v3, :cond_6

    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-eqz v3, :cond_5

    .line 160
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;-><init>()V

    if-ne v2, v13, :cond_2

    .line 162
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsAdmins;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsAdmins;-><init>()V

    iput-object v2, v3, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;->filter:Lorg/telegram/tgnet/TLRPC$ChannelParticipantsFilter;

    goto :goto_1

    :cond_2
    if-ne v2, v15, :cond_3

    .line 164
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsBanned;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsBanned;-><init>()V

    iput-object v2, v3, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;->filter:Lorg/telegram/tgnet/TLRPC$ChannelParticipantsFilter;

    goto :goto_1

    :cond_3
    if-nez v2, :cond_4

    .line 166
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsKicked;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsKicked;-><init>()V

    iput-object v2, v3, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;->filter:Lorg/telegram/tgnet/TLRPC$ChannelParticipantsFilter;

    goto :goto_1

    .line 168
    :cond_4
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsSearch;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsSearch;-><init>()V

    iput-object v2, v3, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;->filter:Lorg/telegram/tgnet/TLRPC$ChannelParticipantsFilter;

    .line 170
    :goto_1
    iget-object v2, v3, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;->filter:Lorg/telegram/tgnet/TLRPC$ChannelParticipantsFilter;

    iput-object v11, v2, Lorg/telegram/tgnet/TLRPC$ChannelParticipantsFilter;->q:Ljava/lang/String;

    const/16 v2, 0x32

    .line 171
    iput v2, v3, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;->limit:I

    .line 172
    iput v9, v3, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;->offset:I

    .line 173
    iget v2, v10, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lorg/telegram/messenger/MessagesController;->getInputChannel(J)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v0

    iput-object v0, v3, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 174
    new-instance v0, Landroid/util/Pair;

    new-instance v1, Lorg/telegram/ui/Adapters/SearchAdapterHelper$$ExternalSyntheticLambda7;

    move/from16 v6, p5

    invoke-direct {v1, v10, v11, v6}, Lorg/telegram/ui/Adapters/SearchAdapterHelper$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Adapters/SearchAdapterHelper;Ljava/lang/String;Z)V

    invoke-direct {v0, v3, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    move/from16 v6, p5

    .line 196
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->lastFoundChannel:Ljava/lang/String;

    :goto_2
    move/from16 v16, v9

    goto :goto_3

    :cond_6
    move/from16 v6, p5

    .line 199
    iget-object v0, v10, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->groupSearch:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 200
    iget-object v0, v10, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->groupSearchMap:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0}, Landroidx/collection/LongSparseArray;->clear()V

    move/from16 v16, v13

    :goto_3
    if-eqz p2, :cond_8

    .line 204
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_7

    .line 205
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_contacts_search;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_contacts_search;-><init>()V

    .line 206
    iput-object v11, v7, Lorg/telegram/tgnet/TLRPC$TL_contacts_search;->q:Ljava/lang/String;

    const/16 v0, 0x14

    .line 207
    iput v0, v7, Lorg/telegram/tgnet/TLRPC$TL_contacts_search;->limit:I

    .line 208
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

    .line 338
    :cond_7
    iget-object v0, v10, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->globalSearch:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 339
    iget-object v0, v10, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->globalSearchMap:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0}, Landroidx/collection/LongSparseArray;->clear()V

    .line 340
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

    .line 344
    invoke-virtual {v11, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_f

    .line 345
    iget-object v0, v10, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->phonesSearch:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 346
    iget-object v0, v10, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->phoneSearchMap:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0}, Landroidx/collection/LongSparseArray;->clear()V

    .line 347
    invoke-static/range {p1 .. p1}, Lorg/telegram/PhoneFormat/PhoneFormat;->stripExceptNumbers(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 348
    iget v1, v10, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/ContactsController;->getInstance(I)Lorg/telegram/messenger/ContactsController;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/ContactsController;->contacts:Ljava/util/ArrayList;

    .line 350
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v9, 0x0

    :goto_6
    if-ge v9, v2, :cond_d

    .line 351
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_contact;

    .line 352
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

    .line 356
    :cond_9
    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    if-eqz v5, :cond_c

    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    if-nez v3, :cond_b

    .line 358
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

    .line 360
    :cond_b
    :goto_7
    iget-object v5, v10, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->phonesSearch:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 361
    iget-object v5, v10, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->phoneSearchMap:Landroidx/collection/LongSparseArray;

    iget-wide v6, v4, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {v5, v6, v7, v4}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    :cond_c
    :goto_8
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    :cond_d
    if-nez v3, :cond_e

    .line 365
    iget-object v1, v10, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->phonesSearch:Ljava/util/ArrayList;

    const-string v2, "section"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 366
    iget-object v1, v10, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->phonesSearch:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 367
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

    .line 373
    iget-object v0, v10, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->delegate:Lorg/telegram/ui/Adapters/SearchAdapterHelper$SearchAdapterHelperDelegate;

    move/from16 v1, p11

    invoke-interface {v0, v1}, Lorg/telegram/ui/Adapters/SearchAdapterHelper$SearchAdapterHelperDelegate;->onDataSetChanged(I)V

    goto :goto_9

    :cond_10
    move/from16 v1, p11

    .line 376
    :goto_9
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 377
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v9, v2

    .line 378
    :goto_a
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v9, v2, :cond_11

    .line 380
    invoke-virtual {v14, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 381
    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lorg/telegram/tgnet/TLObject;

    const/4 v4, 0x0

    .line 382
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 383
    new-instance v4, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 384
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

    .line 410
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

    .line 639
    iget-object v0, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->globalSearchMap:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 641
    iget-object v1, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->globalSearch:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 643
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->groupSearchMap:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 645
    iget-object p2, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->groupSearch:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public setAllowGlobalResults(Z)V
    .locals 0

    .line 127
    iput-boolean p1, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->allowGlobalResults:Z

    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/Adapters/SearchAdapterHelper$SearchAdapterHelperDelegate;)V
    .locals 0

    .line 568
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

    .line 690
    iput-object p1, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->hashtags:Ljava/util/ArrayList;

    .line 691
    iput-object p2, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->hashtagsByText:Ljava/util/HashMap;

    const/4 v0, 0x1

    .line 692
    iput-boolean v0, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->hashtagsLoadedFromDb:Z

    .line 693
    iget-object v0, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->delegate:Lorg/telegram/ui/Adapters/SearchAdapterHelper$SearchAdapterHelperDelegate;

    invoke-interface {v0, p1, p2}, Lorg/telegram/ui/Adapters/SearchAdapterHelper$SearchAdapterHelperDelegate;->onSetHashtags(Ljava/util/ArrayList;Ljava/util/HashMap;)V

    return-void
.end method

.method public unloadRecentHashtags()V
    .locals 1

    const/4 v0, 0x0

    .line 436
    iput-boolean v0, p0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->hashtagsLoadedFromDb:Z

    return-void
.end method
