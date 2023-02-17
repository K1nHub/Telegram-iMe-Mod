.class public final Lcom/smedialink/storage/data/locale/db/dao/main/DialogTranslationSettingsDao_Impl;
.super Lcom/smedialink/storage/data/locale/db/dao/main/DialogTranslationSettingsDao;
.source "DialogTranslationSettingsDao_Impl.java"


# instance fields
.field private final __db:Landroidx/room/RoomDatabase;

.field private final __insertionAdapterOfDialogTranslationSettingsDb:Landroidx/room/EntityInsertionAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityInsertionAdapter<",
            "Lcom/smedialink/storage/data/locale/db/model/translation/DialogTranslationSettingsDb;",
            ">;"
        }
    .end annotation
.end field

.field private final __preparedStmtOfDeleteAllTranslationSettingsByUserId:Landroidx/room/SharedSQLiteStatement;


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

    .line 38
    invoke-direct {p0}, Lcom/smedialink/storage/data/locale/db/dao/main/DialogTranslationSettingsDao;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/smedialink/storage/data/locale/db/dao/main/DialogTranslationSettingsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 40
    new-instance v0, Lcom/smedialink/storage/data/locale/db/dao/main/DialogTranslationSettingsDao_Impl$1;

    invoke-direct {v0, p0, p1}, Lcom/smedialink/storage/data/locale/db/dao/main/DialogTranslationSettingsDao_Impl$1;-><init>(Lcom/smedialink/storage/data/locale/db/dao/main/DialogTranslationSettingsDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/smedialink/storage/data/locale/db/dao/main/DialogTranslationSettingsDao_Impl;->__insertionAdapterOfDialogTranslationSettingsDb:Landroidx/room/EntityInsertionAdapter;

    .line 66
    new-instance v0, Lcom/smedialink/storage/data/locale/db/dao/main/DialogTranslationSettingsDao_Impl$2;

    invoke-direct {v0, p0, p1}, Lcom/smedialink/storage/data/locale/db/dao/main/DialogTranslationSettingsDao_Impl$2;-><init>(Lcom/smedialink/storage/data/locale/db/dao/main/DialogTranslationSettingsDao_Impl;Landroidx/room/RoomDatabase;)V

    .line 78
    new-instance v0, Lcom/smedialink/storage/data/locale/db/dao/main/DialogTranslationSettingsDao_Impl$3;

    invoke-direct {v0, p0, p1}, Lcom/smedialink/storage/data/locale/db/dao/main/DialogTranslationSettingsDao_Impl$3;-><init>(Lcom/smedialink/storage/data/locale/db/dao/main/DialogTranslationSettingsDao_Impl;Landroidx/room/RoomDatabase;)V

    .line 106
    new-instance v0, Lcom/smedialink/storage/data/locale/db/dao/main/DialogTranslationSettingsDao_Impl$4;

    invoke-direct {v0, p0, p1}, Lcom/smedialink/storage/data/locale/db/dao/main/DialogTranslationSettingsDao_Impl$4;-><init>(Lcom/smedialink/storage/data/locale/db/dao/main/DialogTranslationSettingsDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/smedialink/storage/data/locale/db/dao/main/DialogTranslationSettingsDao_Impl;->__preparedStmtOfDeleteAllTranslationSettingsByUserId:Landroidx/room/SharedSQLiteStatement;

    return-void
.end method

.method static synthetic access$401(Lcom/smedialink/storage/data/locale/db/dao/main/DialogTranslationSettingsDao_Impl;JLjava/util/List;)V
    .locals 0

    .line 27
    invoke-super {p0, p1, p2, p3}, Lcom/smedialink/storage/data/locale/db/dao/main/DialogTranslationSettingsDao;->restoreBackup(JLjava/util/List;)V

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

    .line 341
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public deleteAllTranslationSettingsByUserId(J)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "userId"
        }
    .end annotation

    .line 274
    iget-object v0, p0, Lcom/smedialink/storage/data/locale/db/dao/main/DialogTranslationSettingsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 275
    iget-object v0, p0, Lcom/smedialink/storage/data/locale/db/dao/main/DialogTranslationSettingsDao_Impl;->__preparedStmtOfDeleteAllTranslationSettingsByUserId:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    const/4 v1, 0x1

    .line 277
    invoke-interface {v0, v1, p1, p2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 278
    iget-object p1, p0, Lcom/smedialink/storage/data/locale/db/dao/main/DialogTranslationSettingsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 280
    :try_start_0
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    .line 281
    iget-object p1, p0, Lcom/smedialink/storage/data/locale/db/dao/main/DialogTranslationSettingsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 283
    iget-object p1, p0, Lcom/smedialink/storage/data/locale/db/dao/main/DialogTranslationSettingsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 284
    iget-object p1, p0, Lcom/smedialink/storage/data/locale/db/dao/main/DialogTranslationSettingsDao_Impl;->__preparedStmtOfDeleteAllTranslationSettingsByUserId:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p1, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return-void

    :catchall_0
    move-exception p1

    .line 283
    iget-object p2, p0, Lcom/smedialink/storage/data/locale/db/dao/main/DialogTranslationSettingsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 284
    iget-object p2, p0, Lcom/smedialink/storage/data/locale/db/dao/main/DialogTranslationSettingsDao_Impl;->__preparedStmtOfDeleteAllTranslationSettingsByUserId:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p2, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 285
    throw p1
.end method

.method public getAllTranslationSettingsForUser(J)Ljava/util/List;
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
            "Lcom/smedialink/storage/data/locale/db/model/translation/DialogTranslationSettingsDb;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v0, "SELECT * FROM DialogTranslationSettingsDb WHERE userId = ?"

    const/4 v2, 0x1

    .line 291
    invoke-static {v0, v2}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v3

    move-wide/from16 v4, p1

    .line 293
    invoke-virtual {v3, v2, v4, v5}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    .line 294
    iget-object v0, v1, Lcom/smedialink/storage/data/locale/db/dao/main/DialogTranslationSettingsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 295
    iget-object v0, v1, Lcom/smedialink/storage/data/locale/db/dao/main/DialogTranslationSettingsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v0, v3, v4, v5}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v6

    :try_start_0
    const-string v0, "isInTextTranslateEnabled"

    .line 297
    invoke-static {v6, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v7, "inTextTranslateTargetLangCode"

    .line 298
    invoke-static {v6, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "isOutTextTranslateEnabled"

    .line 299
    invoke-static {v6, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "outTextTranslateTargetLangCode"

    .line 300
    invoke-static {v6, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "dialogId"

    .line 301
    invoke-static {v6, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "userId"

    .line 302
    invoke-static {v6, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    .line 303
    new-instance v12, Ljava/util/ArrayList;

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v13

    invoke-direct {v12, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 304
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v13

    if-eqz v13, :cond_4

    .line 308
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    if-eqz v13, :cond_0

    const/4 v15, 0x1

    goto :goto_1

    :cond_0
    const/4 v15, 0x0

    .line 311
    :goto_1
    invoke-interface {v6, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v13

    if-eqz v13, :cond_1

    move-object/from16 v16, v5

    goto :goto_2

    .line 314
    :cond_1
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v16, v13

    .line 318
    :goto_2
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    if-eqz v13, :cond_2

    const/16 v17, 0x1

    goto :goto_3

    :cond_2
    const/16 v17, 0x0

    .line 321
    :goto_3
    invoke-interface {v6, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v13

    if-eqz v13, :cond_3

    move-object/from16 v18, v5

    goto :goto_4

    .line 324
    :cond_3
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v18, v13

    .line 327
    :goto_4
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    .line 329
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v21

    .line 330
    new-instance v13, Lcom/smedialink/storage/data/locale/db/model/translation/DialogTranslationSettingsDb;

    move-object v14, v13

    invoke-direct/range {v14 .. v22}, Lcom/smedialink/storage/data/locale/db/model/translation/DialogTranslationSettingsDb;-><init>(ZLjava/lang/String;ZLjava/lang/String;JJ)V

    .line 331
    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 335
    :cond_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 336
    invoke-virtual {v3}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v12

    :catchall_0
    move-exception v0

    .line 335
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 336
    invoke-virtual {v3}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 337
    throw v0
.end method

.method public insert(Lcom/smedialink/storage/data/locale/db/model/translation/DialogTranslationSettingsDb;)J
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "obj"
        }
    .end annotation

    .line 117
    iget-object v0, p0, Lcom/smedialink/storage/data/locale/db/dao/main/DialogTranslationSettingsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 118
    iget-object v0, p0, Lcom/smedialink/storage/data/locale/db/dao/main/DialogTranslationSettingsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 120
    :try_start_0
    iget-object v0, p0, Lcom/smedialink/storage/data/locale/db/dao/main/DialogTranslationSettingsDao_Impl;->__insertionAdapterOfDialogTranslationSettingsDb:Landroidx/room/EntityInsertionAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityInsertionAdapter;->insertAndReturnId(Ljava/lang/Object;)J

    move-result-wide v0

    .line 121
    iget-object p1, p0, Lcom/smedialink/storage/data/locale/db/dao/main/DialogTranslationSettingsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    iget-object p1, p0, Lcom/smedialink/storage/data/locale/db/dao/main/DialogTranslationSettingsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-wide v0

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/smedialink/storage/data/locale/db/dao/main/DialogTranslationSettingsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 125
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

    .line 26
    check-cast p1, Lcom/smedialink/storage/data/locale/db/model/translation/DialogTranslationSettingsDb;

    invoke-virtual {p0, p1}, Lcom/smedialink/storage/data/locale/db/dao/main/DialogTranslationSettingsDao_Impl;->insert(Lcom/smedialink/storage/data/locale/db/model/translation/DialogTranslationSettingsDb;)J

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
            "Lcom/smedialink/storage/data/locale/db/model/translation/DialogTranslationSettingsDb;",
            ">;)V"
        }
    .end annotation

    .line 142
    iget-object v0, p0, Lcom/smedialink/storage/data/locale/db/dao/main/DialogTranslationSettingsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 143
    iget-object v0, p0, Lcom/smedialink/storage/data/locale/db/dao/main/DialogTranslationSettingsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 145
    :try_start_0
    iget-object v0, p0, Lcom/smedialink/storage/data/locale/db/dao/main/DialogTranslationSettingsDao_Impl;->__insertionAdapterOfDialogTranslationSettingsDb:Landroidx/room/EntityInsertionAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityInsertionAdapter;->insert(Ljava/lang/Iterable;)V

    .line 146
    iget-object p1, p0, Lcom/smedialink/storage/data/locale/db/dao/main/DialogTranslationSettingsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    iget-object p1, p0, Lcom/smedialink/storage/data/locale/db/dao/main/DialogTranslationSettingsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/smedialink/storage/data/locale/db/dao/main/DialogTranslationSettingsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 149
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
            "Lcom/smedialink/storage/domain/model/dialogs/DialogTranslationSettings;",
            ">;)V"
        }
    .end annotation

    .line 263
    iget-object v0, p0, Lcom/smedialink/storage/data/locale/db/dao/main/DialogTranslationSettingsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 265
    :try_start_0
    invoke-static {p0, p1, p2, p3}, Lcom/smedialink/storage/data/locale/db/dao/main/DialogTranslationSettingsDao_Impl;->access$401(Lcom/smedialink/storage/data/locale/db/dao/main/DialogTranslationSettingsDao_Impl;JLjava/util/List;)V

    .line 266
    iget-object p1, p0, Lcom/smedialink/storage/data/locale/db/dao/main/DialogTranslationSettingsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 268
    iget-object p1, p0, Lcom/smedialink/storage/data/locale/db/dao/main/DialogTranslationSettingsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/smedialink/storage/data/locale/db/dao/main/DialogTranslationSettingsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 269
    throw p1
.end method
