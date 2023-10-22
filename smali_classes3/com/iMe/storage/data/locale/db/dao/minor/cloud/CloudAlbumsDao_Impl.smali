.class public final Lcom/iMe/storage/data/locale/db/dao/minor/cloud/CloudAlbumsDao_Impl;
.super Lcom/iMe/storage/data/locale/db/dao/minor/cloud/CloudAlbumsDao;
.source "CloudAlbumsDao_Impl.java"


# instance fields
.field private final __db:Landroidx/room/RoomDatabase;


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

    .line 34
    invoke-direct {p0}, Lcom/iMe/storage/data/locale/db/dao/minor/cloud/CloudAlbumsDao;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/iMe/storage/data/locale/db/dao/minor/cloud/CloudAlbumsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 36
    new-instance v0, Lcom/iMe/storage/data/locale/db/dao/minor/cloud/CloudAlbumsDao_Impl$1;

    invoke-direct {v0, p0, p1}, Lcom/iMe/storage/data/locale/db/dao/minor/cloud/CloudAlbumsDao_Impl$1;-><init>(Lcom/iMe/storage/data/locale/db/dao/minor/cloud/CloudAlbumsDao_Impl;Landroidx/room/RoomDatabase;)V

    .line 48
    new-instance v0, Lcom/iMe/storage/data/locale/db/dao/minor/cloud/CloudAlbumsDao_Impl$2;

    invoke-direct {v0, p0, p1}, Lcom/iMe/storage/data/locale/db/dao/minor/cloud/CloudAlbumsDao_Impl$2;-><init>(Lcom/iMe/storage/data/locale/db/dao/minor/cloud/CloudAlbumsDao_Impl;Landroidx/room/RoomDatabase;)V

    .line 60
    new-instance v0, Lcom/iMe/storage/data/locale/db/dao/minor/cloud/CloudAlbumsDao_Impl$3;

    invoke-direct {v0, p0, p1}, Lcom/iMe/storage/data/locale/db/dao/minor/cloud/CloudAlbumsDao_Impl$3;-><init>(Lcom/iMe/storage/data/locale/db/dao/minor/cloud/CloudAlbumsDao_Impl;Landroidx/room/RoomDatabase;)V

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

    .line 249
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAllData()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/iMe/storage/data/locale/db/model/cloud/CloudAlbumDb;",
            ">;"
        }
    .end annotation

    const-string v0, "SELECT * FROM CloudAlbumDb"

    const/4 v1, 0x0

    .line 225
    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    .line 226
    iget-object v2, p0, Lcom/iMe/storage/data/locale/db/dao/minor/cloud/CloudAlbumsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 227
    iget-object v2, p0, Lcom/iMe/storage/data/locale/db/dao/minor/cloud/CloudAlbumsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v3, 0x0

    invoke-static {v2, v0, v1, v3}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v1

    :try_start_0
    const-string v2, "userId"

    .line 229
    invoke-static {v1, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    const-string v3, "albumId"

    .line 230
    invoke-static {v1, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    .line 231
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 232
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 235
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 237
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 238
    new-instance v9, Lcom/iMe/storage/data/locale/db/model/cloud/CloudAlbumDb;

    invoke-direct {v9, v5, v6, v7, v8}, Lcom/iMe/storage/data/locale/db/model/cloud/CloudAlbumDb;-><init>(JJ)V

    .line 239
    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 243
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 244
    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v4

    :catchall_0
    move-exception v2

    .line 243
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 244
    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 245
    throw v2
.end method
