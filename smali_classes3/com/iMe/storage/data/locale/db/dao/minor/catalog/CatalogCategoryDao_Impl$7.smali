.class Lcom/iMe/storage/data/locale/db/dao/minor/catalog/CatalogCategoryDao_Impl$7;
.super Ljava/lang/Object;
.source "CatalogCategoryDao_Impl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/storage/data/locale/db/dao/minor/catalog/CatalogCategoryDao_Impl;->rxInsert(Ljava/util/List;)Lio/reactivex/Completable;
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
.field final synthetic this$0:Lcom/iMe/storage/data/locale/db/dao/minor/catalog/CatalogCategoryDao_Impl;

.field final synthetic val$obj:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/iMe/storage/data/locale/db/dao/minor/catalog/CatalogCategoryDao_Impl;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$obj"
        }
    .end annotation

    .line 170
    iput-object p1, p0, Lcom/iMe/storage/data/locale/db/dao/minor/catalog/CatalogCategoryDao_Impl$7;->this$0:Lcom/iMe/storage/data/locale/db/dao/minor/catalog/CatalogCategoryDao_Impl;

    iput-object p2, p0, Lcom/iMe/storage/data/locale/db/dao/minor/catalog/CatalogCategoryDao_Impl$7;->val$obj:Ljava/util/List;

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

    .line 170
    invoke-virtual {p0}, Lcom/iMe/storage/data/locale/db/dao/minor/catalog/CatalogCategoryDao_Impl$7;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 173
    iget-object v0, p0, Lcom/iMe/storage/data/locale/db/dao/minor/catalog/CatalogCategoryDao_Impl$7;->this$0:Lcom/iMe/storage/data/locale/db/dao/minor/catalog/CatalogCategoryDao_Impl;

    invoke-static {v0}, Lcom/iMe/storage/data/locale/db/dao/minor/catalog/CatalogCategoryDao_Impl;->access$000(Lcom/iMe/storage/data/locale/db/dao/minor/catalog/CatalogCategoryDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 175
    :try_start_0
    iget-object v0, p0, Lcom/iMe/storage/data/locale/db/dao/minor/catalog/CatalogCategoryDao_Impl$7;->this$0:Lcom/iMe/storage/data/locale/db/dao/minor/catalog/CatalogCategoryDao_Impl;

    invoke-static {v0}, Lcom/iMe/storage/data/locale/db/dao/minor/catalog/CatalogCategoryDao_Impl;->access$100(Lcom/iMe/storage/data/locale/db/dao/minor/catalog/CatalogCategoryDao_Impl;)Landroidx/room/EntityInsertionAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/iMe/storage/data/locale/db/dao/minor/catalog/CatalogCategoryDao_Impl$7;->val$obj:Ljava/util/List;

    invoke-virtual {v0, v1}, Landroidx/room/EntityInsertionAdapter;->insert(Ljava/lang/Iterable;)V

    .line 176
    iget-object v0, p0, Lcom/iMe/storage/data/locale/db/dao/minor/catalog/CatalogCategoryDao_Impl$7;->this$0:Lcom/iMe/storage/data/locale/db/dao/minor/catalog/CatalogCategoryDao_Impl;

    invoke-static {v0}, Lcom/iMe/storage/data/locale/db/dao/minor/catalog/CatalogCategoryDao_Impl;->access$000(Lcom/iMe/storage/data/locale/db/dao/minor/catalog/CatalogCategoryDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .line 179
    iget-object v1, p0, Lcom/iMe/storage/data/locale/db/dao/minor/catalog/CatalogCategoryDao_Impl$7;->this$0:Lcom/iMe/storage/data/locale/db/dao/minor/catalog/CatalogCategoryDao_Impl;

    invoke-static {v1}, Lcom/iMe/storage/data/locale/db/dao/minor/catalog/CatalogCategoryDao_Impl;->access$000(Lcom/iMe/storage/data/locale/db/dao/minor/catalog/CatalogCategoryDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/iMe/storage/data/locale/db/dao/minor/catalog/CatalogCategoryDao_Impl$7;->this$0:Lcom/iMe/storage/data/locale/db/dao/minor/catalog/CatalogCategoryDao_Impl;

    invoke-static {v1}, Lcom/iMe/storage/data/locale/db/dao/minor/catalog/CatalogCategoryDao_Impl;->access$000(Lcom/iMe/storage/data/locale/db/dao/minor/catalog/CatalogCategoryDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 180
    throw v0
.end method
