.class public final Lcom/iMe/storage/data/locale/db/dao/main/AlbumsDao_Impl;
.super Lcom/iMe/storage/data/locale/db/dao/main/AlbumsDao;
.source "AlbumsDao_Impl.java"


# instance fields
.field private final __db:Landroidx/room/RoomDatabase;

.field private final __insertionAdapterOfAlbumsDb:Landroidx/room/EntityInsertionAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityInsertionAdapter<",
            "Lcom/iMe/storage/data/locale/db/model/cloud/AlbumsDb;",
            ">;"
        }
    .end annotation
.end field

.field private final __preparedStmtOfDeleteAllAlbumsByUserId:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfDeleteByAlbumId:Landroidx/room/SharedSQLiteStatement;


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

    .line 39
    invoke-direct {p0}, Lcom/iMe/storage/data/locale/db/dao/main/AlbumsDao;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/iMe/storage/data/locale/db/dao/main/AlbumsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 41
    new-instance v0, Lcom/iMe/storage/data/locale/db/dao/main/AlbumsDao_Impl$1;

    invoke-direct {v0, p0, p1}, Lcom/iMe/storage/data/locale/db/dao/main/AlbumsDao_Impl$1;-><init>(Lcom/iMe/storage/data/locale/db/dao/main/AlbumsDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/iMe/storage/data/locale/db/dao/main/AlbumsDao_Impl;->__insertionAdapterOfAlbumsDb:Landroidx/room/EntityInsertionAdapter;

    .line 53
    new-instance v0, Lcom/iMe/storage/data/locale/db/dao/main/AlbumsDao_Impl$2;

    invoke-direct {v0, p0, p1}, Lcom/iMe/storage/data/locale/db/dao/main/AlbumsDao_Impl$2;-><init>(Lcom/iMe/storage/data/locale/db/dao/main/AlbumsDao_Impl;Landroidx/room/RoomDatabase;)V

    .line 65
    new-instance v0, Lcom/iMe/storage/data/locale/db/dao/main/AlbumsDao_Impl$3;

    invoke-direct {v0, p0, p1}, Lcom/iMe/storage/data/locale/db/dao/main/AlbumsDao_Impl$3;-><init>(Lcom/iMe/storage/data/locale/db/dao/main/AlbumsDao_Impl;Landroidx/room/RoomDatabase;)V

    .line 79
    new-instance v0, Lcom/iMe/storage/data/locale/db/dao/main/AlbumsDao_Impl$4;

    invoke-direct {v0, p0, p1}, Lcom/iMe/storage/data/locale/db/dao/main/AlbumsDao_Impl$4;-><init>(Lcom/iMe/storage/data/locale/db/dao/main/AlbumsDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/iMe/storage/data/locale/db/dao/main/AlbumsDao_Impl;->__preparedStmtOfDeleteByAlbumId:Landroidx/room/SharedSQLiteStatement;

    .line 86
    new-instance v0, Lcom/iMe/storage/data/locale/db/dao/main/AlbumsDao_Impl$5;

    invoke-direct {v0, p0, p1}, Lcom/iMe/storage/data/locale/db/dao/main/AlbumsDao_Impl$5;-><init>(Lcom/iMe/storage/data/locale/db/dao/main/AlbumsDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/iMe/storage/data/locale/db/dao/main/AlbumsDao_Impl;->__preparedStmtOfDeleteAllAlbumsByUserId:Landroidx/room/SharedSQLiteStatement;

    return-void
.end method

.method static synthetic access$401(Lcom/iMe/storage/data/locale/db/dao/main/AlbumsDao_Impl;JLjava/util/List;)V
    .locals 0

    .line 26
    invoke-super {p0, p1, p2, p3}, Lcom/iMe/storage/data/locale/db/dao/main/AlbumsDao;->restoreBackup(JLjava/util/List;)V

    return-void
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

    .line 313
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public deleteAllAlbumsByUserId(J)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "userId"
        }
    .end annotation

    .line 272
    iget-object v0, p0, Lcom/iMe/storage/data/locale/db/dao/main/AlbumsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 273
    iget-object v0, p0, Lcom/iMe/storage/data/locale/db/dao/main/AlbumsDao_Impl;->__preparedStmtOfDeleteAllAlbumsByUserId:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    const/4 v1, 0x1

    .line 275
    invoke-interface {v0, v1, p1, p2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 276
    iget-object p1, p0, Lcom/iMe/storage/data/locale/db/dao/main/AlbumsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 278
    :try_start_0
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    .line 279
    iget-object p1, p0, Lcom/iMe/storage/data/locale/db/dao/main/AlbumsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 281
    iget-object p1, p0, Lcom/iMe/storage/data/locale/db/dao/main/AlbumsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 282
    iget-object p1, p0, Lcom/iMe/storage/data/locale/db/dao/main/AlbumsDao_Impl;->__preparedStmtOfDeleteAllAlbumsByUserId:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p1, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return-void

    :catchall_0
    move-exception p1

    .line 281
    iget-object p2, p0, Lcom/iMe/storage/data/locale/db/dao/main/AlbumsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 282
    iget-object p2, p0, Lcom/iMe/storage/data/locale/db/dao/main/AlbumsDao_Impl;->__preparedStmtOfDeleteAllAlbumsByUserId:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p2, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 283
    throw p1
.end method

.method public deleteByAlbumId(JJ)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "userId",
            "albumId"
        }
    .end annotation

    .line 254
    iget-object v0, p0, Lcom/iMe/storage/data/locale/db/dao/main/AlbumsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 255
    iget-object v0, p0, Lcom/iMe/storage/data/locale/db/dao/main/AlbumsDao_Impl;->__preparedStmtOfDeleteByAlbumId:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    const/4 v1, 0x1

    .line 257
    invoke-interface {v0, v1, p1, p2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/4 p1, 0x2

    .line 259
    invoke-interface {v0, p1, p3, p4}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 260
    iget-object p1, p0, Lcom/iMe/storage/data/locale/db/dao/main/AlbumsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 262
    :try_start_0
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    .line 263
    iget-object p1, p0, Lcom/iMe/storage/data/locale/db/dao/main/AlbumsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 265
    iget-object p1, p0, Lcom/iMe/storage/data/locale/db/dao/main/AlbumsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 266
    iget-object p1, p0, Lcom/iMe/storage/data/locale/db/dao/main/AlbumsDao_Impl;->__preparedStmtOfDeleteByAlbumId:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p1, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return-void

    :catchall_0
    move-exception p1

    .line 265
    iget-object p2, p0, Lcom/iMe/storage/data/locale/db/dao/main/AlbumsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 266
    iget-object p2, p0, Lcom/iMe/storage/data/locale/db/dao/main/AlbumsDao_Impl;->__preparedStmtOfDeleteByAlbumId:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p2, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 267
    throw p1
.end method

.method public getAllAlbumsForUser(J)Ljava/util/List;
    .locals 5
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
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const-string v0, "SELECT dialogId FROM AlbumsDb WHERE userId = ?"

    const/4 v1, 0x1

    .line 289
    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    .line 291
    invoke-virtual {v0, v1, p1, p2}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    .line 292
    iget-object p1, p0, Lcom/iMe/storage/data/locale/db/dao/main/AlbumsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 293
    iget-object p1, p0, Lcom/iMe/storage/data/locale/db/dao/main/AlbumsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 p2, 0x0

    const/4 v1, 0x0

    invoke-static {p1, v0, p2, v1}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    .line 295
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 296
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 298
    invoke-interface {p1, p2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v1

    goto :goto_1

    .line 301
    :cond_0
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 303
    :goto_1
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 307
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 308
    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v2

    :catchall_0
    move-exception p2

    .line 307
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 308
    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 309
    throw p2
.end method

.method public insert(Lcom/iMe/storage/data/locale/db/model/cloud/AlbumsDb;)J
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "obj"
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lcom/iMe/storage/data/locale/db/dao/main/AlbumsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 98
    iget-object v0, p0, Lcom/iMe/storage/data/locale/db/dao/main/AlbumsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 100
    :try_start_0
    iget-object v0, p0, Lcom/iMe/storage/data/locale/db/dao/main/AlbumsDao_Impl;->__insertionAdapterOfAlbumsDb:Landroidx/room/EntityInsertionAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityInsertionAdapter;->insertAndReturnId(Ljava/lang/Object;)J

    move-result-wide v0

    .line 101
    iget-object p1, p0, Lcom/iMe/storage/data/locale/db/dao/main/AlbumsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    iget-object p1, p0, Lcom/iMe/storage/data/locale/db/dao/main/AlbumsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-wide v0

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/iMe/storage/data/locale/db/dao/main/AlbumsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 105
    throw p1
.end method

.method public bridge synthetic insert(Ljava/lang/Object;)J
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "obj"
        }
    .end annotation

    .line 25
    check-cast p1, Lcom/iMe/storage/data/locale/db/model/cloud/AlbumsDb;

    invoke-virtual {p0, p1}, Lcom/iMe/storage/data/locale/db/dao/main/AlbumsDao_Impl;->insert(Lcom/iMe/storage/data/locale/db/model/cloud/AlbumsDb;)J

    move-result-wide v0

    return-wide v0
.end method

.method public insert(Ljava/util/List;)V
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
            "Lcom/iMe/storage/data/locale/db/model/cloud/AlbumsDb;",
            ">;)V"
        }
    .end annotation

    .line 122
    iget-object v0, p0, Lcom/iMe/storage/data/locale/db/dao/main/AlbumsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 123
    iget-object v0, p0, Lcom/iMe/storage/data/locale/db/dao/main/AlbumsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 125
    :try_start_0
    iget-object v0, p0, Lcom/iMe/storage/data/locale/db/dao/main/AlbumsDao_Impl;->__insertionAdapterOfAlbumsDb:Landroidx/room/EntityInsertionAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityInsertionAdapter;->insert(Ljava/lang/Iterable;)V

    .line 126
    iget-object p1, p0, Lcom/iMe/storage/data/locale/db/dao/main/AlbumsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    iget-object p1, p0, Lcom/iMe/storage/data/locale/db/dao/main/AlbumsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/iMe/storage/data/locale/db/dao/main/AlbumsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 129
    throw p1
.end method

.method public restoreBackup(JLjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "userId",
            "albums"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 243
    iget-object v0, p0, Lcom/iMe/storage/data/locale/db/dao/main/AlbumsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 245
    :try_start_0
    invoke-static {p0, p1, p2, p3}, Lcom/iMe/storage/data/locale/db/dao/main/AlbumsDao_Impl;->access$401(Lcom/iMe/storage/data/locale/db/dao/main/AlbumsDao_Impl;JLjava/util/List;)V

    .line 246
    iget-object p1, p0, Lcom/iMe/storage/data/locale/db/dao/main/AlbumsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 248
    iget-object p1, p0, Lcom/iMe/storage/data/locale/db/dao/main/AlbumsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/iMe/storage/data/locale/db/dao/main/AlbumsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 249
    throw p1
.end method
