.class public final Lcom/smedialink/storage/data/locale/db/dao/minor/catalog/CatalogLanguageDao_Impl;
.super Lcom/smedialink/storage/data/locale/db/dao/minor/catalog/CatalogLanguageDao;
.source "CatalogLanguageDao_Impl.java"


# instance fields
.field private final __db:Landroidx/room/RoomDatabase;

.field private final __insertionAdapterOfCatalogLanguageDb:Landroidx/room/EntityInsertionAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityInsertionAdapter<",
            "Lcom/smedialink/storage/data/locale/db/model/catalog/CatalogLanguageDb;",
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

    .line 40
    invoke-direct {p0}, Lcom/smedialink/storage/data/locale/db/dao/minor/catalog/CatalogLanguageDao;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/smedialink/storage/data/locale/db/dao/minor/catalog/CatalogLanguageDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 42
    new-instance v0, Lcom/smedialink/storage/data/locale/db/dao/minor/catalog/CatalogLanguageDao_Impl$1;

    invoke-direct {v0, p0, p1}, Lcom/smedialink/storage/data/locale/db/dao/minor/catalog/CatalogLanguageDao_Impl$1;-><init>(Lcom/smedialink/storage/data/locale/db/dao/minor/catalog/CatalogLanguageDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/smedialink/storage/data/locale/db/dao/minor/catalog/CatalogLanguageDao_Impl;->__insertionAdapterOfCatalogLanguageDb:Landroidx/room/EntityInsertionAdapter;

    .line 63
    new-instance v0, Lcom/smedialink/storage/data/locale/db/dao/minor/catalog/CatalogLanguageDao_Impl$2;

    invoke-direct {v0, p0, p1}, Lcom/smedialink/storage/data/locale/db/dao/minor/catalog/CatalogLanguageDao_Impl$2;-><init>(Lcom/smedialink/storage/data/locale/db/dao/minor/catalog/CatalogLanguageDao_Impl;Landroidx/room/RoomDatabase;)V

    .line 74
    new-instance v0, Lcom/smedialink/storage/data/locale/db/dao/minor/catalog/CatalogLanguageDao_Impl$3;

    invoke-direct {v0, p0, p1}, Lcom/smedialink/storage/data/locale/db/dao/minor/catalog/CatalogLanguageDao_Impl$3;-><init>(Lcom/smedialink/storage/data/locale/db/dao/minor/catalog/CatalogLanguageDao_Impl;Landroidx/room/RoomDatabase;)V

    .line 96
    new-instance v0, Lcom/smedialink/storage/data/locale/db/dao/minor/catalog/CatalogLanguageDao_Impl$4;

    invoke-direct {v0, p0, p1}, Lcom/smedialink/storage/data/locale/db/dao/minor/catalog/CatalogLanguageDao_Impl$4;-><init>(Lcom/smedialink/storage/data/locale/db/dao/minor/catalog/CatalogLanguageDao_Impl;Landroidx/room/RoomDatabase;)V

    return-void
.end method

.method static synthetic access$000(Lcom/smedialink/storage/data/locale/db/dao/minor/catalog/CatalogLanguageDao_Impl;)Landroidx/room/RoomDatabase;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/smedialink/storage/data/locale/db/dao/minor/catalog/CatalogLanguageDao_Impl;->__db:Landroidx/room/RoomDatabase;

    return-object p0
.end method

.method static synthetic access$100(Lcom/smedialink/storage/data/locale/db/dao/minor/catalog/CatalogLanguageDao_Impl;)Landroidx/room/EntityInsertionAdapter;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/smedialink/storage/data/locale/db/dao/minor/catalog/CatalogLanguageDao_Impl;->__insertionAdapterOfCatalogLanguageDb:Landroidx/room/EntityInsertionAdapter;

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

    .line 319
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getLanguages()Lio/reactivex/Single;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Single<",
            "Ljava/util/List<",
            "Lcom/smedialink/storage/data/locale/db/model/catalog/CatalogLanguageDb;",
            ">;>;"
        }
    .end annotation

    const-string v0, "SELECT * FROM CatalogLanguageDb"

    const/4 v1, 0x0

    .line 273
    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    .line 274
    new-instance v1, Lcom/smedialink/storage/data/locale/db/dao/minor/catalog/CatalogLanguageDao_Impl$11;

    invoke-direct {v1, p0, v0}, Lcom/smedialink/storage/data/locale/db/dao/minor/catalog/CatalogLanguageDao_Impl$11;-><init>(Lcom/smedialink/storage/data/locale/db/dao/minor/catalog/CatalogLanguageDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    invoke-static {v1}, Landroidx/room/RxRoom;->createSingle(Ljava/util/concurrent/Callable;)Lio/reactivex/Single;

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
            "Lcom/smedialink/storage/data/locale/db/model/catalog/CatalogLanguageDb;",
            ">;)",
            "Lio/reactivex/Completable;"
        }
    .end annotation

    .line 178
    new-instance v0, Lcom/smedialink/storage/data/locale/db/dao/minor/catalog/CatalogLanguageDao_Impl$7;

    invoke-direct {v0, p0, p1}, Lcom/smedialink/storage/data/locale/db/dao/minor/catalog/CatalogLanguageDao_Impl$7;-><init>(Lcom/smedialink/storage/data/locale/db/dao/minor/catalog/CatalogLanguageDao_Impl;Ljava/util/List;)V

    invoke-static {v0}, Lio/reactivex/Completable;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/Completable;

    move-result-object p1

    return-object p1
.end method
