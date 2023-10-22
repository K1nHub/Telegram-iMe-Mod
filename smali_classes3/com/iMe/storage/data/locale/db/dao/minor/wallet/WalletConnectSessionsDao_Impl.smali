.class public final Lcom/iMe/storage/data/locale/db/dao/minor/wallet/WalletConnectSessionsDao_Impl;
.super Lcom/iMe/storage/data/locale/db/dao/minor/wallet/WalletConnectSessionsDao;
.source "WalletConnectSessionsDao_Impl.java"


# instance fields
.field private final __db:Landroidx/room/RoomDatabase;

.field private final __insertionAdapterOfWalletConnectSessionDb:Landroidx/room/EntityInsertionAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityInsertionAdapter<",
            "Lcom/iMe/storage/data/locale/db/model/wallet/WalletConnectSessionDb;",
            ">;"
        }
    .end annotation
.end field

.field private final __preparedStmtOfRxDeleteAllSession:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfRxDeleteBySessionKey:Landroidx/room/SharedSQLiteStatement;


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

    .line 44
    invoke-direct {p0}, Lcom/iMe/storage/data/locale/db/dao/minor/wallet/WalletConnectSessionsDao;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/iMe/storage/data/locale/db/dao/minor/wallet/WalletConnectSessionsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 46
    new-instance v0, Lcom/iMe/storage/data/locale/db/dao/minor/wallet/WalletConnectSessionsDao_Impl$1;

    invoke-direct {v0, p0, p1}, Lcom/iMe/storage/data/locale/db/dao/minor/wallet/WalletConnectSessionsDao_Impl$1;-><init>(Lcom/iMe/storage/data/locale/db/dao/minor/wallet/WalletConnectSessionsDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/iMe/storage/data/locale/db/dao/minor/wallet/WalletConnectSessionsDao_Impl;->__insertionAdapterOfWalletConnectSessionDb:Landroidx/room/EntityInsertionAdapter;

    .line 117
    new-instance v0, Lcom/iMe/storage/data/locale/db/dao/minor/wallet/WalletConnectSessionsDao_Impl$2;

    invoke-direct {v0, p0, p1}, Lcom/iMe/storage/data/locale/db/dao/minor/wallet/WalletConnectSessionsDao_Impl$2;-><init>(Lcom/iMe/storage/data/locale/db/dao/minor/wallet/WalletConnectSessionsDao_Impl;Landroidx/room/RoomDatabase;)V

    .line 133
    new-instance v0, Lcom/iMe/storage/data/locale/db/dao/minor/wallet/WalletConnectSessionsDao_Impl$3;

    invoke-direct {v0, p0, p1}, Lcom/iMe/storage/data/locale/db/dao/minor/wallet/WalletConnectSessionsDao_Impl$3;-><init>(Lcom/iMe/storage/data/locale/db/dao/minor/wallet/WalletConnectSessionsDao_Impl;Landroidx/room/RoomDatabase;)V

    .line 210
    new-instance v0, Lcom/iMe/storage/data/locale/db/dao/minor/wallet/WalletConnectSessionsDao_Impl$4;

    invoke-direct {v0, p0, p1}, Lcom/iMe/storage/data/locale/db/dao/minor/wallet/WalletConnectSessionsDao_Impl$4;-><init>(Lcom/iMe/storage/data/locale/db/dao/minor/wallet/WalletConnectSessionsDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/iMe/storage/data/locale/db/dao/minor/wallet/WalletConnectSessionsDao_Impl;->__preparedStmtOfRxDeleteBySessionKey:Landroidx/room/SharedSQLiteStatement;

    .line 217
    new-instance v0, Lcom/iMe/storage/data/locale/db/dao/minor/wallet/WalletConnectSessionsDao_Impl$5;

    invoke-direct {v0, p0, p1}, Lcom/iMe/storage/data/locale/db/dao/minor/wallet/WalletConnectSessionsDao_Impl$5;-><init>(Lcom/iMe/storage/data/locale/db/dao/minor/wallet/WalletConnectSessionsDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/iMe/storage/data/locale/db/dao/minor/wallet/WalletConnectSessionsDao_Impl;->__preparedStmtOfRxDeleteAllSession:Landroidx/room/SharedSQLiteStatement;

    return-void
.end method

.method static synthetic access$000(Lcom/iMe/storage/data/locale/db/dao/minor/wallet/WalletConnectSessionsDao_Impl;)Landroidx/room/RoomDatabase;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/iMe/storage/data/locale/db/dao/minor/wallet/WalletConnectSessionsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    return-object p0
.end method

.method static synthetic access$100(Lcom/iMe/storage/data/locale/db/dao/minor/wallet/WalletConnectSessionsDao_Impl;)Landroidx/room/EntityInsertionAdapter;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/iMe/storage/data/locale/db/dao/minor/wallet/WalletConnectSessionsDao_Impl;->__insertionAdapterOfWalletConnectSessionDb:Landroidx/room/EntityInsertionAdapter;

    return-object p0
.end method

.method static synthetic access$400(Lcom/iMe/storage/data/locale/db/dao/minor/wallet/WalletConnectSessionsDao_Impl;)Landroidx/room/SharedSQLiteStatement;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/iMe/storage/data/locale/db/dao/minor/wallet/WalletConnectSessionsDao_Impl;->__preparedStmtOfRxDeleteBySessionKey:Landroidx/room/SharedSQLiteStatement;

    return-object p0
.end method

.method static synthetic access$500(Lcom/iMe/storage/data/locale/db/dao/minor/wallet/WalletConnectSessionsDao_Impl;)Landroidx/room/SharedSQLiteStatement;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/iMe/storage/data/locale/db/dao/minor/wallet/WalletConnectSessionsDao_Impl;->__preparedStmtOfRxDeleteAllSession:Landroidx/room/SharedSQLiteStatement;

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

    .line 543
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAllSessions(J)Lio/reactivex/Flowable;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "userId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lio/reactivex/Flowable<",
            "Ljava/util/List<",
            "Lcom/iMe/storage/data/locale/db/model/wallet/WalletConnectSessionDb;",
            ">;>;"
        }
    .end annotation

    const-string v0, "SELECT * FROM WalletConnectSessionDb WHERE tgUserId = ?"

    const/4 v1, 0x1

    .line 423
    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    .line 425
    invoke-virtual {v0, v1, p1, p2}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    .line 426
    iget-object p1, p0, Lcom/iMe/storage/data/locale/db/dao/minor/wallet/WalletConnectSessionsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const-string p2, "WalletConnectSessionDb"

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    new-instance v1, Lcom/iMe/storage/data/locale/db/dao/minor/wallet/WalletConnectSessionsDao_Impl$13;

    invoke-direct {v1, p0, v0}, Lcom/iMe/storage/data/locale/db/dao/minor/wallet/WalletConnectSessionsDao_Impl$13;-><init>(Lcom/iMe/storage/data/locale/db/dao/minor/wallet/WalletConnectSessionsDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    const/4 v0, 0x0

    invoke-static {p1, v0, p2, v1}, Landroidx/room/RxRoom;->createFlowable(Landroidx/room/RoomDatabase;Z[Ljava/lang/String;Ljava/util/concurrent/Callable;)Lio/reactivex/Flowable;

    move-result-object p1

    return-object p1
.end method

.method public rxDeleteAllSession(J)Lio/reactivex/Completable;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "userId"
        }
    .end annotation

    .line 401
    new-instance v0, Lcom/iMe/storage/data/locale/db/dao/minor/wallet/WalletConnectSessionsDao_Impl$12;

    invoke-direct {v0, p0, p1, p2}, Lcom/iMe/storage/data/locale/db/dao/minor/wallet/WalletConnectSessionsDao_Impl$12;-><init>(Lcom/iMe/storage/data/locale/db/dao/minor/wallet/WalletConnectSessionsDao_Impl;J)V

    invoke-static {v0}, Lio/reactivex/Completable;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/Completable;

    move-result-object p1

    return-object p1
.end method

.method public rxDeleteBySessionKey(JLjava/lang/String;)Lio/reactivex/Completable;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "userId",
            "sessionKey"
        }
    .end annotation

    .line 374
    new-instance v0, Lcom/iMe/storage/data/locale/db/dao/minor/wallet/WalletConnectSessionsDao_Impl$11;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/iMe/storage/data/locale/db/dao/minor/wallet/WalletConnectSessionsDao_Impl$11;-><init>(Lcom/iMe/storage/data/locale/db/dao/minor/wallet/WalletConnectSessionsDao_Impl;JLjava/lang/String;)V

    invoke-static {v0}, Lio/reactivex/Completable;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/Completable;

    move-result-object p1

    return-object p1
.end method

.method public rxInsert(Lcom/iMe/storage/data/locale/db/model/wallet/WalletConnectSessionDb;)Lio/reactivex/Completable;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "obj"
        }
    .end annotation

    .line 265
    new-instance v0, Lcom/iMe/storage/data/locale/db/dao/minor/wallet/WalletConnectSessionsDao_Impl$6;

    invoke-direct {v0, p0, p1}, Lcom/iMe/storage/data/locale/db/dao/minor/wallet/WalletConnectSessionsDao_Impl$6;-><init>(Lcom/iMe/storage/data/locale/db/dao/minor/wallet/WalletConnectSessionsDao_Impl;Lcom/iMe/storage/data/locale/db/model/wallet/WalletConnectSessionDb;)V

    invoke-static {v0}, Lio/reactivex/Completable;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/Completable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic rxInsert(Ljava/lang/Object;)Lio/reactivex/Completable;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "obj"
        }
    .end annotation

    .line 30
    check-cast p1, Lcom/iMe/storage/data/locale/db/model/wallet/WalletConnectSessionDb;

    invoke-virtual {p0, p1}, Lcom/iMe/storage/data/locale/db/dao/minor/wallet/WalletConnectSessionsDao_Impl;->rxInsert(Lcom/iMe/storage/data/locale/db/model/wallet/WalletConnectSessionDb;)Lio/reactivex/Completable;

    move-result-object p1

    return-object p1
.end method
