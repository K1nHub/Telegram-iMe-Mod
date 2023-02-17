.class public final Lcom/smedialink/storage/data/locale/db/dao/main/TopicsDao_Impl;
.super Lcom/smedialink/storage/data/locale/db/dao/main/TopicsDao;
.source "TopicsDao_Impl.java"


# instance fields
.field private final __db:Landroidx/room/RoomDatabase;

.field private final __insertionAdapterOfTopicDb:Landroidx/room/EntityInsertionAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityInsertionAdapter<",
            "Lcom/smedialink/storage/data/locale/db/model/topics/TopicDb;",
            ">;"
        }
    .end annotation
.end field

.field private final __preparedStmtOfRemoveTopic:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfRemoveTopics:Landroidx/room/SharedSQLiteStatement;


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

    .line 41
    invoke-direct {p0}, Lcom/smedialink/storage/data/locale/db/dao/main/TopicsDao;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/smedialink/storage/data/locale/db/dao/main/TopicsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 43
    new-instance v0, Lcom/smedialink/storage/data/locale/db/dao/main/TopicsDao_Impl$1;

    invoke-direct {v0, p0, p1}, Lcom/smedialink/storage/data/locale/db/dao/main/TopicsDao_Impl$1;-><init>(Lcom/smedialink/storage/data/locale/db/dao/main/TopicsDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/smedialink/storage/data/locale/db/dao/main/TopicsDao_Impl;->__insertionAdapterOfTopicDb:Landroidx/room/EntityInsertionAdapter;

    .line 78
    new-instance v0, Lcom/smedialink/storage/data/locale/db/dao/main/TopicsDao_Impl$2;

    invoke-direct {v0, p0, p1}, Lcom/smedialink/storage/data/locale/db/dao/main/TopicsDao_Impl$2;-><init>(Lcom/smedialink/storage/data/locale/db/dao/main/TopicsDao_Impl;Landroidx/room/RoomDatabase;)V

    .line 90
    new-instance v0, Lcom/smedialink/storage/data/locale/db/dao/main/TopicsDao_Impl$3;

    invoke-direct {v0, p0, p1}, Lcom/smedialink/storage/data/locale/db/dao/main/TopicsDao_Impl$3;-><init>(Lcom/smedialink/storage/data/locale/db/dao/main/TopicsDao_Impl;Landroidx/room/RoomDatabase;)V

    .line 127
    new-instance v0, Lcom/smedialink/storage/data/locale/db/dao/main/TopicsDao_Impl$4;

    invoke-direct {v0, p0, p1}, Lcom/smedialink/storage/data/locale/db/dao/main/TopicsDao_Impl$4;-><init>(Lcom/smedialink/storage/data/locale/db/dao/main/TopicsDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/smedialink/storage/data/locale/db/dao/main/TopicsDao_Impl;->__preparedStmtOfRemoveTopic:Landroidx/room/SharedSQLiteStatement;

    .line 134
    new-instance v0, Lcom/smedialink/storage/data/locale/db/dao/main/TopicsDao_Impl$5;

    invoke-direct {v0, p0, p1}, Lcom/smedialink/storage/data/locale/db/dao/main/TopicsDao_Impl$5;-><init>(Lcom/smedialink/storage/data/locale/db/dao/main/TopicsDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/smedialink/storage/data/locale/db/dao/main/TopicsDao_Impl;->__preparedStmtOfRemoveTopics:Landroidx/room/SharedSQLiteStatement;

    return-void
.end method

.method static synthetic access$401(Lcom/smedialink/storage/data/locale/db/dao/main/TopicsDao_Impl;JLjava/util/List;)V
    .locals 0

    .line 28
    invoke-super {p0, p1, p2, p3}, Lcom/smedialink/storage/data/locale/db/dao/main/TopicsDao;->restoreBackup(JLjava/util/List;)V

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

    .line 398
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getTopics(J)Ljava/util/List;
    .locals 23
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
            "Lcom/smedialink/storage/data/locale/db/model/topics/TopicDb;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v0, "SELECT * FROM TopicDb WHERE userId = ?"

    const/4 v2, 0x1

    .line 337
    invoke-static {v0, v2}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v3

    move-wide/from16 v4, p1

    .line 339
    invoke-virtual {v3, v2, v4, v5}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    .line 340
    iget-object v0, v1, Lcom/smedialink/storage/data/locale/db/dao/main/TopicsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 341
    iget-object v0, v1, Lcom/smedialink/storage/data/locale/db/dao/main/TopicsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v3, v2, v4}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2

    :try_start_0
    const-string v0, "topicId"

    .line 343
    invoke-static {v2, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v5, "name"

    .line 344
    invoke-static {v2, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "icon"

    .line 345
    invoke-static {v2, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "order"

    .line 346
    invoke-static {v2, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "presets"

    .line 347
    invoke-static {v2, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "dialogs"

    .line 348
    invoke-static {v2, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "userId"

    .line 349
    invoke-static {v2, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    .line 350
    new-instance v11, Ljava/util/ArrayList;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v12

    invoke-direct {v11, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 351
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 354
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 356
    invoke-interface {v2, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v12

    if-eqz v12, :cond_0

    move-object/from16 v16, v4

    goto :goto_1

    .line 359
    :cond_0
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v16, v12

    .line 362
    :goto_1
    invoke-interface {v2, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v12

    if-eqz v12, :cond_1

    move-object/from16 v17, v4

    goto :goto_2

    .line 365
    :cond_1
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v17, v12

    .line 368
    :goto_2
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 371
    invoke-interface {v2, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v12

    if-eqz v12, :cond_2

    move-object v12, v4

    goto :goto_3

    .line 374
    :cond_2
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 376
    :goto_3
    invoke-static {v12}, Lcom/smedialink/storage/data/locale/db/database/converter/AppMainConverter;->convertStringToLongList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v19

    .line 379
    invoke-interface {v2, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v12

    if-eqz v12, :cond_3

    move-object v12, v4

    goto :goto_4

    .line 382
    :cond_3
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 384
    :goto_4
    invoke-static {v12}, Lcom/smedialink/storage/data/locale/db/database/converter/AppMainConverter;->convertStringToLongList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v20

    .line 386
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v21

    .line 387
    new-instance v12, Lcom/smedialink/storage/data/locale/db/model/topics/TopicDb;

    move-object v13, v12

    invoke-direct/range {v13 .. v22}, Lcom/smedialink/storage/data/locale/db/model/topics/TopicDb;-><init>(JLjava/lang/String;Ljava/lang/String;ILjava/util/List;Ljava/util/List;J)V

    .line 388
    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 392
    :cond_4
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 393
    invoke-virtual {v3}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v11

    :catchall_0
    move-exception v0

    .line 392
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 393
    invoke-virtual {v3}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 394
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
            "Lcom/smedialink/storage/data/locale/db/model/topics/TopicDb;",
            ">;)V"
        }
    .end annotation

    .line 170
    iget-object v0, p0, Lcom/smedialink/storage/data/locale/db/dao/main/TopicsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 171
    iget-object v0, p0, Lcom/smedialink/storage/data/locale/db/dao/main/TopicsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 173
    :try_start_0
    iget-object v0, p0, Lcom/smedialink/storage/data/locale/db/dao/main/TopicsDao_Impl;->__insertionAdapterOfTopicDb:Landroidx/room/EntityInsertionAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityInsertionAdapter;->insert(Ljava/lang/Iterable;)V

    .line 174
    iget-object p1, p0, Lcom/smedialink/storage/data/locale/db/dao/main/TopicsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    iget-object p1, p0, Lcom/smedialink/storage/data/locale/db/dao/main/TopicsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/smedialink/storage/data/locale/db/dao/main/TopicsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 177
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

    .line 302
    iget-object v0, p0, Lcom/smedialink/storage/data/locale/db/dao/main/TopicsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 303
    iget-object v0, p0, Lcom/smedialink/storage/data/locale/db/dao/main/TopicsDao_Impl;->__preparedStmtOfRemoveTopic:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    const/4 v1, 0x1

    .line 305
    invoke-interface {v0, v1, p1, p2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/4 p1, 0x2

    .line 307
    invoke-interface {v0, p1, p3, p4}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 308
    iget-object p1, p0, Lcom/smedialink/storage/data/locale/db/dao/main/TopicsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 310
    :try_start_0
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    .line 311
    iget-object p1, p0, Lcom/smedialink/storage/data/locale/db/dao/main/TopicsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 313
    iget-object p1, p0, Lcom/smedialink/storage/data/locale/db/dao/main/TopicsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 314
    iget-object p1, p0, Lcom/smedialink/storage/data/locale/db/dao/main/TopicsDao_Impl;->__preparedStmtOfRemoveTopic:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p1, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return-void

    :catchall_0
    move-exception p1

    .line 313
    iget-object p2, p0, Lcom/smedialink/storage/data/locale/db/dao/main/TopicsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 314
    iget-object p2, p0, Lcom/smedialink/storage/data/locale/db/dao/main/TopicsDao_Impl;->__preparedStmtOfRemoveTopic:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p2, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 315
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

    .line 320
    iget-object v0, p0, Lcom/smedialink/storage/data/locale/db/dao/main/TopicsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 321
    iget-object v0, p0, Lcom/smedialink/storage/data/locale/db/dao/main/TopicsDao_Impl;->__preparedStmtOfRemoveTopics:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    const/4 v1, 0x1

    .line 323
    invoke-interface {v0, v1, p1, p2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 324
    iget-object p1, p0, Lcom/smedialink/storage/data/locale/db/dao/main/TopicsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 326
    :try_start_0
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    .line 327
    iget-object p1, p0, Lcom/smedialink/storage/data/locale/db/dao/main/TopicsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 329
    iget-object p1, p0, Lcom/smedialink/storage/data/locale/db/dao/main/TopicsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 330
    iget-object p1, p0, Lcom/smedialink/storage/data/locale/db/dao/main/TopicsDao_Impl;->__preparedStmtOfRemoveTopics:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p1, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return-void

    :catchall_0
    move-exception p1

    .line 329
    iget-object p2, p0, Lcom/smedialink/storage/data/locale/db/dao/main/TopicsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 330
    iget-object p2, p0, Lcom/smedialink/storage/data/locale/db/dao/main/TopicsDao_Impl;->__preparedStmtOfRemoveTopics:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p2, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 331
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
            "Lcom/smedialink/storage/data/locale/db/model/topics/TopicDb;",
            ">;)V"
        }
    .end annotation

    .line 291
    iget-object v0, p0, Lcom/smedialink/storage/data/locale/db/dao/main/TopicsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 293
    :try_start_0
    invoke-static {p0, p1, p2, p3}, Lcom/smedialink/storage/data/locale/db/dao/main/TopicsDao_Impl;->access$401(Lcom/smedialink/storage/data/locale/db/dao/main/TopicsDao_Impl;JLjava/util/List;)V

    .line 294
    iget-object p1, p0, Lcom/smedialink/storage/data/locale/db/dao/main/TopicsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 296
    iget-object p1, p0, Lcom/smedialink/storage/data/locale/db/dao/main/TopicsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/smedialink/storage/data/locale/db/dao/main/TopicsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 297
    throw p1
.end method
