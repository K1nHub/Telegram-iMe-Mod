.class Lcom/smedialink/storage/data/locale/db/dao/minor/catalog/CatalogLanguageDao_Impl$11;
.super Ljava/lang/Object;
.source "CatalogLanguageDao_Impl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/storage/data/locale/db/dao/minor/catalog/CatalogLanguageDao_Impl;->getLanguages()Lio/reactivex/Single;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/util/List<",
        "Lcom/smedialink/storage/data/locale/db/model/catalog/CatalogLanguageDb;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smedialink/storage/data/locale/db/dao/minor/catalog/CatalogLanguageDao_Impl;

.field final synthetic val$_statement:Landroidx/room/RoomSQLiteQuery;


# direct methods
.method constructor <init>(Lcom/smedialink/storage/data/locale/db/dao/minor/catalog/CatalogLanguageDao_Impl;Landroidx/room/RoomSQLiteQuery;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$_statement"
        }
    .end annotation

    .line 274
    iput-object p1, p0, Lcom/smedialink/storage/data/locale/db/dao/minor/catalog/CatalogLanguageDao_Impl$11;->this$0:Lcom/smedialink/storage/data/locale/db/dao/minor/catalog/CatalogLanguageDao_Impl;

    iput-object p2, p0, Lcom/smedialink/storage/data/locale/db/dao/minor/catalog/CatalogLanguageDao_Impl$11;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 274
    invoke-virtual {p0}, Lcom/smedialink/storage/data/locale/db/dao/minor/catalog/CatalogLanguageDao_Impl$11;->call()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/smedialink/storage/data/locale/db/model/catalog/CatalogLanguageDb;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 277
    iget-object v0, p0, Lcom/smedialink/storage/data/locale/db/dao/minor/catalog/CatalogLanguageDao_Impl$11;->this$0:Lcom/smedialink/storage/data/locale/db/dao/minor/catalog/CatalogLanguageDao_Impl;

    invoke-static {v0}, Lcom/smedialink/storage/data/locale/db/dao/minor/catalog/CatalogLanguageDao_Impl;->access$000(Lcom/smedialink/storage/data/locale/db/dao/minor/catalog/CatalogLanguageDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v0

    iget-object v1, p0, Lcom/smedialink/storage/data/locale/db/dao/minor/catalog/CatalogLanguageDao_Impl$11;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    :try_start_0
    const-string v1, "id"

    .line 279
    invoke-static {v0, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    const-string v2, "nativeTitle"

    .line 280
    invoke-static {v0, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    const-string v4, "title"

    .line 281
    invoke-static {v0, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 282
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 283
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 286
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 288
    invoke-interface {v0, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8

    if-eqz v8, :cond_0

    move-object v8, v3

    goto :goto_1

    .line 291
    :cond_0
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 294
    :goto_1
    invoke-interface {v0, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v9

    if-eqz v9, :cond_1

    move-object v9, v3

    goto :goto_2

    .line 297
    :cond_1
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 299
    :goto_2
    new-instance v10, Lcom/smedialink/storage/data/locale/db/model/catalog/CatalogLanguageDb;

    invoke-direct {v10, v6, v7, v8, v9}, Lcom/smedialink/storage/data/locale/db/model/catalog/CatalogLanguageDb;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    .line 300
    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 307
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object v5

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 308
    throw v1
.end method

.method protected finalize()V
    .locals 1

    .line 313
    iget-object v0, p0, Lcom/smedialink/storage/data/locale/db/dao/minor/catalog/CatalogLanguageDao_Impl$11;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-void
.end method
