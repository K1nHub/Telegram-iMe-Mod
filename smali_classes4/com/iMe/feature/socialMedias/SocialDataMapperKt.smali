.class public final Lcom/iMe/feature/socialMedias/SocialDataMapperKt;
.super Ljava/lang/Object;
.source "SocialDataMapper.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSocialDataMapper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SocialDataMapper.kt\ncom/iMe/feature/socialMedias/SocialDataMapperKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,61:1\n1549#2:62\n1620#2,3:63\n1559#2:66\n1590#2,4:67\n1549#2:71\n1620#2,3:72\n1054#2:75\n*S KotlinDebug\n*F\n+ 1 SocialDataMapper.kt\ncom/iMe/feature/socialMedias/SocialDataMapperKt\n*L\n9#1:62\n9#1:63,3\n25#1:66\n25#1:67,4\n45#1:71\n45#1:72,3\n45#1:75\n*E\n"
.end annotation


# direct methods
.method public static final toDb(Lcom/iMe/feature/socialMedias/SocialNetwork;JI)Lcom/iMe/storage/data/locale/db/model/social/SocialNetworkDb;
    .locals 13

    const-string v0, "<this>"

    move-object v1, p0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    new-instance v0, Lcom/iMe/storage/data/locale/db/model/social/SocialNetworkDb;

    .line 32
    invoke-virtual {p0}, Lcom/iMe/feature/socialMedias/SocialNetwork;->getSocial()Lcom/iMe/feature/socialMedias/SocialType;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    .line 33
    invoke-virtual {p0}, Lcom/iMe/feature/socialMedias/SocialNetwork;->getIcon()Ljava/lang/String;

    move-result-object v5

    .line 35
    invoke-virtual {p0}, Lcom/iMe/feature/socialMedias/SocialNetwork;->getSocialElementId()Ljava/lang/String;

    move-result-object v7

    .line 36
    invoke-virtual {p0}, Lcom/iMe/feature/socialMedias/SocialNetwork;->getSocialElementAvatarUrl()Ljava/lang/String;

    move-result-object v8

    .line 37
    invoke-virtual {p0}, Lcom/iMe/feature/socialMedias/SocialNetwork;->getSocialUserName()Ljava/lang/String;

    move-result-object v9

    .line 38
    invoke-virtual {p0}, Lcom/iMe/feature/socialMedias/SocialNetwork;->getSocialWebUrl()Ljava/lang/String;

    move-result-object v10

    .line 39
    invoke-virtual {p0}, Lcom/iMe/feature/socialMedias/SocialNetwork;->isActive()Z

    move-result v11

    .line 40
    invoke-virtual {p0}, Lcom/iMe/feature/socialMedias/SocialNetwork;->getBeforeConnectMessage()Ljava/lang/String;

    move-result-object v12

    move-object v1, v0

    move-wide v2, p1

    move/from16 v6, p3

    .line 30
    invoke-direct/range {v1 .. v12}, Lcom/iMe/storage/data/locale/db/model/social/SocialNetworkDb;-><init>(JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    return-object v0
.end method

.method public static final toDb(Lcom/iMe/feature/socialMedias/SocialDomain;J)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/feature/socialMedias/SocialDomain;",
            "J)",
            "Ljava/util/List<",
            "Lcom/iMe/storage/data/locale/db/model/social/SocialNetworkDb;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-virtual {p0}, Lcom/iMe/feature/socialMedias/SocialDomain;->getSocialNetworks()Ljava/util/List;

    move-result-object p0

    .line 1559
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1591
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    if-gez v1, :cond_0

    .line 1592
    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_0
    check-cast v2, Lcom/iMe/feature/socialMedias/SocialNetwork;

    .line 26
    invoke-static {v2, p1, p2, v1}, Lcom/iMe/feature/socialMedias/SocialDataMapperKt;->toDb(Lcom/iMe/feature/socialMedias/SocialNetwork;JI)Lcom/iMe/storage/data/locale/db/model/social/SocialNetworkDb;

    move-result-object v1

    .line 1592
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move v1, v3

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static final toDomain(Lcom/iMe/storage/data/network/model/response/social/SocialNetworksRaw;)Lcom/iMe/feature/socialMedias/SocialDomain;
    .locals 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/social/SocialNetworksRaw;->getNetworks()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1549
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1621
    check-cast v1, Lcom/iMe/storage/data/network/model/response/social/Network;

    .line 9
    invoke-static {v1}, Lcom/iMe/feature/socialMedias/SocialDataMapperKt;->toDomain(Lcom/iMe/storage/data/network/model/response/social/Network;)Lcom/iMe/feature/socialMedias/SocialNetwork;

    move-result-object v1

    .line 1621
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    const/4 p0, 0x1

    const/4 v1, 0x0

    .line 8
    new-instance v2, Lcom/iMe/feature/socialMedias/SocialDomain;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, p0, v1}, Lcom/iMe/feature/socialMedias/SocialDomain;-><init>(ZLjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v2
.end method

.method public static final toDomain(Ljava/util/List;)Lcom/iMe/feature/socialMedias/SocialDomain;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/iMe/storage/data/locale/db/model/social/SocialNetworkDb;",
            ">;)",
            "Lcom/iMe/feature/socialMedias/SocialDomain;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1549
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1621
    check-cast v1, Lcom/iMe/storage/data/locale/db/model/social/SocialNetworkDb;

    .line 45
    invoke-static {v1}, Lcom/iMe/feature/socialMedias/SocialDataMapperKt;->toDomain(Lcom/iMe/storage/data/locale/db/model/social/SocialNetworkDb;)Lcom/iMe/feature/socialMedias/SocialNetwork;

    move-result-object v1

    .line 1621
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1054
    :cond_0
    new-instance p0, Lcom/iMe/feature/socialMedias/SocialDataMapperKt$toDomain$$inlined$sortedByDescending$1;

    invoke-direct {p0}, Lcom/iMe/feature/socialMedias/SocialDataMapperKt$toDomain$$inlined$sortedByDescending$1;-><init>()V

    invoke-static {v0, p0}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 44
    new-instance v2, Lcom/iMe/feature/socialMedias/SocialDomain;

    const/4 v3, 0x0

    invoke-direct {v2, v3, p0, v0, v1}, Lcom/iMe/feature/socialMedias/SocialDomain;-><init>(ZLjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v2
.end method

.method public static final toDomain(Lcom/iMe/storage/data/locale/db/model/social/SocialNetworkDb;)Lcom/iMe/feature/socialMedias/SocialNetwork;
    .locals 15

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    new-instance v0, Lcom/iMe/feature/socialMedias/SocialNetwork;

    .line 50
    invoke-virtual {p0}, Lcom/iMe/storage/data/locale/db/model/social/SocialNetworkDb;->getSocial()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/iMe/feature/socialMedias/SocialType;->valueOf(Ljava/lang/String;)Lcom/iMe/feature/socialMedias/SocialType;

    move-result-object v2

    .line 51
    invoke-virtual {p0}, Lcom/iMe/storage/data/locale/db/model/social/SocialNetworkDb;->getSocial()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/iMe/feature/socialMedias/SocialType;->valueOf(Ljava/lang/String;)Lcom/iMe/feature/socialMedias/SocialType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/iMe/utils/extentions/common/StringExtKt;->capitalizeOnlyFirstSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 52
    invoke-virtual {p0}, Lcom/iMe/storage/data/locale/db/model/social/SocialNetworkDb;->getIconUrl()Ljava/lang/String;

    move-result-object v4

    .line 53
    invoke-virtual {p0}, Lcom/iMe/storage/data/locale/db/model/social/SocialNetworkDb;->getSocialElementId()Ljava/lang/String;

    move-result-object v6

    .line 54
    invoke-virtual {p0}, Lcom/iMe/storage/data/locale/db/model/social/SocialNetworkDb;->getSocialElementAvatarUrl()Ljava/lang/String;

    move-result-object v7

    .line 55
    invoke-virtual {p0}, Lcom/iMe/storage/data/locale/db/model/social/SocialNetworkDb;->getSocialUserName()Ljava/lang/String;

    move-result-object v8

    .line 56
    invoke-virtual {p0}, Lcom/iMe/storage/data/locale/db/model/social/SocialNetworkDb;->getSocialWebUrl()Ljava/lang/String;

    move-result-object v9

    .line 57
    invoke-virtual {p0}, Lcom/iMe/storage/data/locale/db/model/social/SocialNetworkDb;->isActive()Z

    move-result v10

    .line 58
    invoke-virtual {p0}, Lcom/iMe/storage/data/locale/db/model/social/SocialNetworkDb;->getBeforeConnectMessage()Ljava/lang/String;

    move-result-object v12

    const/4 v5, 0x0

    const/4 v11, 0x0

    const/16 v13, 0x208

    const/4 v14, 0x0

    move-object v1, v0

    .line 49
    invoke-direct/range {v1 .. v14}, Lcom/iMe/feature/socialMedias/SocialNetwork;-><init>(Lcom/iMe/feature/socialMedias/SocialType;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method private static final toDomain(Lcom/iMe/storage/data/network/model/response/social/Network;)Lcom/iMe/feature/socialMedias/SocialNetwork;
    .locals 15

    .line 12
    new-instance v14, Lcom/iMe/feature/socialMedias/SocialNetwork;

    .line 13
    sget-object v0, Lcom/iMe/feature/socialMedias/SocialType;->Companion:Lcom/iMe/feature/socialMedias/SocialType$Companion;

    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/social/Network;->getSocial()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    if-nez v1, :cond_0

    move-object v1, v2

    :cond_0
    invoke-virtual {v0, v1}, Lcom/iMe/feature/socialMedias/SocialType$Companion;->defineType(Ljava/lang/String;)Lcom/iMe/feature/socialMedias/SocialType;

    move-result-object v1

    .line 14
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/social/Network;->getSocial()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    move-object v3, v2

    :cond_1
    invoke-virtual {v0, v3}, Lcom/iMe/feature/socialMedias/SocialType$Companion;->defineType(Ljava/lang/String;)Lcom/iMe/feature/socialMedias/SocialType;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iMe/utils/extentions/common/StringExtKt;->capitalizeOnlyFirstSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 15
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/social/Network;->getIcon()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    move-object v4, v2

    goto :goto_0

    :cond_2
    move-object v4, v0

    :goto_0
    const/4 v5, 0x0

    .line 16
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/social/Network;->getSocialElementId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    move-object v6, v2

    goto :goto_1

    :cond_3
    move-object v6, v0

    .line 17
    :goto_1
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/social/Network;->getSocialElementAvatarUrl()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    move-object v7, v2

    goto :goto_2

    :cond_4
    move-object v7, v0

    .line 18
    :goto_2
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/social/Network;->getSocialUserName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    move-object v8, v2

    goto :goto_3

    :cond_5
    move-object v8, v0

    .line 19
    :goto_3
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/social/Network;->getSocialWebUrl()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6

    move-object v9, v2

    goto :goto_4

    :cond_6
    move-object v9, v0

    .line 20
    :goto_4
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/social/Network;->isActive()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_5

    :cond_7
    const/4 v0, 0x0

    :goto_5
    move v10, v0

    const/4 v11, 0x0

    .line 21
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/social/Network;->getBeforeConnectMessage()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_8

    move-object p0, v2

    :cond_8
    const/16 v12, 0x208

    const/4 v13, 0x0

    move-object v0, v14

    move-object v2, v3

    move-object v3, v4

    move v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move v9, v10

    move v10, v11

    move-object v11, p0

    .line 12
    invoke-direct/range {v0 .. v13}, Lcom/iMe/feature/socialMedias/SocialNetwork;-><init>(Lcom/iMe/feature/socialMedias/SocialType;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v14
.end method
