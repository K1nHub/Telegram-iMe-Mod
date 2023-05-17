.class public final Lcom/iMe/storage/data/locale/db/dao/main/HistoryDialogDao_Impl;
.super Lcom/iMe/storage/data/locale/db/dao/main/HistoryDialogDao;
.source "HistoryDialogDao_Impl.java"


# instance fields
.field private final __db:Landroidx/room/RoomDatabase;

.field private final __insertionAdapterOfHistoryDialogDb:Landroidx/room/EntityInsertionAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityInsertionAdapter<",
            "Lcom/iMe/storage/data/locale/db/model/recent_chats/HistoryDialogDb;",
            ">;"
        }
    .end annotation
.end field

.field private final __preparedStmtOfClearRecentChatHistory:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfRemoveAllRecentChatHistory:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfRemoveRecentChatHistory:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfUpdatePinned:Landroidx/room/SharedSQLiteStatement;


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

    .line 48
    invoke-direct {p0}, Lcom/iMe/storage/data/locale/db/dao/main/HistoryDialogDao;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/iMe/storage/data/locale/db/dao/main/HistoryDialogDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 50
    new-instance v0, Lcom/iMe/storage/data/locale/db/dao/main/HistoryDialogDao_Impl$1;

    invoke-direct {v0, p0, p1}, Lcom/iMe/storage/data/locale/db/dao/main/HistoryDialogDao_Impl$1;-><init>(Lcom/iMe/storage/data/locale/db/dao/main/HistoryDialogDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/iMe/storage/data/locale/db/dao/main/HistoryDialogDao_Impl;->__insertionAdapterOfHistoryDialogDb:Landroidx/room/EntityInsertionAdapter;

    .line 65
    new-instance v0, Lcom/iMe/storage/data/locale/db/dao/main/HistoryDialogDao_Impl$2;

    invoke-direct {v0, p0, p1}, Lcom/iMe/storage/data/locale/db/dao/main/HistoryDialogDao_Impl$2;-><init>(Lcom/iMe/storage/data/locale/db/dao/main/HistoryDialogDao_Impl;Landroidx/room/RoomDatabase;)V

    .line 77
    new-instance v0, Lcom/iMe/storage/data/locale/db/dao/main/HistoryDialogDao_Impl$3;

    invoke-direct {v0, p0, p1}, Lcom/iMe/storage/data/locale/db/dao/main/HistoryDialogDao_Impl$3;-><init>(Lcom/iMe/storage/data/locale/db/dao/main/HistoryDialogDao_Impl;Landroidx/room/RoomDatabase;)V

    .line 94
    new-instance v0, Lcom/iMe/storage/data/locale/db/dao/main/HistoryDialogDao_Impl$4;

    invoke-direct {v0, p0, p1}, Lcom/iMe/storage/data/locale/db/dao/main/HistoryDialogDao_Impl$4;-><init>(Lcom/iMe/storage/data/locale/db/dao/main/HistoryDialogDao_Impl;Landroidx/room/RoomDatabase;)V

    .line 101
    new-instance v0, Lcom/iMe/storage/data/locale/db/dao/main/HistoryDialogDao_Impl$5;

    invoke-direct {v0, p0, p1}, Lcom/iMe/storage/data/locale/db/dao/main/HistoryDialogDao_Impl$5;-><init>(Lcom/iMe/storage/data/locale/db/dao/main/HistoryDialogDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/iMe/storage/data/locale/db/dao/main/HistoryDialogDao_Impl;->__preparedStmtOfClearRecentChatHistory:Landroidx/room/SharedSQLiteStatement;

    .line 108
    new-instance v0, Lcom/iMe/storage/data/locale/db/dao/main/HistoryDialogDao_Impl$6;

    invoke-direct {v0, p0, p1}, Lcom/iMe/storage/data/locale/db/dao/main/HistoryDialogDao_Impl$6;-><init>(Lcom/iMe/storage/data/locale/db/dao/main/HistoryDialogDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/iMe/storage/data/locale/db/dao/main/HistoryDialogDao_Impl;->__preparedStmtOfRemoveRecentChatHistory:Landroidx/room/SharedSQLiteStatement;

    .line 115
    new-instance v0, Lcom/iMe/storage/data/locale/db/dao/main/HistoryDialogDao_Impl$7;

    invoke-direct {v0, p0, p1}, Lcom/iMe/storage/data/locale/db/dao/main/HistoryDialogDao_Impl$7;-><init>(Lcom/iMe/storage/data/locale/db/dao/main/HistoryDialogDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/iMe/storage/data/locale/db/dao/main/HistoryDialogDao_Impl;->__preparedStmtOfUpdatePinned:Landroidx/room/SharedSQLiteStatement;

    .line 122
    new-instance v0, Lcom/iMe/storage/data/locale/db/dao/main/HistoryDialogDao_Impl$8;

    invoke-direct {v0, p0, p1}, Lcom/iMe/storage/data/locale/db/dao/main/HistoryDialogDao_Impl$8;-><init>(Lcom/iMe/storage/data/locale/db/dao/main/HistoryDialogDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/iMe/storage/data/locale/db/dao/main/HistoryDialogDao_Impl;->__preparedStmtOfRemoveAllRecentChatHistory:Landroidx/room/SharedSQLiteStatement;

    return-void
.end method

.method static synthetic access$401(Lcom/iMe/storage/data/locale/db/dao/main/HistoryDialogDao_Impl;JLjava/util/List;)V
    .locals 0

    .line 29
    invoke-super {p0, p1, p2, p3}, Lcom/iMe/storage/data/locale/db/dao/main/HistoryDialogDao;->restoreBackup(JLjava/util/List;)V

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

    .line 471
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public clearRecentChatHistory(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "isPinned"
        }
    .end annotation

    .line 308
    iget-object v0, p0, Lcom/iMe/storage/data/locale/db/dao/main/HistoryDialogDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 309
    iget-object v0, p0, Lcom/iMe/storage/data/locale/db/dao/main/HistoryDialogDao_Impl;->__preparedStmtOfClearRecentChatHistory:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    int-to-long v1, p1

    const/4 p1, 0x1

    .line 312
    invoke-interface {v0, p1, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 313
    iget-object p1, p0, Lcom/iMe/storage/data/locale/db/dao/main/HistoryDialogDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 315
    :try_start_0
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    .line 316
    iget-object p1, p0, Lcom/iMe/storage/data/locale/db/dao/main/HistoryDialogDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 318
    iget-object p1, p0, Lcom/iMe/storage/data/locale/db/dao/main/HistoryDialogDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 319
    iget-object p1, p0, Lcom/iMe/storage/data/locale/db/dao/main/HistoryDialogDao_Impl;->__preparedStmtOfClearRecentChatHistory:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p1, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return-void

    :catchall_0
    move-exception p1

    .line 318
    iget-object v1, p0, Lcom/iMe/storage/data/locale/db/dao/main/HistoryDialogDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 319
    iget-object v1, p0, Lcom/iMe/storage/data/locale/db/dao/main/HistoryDialogDao_Impl;->__preparedStmtOfClearRecentChatHistory:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v1, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 320
    throw p1
.end method

.method public deleteByIdList(Ljava/util/List;J)I
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "idList",
            "userId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;J)I"
        }
    .end annotation

    .line 440
    iget-object v0, p0, Lcom/iMe/storage/data/locale/db/dao/main/HistoryDialogDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 441
    invoke-static {}, Landroidx/room/util/StringUtil;->newStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "DELETE from HistoryDialogDb WHERE dialogId IN ("

    .line 442
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 444
    invoke-static {v0, v1}, Landroidx/room/util/StringUtil;->appendPlaceholders(Ljava/lang/StringBuilder;I)V

    const-string v2, ") AND userId = "

    .line 445
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "?"

    .line 446
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 448
    iget-object v2, p0, Lcom/iMe/storage/data/locale/db/dao/main/HistoryDialogDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2, v0}, Landroidx/room/RoomDatabase;->compileStatement(Ljava/lang/String;)Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    .line 450
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x1

    move v3, v2

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    if-nez v4, :cond_0

    .line 452
    invoke-interface {v0, v3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_1

    .line 454
    :cond_0
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-interface {v0, v3, v4, v5}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    add-int/2addr v1, v2

    .line 459
    invoke-interface {v0, v1, p2, p3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 460
    iget-object p1, p0, Lcom/iMe/storage/data/locale/db/dao/main/HistoryDialogDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 462
    :try_start_0
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    move-result p1

    .line 463
    iget-object p2, p0, Lcom/iMe/storage/data/locale/db/dao/main/HistoryDialogDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 466
    iget-object p2, p0, Lcom/iMe/storage/data/locale/db/dao/main/HistoryDialogDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->endTransaction()V

    return p1

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/iMe/storage/data/locale/db/dao/main/HistoryDialogDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 467
    throw p1
.end method

.method public getHistoryDialog(J)Ljava/util/List;
    .locals 19
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
            "Lcom/iMe/storage/data/locale/db/model/recent_chats/HistoryDialogDb;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v0, "SELECT * FROM HistoryDialogDb WHERE userId = ?"

    const/4 v2, 0x1

    .line 405
    invoke-static {v0, v2}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v3

    move-wide/from16 v4, p1

    .line 407
    invoke-virtual {v3, v2, v4, v5}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    .line 408
    iget-object v0, v1, Lcom/iMe/storage/data/locale/db/dao/main/HistoryDialogDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 409
    iget-object v0, v1, Lcom/iMe/storage/data/locale/db/dao/main/HistoryDialogDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v0, v3, v4, v5}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v5

    :try_start_0
    const-string v0, "userId"

    .line 411
    invoke-static {v5, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v6, "dialogId"

    .line 412
    invoke-static {v5, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "creationDate"

    .line 413
    invoke-static {v5, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "isPinned"

    .line 414
    invoke-static {v5, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    .line 415
    new-instance v9, Ljava/util/ArrayList;

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v10

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 416
    :goto_0
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 419
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 421
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 423
    invoke-interface {v5, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 426
    invoke-interface {v5, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    if-eqz v10, :cond_0

    move/from16 v18, v2

    goto :goto_1

    :cond_0
    move/from16 v18, v4

    .line 428
    :goto_1
    new-instance v10, Lcom/iMe/storage/data/locale/db/model/recent_chats/HistoryDialogDb;

    move-object v11, v10

    invoke-direct/range {v11 .. v18}, Lcom/iMe/storage/data/locale/db/model/recent_chats/HistoryDialogDb;-><init>(JJJZ)V

    .line 429
    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 433
    :cond_1
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 434
    invoke-virtual {v3}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v9

    :catchall_0
    move-exception v0

    .line 433
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 434
    invoke-virtual {v3}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 435
    throw v0
.end method

.method public insert(Lcom/iMe/storage/data/locale/db/model/recent_chats/HistoryDialogDb;)J
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "obj"
        }
    .end annotation

    .line 133
    iget-object v0, p0, Lcom/iMe/storage/data/locale/db/dao/main/HistoryDialogDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 134
    iget-object v0, p0, Lcom/iMe/storage/data/locale/db/dao/main/HistoryDialogDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 136
    :try_start_0
    iget-object v0, p0, Lcom/iMe/storage/data/locale/db/dao/main/HistoryDialogDao_Impl;->__insertionAdapterOfHistoryDialogDb:Landroidx/room/EntityInsertionAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityInsertionAdapter;->insertAndReturnId(Ljava/lang/Object;)J

    move-result-wide v0

    .line 137
    iget-object p1, p0, Lcom/iMe/storage/data/locale/db/dao/main/HistoryDialogDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    iget-object p1, p0, Lcom/iMe/storage/data/locale/db/dao/main/HistoryDialogDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-wide v0

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/iMe/storage/data/locale/db/dao/main/HistoryDialogDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 141
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
    check-cast p1, Lcom/iMe/storage/data/locale/db/model/recent_chats/HistoryDialogDb;

    invoke-virtual {p0, p1}, Lcom/iMe/storage/data/locale/db/dao/main/HistoryDialogDao_Impl;->insert(Lcom/iMe/storage/data/locale/db/model/recent_chats/HistoryDialogDb;)J

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
            "Lcom/iMe/storage/data/locale/db/model/recent_chats/HistoryDialogDb;",
            ">;)V"
        }
    .end annotation

    .line 158
    iget-object v0, p0, Lcom/iMe/storage/data/locale/db/dao/main/HistoryDialogDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 159
    iget-object v0, p0, Lcom/iMe/storage/data/locale/db/dao/main/HistoryDialogDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 161
    :try_start_0
    iget-object v0, p0, Lcom/iMe/storage/data/locale/db/dao/main/HistoryDialogDao_Impl;->__insertionAdapterOfHistoryDialogDb:Landroidx/room/EntityInsertionAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityInsertionAdapter;->insert(Ljava/lang/Iterable;)V

    .line 162
    iget-object p1, p0, Lcom/iMe/storage/data/locale/db/dao/main/HistoryDialogDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    iget-object p1, p0, Lcom/iMe/storage/data/locale/db/dao/main/HistoryDialogDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/iMe/storage/data/locale/db/dao/main/HistoryDialogDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 165
    throw p1
.end method

.method public removeAllRecentChatHistory(J)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "userId"
        }
    .end annotation

    .line 364
    iget-object v0, p0, Lcom/iMe/storage/data/locale/db/dao/main/HistoryDialogDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 365
    iget-object v0, p0, Lcom/iMe/storage/data/locale/db/dao/main/HistoryDialogDao_Impl;->__preparedStmtOfRemoveAllRecentChatHistory:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    const/4 v1, 0x1

    .line 367
    invoke-interface {v0, v1, p1, p2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 368
    iget-object p1, p0, Lcom/iMe/storage/data/locale/db/dao/main/HistoryDialogDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 370
    :try_start_0
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    .line 371
    iget-object p1, p0, Lcom/iMe/storage/data/locale/db/dao/main/HistoryDialogDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 373
    iget-object p1, p0, Lcom/iMe/storage/data/locale/db/dao/main/HistoryDialogDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 374
    iget-object p1, p0, Lcom/iMe/storage/data/locale/db/dao/main/HistoryDialogDao_Impl;->__preparedStmtOfRemoveAllRecentChatHistory:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p1, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return-void

    :catchall_0
    move-exception p1

    .line 373
    iget-object p2, p0, Lcom/iMe/storage/data/locale/db/dao/main/HistoryDialogDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 374
    iget-object p2, p0, Lcom/iMe/storage/data/locale/db/dao/main/HistoryDialogDao_Impl;->__preparedStmtOfRemoveAllRecentChatHistory:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p2, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 375
    throw p1
.end method

.method public removeRecentChatHistory(JJ)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "userId",
            "dialogId"
        }
    .end annotation

    .line 325
    iget-object v0, p0, Lcom/iMe/storage/data/locale/db/dao/main/HistoryDialogDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 326
    iget-object v0, p0, Lcom/iMe/storage/data/locale/db/dao/main/HistoryDialogDao_Impl;->__preparedStmtOfRemoveRecentChatHistory:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    const/4 v1, 0x1

    .line 328
    invoke-interface {v0, v1, p1, p2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/4 p1, 0x2

    .line 330
    invoke-interface {v0, p1, p3, p4}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 331
    iget-object p1, p0, Lcom/iMe/storage/data/locale/db/dao/main/HistoryDialogDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 333
    :try_start_0
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    .line 334
    iget-object p1, p0, Lcom/iMe/storage/data/locale/db/dao/main/HistoryDialogDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 336
    iget-object p1, p0, Lcom/iMe/storage/data/locale/db/dao/main/HistoryDialogDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 337
    iget-object p1, p0, Lcom/iMe/storage/data/locale/db/dao/main/HistoryDialogDao_Impl;->__preparedStmtOfRemoveRecentChatHistory:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p1, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return-void

    :catchall_0
    move-exception p1

    .line 336
    iget-object p2, p0, Lcom/iMe/storage/data/locale/db/dao/main/HistoryDialogDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 337
    iget-object p2, p0, Lcom/iMe/storage/data/locale/db/dao/main/HistoryDialogDao_Impl;->__preparedStmtOfRemoveRecentChatHistory:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p2, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 338
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
            "pinnedRecentChats"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Lcom/iMe/storage/data/locale/db/model/recent_chats/HistoryDialogDb;",
            ">;)V"
        }
    .end annotation

    .line 279
    iget-object v0, p0, Lcom/iMe/storage/data/locale/db/dao/main/HistoryDialogDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 281
    :try_start_0
    invoke-static {p0, p1, p2, p3}, Lcom/iMe/storage/data/locale/db/dao/main/HistoryDialogDao_Impl;->access$401(Lcom/iMe/storage/data/locale/db/dao/main/HistoryDialogDao_Impl;JLjava/util/List;)V

    .line 282
    iget-object p1, p0, Lcom/iMe/storage/data/locale/db/dao/main/HistoryDialogDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 284
    iget-object p1, p0, Lcom/iMe/storage/data/locale/db/dao/main/HistoryDialogDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/iMe/storage/data/locale/db/dao/main/HistoryDialogDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 285
    throw p1
.end method

.method public updatePinned(JJZ)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "userId",
            "dialogId",
            "pinned"
        }
    .end annotation

    .line 343
    iget-object v0, p0, Lcom/iMe/storage/data/locale/db/dao/main/HistoryDialogDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 344
    iget-object v0, p0, Lcom/iMe/storage/data/locale/db/dao/main/HistoryDialogDao_Impl;->__preparedStmtOfUpdatePinned:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    int-to-long v1, p5

    const/4 p5, 0x1

    .line 347
    invoke-interface {v0, p5, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/4 p5, 0x2

    .line 349
    invoke-interface {v0, p5, p3, p4}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/4 p3, 0x3

    .line 351
    invoke-interface {v0, p3, p1, p2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 352
    iget-object p1, p0, Lcom/iMe/storage/data/locale/db/dao/main/HistoryDialogDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 354
    :try_start_0
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    .line 355
    iget-object p1, p0, Lcom/iMe/storage/data/locale/db/dao/main/HistoryDialogDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 357
    iget-object p1, p0, Lcom/iMe/storage/data/locale/db/dao/main/HistoryDialogDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 358
    iget-object p1, p0, Lcom/iMe/storage/data/locale/db/dao/main/HistoryDialogDao_Impl;->__preparedStmtOfUpdatePinned:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p1, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return-void

    :catchall_0
    move-exception p1

    .line 357
    iget-object p2, p0, Lcom/iMe/storage/data/locale/db/dao/main/HistoryDialogDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 358
    iget-object p2, p0, Lcom/iMe/storage/data/locale/db/dao/main/HistoryDialogDao_Impl;->__preparedStmtOfUpdatePinned:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p2, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 359
    throw p1
.end method
