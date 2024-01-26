.class public final Lcom/iMe/storage/data/locale/db/dao/minor/catalog/CatalogCategoryDao_Impl;
.super Lcom/iMe/storage/data/locale/db/dao/minor/catalog/CatalogCategoryDao;
.source "CatalogCategoryDao_Impl.java"


# instance fields
.field private final __db:Landroidx/room/RoomDatabase;

.field private final __insertionAdapterOfCatalogCategoryDb:Landroidx/room/EntityInsertionAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityInsertionAdapter<",
            "Lcom/iMe/storage/data/locale/db/model/catalog/CatalogCategoryDb;",
            ">;"
        }
    .end annotation
.end field

.field private final __preparedStmtOfRxDeleteCategories:Landroidx/room/SharedSQLiteStatement;


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

    .line 40
    invoke-direct {p0}, Lcom/iMe/storage/data/locale/db/dao/minor/catalog/CatalogCategoryDao;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/iMe/storage/data/locale/db/dao/minor/catalog/CatalogCategoryDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 42
    new-instance v0, Lcom/iMe/storage/data/locale/db/dao/minor/catalog/CatalogCategoryDao_Impl$1;

    invoke-direct {v0, p0, p1}, Lcom/iMe/storage/data/locale/db/dao/minor/catalog/CatalogCategoryDao_Impl$1;-><init>(Lcom/iMe/storage/data/locale/db/dao/minor/catalog/CatalogCategoryDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/iMe/storage/data/locale/db/dao/minor/catalog/CatalogCategoryDao_Impl;->__insertionAdapterOfCatalogCategoryDb:Landroidx/room/EntityInsertionAdapter;

    .line 59
    new-instance v0, Lcom/iMe/storage/data/locale/db/dao/minor/catalog/CatalogCategoryDao_Impl$2;

    invoke-direct {v0, p0, p1}, Lcom/iMe/storage/data/locale/db/dao/minor/catalog/CatalogCategoryDao_Impl$2;-><init>(Lcom/iMe/storage/data/locale/db/dao/minor/catalog/CatalogCategoryDao_Impl;Landroidx/room/RoomDatabase;)V

    .line 70
    new-instance v0, Lcom/iMe/storage/data/locale/db/dao/minor/catalog/CatalogCategoryDao_Impl$3;

    invoke-direct {v0, p0, p1}, Lcom/iMe/storage/data/locale/db/dao/minor/catalog/CatalogCategoryDao_Impl$3;-><init>(Lcom/iMe/storage/data/locale/db/dao/minor/catalog/CatalogCategoryDao_Impl;Landroidx/room/RoomDatabase;)V

    .line 88
    new-instance v0, Lcom/iMe/storage/data/locale/db/dao/minor/catalog/CatalogCategoryDao_Impl$4;

    invoke-direct {v0, p0, p1}, Lcom/iMe/storage/data/locale/db/dao/minor/catalog/CatalogCategoryDao_Impl$4;-><init>(Lcom/iMe/storage/data/locale/db/dao/minor/catalog/CatalogCategoryDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/iMe/storage/data/locale/db/dao/minor/catalog/CatalogCategoryDao_Impl;->__preparedStmtOfRxDeleteCategories:Landroidx/room/SharedSQLiteStatement;

    return-void
.end method

.method static synthetic access$000(Lcom/iMe/storage/data/locale/db/dao/minor/catalog/CatalogCategoryDao_Impl;)Landroidx/room/RoomDatabase;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/iMe/storage/data/locale/db/dao/minor/catalog/CatalogCategoryDao_Impl;->__db:Landroidx/room/RoomDatabase;

    return-object p0
.end method

.method static synthetic access$100(Lcom/iMe/storage/data/locale/db/dao/minor/catalog/CatalogCategoryDao_Impl;)Landroidx/room/EntityInsertionAdapter;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/iMe/storage/data/locale/db/dao/minor/catalog/CatalogCategoryDao_Impl;->__insertionAdapterOfCatalogCategoryDb:Landroidx/room/EntityInsertionAdapter;

    return-object p0
.end method

.method static synthetic access$400(Lcom/iMe/storage/data/locale/db/dao/minor/catalog/CatalogCategoryDao_Impl;)Landroidx/room/SharedSQLiteStatement;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/iMe/storage/data/locale/db/dao/minor/catalog/CatalogCategoryDao_Impl;->__preparedStmtOfRxDeleteCategories:Landroidx/room/SharedSQLiteStatement;

    return-object p0
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

    .line 307
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCategories()Lio/reactivex/Single;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Single<",
            "Ljava/util/List<",
            "Lcom/iMe/storage/data/locale/db/model/catalog/CatalogCategoryDb;",
            ">;>;"
        }
    .end annotation

    const-string v0, "SELECT * FROM CatalogCategoryDb"

    const/4 v1, 0x0

    .line 265
    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    .line 266
    new-instance v1, Lcom/iMe/storage/data/locale/db/dao/minor/catalog/CatalogCategoryDao_Impl$11;

    invoke-direct {v1, p0, v0}, Lcom/iMe/storage/data/locale/db/dao/minor/catalog/CatalogCategoryDao_Impl$11;-><init>(Lcom/iMe/storage/data/locale/db/dao/minor/catalog/CatalogCategoryDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    invoke-static {v1}, Landroidx/room/RxRoom;->createSingle(Ljava/util/concurrent/Callable;)Lio/reactivex/Single;

    move-result-object v0

    return-object v0
.end method

.method public rxDeleteCategories()Lio/reactivex/Completable;
    .locals 1

    .line 245
    new-instance v0, Lcom/iMe/storage/data/locale/db/dao/minor/catalog/CatalogCategoryDao_Impl$10;

    invoke-direct {v0, p0}, Lcom/iMe/storage/data/locale/db/dao/minor/catalog/CatalogCategoryDao_Impl$10;-><init>(Lcom/iMe/storage/data/locale/db/dao/minor/catalog/CatalogCategoryDao_Impl;)V

    invoke-static {v0}, Lio/reactivex/Completable;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/Completable;

    move-result-object v0

    return-object v0
.end method

.method public rxInsert(Ljava/util/List;)Lio/reactivex/Completable;
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
            "Lcom/iMe/storage/data/locale/db/model/catalog/CatalogCategoryDb;",
            ">;)",
            "Lio/reactivex/Completable;"
        }
    .end annotation

    .line 170
    new-instance v0, Lcom/iMe/storage/data/locale/db/dao/minor/catalog/CatalogCategoryDao_Impl$7;

    invoke-direct {v0, p0, p1}, Lcom/iMe/storage/data/locale/db/dao/minor/catalog/CatalogCategoryDao_Impl$7;-><init>(Lcom/iMe/storage/data/locale/db/dao/minor/catalog/CatalogCategoryDao_Impl;Ljava/util/List;)V

    invoke-static {v0}, Lio/reactivex/Completable;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/Completable;

    move-result-object p1

    return-object p1
.end method
