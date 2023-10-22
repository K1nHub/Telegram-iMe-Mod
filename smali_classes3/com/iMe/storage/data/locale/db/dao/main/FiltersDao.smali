.class public abstract Lcom/iMe/storage/data/locale/db/dao/main/FiltersDao;
.super Ljava/lang/Object;
.source "FiltersDao.kt"

# interfaces
.implements Lcom/iMe/storage/data/locale/db/dao/base/BaseDao;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/iMe/storage/data/locale/db/dao/base/BaseDao<",
        "Lcom/iMe/storage/data/locale/db/model/filter/FilterSettingsDb;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFiltersDao.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FiltersDao.kt\ncom/iMe/storage/data/locale/db/dao/main/FiltersDao\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,27:1\n1549#2:28\n1620#2,3:29\n*S KotlinDebug\n*F\n+ 1 FiltersDao.kt\ncom/iMe/storage/data/locale/db/dao/main/FiltersDao\n*L\n25#1:28\n25#1:29,3\n*E\n"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getFilterSettings(J)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lcom/iMe/storage/data/locale/db/model/filter/FilterSettingsDb;",
            ">;"
        }
    .end annotation
.end method

.method public abstract removeFilterSettings(IJ)V
.end method

.method public abstract resetSettings(J)V
.end method

.method public restoreBackup(JLjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/filters/FilterSettingsModel;",
            ">;)V"
        }
    .end annotation

    const-string v0, "filters"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-virtual {p0, p1, p2}, Lcom/iMe/storage/data/locale/db/dao/main/FiltersDao;->resetSettings(J)V

    .line 1549
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p3, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1621
    check-cast v1, Lcom/iMe/storage/domain/model/filters/FilterSettingsModel;

    .line 25
    invoke-static {v1, p1, p2}, Lcom/iMe/storage/data/mapper/filter/FilterSettingsMappingKt;->mapToDb(Lcom/iMe/storage/domain/model/filters/FilterSettingsModel;J)Lcom/iMe/storage/data/locale/db/model/filter/FilterSettingsDb;

    move-result-object v1

    .line 1621
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 25
    :cond_0
    invoke-interface {p0, v0}, Lcom/iMe/storage/data/locale/db/dao/base/BaseDao;->insert(Ljava/util/List;)V

    return-void
.end method
