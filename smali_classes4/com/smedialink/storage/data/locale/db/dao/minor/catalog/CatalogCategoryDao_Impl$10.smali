.class Lcom/smedialink/storage/data/locale/db/dao/minor/catalog/CatalogCategoryDao_Impl$10;
.super Ljava/lang/Object;
.source "CatalogCategoryDao_Impl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/storage/data/locale/db/dao/minor/catalog/CatalogCategoryDao_Impl;->rxDeleteCategories()Lio/reactivex/Completable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smedialink/storage/data/locale/db/dao/minor/catalog/CatalogCategoryDao_Impl;


# direct methods
.method constructor <init>(Lcom/smedialink/storage/data/locale/db/dao/minor/catalog/CatalogCategoryDao_Impl;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 245
    iput-object p1, p0, Lcom/smedialink/storage/data/locale/db/dao/minor/catalog/CatalogCategoryDao_Impl$10;->this$0:Lcom/smedialink/storage/data/locale/db/dao/minor/catalog/CatalogCategoryDao_Impl;

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

    .line 245
    invoke-virtual {p0}, Lcom/smedialink/storage/data/locale/db/dao/minor/catalog/CatalogCategoryDao_Impl$10;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 248
    iget-object v0, p0, Lcom/smedialink/storage/data/locale/db/dao/minor/catalog/CatalogCategoryDao_Impl$10;->this$0:Lcom/smedialink/storage/data/locale/db/dao/minor/catalog/CatalogCategoryDao_Impl;

    invoke-static {v0}, Lcom/smedialink/storage/data/locale/db/dao/minor/catalog/CatalogCategoryDao_Impl;->access$400(Lcom/smedialink/storage/data/locale/db/dao/minor/catalog/CatalogCategoryDao_Impl;)Landroidx/room/SharedSQLiteStatement;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    .line 249
    iget-object v1, p0, Lcom/smedialink/storage/data/locale/db/dao/minor/catalog/CatalogCategoryDao_Impl$10;->this$0:Lcom/smedialink/storage/data/locale/db/dao/minor/catalog/CatalogCategoryDao_Impl;

    invoke-static {v1}, Lcom/smedialink/storage/data/locale/db/dao/minor/catalog/CatalogCategoryDao_Impl;->access$000(Lcom/smedialink/storage/data/locale/db/dao/minor/catalog/CatalogCategoryDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 251
    :try_start_0
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    .line 252
    iget-object v1, p0, Lcom/smedialink/storage/data/locale/db/dao/minor/catalog/CatalogCategoryDao_Impl$10;->this$0:Lcom/smedialink/storage/data/locale/db/dao/minor/catalog/CatalogCategoryDao_Impl;

    invoke-static {v1}, Lcom/smedialink/storage/data/locale/db/dao/minor/catalog/CatalogCategoryDao_Impl;->access$000(Lcom/smedialink/storage/data/locale/db/dao/minor/catalog/CatalogCategoryDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    .line 255
    iget-object v2, p0, Lcom/smedialink/storage/data/locale/db/dao/minor/catalog/CatalogCategoryDao_Impl$10;->this$0:Lcom/smedialink/storage/data/locale/db/dao/minor/catalog/CatalogCategoryDao_Impl;

    invoke-static {v2}, Lcom/smedialink/storage/data/locale/db/dao/minor/catalog/CatalogCategoryDao_Impl;->access$000(Lcom/smedialink/storage/data/locale/db/dao/minor/catalog/CatalogCategoryDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 256
    iget-object v2, p0, Lcom/smedialink/storage/data/locale/db/dao/minor/catalog/CatalogCategoryDao_Impl$10;->this$0:Lcom/smedialink/storage/data/locale/db/dao/minor/catalog/CatalogCategoryDao_Impl;

    invoke-static {v2}, Lcom/smedialink/storage/data/locale/db/dao/minor/catalog/CatalogCategoryDao_Impl;->access$400(Lcom/smedialink/storage/data/locale/db/dao/minor/catalog/CatalogCategoryDao_Impl;)Landroidx/room/SharedSQLiteStatement;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return-object v1

    :catchall_0
    move-exception v1

    .line 255
    iget-object v2, p0, Lcom/smedialink/storage/data/locale/db/dao/minor/catalog/CatalogCategoryDao_Impl$10;->this$0:Lcom/smedialink/storage/data/locale/db/dao/minor/catalog/CatalogCategoryDao_Impl;

    invoke-static {v2}, Lcom/smedialink/storage/data/locale/db/dao/minor/catalog/CatalogCategoryDao_Impl;->access$000(Lcom/smedialink/storage/data/locale/db/dao/minor/catalog/CatalogCategoryDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 256
    iget-object v2, p0, Lcom/smedialink/storage/data/locale/db/dao/minor/catalog/CatalogCategoryDao_Impl$10;->this$0:Lcom/smedialink/storage/data/locale/db/dao/minor/catalog/CatalogCategoryDao_Impl;

    invoke-static {v2}, Lcom/smedialink/storage/data/locale/db/dao/minor/catalog/CatalogCategoryDao_Impl;->access$400(Lcom/smedialink/storage/data/locale/db/dao/minor/catalog/CatalogCategoryDao_Impl;)Landroidx/room/SharedSQLiteStatement;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 257
    throw v1
.end method
