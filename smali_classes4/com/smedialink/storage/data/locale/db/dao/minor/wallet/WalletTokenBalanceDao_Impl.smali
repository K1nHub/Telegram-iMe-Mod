.class public final Lcom/smedialink/storage/data/locale/db/dao/minor/wallet/WalletTokenBalanceDao_Impl;
.super Lcom/smedialink/storage/data/locale/db/dao/minor/wallet/WalletTokenBalanceDao;
.source "WalletTokenBalanceDao_Impl.java"


# instance fields
.field private final __db:Landroidx/room/RoomDatabase;

.field private final __insertionAdapterOfWalletTokenBalanceDb:Landroidx/room/EntityInsertionAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityInsertionAdapter<",
            "Lcom/smedialink/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;",
            ">;"
        }
    .end annotation
.end field

.field private final __preparedStmtOfRxDeleteAllWalletBalances:Landroidx/room/SharedSQLiteStatement;


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "__db"
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Lcom/smedialink/storage/data/locale/db/dao/minor/wallet/WalletTokenBalanceDao;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/smedialink/storage/data/locale/db/dao/minor/wallet/WalletTokenBalanceDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 45
    new-instance v0, Lcom/smedialink/storage/data/locale/db/dao/minor/wallet/WalletTokenBalanceDao_Impl$1;

    invoke-direct {v0, p0, p1}, Lcom/smedialink/storage/data/locale/db/dao/minor/wallet/WalletTokenBalanceDao_Impl$1;-><init>(Lcom/smedialink/storage/data/locale/db/dao/minor/wallet/WalletTokenBalanceDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/smedialink/storage/data/locale/db/dao/minor/wallet/WalletTokenBalanceDao_Impl;->__insertionAdapterOfWalletTokenBalanceDb:Landroidx/room/EntityInsertionAdapter;

    .line 70
    new-instance v0, Lcom/smedialink/storage/data/locale/db/dao/minor/wallet/WalletTokenBalanceDao_Impl$2;

    invoke-direct {v0, p0, p1}, Lcom/smedialink/storage/data/locale/db/dao/minor/wallet/WalletTokenBalanceDao_Impl$2;-><init>(Lcom/smedialink/storage/data/locale/db/dao/minor/wallet/WalletTokenBalanceDao_Impl;Landroidx/room/RoomDatabase;)V

    .line 91
    new-instance v0, Lcom/smedialink/storage/data/locale/db/dao/minor/wallet/WalletTokenBalanceDao_Impl$3;

    invoke-direct {v0, p0, p1}, Lcom/smedialink/storage/data/locale/db/dao/minor/wallet/WalletTokenBalanceDao_Impl$3;-><init>(Lcom/smedialink/storage/data/locale/db/dao/minor/wallet/WalletTokenBalanceDao_Impl;Landroidx/room/RoomDatabase;)V

    .line 127
    new-instance v0, Lcom/smedialink/storage/data/locale/db/dao/minor/wallet/WalletTokenBalanceDao_Impl$4;

    invoke-direct {v0, p0, p1}, Lcom/smedialink/storage/data/locale/db/dao/minor/wallet/WalletTokenBalanceDao_Impl$4;-><init>(Lcom/smedialink/storage/data/locale/db/dao/minor/wallet/WalletTokenBalanceDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/smedialink/storage/data/locale/db/dao/minor/wallet/WalletTokenBalanceDao_Impl;->__preparedStmtOfRxDeleteAllWalletBalances:Landroidx/room/SharedSQLiteStatement;

    return-void
.end method

.method static synthetic access$000(Lcom/smedialink/storage/data/locale/db/dao/minor/wallet/WalletTokenBalanceDao_Impl;)Landroidx/room/RoomDatabase;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/smedialink/storage/data/locale/db/dao/minor/wallet/WalletTokenBalanceDao_Impl;->__db:Landroidx/room/RoomDatabase;

    return-object p0
.end method

.method static synthetic access$100(Lcom/smedialink/storage/data/locale/db/dao/minor/wallet/WalletTokenBalanceDao_Impl;)Landroidx/room/EntityInsertionAdapter;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/smedialink/storage/data/locale/db/dao/minor/wallet/WalletTokenBalanceDao_Impl;->__insertionAdapterOfWalletTokenBalanceDb:Landroidx/room/EntityInsertionAdapter;

    return-object p0
.end method

.method static synthetic access$400(Lcom/smedialink/storage/data/locale/db/dao/minor/wallet/WalletTokenBalanceDao_Impl;)Landroidx/room/SharedSQLiteStatement;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/smedialink/storage/data/locale/db/dao/minor/wallet/WalletTokenBalanceDao_Impl;->__preparedStmtOfRxDeleteAllWalletBalances:Landroidx/room/SharedSQLiteStatement;

    return-object p0
.end method

.method public static getRequiredConverters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 570
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAllWalletBalances(JLjava/lang/String;)Lio/reactivex/Single;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "userId",
            "networkType"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Single<",
            "Ljava/util/List<",
            "Lcom/smedialink/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;",
            ">;>;"
        }
    .end annotation

    const-string v0, "SELECT * FROM WalletTokenBalanceDb WHERE tgUserId = ? AND networkType = ?"

    const/4 v1, 0x2

    .line 313
    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    const/4 v2, 0x1

    .line 315
    invoke-virtual {v0, v2, p1, p2}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    if-nez p3, :cond_0

    .line 318
    invoke-virtual {v0, v1}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    .line 320
    :cond_0
    invoke-virtual {v0, v1, p3}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 322
    :goto_0
    new-instance p1, Lcom/smedialink/storage/data/locale/db/dao/minor/wallet/WalletTokenBalanceDao_Impl$11;

    invoke-direct {p1, p0, v0}, Lcom/smedialink/storage/data/locale/db/dao/minor/wallet/WalletTokenBalanceDao_Impl$11;-><init>(Lcom/smedialink/storage/data/locale/db/dao/minor/wallet/WalletTokenBalanceDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    invoke-static {p1}, Landroidx/room/RxRoom;->createSingle(Ljava/util/concurrent/Callable;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1
.end method

.method public getTokensBalances(JLjava/lang/String;Ljava/util/List;)Lio/reactivex/Single;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "userId",
            "networkType",
            "codes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lio/reactivex/Single<",
            "Ljava/util/List<",
            "Lcom/smedialink/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;",
            ">;>;"
        }
    .end annotation

    .line 381
    invoke-static {}, Landroidx/room/util/StringUtil;->newStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "SELECT * FROM WalletTokenBalanceDb WHERE tgUserId = "

    .line 382
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "?"

    .line 383
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " AND networkType = "

    .line 384
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " AND coinCode IN ("

    .line 386
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v1

    .line 388
    invoke-static {v0, v1}, Landroidx/room/util/StringUtil;->appendPlaceholders(Ljava/lang/StringBuilder;I)V

    const-string v2, ")"

    .line 389
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    add-int/2addr v1, v2

    .line 392
    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    const/4 v1, 0x1

    .line 394
    invoke-virtual {v0, v1, p1, p2}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    if-nez p3, :cond_0

    .line 397
    invoke-virtual {v0, v2}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    .line 399
    :cond_0
    invoke-virtual {v0, v2, p3}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    :goto_0
    const/4 p1, 0x3

    .line 402
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    if-nez p3, :cond_1

    .line 404
    invoke-virtual {v0, p1}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_2

    .line 406
    :cond_1
    invoke-virtual {v0, p1, p3}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    :goto_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 410
    :cond_2
    new-instance p1, Lcom/smedialink/storage/data/locale/db/dao/minor/wallet/WalletTokenBalanceDao_Impl$12;

    invoke-direct {p1, p0, v0}, Lcom/smedialink/storage/data/locale/db/dao/minor/wallet/WalletTokenBalanceDao_Impl$12;-><init>(Lcom/smedialink/storage/data/locale/db/dao/minor/wallet/WalletTokenBalanceDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    invoke-static {p1}, Landroidx/room/RxRoom;->createSingle(Ljava/util/concurrent/Callable;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1
.end method

.method public rxDeleteAllWalletBalances(JLjava/lang/String;)Lio/reactivex/Completable;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "userId",
            "networkType"
        }
    .end annotation

    .line 284
    new-instance v0, Lcom/smedialink/storage/data/locale/db/dao/minor/wallet/WalletTokenBalanceDao_Impl$10;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/smedialink/storage/data/locale/db/dao/minor/wallet/WalletTokenBalanceDao_Impl$10;-><init>(Lcom/smedialink/storage/data/locale/db/dao/minor/wallet/WalletTokenBalanceDao_Impl;JLjava/lang/String;)V

    invoke-static {v0}, Lio/reactivex/Completable;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/Completable;

    move-result-object p1

    return-object p1
.end method

.method public rxDeleteByCodes(JLjava/util/List;)Lio/reactivex/Completable;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "userId",
            "codes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lio/reactivex/Completable;"
        }
    .end annotation

    .line 534
    new-instance v0, Lcom/smedialink/storage/data/locale/db/dao/minor/wallet/WalletTokenBalanceDao_Impl$14;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/smedialink/storage/data/locale/db/dao/minor/wallet/WalletTokenBalanceDao_Impl$14;-><init>(Lcom/smedialink/storage/data/locale/db/dao/minor/wallet/WalletTokenBalanceDao_Impl;Ljava/util/List;J)V

    invoke-static {v0}, Lio/reactivex/Completable;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/Completable;

    move-result-object p1

    return-object p1
.end method

.method public rxInsert(Ljava/util/List;)Lio/reactivex/Completable;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "obj"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/smedialink/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;",
            ">;)",
            "Lio/reactivex/Completable;"
        }
    .end annotation

    .line 209
    new-instance v0, Lcom/smedialink/storage/data/locale/db/dao/minor/wallet/WalletTokenBalanceDao_Impl$7;

    invoke-direct {v0, p0, p1}, Lcom/smedialink/storage/data/locale/db/dao/minor/wallet/WalletTokenBalanceDao_Impl$7;-><init>(Lcom/smedialink/storage/data/locale/db/dao/minor/wallet/WalletTokenBalanceDao_Impl;Ljava/util/List;)V

    invoke-static {v0}, Lio/reactivex/Completable;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/Completable;

    move-result-object p1

    return-object p1
.end method
