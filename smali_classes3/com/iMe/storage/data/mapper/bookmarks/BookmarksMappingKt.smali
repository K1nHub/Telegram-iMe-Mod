.class public final Lcom/iMe/storage/data/mapper/bookmarks/BookmarksMappingKt;
.super Ljava/lang/Object;
.source "BookmarksMapping.kt"


# direct methods
.method public static final mapToDb(Lcom/iMe/storage/domain/model/bookmarks/BookmarksModel;J)Lcom/iMe/storage/data/locale/db/model/bookmarks/BookmarksDb;
    .locals 7

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    new-instance v0, Lcom/iMe/storage/data/locale/db/model/bookmarks/BookmarksDb;

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/bookmarks/BookmarksModel;->getMessageIds()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/bookmarks/BookmarksModel;->getDialogId()J

    move-result-wide v3

    move-object v1, v0

    move-wide v5, p1

    invoke-direct/range {v1 .. v6}, Lcom/iMe/storage/data/locale/db/model/bookmarks/BookmarksDb;-><init>(Ljava/util/List;JJ)V

    return-object v0
.end method

.method public static final mapToDomain(Lcom/iMe/storage/data/locale/db/model/bookmarks/BookmarksDb;)Lcom/iMe/storage/domain/model/bookmarks/BookmarksModel;
    .locals 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    new-instance v0, Lcom/iMe/storage/domain/model/bookmarks/BookmarksModel;

    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/iMe/storage/data/locale/db/model/bookmarks/BookmarksDb;->getMessageIds()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0}, Lcom/iMe/storage/data/locale/db/model/bookmarks/BookmarksDb;->getDialogId()J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Lcom/iMe/storage/domain/model/bookmarks/BookmarksModel;-><init>(Ljava/util/ArrayList;J)V

    return-object v0
.end method
