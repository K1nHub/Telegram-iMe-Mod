.class public final Lcom/smedialink/storage/data/locale/db/dao/main/FiltersDao_Impl;
.super Lcom/smedialink/storage/data/locale/db/dao/main/FiltersDao;
.source "FiltersDao_Impl.java"


# instance fields
.field private final __db:Landroidx/room/RoomDatabase;

.field private final __insertionAdapterOfFilterSettingsDb:Landroidx/room/EntityInsertionAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityInsertionAdapter<",
            "Lcom/smedialink/storage/data/locale/db/model/filter/FilterSettingsDb;",
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
    invoke-direct {p0}, Lcom/smedialink/storage/data/locale/db/dao/main/FiltersDao;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/smedialink/storage/data/locale/db/dao/main/FiltersDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 43
    new-instance v0, Lcom/smedialink/storage/data/locale/db/dao/main/FiltersDao_Impl$1;

    invoke-direct {v0, p0, p1}, Lcom/smedialink/storage/data/locale/db/dao/main/FiltersDao_Impl$1;-><init>(Lcom/smedialink/storage/data/locale/db/dao/main/FiltersDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/smedialink/storage/data/locale/db/dao/main/FiltersDao_Impl;->__insertionAdapterOfFilterSettingsDb:Landroidx/room/EntityInsertionAdapter;

    .line 66
    new-instance v0, Lcom/smedialink/storage/data/locale/db/dao/main/FiltersDao_Impl$2;

    invoke-direct {v0, p0, p1}, Lcom/smedialink/storage/data/locale/db/dao/main/FiltersDao_Impl$2;-><init>(Lcom/smedialink/storage/data/locale/db/dao/main/FiltersDao_Impl;Landroidx/room/RoomDatabase;)V

    .line 78
    new-instance v0, Lcom/smedialink/storage/data/locale/db/dao/main/FiltersDao_Impl$3;

    invoke-direct {v0, p0, p1}, Lcom/smedialink/storage/data/locale/db/dao/main/FiltersDao_Impl$3;-><init>(Lcom/smedialink/storage/data/locale/db/dao/main/FiltersDao_Impl;Landroidx/room/RoomDatabase;)V

    .line 103
    new-instance v0, Lcom/smedialink/storage/data/locale/db/dao/main/FiltersDao_Impl$4;

    invoke-direct {v0, p0, p1}, Lcom/smedialink/storage/data/locale/db/dao/main/FiltersDao_Impl$4;-><init>(Lcom/smedialink/storage/data/locale/db/dao/main/FiltersDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/smedialink/storage/data/locale/db/dao/main/FiltersDao_Impl;->__preparedStmtOfRemoveFilterSettings:Landroidx/room/SharedSQLiteStatement;

    .line 110
    new-instance v0, Lcom/smedialink/storage/data/locale/db/dao/main/FiltersDao_Impl$5;

    invoke-direct {v0, p0, p1}, Lcom/smedialink/storage/data/locale/db/dao/main/FiltersDao_Impl$5;-><init>(Lcom/smedialink/storage/data/locale/db/dao/main/FiltersDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/smedialink/storage/data/locale/db/dao/main/FiltersDao_Impl;->__preparedStmtOfResetSettings:Landroidx/room/SharedSQLiteStatement;

    return-void
.end method

.method static synthetic access$401(Lcom/smedialink/storage/data/locale/db/dao/main/FiltersDao_Impl;JLjava/util/List;)V
    .locals 0

    .line 28
    invoke-super {p0, p1, p2, p3}, Lcom/smedialink/storage/data/locale/db/dao/main/FiltersDao;->restoreBackup(JLjava/util/List;)V

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

    .line 355
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getFilterSettings(J)Ljava/util/List;
    .locals 13
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
            "Lcom/smedialink/storage/data/locale/db/model/filter/FilterSettingsDb;",
            ">;"
        }
    .end annotation

    const-string v0, "SELECT * FROM FilterSettingsDb WHERE userId = ?"

    const/4 v1, 0x1

    .line 313
    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    .line 315
    invoke-virtual {v0, v1, p1, p2}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    .line 316
    iget-object p1, p0, Lcom/smedialink/storage/data/locale/db/dao/main/FiltersDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 317
    iget-object p1, p0, Lcom/smedialink/storage/data/locale/db/dao/main/FiltersDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 p2, 0x0

    const/4 v1, 0x0

    invoke-static {p1, v0, p2, v1}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    :try_start_0
    const-string p2, "filterId"

    .line 319
    invoke-static {p1, p2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result p2

    const-string v2, "fabs"

    .line 320
    invoke-static {p1, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    const-string v3, "icon"

    .line 321
    invoke-static {p1, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    const-string v4, "userId"

    .line 322
    invoke-static {p1, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 323
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 324
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 327
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 330
    invoke-interface {p1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v6, v1

    goto :goto_1

    .line 333
    :cond_0
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 335
    :goto_1
    invoke-static {v6}, Lcom/smedialink/bots/data/database/converter/Converter;->fromString(Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    .line 337
    invoke-interface {p1, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v10, v1

    goto :goto_2

    .line 340
    :cond_1
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v10, v6

    .line 343
    :goto_2
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 344
    new-instance v6, Lcom/smedialink/storage/data/locale/db/model/filter/FilterSettingsDb;

    move-object v7, v6

    invoke-direct/range {v7 .. v12}, Lcom/smedialink/storage/data/locale/db/model/filter/FilterSettingsDb;-><init>(ILjava/util/List;Ljava/lang/String;J)V

    .line 345
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 349
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 350
    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v5

    :catchall_0
    move-exception p2

    .line 349
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 350
    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 351
    throw p2
.end method

.method public insert(Lcom/smedialink/storage/data/locale/db/model/filter/FilterSettingsDb;)J
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "obj"
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lcom/smedialink/storage/data/locale/db/dao/main/FiltersDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 122
    iget-object v0, p0, Lcom/smedialink/storage/data/locale/db/dao/main/FiltersDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 124
    :try_start_0
    iget-object v0, p0, Lcom/smedialink/storage/data/locale/db/dao/main/FiltersDao_Impl;->__insertionAdapterOfFilterSettingsDb:Landroidx/room/EntityInsertionAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityInsertionAdapter;->insertAndReturnId(Ljava/lang/Object;)J

    move-result-wide v0

    .line 125
    iget-object p1, p0, Lcom/smedialink/storage/data/locale/db/dao/main/FiltersDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    iget-object p1, p0, Lcom/smedialink/storage/data/locale/db/dao/main/FiltersDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-wide v0

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/smedialink/storage/data/locale/db/dao/main/FiltersDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 129
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
    check-cast p1, Lcom/smedialink/storage/data/locale/db/model/filter/FilterSettingsDb;

    invoke-virtual {p0, p1}, Lcom/smedialink/storage/data/locale/db/dao/main/FiltersDao_Impl;->insert(Lcom/smedialink/storage/data/locale/db/model/filter/FilterSettingsDb;)J

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
            "Lcom/smedialink/storage/data/locale/db/model/filter/FilterSettingsDb;",
            ">;)V"
        }
    .end annotation

    .line 146
    iget-object v0, p0, Lcom/smedialink/storage/data/locale/db/dao/main/FiltersDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 147
    iget-object v0, p0, Lcom/smedialink/storage/data/locale/db/dao/main/FiltersDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 149
    :try_start_0
    iget-object v0, p0, Lcom/smedialink/storage/data/locale/db/dao/main/FiltersDao_Impl;->__insertionAdapterOfFilterSettingsDb:Landroidx/room/EntityInsertionAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityInsertionAdapter;->insert(Ljava/lang/Iterable;)V

    .line 150
    iget-object p1, p0, Lcom/smedialink/storage/data/locale/db/dao/main/FiltersDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    iget-object p1, p0, Lcom/smedialink/storage/data/locale/db/dao/main/FiltersDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/smedialink/storage/data/locale/db/dao/main/FiltersDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 153
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

    .line 278
    iget-object v0, p0, Lcom/smedialink/storage/data/locale/db/dao/main/FiltersDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 279
    iget-object v0, p0, Lcom/smedialink/storage/data/locale/db/dao/main/FiltersDao_Impl;->__preparedStmtOfRemoveFilterSettings:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    int-to-long v1, p1

    const/4 p1, 0x1

    .line 281
    invoke-interface {v0, p1, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/4 p1, 0x2

    .line 283
    invoke-interface {v0, p1, p2, p3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 284
    iget-object p1, p0, Lcom/smedialink/storage/data/locale/db/dao/main/FiltersDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 286
    :try_start_0
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    .line 287
    iget-object p1, p0, Lcom/smedialink/storage/data/locale/db/dao/main/FiltersDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 289
    iget-object p1, p0, Lcom/smedialink/storage/data/locale/db/dao/main/FiltersDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 290
    iget-object p1, p0, Lcom/smedialink/storage/data/locale/db/dao/main/FiltersDao_Impl;->__preparedStmtOfRemoveFilterSettings:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p1, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return-void

    :catchall_0
    move-exception p1

    .line 289
    iget-object p2, p0, Lcom/smedialink/storage/data/locale/db/dao/main/FiltersDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 290
    iget-object p2, p0, Lcom/smedialink/storage/data/locale/db/dao/main/FiltersDao_Impl;->__preparedStmtOfRemoveFilterSettings:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p2, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 291
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

    .line 296
    iget-object v0, p0, Lcom/smedialink/storage/data/locale/db/dao/main/FiltersDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 297
    iget-object v0, p0, Lcom/smedialink/storage/data/locale/db/dao/main/FiltersDao_Impl;->__preparedStmtOfResetSettings:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    const/4 v1, 0x1

    .line 299
    invoke-interface {v0, v1, p1, p2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 300
    iget-object p1, p0, Lcom/smedialink/storage/data/locale/db/dao/main/FiltersDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 302
    :try_start_0
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    .line 303
    iget-object p1, p0, Lcom/smedialink/storage/data/locale/db/dao/main/FiltersDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 305
    iget-object p1, p0, Lcom/smedialink/storage/data/locale/db/dao/main/FiltersDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 306
    iget-object p1, p0, Lcom/smedialink/storage/data/locale/db/dao/main/FiltersDao_Impl;->__preparedStmtOfResetSettings:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p1, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return-void

    :catchall_0
    move-exception p1

    .line 305
    iget-object p2, p0, Lcom/smedialink/storage/data/locale/db/dao/main/FiltersDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 306
    iget-object p2, p0, Lcom/smedialink/storage/data/locale/db/dao/main/FiltersDao_Impl;->__preparedStmtOfResetSettings:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p2, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 307
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
            "Lcom/smedialink/storage/domain/model/filters/FilterSettingsModel;",
            ">;)V"
        }
    .end annotation

    .line 267
    iget-object v0, p0, Lcom/smedialink/storage/data/locale/db/dao/main/FiltersDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 269
    :try_start_0
    invoke-static {p0, p1, p2, p3}, Lcom/smedialink/storage/data/locale/db/dao/main/FiltersDao_Impl;->access$401(Lcom/smedialink/storage/data/locale/db/dao/main/FiltersDao_Impl;JLjava/util/List;)V

    .line 270
    iget-object p1, p0, Lcom/smedialink/storage/data/locale/db/dao/main/FiltersDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 272
    iget-object p1, p0, Lcom/smedialink/storage/data/locale/db/dao/main/FiltersDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/smedialink/storage/data/locale/db/dao/main/FiltersDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 273
    throw p1
.end method
