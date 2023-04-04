.class public final Lcom/iMe/bots/data/database/BotsTagDao_Impl;
.super Lcom/iMe/bots/data/database/BotsTagDao;
.source "BotsTagDao_Impl.java"


# instance fields
.field private final __db:Landroidx/room/RoomDatabase;

.field private final __insertionAdapterOfTagDbModel:Landroidx/room/EntityInsertionAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityInsertionAdapter<",
            "Lcom/iMe/bots/data/model/database/TagDbModel;",
            ">;"
        }
    .end annotation
.end field


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

    .line 30
    invoke-direct {p0}, Lcom/iMe/bots/data/database/BotsTagDao;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/iMe/bots/data/database/BotsTagDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 32
    new-instance v0, Lcom/iMe/bots/data/database/BotsTagDao_Impl$1;

    invoke-direct {v0, p0, p1}, Lcom/iMe/bots/data/database/BotsTagDao_Impl$1;-><init>(Lcom/iMe/bots/data/database/BotsTagDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/iMe/bots/data/database/BotsTagDao_Impl;->__insertionAdapterOfTagDbModel:Landroidx/room/EntityInsertionAdapter;

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

    .line 247
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAll()Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/iMe/bots/data/model/database/TagDbModel;",
            ">;"
        }
    .end annotation

    const-string v0, "SELECT * FROM TagDbModel"

    const/4 v1, 0x0

    .line 142
    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    .line 143
    iget-object v2, p0, Lcom/iMe/bots/data/database/BotsTagDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 144
    iget-object v2, p0, Lcom/iMe/bots/data/database/BotsTagDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v3, 0x0

    invoke-static {v2, v0, v1, v3}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v1

    :try_start_0
    const-string v2, "id"

    .line 146
    invoke-static {v1, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    const-string v4, "title"

    .line 147
    invoke-static {v1, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "hidden"

    .line 148
    invoke-static {v1, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "locales"

    .line 149
    invoke-static {v1, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    .line 150
    new-instance v7, Ljava/util/ArrayList;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 151
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 154
    invoke-interface {v1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8

    if-eqz v8, :cond_0

    move-object v8, v3

    goto :goto_1

    .line 157
    :cond_0
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 160
    :goto_1
    invoke-interface {v1, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v9

    if-eqz v9, :cond_1

    move-object v9, v3

    goto :goto_2

    .line 163
    :cond_1
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 166
    :goto_2
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 169
    invoke-interface {v1, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v11

    if-eqz v11, :cond_2

    move-object v11, v3

    goto :goto_3

    .line 172
    :cond_2
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 174
    :goto_3
    invoke-static {v11}, Lcom/iMe/bots/data/database/converter/Converter;->toMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v11

    .line 175
    new-instance v12, Lcom/iMe/bots/data/model/database/TagDbModel;

    invoke-direct {v12, v8, v9, v10, v11}, Lcom/iMe/bots/data/model/database/TagDbModel;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;)V

    .line 176
    invoke-interface {v7, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 180
    :cond_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 181
    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v7

    :catchall_0
    move-exception v2

    .line 180
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 181
    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 182
    throw v2
.end method

.method public insertOrReplace(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "entities"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/iMe/bots/data/model/database/TagDbModel;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/iMe/bots/data/database/BotsTagDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 77
    iget-object v0, p0, Lcom/iMe/bots/data/database/BotsTagDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 79
    :try_start_0
    iget-object v0, p0, Lcom/iMe/bots/data/database/BotsTagDao_Impl;->__insertionAdapterOfTagDbModel:Landroidx/room/EntityInsertionAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityInsertionAdapter;->insertAndReturnIdsList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    .line 80
    iget-object v0, p0, Lcom/iMe/bots/data/database/BotsTagDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    iget-object v0, p0, Lcom/iMe/bots/data/database/BotsTagDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/iMe/bots/data/database/BotsTagDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 84
    throw p1
.end method
