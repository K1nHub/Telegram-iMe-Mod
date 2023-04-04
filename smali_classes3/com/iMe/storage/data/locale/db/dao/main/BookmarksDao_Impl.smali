.class public final Lcom/iMe/storage/data/locale/db/dao/main/BookmarksDao_Impl;
.super Lcom/iMe/storage/data/locale/db/dao/main/BookmarksDao;
.source "BookmarksDao_Impl.java"


# instance fields
.field private final __db:Landroidx/room/RoomDatabase;

.field private final __insertionAdapterOfBookmarksDb:Landroidx/room/EntityInsertionAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityInsertionAdapter<",
            "Lcom/iMe/storage/data/locale/db/model/bookmarks/BookmarksDb;",
            ">;"
        }
    .end annotation
.end field

.field private final __preparedStmtOfDeleteAllBookmarksByUserId:Landroidx/room/SharedSQLiteStatement;


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

    .line 40
    invoke-direct {p0}, Lcom/iMe/storage/data/locale/db/dao/main/BookmarksDao;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/iMe/storage/data/locale/db/dao/main/BookmarksDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 42
    new-instance v0, Lcom/iMe/storage/data/locale/db/dao/main/BookmarksDao_Impl$1;

    invoke-direct {v0, p0, p1}, Lcom/iMe/storage/data/locale/db/dao/main/BookmarksDao_Impl$1;-><init>(Lcom/iMe/storage/data/locale/db/dao/main/BookmarksDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/iMe/storage/data/locale/db/dao/main/BookmarksDao_Impl;->__insertionAdapterOfBookmarksDb:Landroidx/room/EntityInsertionAdapter;

    .line 60
    new-instance v0, Lcom/iMe/storage/data/locale/db/dao/main/BookmarksDao_Impl$2;

    invoke-direct {v0, p0, p1}, Lcom/iMe/storage/data/locale/db/dao/main/BookmarksDao_Impl$2;-><init>(Lcom/iMe/storage/data/locale/db/dao/main/BookmarksDao_Impl;Landroidx/room/RoomDatabase;)V

    .line 72
    new-instance v0, Lcom/iMe/storage/data/locale/db/dao/main/BookmarksDao_Impl$3;

    invoke-direct {v0, p0, p1}, Lcom/iMe/storage/data/locale/db/dao/main/BookmarksDao_Impl$3;-><init>(Lcom/iMe/storage/data/locale/db/dao/main/BookmarksDao_Impl;Landroidx/room/RoomDatabase;)V

    .line 92
    new-instance v0, Lcom/iMe/storage/data/locale/db/dao/main/BookmarksDao_Impl$4;

    invoke-direct {v0, p0, p1}, Lcom/iMe/storage/data/locale/db/dao/main/BookmarksDao_Impl$4;-><init>(Lcom/iMe/storage/data/locale/db/dao/main/BookmarksDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/iMe/storage/data/locale/db/dao/main/BookmarksDao_Impl;->__preparedStmtOfDeleteAllBookmarksByUserId:Landroidx/room/SharedSQLiteStatement;

    return-void
.end method

.method static synthetic access$401(Lcom/iMe/storage/data/locale/db/dao/main/BookmarksDao_Impl;JLjava/util/List;)V
    .locals 0

    .line 29
    invoke-super {p0, p1, p2, p3}, Lcom/iMe/storage/data/locale/db/dao/main/BookmarksDao;->restoreBackup(JLjava/util/List;)V

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

    .line 312
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public deleteAllBookmarksByUserId(J)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "userId"
        }
    .end annotation

    .line 260
    iget-object v0, p0, Lcom/iMe/storage/data/locale/db/dao/main/BookmarksDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 261
    iget-object v0, p0, Lcom/iMe/storage/data/locale/db/dao/main/BookmarksDao_Impl;->__preparedStmtOfDeleteAllBookmarksByUserId:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    const/4 v1, 0x1

    .line 263
    invoke-interface {v0, v1, p1, p2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 264
    iget-object p1, p0, Lcom/iMe/storage/data/locale/db/dao/main/BookmarksDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 266
    :try_start_0
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    .line 267
    iget-object p1, p0, Lcom/iMe/storage/data/locale/db/dao/main/BookmarksDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 269
    iget-object p1, p0, Lcom/iMe/storage/data/locale/db/dao/main/BookmarksDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 270
    iget-object p1, p0, Lcom/iMe/storage/data/locale/db/dao/main/BookmarksDao_Impl;->__preparedStmtOfDeleteAllBookmarksByUserId:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p1, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return-void

    :catchall_0
    move-exception p1

    .line 269
    iget-object p2, p0, Lcom/iMe/storage/data/locale/db/dao/main/BookmarksDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 270
    iget-object p2, p0, Lcom/iMe/storage/data/locale/db/dao/main/BookmarksDao_Impl;->__preparedStmtOfDeleteAllBookmarksByUserId:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p2, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 271
    throw p1
.end method

.method public getAllBookmarksForUser(J)Ljava/util/List;
    .locals 12
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
            "Lcom/iMe/storage/data/locale/db/model/bookmarks/BookmarksDb;",
            ">;"
        }
    .end annotation

    const-string v0, "SELECT * FROM BookmarksDb WHERE userId = ?"

    const/4 v1, 0x1

    .line 277
    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    .line 279
    invoke-virtual {v0, v1, p1, p2}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    .line 280
    iget-object p1, p0, Lcom/iMe/storage/data/locale/db/dao/main/BookmarksDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 281
    iget-object p1, p0, Lcom/iMe/storage/data/locale/db/dao/main/BookmarksDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 p2, 0x0

    const/4 v1, 0x0

    invoke-static {p1, v0, p2, v1}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    :try_start_0
    const-string p2, "messageIds"

    .line 283
    invoke-static {p1, p2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result p2

    const-string v2, "dialogId"

    .line 284
    invoke-static {p1, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    const-string v3, "userId"

    .line 285
    invoke-static {p1, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    .line 286
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 287
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 291
    invoke-interface {p1, p2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v5, v1

    goto :goto_1

    .line 294
    :cond_0
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 296
    :goto_1
    invoke-static {v5}, Lcom/iMe/storage/data/locale/db/database/converter/AppMainConverter;->convertStringToIntList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 298
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 300
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 301
    new-instance v5, Lcom/iMe/storage/data/locale/db/model/bookmarks/BookmarksDb;

    move-object v6, v5

    invoke-direct/range {v6 .. v11}, Lcom/iMe/storage/data/locale/db/model/bookmarks/BookmarksDb;-><init>(Ljava/util/List;JJ)V

    .line 302
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 306
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 307
    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v4

    :catchall_0
    move-exception p2

    .line 306
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 307
    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 308
    throw p2
.end method

.method public insert(Lcom/iMe/storage/data/locale/db/model/bookmarks/BookmarksDb;)J
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "obj"
        }
    .end annotation

    .line 103
    iget-object v0, p0, Lcom/iMe/storage/data/locale/db/dao/main/BookmarksDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 104
    iget-object v0, p0, Lcom/iMe/storage/data/locale/db/dao/main/BookmarksDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 106
    :try_start_0
    iget-object v0, p0, Lcom/iMe/storage/data/locale/db/dao/main/BookmarksDao_Impl;->__insertionAdapterOfBookmarksDb:Landroidx/room/EntityInsertionAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityInsertionAdapter;->insertAndReturnId(Ljava/lang/Object;)J

    move-result-wide v0

    .line 107
    iget-object p1, p0, Lcom/iMe/storage/data/locale/db/dao/main/BookmarksDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    iget-object p1, p0, Lcom/iMe/storage/data/locale/db/dao/main/BookmarksDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-wide v0

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/iMe/storage/data/locale/db/dao/main/BookmarksDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 111
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

    .line 28
    check-cast p1, Lcom/iMe/storage/data/locale/db/model/bookmarks/BookmarksDb;

    invoke-virtual {p0, p1}, Lcom/iMe/storage/data/locale/db/dao/main/BookmarksDao_Impl;->insert(Lcom/iMe/storage/data/locale/db/model/bookmarks/BookmarksDb;)J

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
            "Lcom/iMe/storage/data/locale/db/model/bookmarks/BookmarksDb;",
            ">;)V"
        }
    .end annotation

    .line 128
    iget-object v0, p0, Lcom/iMe/storage/data/locale/db/dao/main/BookmarksDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 129
    iget-object v0, p0, Lcom/iMe/storage/data/locale/db/dao/main/BookmarksDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 131
    :try_start_0
    iget-object v0, p0, Lcom/iMe/storage/data/locale/db/dao/main/BookmarksDao_Impl;->__insertionAdapterOfBookmarksDb:Landroidx/room/EntityInsertionAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityInsertionAdapter;->insert(Ljava/lang/Iterable;)V

    .line 132
    iget-object p1, p0, Lcom/iMe/storage/data/locale/db/dao/main/BookmarksDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    iget-object p1, p0, Lcom/iMe/storage/data/locale/db/dao/main/BookmarksDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/iMe/storage/data/locale/db/dao/main/BookmarksDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 135
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
            "settings"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/bookmarks/BookmarksModel;",
            ">;)V"
        }
    .end annotation

    .line 249
    iget-object v0, p0, Lcom/iMe/storage/data/locale/db/dao/main/BookmarksDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 251
    :try_start_0
    invoke-static {p0, p1, p2, p3}, Lcom/iMe/storage/data/locale/db/dao/main/BookmarksDao_Impl;->access$401(Lcom/iMe/storage/data/locale/db/dao/main/BookmarksDao_Impl;JLjava/util/List;)V

    .line 252
    iget-object p1, p0, Lcom/iMe/storage/data/locale/db/dao/main/BookmarksDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 254
    iget-object p1, p0, Lcom/iMe/storage/data/locale/db/dao/main/BookmarksDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/iMe/storage/data/locale/db/dao/main/BookmarksDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 255
    throw p1
.end method
