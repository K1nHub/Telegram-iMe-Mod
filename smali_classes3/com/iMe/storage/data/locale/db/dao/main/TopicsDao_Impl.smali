.class public final Lcom/iMe/storage/data/locale/db/dao/main/TopicsDao_Impl;
.super Lcom/iMe/storage/data/locale/db/dao/main/TopicsDao;
.source "TopicsDao_Impl.java"


# instance fields
.field private final __db:Landroidx/room/RoomDatabase;

.field private final __insertionAdapterOfTopicDb:Landroidx/room/EntityInsertionAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityInsertionAdapter<",
            "Lcom/iMe/storage/data/locale/db/model/topics/TopicDb;",
            ">;"
        }
    .end annotation
.end field

.field private final __preparedStmtOfRemoveTopic:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfRemoveTopics:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfSetHidden:Landroidx/room/SharedSQLiteStatement;


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
    invoke-direct {p0}, Lcom/iMe/storage/data/locale/db/dao/main/TopicsDao;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/iMe/storage/data/locale/db/dao/main/TopicsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 45
    new-instance v0, Lcom/iMe/storage/data/locale/db/dao/main/TopicsDao_Impl$1;

    invoke-direct {v0, p0, p1}, Lcom/iMe/storage/data/locale/db/dao/main/TopicsDao_Impl$1;-><init>(Lcom/iMe/storage/data/locale/db/dao/main/TopicsDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/iMe/storage/data/locale/db/dao/main/TopicsDao_Impl;->__insertionAdapterOfTopicDb:Landroidx/room/EntityInsertionAdapter;

    .line 82
    new-instance v0, Lcom/iMe/storage/data/locale/db/dao/main/TopicsDao_Impl$2;

    invoke-direct {v0, p0, p1}, Lcom/iMe/storage/data/locale/db/dao/main/TopicsDao_Impl$2;-><init>(Lcom/iMe/storage/data/locale/db/dao/main/TopicsDao_Impl;Landroidx/room/RoomDatabase;)V

    .line 94
    new-instance v0, Lcom/iMe/storage/data/locale/db/dao/main/TopicsDao_Impl$3;

    invoke-direct {v0, p0, p1}, Lcom/iMe/storage/data/locale/db/dao/main/TopicsDao_Impl$3;-><init>(Lcom/iMe/storage/data/locale/db/dao/main/TopicsDao_Impl;Landroidx/room/RoomDatabase;)V

    .line 133
    new-instance v0, Lcom/iMe/storage/data/locale/db/dao/main/TopicsDao_Impl$4;

    invoke-direct {v0, p0, p1}, Lcom/iMe/storage/data/locale/db/dao/main/TopicsDao_Impl$4;-><init>(Lcom/iMe/storage/data/locale/db/dao/main/TopicsDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/iMe/storage/data/locale/db/dao/main/TopicsDao_Impl;->__preparedStmtOfRemoveTopic:Landroidx/room/SharedSQLiteStatement;

    .line 140
    new-instance v0, Lcom/iMe/storage/data/locale/db/dao/main/TopicsDao_Impl$5;

    invoke-direct {v0, p0, p1}, Lcom/iMe/storage/data/locale/db/dao/main/TopicsDao_Impl$5;-><init>(Lcom/iMe/storage/data/locale/db/dao/main/TopicsDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/iMe/storage/data/locale/db/dao/main/TopicsDao_Impl;->__preparedStmtOfRemoveTopics:Landroidx/room/SharedSQLiteStatement;

    .line 147
    new-instance v0, Lcom/iMe/storage/data/locale/db/dao/main/TopicsDao_Impl$6;

    invoke-direct {v0, p0, p1}, Lcom/iMe/storage/data/locale/db/dao/main/TopicsDao_Impl$6;-><init>(Lcom/iMe/storage/data/locale/db/dao/main/TopicsDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/iMe/storage/data/locale/db/dao/main/TopicsDao_Impl;->__preparedStmtOfSetHidden:Landroidx/room/SharedSQLiteStatement;

    return-void
.end method

.method static synthetic access$401(Lcom/iMe/storage/data/locale/db/dao/main/TopicsDao_Impl;JLjava/util/List;)V
    .locals 0

    .line 28
    invoke-super {p0, p1, p2, p3}, Lcom/iMe/storage/data/locale/db/dao/main/TopicsDao;->restoreBackup(JLjava/util/List;)V

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

    .line 437
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getTopics(J)Ljava/util/List;
    .locals 27
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
            "Lcom/iMe/storage/data/locale/db/model/topics/TopicDb;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v0, "SELECT * FROM TopicDb WHERE userId = ?"

    const/4 v2, 0x1

    .line 371
    invoke-static {v0, v2}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v3

    move-wide/from16 v4, p1

    .line 373
    invoke-virtual {v3, v2, v4, v5}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    .line 374
    iget-object v0, v1, Lcom/iMe/storage/data/locale/db/dao/main/TopicsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 375
    iget-object v0, v1, Lcom/iMe/storage/data/locale/db/dao/main/TopicsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v0, v3, v4, v5}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v6

    :try_start_0
    const-string v0, "topicId"

    .line 377
    invoke-static {v6, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v7, "name"

    .line 378
    invoke-static {v6, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "icon"

    .line 379
    invoke-static {v6, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "order"

    .line 380
    invoke-static {v6, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "isHidden"

    .line 381
    invoke-static {v6, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "presets"

    .line 382
    invoke-static {v6, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "dialogs"

    .line 383
    invoke-static {v6, v12}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "userId"

    .line 384
    invoke-static {v6, v13}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    .line 385
    new-instance v14, Ljava/util/ArrayList;

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v15

    invoke-direct {v14, v15}, Ljava/util/ArrayList;-><init>(I)V

    .line 386
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v15

    if-eqz v15, :cond_5

    .line 389
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    .line 391
    invoke-interface {v6, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_0

    move-object/from16 v19, v5

    goto :goto_1

    .line 394
    :cond_0
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v19, v15

    .line 397
    :goto_1
    invoke-interface {v6, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_1

    move-object/from16 v20, v5

    goto :goto_2

    .line 400
    :cond_1
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v20, v15

    .line 403
    :goto_2
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    .line 406
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    if-eqz v15, :cond_2

    move/from16 v22, v2

    goto :goto_3

    :cond_2
    move/from16 v22, v4

    .line 410
    :goto_3
    invoke-interface {v6, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_3

    move-object v15, v5

    goto :goto_4

    .line 413
    :cond_3
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 415
    :goto_4
    invoke-static {v15}, Lcom/iMe/storage/data/locale/db/database/converter/AppMainConverter;->convertStringToLongList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v23

    .line 418
    invoke-interface {v6, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_4

    move-object v15, v5

    goto :goto_5

    .line 421
    :cond_4
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 423
    :goto_5
    invoke-static {v15}, Lcom/iMe/storage/data/locale/db/database/converter/AppMainConverter;->convertStringToLongList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v24

    .line 425
    invoke-interface {v6, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v25

    .line 426
    new-instance v15, Lcom/iMe/storage/data/locale/db/model/topics/TopicDb;

    move-object/from16 v16, v15

    invoke-direct/range {v16 .. v26}, Lcom/iMe/storage/data/locale/db/model/topics/TopicDb;-><init>(JLjava/lang/String;Ljava/lang/String;IZLjava/util/List;Ljava/util/List;J)V

    .line 427
    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 431
    :cond_5
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 432
    invoke-virtual {v3}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v14

    :catchall_0
    move-exception v0

    .line 431
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 432
    invoke-virtual {v3}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 433
    throw v0
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
            "Lcom/iMe/storage/data/locale/db/model/topics/TopicDb;",
            ">;)V"
        }
    .end annotation

    .line 183
    iget-object v0, p0, Lcom/iMe/storage/data/locale/db/dao/main/TopicsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 184
    iget-object v0, p0, Lcom/iMe/storage/data/locale/db/dao/main/TopicsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 186
    :try_start_0
    iget-object v0, p0, Lcom/iMe/storage/data/locale/db/dao/main/TopicsDao_Impl;->__insertionAdapterOfTopicDb:Landroidx/room/EntityInsertionAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityInsertionAdapter;->insert(Ljava/lang/Iterable;)V

    .line 187
    iget-object p1, p0, Lcom/iMe/storage/data/locale/db/dao/main/TopicsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    iget-object p1, p0, Lcom/iMe/storage/data/locale/db/dao/main/TopicsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/iMe/storage/data/locale/db/dao/main/TopicsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 190
    throw p1
.end method

.method public removeTopic(JJ)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "userId",
            "topicId"
        }
    .end annotation

    .line 315
    iget-object v0, p0, Lcom/iMe/storage/data/locale/db/dao/main/TopicsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 316
    iget-object v0, p0, Lcom/iMe/storage/data/locale/db/dao/main/TopicsDao_Impl;->__preparedStmtOfRemoveTopic:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    const/4 v1, 0x1

    .line 318
    invoke-interface {v0, v1, p1, p2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/4 p1, 0x2

    .line 320
    invoke-interface {v0, p1, p3, p4}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 321
    iget-object p1, p0, Lcom/iMe/storage/data/locale/db/dao/main/TopicsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 323
    :try_start_0
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    .line 324
    iget-object p1, p0, Lcom/iMe/storage/data/locale/db/dao/main/TopicsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 326
    iget-object p1, p0, Lcom/iMe/storage/data/locale/db/dao/main/TopicsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 327
    iget-object p1, p0, Lcom/iMe/storage/data/locale/db/dao/main/TopicsDao_Impl;->__preparedStmtOfRemoveTopic:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p1, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return-void

    :catchall_0
    move-exception p1

    .line 326
    iget-object p2, p0, Lcom/iMe/storage/data/locale/db/dao/main/TopicsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 327
    iget-object p2, p0, Lcom/iMe/storage/data/locale/db/dao/main/TopicsDao_Impl;->__preparedStmtOfRemoveTopic:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p2, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 328
    throw p1
.end method

.method public removeTopics(J)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "userId"
        }
    .end annotation

    .line 333
    iget-object v0, p0, Lcom/iMe/storage/data/locale/db/dao/main/TopicsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 334
    iget-object v0, p0, Lcom/iMe/storage/data/locale/db/dao/main/TopicsDao_Impl;->__preparedStmtOfRemoveTopics:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    const/4 v1, 0x1

    .line 336
    invoke-interface {v0, v1, p1, p2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 337
    iget-object p1, p0, Lcom/iMe/storage/data/locale/db/dao/main/TopicsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 339
    :try_start_0
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    .line 340
    iget-object p1, p0, Lcom/iMe/storage/data/locale/db/dao/main/TopicsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 342
    iget-object p1, p0, Lcom/iMe/storage/data/locale/db/dao/main/TopicsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 343
    iget-object p1, p0, Lcom/iMe/storage/data/locale/db/dao/main/TopicsDao_Impl;->__preparedStmtOfRemoveTopics:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p1, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return-void

    :catchall_0
    move-exception p1

    .line 342
    iget-object p2, p0, Lcom/iMe/storage/data/locale/db/dao/main/TopicsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 343
    iget-object p2, p0, Lcom/iMe/storage/data/locale/db/dao/main/TopicsDao_Impl;->__preparedStmtOfRemoveTopics:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p2, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 344
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
            "topics"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Lcom/iMe/storage/data/locale/db/model/topics/TopicDb;",
            ">;)V"
        }
    .end annotation

    .line 304
    iget-object v0, p0, Lcom/iMe/storage/data/locale/db/dao/main/TopicsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 306
    :try_start_0
    invoke-static {p0, p1, p2, p3}, Lcom/iMe/storage/data/locale/db/dao/main/TopicsDao_Impl;->access$401(Lcom/iMe/storage/data/locale/db/dao/main/TopicsDao_Impl;JLjava/util/List;)V

    .line 307
    iget-object p1, p0, Lcom/iMe/storage/data/locale/db/dao/main/TopicsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 309
    iget-object p1, p0, Lcom/iMe/storage/data/locale/db/dao/main/TopicsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/iMe/storage/data/locale/db/dao/main/TopicsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 310
    throw p1
.end method

.method public setHidden(ZJJ)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "isHidden",
            "userId",
            "topicId"
        }
    .end annotation

    .line 349
    iget-object v0, p0, Lcom/iMe/storage/data/locale/db/dao/main/TopicsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 350
    iget-object v0, p0, Lcom/iMe/storage/data/locale/db/dao/main/TopicsDao_Impl;->__preparedStmtOfSetHidden:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    int-to-long v1, p1

    const/4 p1, 0x1

    .line 353
    invoke-interface {v0, p1, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/4 p1, 0x2

    .line 355
    invoke-interface {v0, p1, p2, p3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/4 p1, 0x3

    .line 357
    invoke-interface {v0, p1, p4, p5}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 358
    iget-object p1, p0, Lcom/iMe/storage/data/locale/db/dao/main/TopicsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 360
    :try_start_0
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    .line 361
    iget-object p1, p0, Lcom/iMe/storage/data/locale/db/dao/main/TopicsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 363
    iget-object p1, p0, Lcom/iMe/storage/data/locale/db/dao/main/TopicsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 364
    iget-object p1, p0, Lcom/iMe/storage/data/locale/db/dao/main/TopicsDao_Impl;->__preparedStmtOfSetHidden:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p1, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return-void

    :catchall_0
    move-exception p1

    .line 363
    iget-object p2, p0, Lcom/iMe/storage/data/locale/db/dao/main/TopicsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 364
    iget-object p2, p0, Lcom/iMe/storage/data/locale/db/dao/main/TopicsDao_Impl;->__preparedStmtOfSetHidden:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p2, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 365
    throw p1
.end method
