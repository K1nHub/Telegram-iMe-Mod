.class public final Lcom/iMe/storage/data/mapper/filter/FilterSettingsMappingKt;
.super Ljava/lang/Object;
.source "FilterSettingsMapping.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFilterSettingsMapping.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FilterSettingsMapping.kt\ncom/iMe/storage/data/mapper/filter/FilterSettingsMappingKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,21:1\n1#2:22\n*E\n"
.end annotation


# direct methods
.method public static final mapToDb(Lcom/iMe/storage/domain/model/filters/FilterSettingsModel;J)Lcom/iMe/storage/data/locale/db/model/filter/FilterSettingsDb;
    .locals 8

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    new-instance v0, Lcom/iMe/storage/data/locale/db/model/filter/FilterSettingsDb;

    .line 16
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/filters/FilterSettingsModel;->getFilterId()I

    move-result v2

    .line 17
    sget-object v1, Lcom/iMe/storage/domain/model/filters/FilterFab;->Companion:Lcom/iMe/storage/domain/model/filters/FilterFab$Companion;

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/filters/FilterSettingsModel;->getFabs()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/iMe/storage/domain/model/filters/FilterFab$Companion;->mapEnumsToNames(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v3

    .line 18
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/filters/FilterSettingsModel;->getIcon()Lcom/iMe/storage/domain/model/filters/FilterIcon;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move-object v4, v1

    .line 19
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/filters/FilterSettingsModel;->isHidden()Z

    move-result v5

    move-object v1, v0

    move-wide v6, p1

    .line 15
    invoke-direct/range {v1 .. v7}, Lcom/iMe/storage/data/locale/db/model/filter/FilterSettingsDb;-><init>(ILjava/util/List;Ljava/lang/String;ZJ)V

    return-object v0
.end method

.method public static final mapToDomain(Lcom/iMe/storage/data/locale/db/model/filter/FilterSettingsDb;)Lcom/iMe/storage/domain/model/filters/FilterSettingsModel;
    .locals 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0}, Lcom/iMe/storage/data/locale/db/model/filter/FilterSettingsDb;->getFilterId()I

    move-result v0

    .line 10
    sget-object v1, Lcom/iMe/storage/domain/model/filters/FilterFab;->Companion:Lcom/iMe/storage/domain/model/filters/FilterFab$Companion;

    invoke-virtual {p0}, Lcom/iMe/storage/data/locale/db/model/filter/FilterSettingsDb;->getFabs()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/iMe/storage/domain/model/filters/FilterFab$Companion;->mapNamesToEnums(Ljava/util/Set;)Ljava/util/SortedSet;

    move-result-object v1

    .line 11
    invoke-virtual {p0}, Lcom/iMe/storage/data/locale/db/model/filter/FilterSettingsDb;->getIcon()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v2}, Lcom/iMe/storage/domain/model/filters/FilterIcon;->valueOf(Ljava/lang/String;)Lcom/iMe/storage/domain/model/filters/FilterIcon;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 12
    :goto_0
    invoke-virtual {p0}, Lcom/iMe/storage/data/locale/db/model/filter/FilterSettingsDb;->isHidden()Z

    move-result p0

    .line 8
    new-instance v3, Lcom/iMe/storage/domain/model/filters/FilterSettingsModel;

    invoke-direct {v3, v0, v1, v2, p0}, Lcom/iMe/storage/domain/model/filters/FilterSettingsModel;-><init>(ILjava/util/Set;Lcom/iMe/storage/domain/model/filters/FilterIcon;Z)V

    return-object v3
.end method
