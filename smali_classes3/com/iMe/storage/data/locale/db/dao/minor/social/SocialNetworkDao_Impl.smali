.class public final Lcom/iMe/storage/data/locale/db/dao/minor/social/SocialNetworkDao_Impl;
.super Ljava/lang/Object;
.source "SocialNetworkDao_Impl.java"

# interfaces
.implements Lcom/iMe/storage/data/locale/db/dao/minor/social/SocialNetworkDao;


# instance fields
.field private final __db:Landroidx/room/RoomDatabase;

.field private final __insertionAdapterOfSocialNetworkDb:Landroidx/room/EntityInsertionAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityInsertionAdapter<",
            "Lcom/iMe/storage/data/locale/db/model/social/SocialNetworkDb;",
            ">;"
        }
    .end annotation
.end field

.field private final __preparedStmtOfClearByUserId:Landroidx/room/SharedSQLiteStatement;


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

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/iMe/storage/data/locale/db/dao/minor/social/SocialNetworkDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 37
    new-instance v0, Lcom/iMe/storage/data/locale/db/dao/minor/social/SocialNetworkDao_Impl$1;

    invoke-direct {v0, p0, p1}, Lcom/iMe/storage/data/locale/db/dao/minor/social/SocialNetworkDao_Impl$1;-><init>(Lcom/iMe/storage/data/locale/db/dao/minor/social/SocialNetworkDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/iMe/storage/data/locale/db/dao/minor/social/SocialNetworkDao_Impl;->__insertionAdapterOfSocialNetworkDb:Landroidx/room/EntityInsertionAdapter;

    .line 86
    new-instance v0, Lcom/iMe/storage/data/locale/db/dao/minor/social/SocialNetworkDao_Impl$2;

    invoke-direct {v0, p0, p1}, Lcom/iMe/storage/data/locale/db/dao/minor/social/SocialNetworkDao_Impl$2;-><init>(Lcom/iMe/storage/data/locale/db/dao/minor/social/SocialNetworkDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/iMe/storage/data/locale/db/dao/minor/social/SocialNetworkDao_Impl;->__preparedStmtOfClearByUserId:Landroidx/room/SharedSQLiteStatement;

    return-void
.end method

.method static synthetic access$000(Lcom/iMe/storage/data/locale/db/dao/minor/social/SocialNetworkDao_Impl;)Landroidx/room/SharedSQLiteStatement;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/iMe/storage/data/locale/db/dao/minor/social/SocialNetworkDao_Impl;->__preparedStmtOfClearByUserId:Landroidx/room/SharedSQLiteStatement;

    return-object p0
.end method

.method static synthetic access$100(Lcom/iMe/storage/data/locale/db/dao/minor/social/SocialNetworkDao_Impl;)Landroidx/room/RoomDatabase;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/iMe/storage/data/locale/db/dao/minor/social/SocialNetworkDao_Impl;->__db:Landroidx/room/RoomDatabase;

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

    .line 233
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public clearAndInsertAll(JLjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "profileId",
            "socialNetworks"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Lcom/iMe/storage/data/locale/db/model/social/SocialNetworkDb;",
            ">;)V"
        }
    .end annotation

    .line 109
    iget-object v0, p0, Lcom/iMe/storage/data/locale/db/dao/minor/social/SocialNetworkDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 111
    :try_start_0
    invoke-static {p0, p1, p2, p3}, Lcom/iMe/storage/data/locale/db/dao/minor/social/SocialNetworkDao$-CC;->$default$clearAndInsertAll(Lcom/iMe/storage/data/locale/db/dao/minor/social/SocialNetworkDao;JLjava/util/List;)V

    .line 112
    iget-object p1, p0, Lcom/iMe/storage/data/locale/db/dao/minor/social/SocialNetworkDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    iget-object p1, p0, Lcom/iMe/storage/data/locale/db/dao/minor/social/SocialNetworkDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/iMe/storage/data/locale/db/dao/minor/social/SocialNetworkDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 115
    throw p1
.end method

.method public clearByUserId(J)Lio/reactivex/Completable;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "profileId"
        }
    .end annotation

    .line 120
    new-instance v0, Lcom/iMe/storage/data/locale/db/dao/minor/social/SocialNetworkDao_Impl$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/iMe/storage/data/locale/db/dao/minor/social/SocialNetworkDao_Impl$3;-><init>(Lcom/iMe/storage/data/locale/db/dao/minor/social/SocialNetworkDao_Impl;J)V

    invoke-static {v0}, Lio/reactivex/Completable;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/Completable;

    move-result-object p1

    return-object p1
.end method

.method public getAllByProfileId(J)Lio/reactivex/Single;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "profileId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lio/reactivex/Single<",
            "Ljava/util/List<",
            "Lcom/iMe/storage/data/locale/db/model/social/SocialNetworkDb;",
            ">;>;"
        }
    .end annotation

    const-string v0, "SELECT * FROM social WHERE profileId = ?"

    const/4 v1, 0x1

    .line 142
    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    .line 144
    invoke-virtual {v0, v1, p1, p2}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    .line 145
    new-instance p1, Lcom/iMe/storage/data/locale/db/dao/minor/social/SocialNetworkDao_Impl$4;

    invoke-direct {p1, p0, v0}, Lcom/iMe/storage/data/locale/db/dao/minor/social/SocialNetworkDao_Impl$4;-><init>(Lcom/iMe/storage/data/locale/db/dao/minor/social/SocialNetworkDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    invoke-static {p1}, Landroidx/room/RxRoom;->createSingle(Ljava/util/concurrent/Callable;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1
.end method

.method public insertAll(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "socialNetworks"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/iMe/storage/data/locale/db/model/social/SocialNetworkDb;",
            ">;)V"
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lcom/iMe/storage/data/locale/db/dao/minor/social/SocialNetworkDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 98
    iget-object v0, p0, Lcom/iMe/storage/data/locale/db/dao/minor/social/SocialNetworkDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 100
    :try_start_0
    iget-object v0, p0, Lcom/iMe/storage/data/locale/db/dao/minor/social/SocialNetworkDao_Impl;->__insertionAdapterOfSocialNetworkDb:Landroidx/room/EntityInsertionAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityInsertionAdapter;->insert(Ljava/lang/Iterable;)V

    .line 101
    iget-object p1, p0, Lcom/iMe/storage/data/locale/db/dao/minor/social/SocialNetworkDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    iget-object p1, p0, Lcom/iMe/storage/data/locale/db/dao/minor/social/SocialNetworkDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/iMe/storage/data/locale/db/dao/minor/social/SocialNetworkDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 104
    throw p1
.end method
