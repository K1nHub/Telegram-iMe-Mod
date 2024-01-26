.class public final Lcom/iMe/storage/data/locale/db/dao/main/FiltersDao_Impl;
.super Lcom/iMe/storage/data/locale/db/dao/main/FiltersDao;
.source "FiltersDao_Impl.java"


# instance fields
.field private final __db:Landroidx/room/RoomDatabase;

.field private final __insertionAdapterOfFilterSettingsDb:Landroidx/room/EntityInsertionAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityInsertionAdapter<",
            "Lcom/iMe/storage/data/locale/db/model/filter/FilterSettingsDb;",
            ">;"
        }
    .end annotation
.end field

.field private final __preparedStmtOfRemoveFilterSettings:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfResetSettings:Landroidx/room/SharedSQLiteStatement;


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
    invoke-direct {p0}, Lcom/iMe/storage/data/locale/db/dao/main/FiltersDao;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/iMe/storage/data/locale/db/dao/main/FiltersDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 43
    new-instance v0, Lcom/iMe/storage/data/locale/db/dao/main/FiltersDao_Impl$1;

    invoke-direct {v0, p0, p1}, Lcom/iMe/storage/data/locale/db/dao/main/FiltersDao_Impl$1;-><init>(Lcom/iMe/storage/data/locale/db/dao/main/FiltersDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/iMe/storage/data/locale/db/dao/main/FiltersDao_Impl;->__insertionAdapterOfFilterSettingsDb:Landroidx/room/EntityInsertionAdapter;

    .line 68
    new-instance v0, Lcom/iMe/storage/data/locale/db/dao/main/FiltersDao_Impl$2;

    invoke-direct {v0, p0, p1}, Lcom/iMe/storage/data/locale/db/dao/main/FiltersDao_Impl$2;-><init>(Lcom/iMe/storage/data/locale/db/dao/main/FiltersDao_Impl;Landroidx/room/RoomDatabase;)V

    .line 80
    new-instance v0, Lcom/iMe/storage/data/locale/db/dao/main/FiltersDao_Impl$3;

    invoke-direct {v0, p0, p1}, Lcom/iMe/storage/data/locale/db/dao/main/FiltersDao_Impl$3;-><init>(Lcom/iMe/storage/data/locale/db/dao/main/FiltersDao_Impl;Landroidx/room/RoomDatabase;)V

    .line 107
    new-instance v0, Lcom/iMe/storage/data/locale/db/dao/main/FiltersDao_Impl$4;

    invoke-direct {v0, p0, p1}, Lcom/iMe/storage/data/locale/db/dao/main/FiltersDao_Impl$4;-><init>(Lcom/iMe/storage/data/locale/db/dao/main/FiltersDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/iMe/storage/data/locale/db/dao/main/FiltersDao_Impl;->__preparedStmtOfRemoveFilterSettings:Landroidx/room/SharedSQLiteStatement;

    .line 114
    new-instance v0, Lcom/iMe/storage/data/locale/db/dao/main/FiltersDao_Impl$5;

    invoke-direct {v0, p0, p1}, Lcom/iMe/storage/data/locale/db/dao/main/FiltersDao_Impl$5;-><init>(Lcom/iMe/storage/data/locale/db/dao/main/FiltersDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/iMe/storage/data/locale/db/dao/main/FiltersDao_Impl;->__preparedStmtOfResetSettings:Landroidx/room/SharedSQLiteStatement;

    return-void
.end method

.method static synthetic access$401(Lcom/iMe/storage/data/locale/db/dao/main/FiltersDao_Impl;JLjava/util/List;)V
    .locals 0

    .line 28
    invoke-super {p0, p1, p2, p3}, Lcom/iMe/storage/data/locale/db/dao/main/FiltersDao;->restoreBackup(JLjava/util/List;)V

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

    .line 364
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getFilterSettings(J)Ljava/util/List;
    .locals 20
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
            "Lcom/iMe/storage/data/locale/db/model/filter/FilterSettingsDb;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v0, "SELECT * FROM FilterSettingsDb WHERE userId = ?"

    const/4 v2, 0x1

    .line 317
    invoke-static {v0, v2}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v3

    move-wide/from16 v4, p1

    .line 319
    invoke-virtual {v3, v2, v4, v5}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    .line 320
    iget-object v0, v1, Lcom/iMe/storage/data/locale/db/dao/main/FiltersDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 321
    iget-object v0, v1, Lcom/iMe/storage/data/locale/db/dao/main/FiltersDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v0, v3, v4, v5}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v6

    :try_start_0
    const-string v0, "filterId"

    .line 323
    invoke-static {v6, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v7, "fabs"

    .line 324
    invoke-static {v6, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "icon"

    .line 325
    invoke-static {v6, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "isHidden"

    .line 326
    invoke-static {v6, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "userId"

    .line 327
    invoke-static {v6, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    .line 328
    new-instance v11, Ljava/util/ArrayList;

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v12

    invoke-direct {v11, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 329
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 332
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 335
    invoke-interface {v6, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v12

    if-eqz v12, :cond_0

    move-object v12, v5

    goto :goto_1

    .line 338
    :cond_0
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 340
    :goto_1
    invoke-static {v12}, Lcom/iMe/storage/data/locale/db/database/converter/AppMainConverter;->convertStringToStringList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v15

    .line 342
    invoke-interface {v6, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v12

    if-eqz v12, :cond_1

    move-object/from16 v16, v5

    goto :goto_2

    .line 345
    :cond_1
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v16, v12

    .line 349
    :goto_2
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    if-eqz v12, :cond_2

    move/from16 v17, v2

    goto :goto_3

    :cond_2
    move/from16 v17, v4

    .line 352
    :goto_3
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 353
    new-instance v12, Lcom/iMe/storage/data/locale/db/model/filter/FilterSettingsDb;

    move-object v13, v12

    invoke-direct/range {v13 .. v19}, Lcom/iMe/storage/data/locale/db/model/filter/FilterSettingsDb;-><init>(ILjava/util/List;Ljava/lang/String;ZJ)V

    .line 354
    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 358
    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 359
    invoke-virtual {v3}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v11

    :catchall_0
    move-exception v0

    .line 358
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 359
    invoke-virtual {v3}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 360
    throw v0
.end method

.method public insert(Lcom/iMe/storage/data/locale/db/model/filter/FilterSettingsDb;)J
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "obj"
        }
    .end annotation

    .line 125
    iget-object v0, p0, Lcom/iMe/storage/data/locale/db/dao/main/FiltersDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 126
    iget-object v0, p0, Lcom/iMe/storage/data/locale/db/dao/main/FiltersDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 128
    :try_start_0
    iget-object v0, p0, Lcom/iMe/storage/data/locale/db/dao/main/FiltersDao_Impl;->__insertionAdapterOfFilterSettingsDb:Landroidx/room/EntityInsertionAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityInsertionAdapter;->insertAndReturnId(Ljava/lang/Object;)J

    move-result-wide v0

    .line 129
    iget-object p1, p0, Lcom/iMe/storage/data/locale/db/dao/main/FiltersDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    iget-object p1, p0, Lcom/iMe/storage/data/locale/db/dao/main/FiltersDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-wide v0

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/iMe/storage/data/locale/db/dao/main/FiltersDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 133
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

    .line 27
    check-cast p1, Lcom/iMe/storage/data/locale/db/model/filter/FilterSettingsDb;

    invoke-virtual {p0, p1}, Lcom/iMe/storage/data/locale/db/dao/main/FiltersDao_Impl;->insert(Lcom/iMe/storage/data/locale/db/model/filter/FilterSettingsDb;)J

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
            "Lcom/iMe/storage/data/locale/db/model/filter/FilterSettingsDb;",
            ">;)V"
        }
    .end annotation

    .line 150
    iget-object v0, p0, Lcom/iMe/storage/data/locale/db/dao/main/FiltersDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 151
    iget-object v0, p0, Lcom/iMe/storage/data/locale/db/dao/main/FiltersDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 153
    :try_start_0
    iget-object v0, p0, Lcom/iMe/storage/data/locale/db/dao/main/FiltersDao_Impl;->__insertionAdapterOfFilterSettingsDb:Landroidx/room/EntityInsertionAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityInsertionAdapter;->insert(Ljava/lang/Iterable;)V

    .line 154
    iget-object p1, p0, Lcom/iMe/storage/data/locale/db/dao/main/FiltersDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    iget-object p1, p0, Lcom/iMe/storage/data/locale/db/dao/main/FiltersDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/iMe/storage/data/locale/db/dao/main/FiltersDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 157
    throw p1
.end method

.method public removeFilterSettings(IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "filterId",
            "userId"
        }
    .end annotation

    .line 282
    iget-object v0, p0, Lcom/iMe/storage/data/locale/db/dao/main/FiltersDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 283
    iget-object v0, p0, Lcom/iMe/storage/data/locale/db/dao/main/FiltersDao_Impl;->__preparedStmtOfRemoveFilterSettings:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    int-to-long v1, p1

    const/4 p1, 0x1

    .line 285
    invoke-interface {v0, p1, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/4 p1, 0x2

    .line 287
    invoke-interface {v0, p1, p2, p3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 288
    iget-object p1, p0, Lcom/iMe/storage/data/locale/db/dao/main/FiltersDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 290
    :try_start_0
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    .line 291
    iget-object p1, p0, Lcom/iMe/storage/data/locale/db/dao/main/FiltersDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 293
    iget-object p1, p0, Lcom/iMe/storage/data/locale/db/dao/main/FiltersDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 294
    iget-object p1, p0, Lcom/iMe/storage/data/locale/db/dao/main/FiltersDao_Impl;->__preparedStmtOfRemoveFilterSettings:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p1, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return-void

    :catchall_0
    move-exception p1

    .line 293
    iget-object p2, p0, Lcom/iMe/storage/data/locale/db/dao/main/FiltersDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 294
    iget-object p2, p0, Lcom/iMe/storage/data/locale/db/dao/main/FiltersDao_Impl;->__preparedStmtOfRemoveFilterSettings:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p2, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 295
    throw p1
.end method

.method public resetSettings(J)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "userId"
        }
    .end annotation

    .line 300
    iget-object v0, p0, Lcom/iMe/storage/data/locale/db/dao/main/FiltersDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 301
    iget-object v0, p0, Lcom/iMe/storage/data/locale/db/dao/main/FiltersDao_Impl;->__preparedStmtOfResetSettings:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    const/4 v1, 0x1

    .line 303
    invoke-interface {v0, v1, p1, p2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 304
    iget-object p1, p0, Lcom/iMe/storage/data/locale/db/dao/main/FiltersDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 306
    :try_start_0
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    .line 307
    iget-object p1, p0, Lcom/iMe/storage/data/locale/db/dao/main/FiltersDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 309
    iget-object p1, p0, Lcom/iMe/storage/data/locale/db/dao/main/FiltersDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 310
    iget-object p1, p0, Lcom/iMe/storage/data/locale/db/dao/main/FiltersDao_Impl;->__preparedStmtOfResetSettings:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p1, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return-void

    :catchall_0
    move-exception p1

    .line 309
    iget-object p2, p0, Lcom/iMe/storage/data/locale/db/dao/main/FiltersDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 310
    iget-object p2, p0, Lcom/iMe/storage/data/locale/db/dao/main/FiltersDao_Impl;->__preparedStmtOfResetSettings:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p2, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 311
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
            "filters"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/filters/FilterSettingsModel;",
            ">;)V"
        }
    .end annotation

    .line 271
    iget-object v0, p0, Lcom/iMe/storage/data/locale/db/dao/main/FiltersDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 273
    :try_start_0
    invoke-static {p0, p1, p2, p3}, Lcom/iMe/storage/data/locale/db/dao/main/FiltersDao_Impl;->access$401(Lcom/iMe/storage/data/locale/db/dao/main/FiltersDao_Impl;JLjava/util/List;)V

    .line 274
    iget-object p1, p0, Lcom/iMe/storage/data/locale/db/dao/main/FiltersDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 276
    iget-object p1, p0, Lcom/iMe/storage/data/locale/db/dao/main/FiltersDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/iMe/storage/data/locale/db/dao/main/FiltersDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 277
    throw p1
.end method
