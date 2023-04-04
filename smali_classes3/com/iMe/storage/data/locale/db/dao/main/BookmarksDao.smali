.class public abstract Lcom/iMe/storage/data/locale/db/dao/main/BookmarksDao;
.super Ljava/lang/Object;
.source "BookmarksDao.kt"

# interfaces
.implements Lcom/iMe/storage/data/locale/db/dao/base/BaseDao;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/iMe/storage/data/locale/db/dao/base/BaseDao<",
        "Lcom/iMe/storage/data/locale/db/model/bookmarks/BookmarksDb;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBookmarksDao.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BookmarksDao.kt\ncom/iMe/storage/data/locale/db/dao/main/BookmarksDao\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,27:1\n1549#2:28\n1620#2,3:29\n*S KotlinDebug\n*F\n+ 1 BookmarksDao.kt\ncom/iMe/storage/data/locale/db/dao/main/BookmarksDao\n*L\n24#1:28\n24#1:29,3\n*E\n"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract deleteAllBookmarksByUserId(J)V
.end method

.method public abstract getAllBookmarksForUser(J)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lcom/iMe/storage/data/locale/db/model/bookmarks/BookmarksDb;",
            ">;"
        }
    .end annotation
.end method

.method public restoreBackup(JLjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/bookmarks/BookmarksModel;",
            ">;)V"
        }
    .end annotation

    const-string v0, "settings"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-virtual {p0, p1, p2}, Lcom/iMe/storage/data/locale/db/dao/main/BookmarksDao;->deleteAllBookmarksByUserId(J)V

    .line 23
    invoke-interface {p3}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

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
    check-cast v1, Lcom/iMe/storage/domain/model/bookmarks/BookmarksModel;

    .line 24
    invoke-static {v1, p1, p2}, Lcom/iMe/storage/data/mapper/bookmarks/BookmarksMappingKt;->mapToDb(Lcom/iMe/storage/domain/model/bookmarks/BookmarksModel;J)Lcom/iMe/storage/data/locale/db/model/bookmarks/BookmarksDb;

    move-result-object v1

    .line 1621
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 24
    :cond_0
    invoke-interface {p0, v0}, Lcom/iMe/storage/data/locale/db/dao/base/BaseDao;->insert(Ljava/util/List;)V

    :cond_1
    return-void
.end method
