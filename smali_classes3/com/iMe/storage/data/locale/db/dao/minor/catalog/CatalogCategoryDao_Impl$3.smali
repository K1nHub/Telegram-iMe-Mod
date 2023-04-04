.class Lcom/iMe/storage/data/locale/db/dao/minor/catalog/CatalogCategoryDao_Impl$3;
.super Landroidx/room/EntityDeletionOrUpdateAdapter;
.source "CatalogCategoryDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/storage/data/locale/db/dao/minor/catalog/CatalogCategoryDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityDeletionOrUpdateAdapter<",
        "Lcom/iMe/storage/data/locale/db/model/catalog/CatalogCategoryDb;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/iMe/storage/data/locale/db/dao/minor/catalog/CatalogCategoryDao_Impl;Landroidx/room/RoomDatabase;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "database"
        }
    .end annotation

    .line 70
    invoke-direct {p0, p2}, Landroidx/room/EntityDeletionOrUpdateAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/iMe/storage/data/locale/db/model/catalog/CatalogCategoryDb;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "stmt",
            "value"
        }
    .end annotation

    .line 78
    invoke-virtual {p2}, Lcom/iMe/storage/data/locale/db/model/catalog/CatalogCategoryDb;->getId()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 79
    invoke-virtual {p2}, Lcom/iMe/storage/data/locale/db/model/catalog/CatalogCategoryDb;->getTitle()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    if-nez v0, :cond_0

    .line 80
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_0

    .line 82
    :cond_0
    invoke-virtual {p2}, Lcom/iMe/storage/data/locale/db/model/catalog/CatalogCategoryDb;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_0
    const/4 v0, 0x3

    .line 84
    invoke-virtual {p2}, Lcom/iMe/storage/data/locale/db/model/catalog/CatalogCategoryDb;->getTotal()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/4 v0, 0x4

    .line 85
    invoke-virtual {p2}, Lcom/iMe/storage/data/locale/db/model/catalog/CatalogCategoryDb;->getId()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    return-void
.end method

.method public bridge synthetic bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "stmt",
            "value"
        }
    .end annotation

    .line 70
    check-cast p2, Lcom/iMe/storage/data/locale/db/model/catalog/CatalogCategoryDb;

    invoke-virtual {p0, p1, p2}, Lcom/iMe/storage/data/locale/db/dao/minor/catalog/CatalogCategoryDao_Impl$3;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/iMe/storage/data/locale/db/model/catalog/CatalogCategoryDb;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "UPDATE OR REPLACE `CatalogCategoryDb` SET `id` = ?,`title` = ?,`total` = ? WHERE `id` = ?"

    return-object v0
.end method
