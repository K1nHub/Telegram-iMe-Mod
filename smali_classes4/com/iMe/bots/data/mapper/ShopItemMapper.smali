.class public final Lcom/iMe/bots/data/mapper/ShopItemMapper;
.super Ljava/lang/Object;
.source "ShopItemMapper.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/bots/data/mapper/ShopItemMapper$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nShopItemMapper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShopItemMapper.kt\ncom/iMe/bots/data/mapper/ShopItemMapper\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,62:1\n1549#2:63\n1620#2,3:64\n1603#2,9:67\n1855#2:76\n1856#2:79\n1612#2:80\n1549#2:81\n1620#2,3:82\n1#3:77\n1#3:78\n*S KotlinDebug\n*F\n+ 1 ShopItemMapper.kt\ncom/iMe/bots/data/mapper/ShopItemMapper\n*L\n14#1:63\n14#1:64,3\n21#1:67,9\n21#1:76\n21#1:79\n21#1:80\n22#1:81\n22#1:82,3\n21#1:78\n*E\n"
.end annotation


# instance fields
.field private final tagsMapper:Lcom/iMe/bots/data/mapper/BotTagsMapper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/iMe/bots/data/mapper/ShopItemMapper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/bots/data/mapper/ShopItemMapper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Lcom/iMe/bots/data/mapper/BotTagsMapper;

    invoke-direct {v0}, Lcom/iMe/bots/data/mapper/BotTagsMapper;-><init>()V

    iput-object v0, p0, Lcom/iMe/bots/data/mapper/ShopItemMapper;->tagsMapper:Lcom/iMe/bots/data/mapper/BotTagsMapper;

    return-void
.end method

.method private final getDateString(Ljava/util/Date;)Ljava/lang/String;
    .locals 3

    .line 55
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "dd.MM.yyyy"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "SimpleDateFormat(\"dd.MM.\u2026etDefault()).format(date)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method


# virtual methods
.method public final mapItem(Lcom/iMe/bots/data/model/database/BotsDbModel;Ljava/util/List;Ljava/lang/String;)Lcom/iMe/bots/domain/model/ShopItem;
    .locals 33
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/bots/data/model/database/BotsDbModel;",
            "Ljava/util/List<",
            "Lcom/iMe/bots/data/model/database/TagDbModel;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/iMe/bots/domain/model/ShopItem;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const-string v3, "from"

    move-object/from16 v4, p1

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "list"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "language"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-virtual/range {p1 .. p1}, Lcom/iMe/bots/data/model/database/BotsDbModel;->getTags()Ljava/util/List;

    move-result-object v3

    .line 1603
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1855
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 1611
    check-cast v6, Ljava/lang/String;

    .line 21
    iget-object v7, v0, Lcom/iMe/bots/data/mapper/ShopItemMapper;->tagsMapper:Lcom/iMe/bots/data/mapper/BotTagsMapper;

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v8

    invoke-interface {v1, v8}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v8

    :cond_1
    invoke-interface {v8}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v9

    move-object v10, v9

    check-cast v10, Lcom/iMe/bots/data/model/database/TagDbModel;

    invoke-virtual {v10}, Lcom/iMe/bots/data/model/database/TagDbModel;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    goto :goto_1

    :cond_2
    const/4 v9, 0x0

    :goto_1
    check-cast v9, Lcom/iMe/bots/data/model/database/TagDbModel;

    invoke-virtual {v7, v9, v2}, Lcom/iMe/bots/data/mapper/BotTagsMapper;->map(Lcom/iMe/bots/data/model/database/TagDbModel;Ljava/lang/String;)Lcom/iMe/bots/domain/model/SmartTag;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 1611
    invoke-interface {v5, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1549
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v5, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 1621
    move-object v6, v5

    check-cast v6, Lcom/iMe/bots/domain/model/SmartTag;

    const/4 v7, 0x0

    .line 22
    invoke-virtual {v6}, Lcom/iMe/bots/domain/model/SmartTag;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lkotlin/text/StringsKt;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x5

    const/4 v11, 0x0

    invoke-static/range {v6 .. v11}, Lcom/iMe/bots/domain/model/SmartTag;->copy$default(Lcom/iMe/bots/domain/model/SmartTag;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Lcom/iMe/bots/domain/model/SmartTag;

    move-result-object v5

    .line 1621
    invoke-interface {v1, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    const-string v3, "ru"

    .line 23
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    const-string v6, "en"

    if-eqz v5, :cond_5

    invoke-virtual/range {p1 .. p1}, Lcom/iMe/bots/data/model/database/BotsDbModel;->getTitle()Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    .line 24
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/iMe/bots/data/model/database/BotsDbModel;->getTitleLocales()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-nez v5, :cond_6

    invoke-virtual/range {p1 .. p1}, Lcom/iMe/bots/data/model/database/BotsDbModel;->getTitleLocales()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-nez v5, :cond_6

    .line 25
    invoke-virtual/range {p1 .. p1}, Lcom/iMe/bots/data/model/database/BotsDbModel;->getTitle()Ljava/lang/String;

    move-result-object v5

    :cond_6
    :goto_3
    move-object v12, v5

    .line 26
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual/range {p1 .. p1}, Lcom/iMe/bots/data/model/database/BotsDbModel;->getDescription()Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    .line 27
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/iMe/bots/data/model/database/BotsDbModel;->getDescriptionLocales()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_8

    invoke-virtual/range {p1 .. p1}, Lcom/iMe/bots/data/model/database/BotsDbModel;->getDescriptionLocales()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_8

    .line 28
    invoke-virtual/range {p1 .. p1}, Lcom/iMe/bots/data/model/database/BotsDbModel;->getDescription()Ljava/lang/String;

    move-result-object v2

    :cond_8
    :goto_4
    move-object v13, v2

    .line 31
    invoke-virtual/range {p1 .. p1}, Lcom/iMe/bots/data/model/database/BotsDbModel;->getId()Ljava/lang/String;

    move-result-object v8

    .line 32
    invoke-virtual/range {p1 .. p1}, Lcom/iMe/bots/data/model/database/BotsDbModel;->getSku()Ljava/lang/String;

    move-result-object v9

    .line 33
    invoke-virtual/range {p1 .. p1}, Lcom/iMe/bots/data/model/database/BotsDbModel;->getAvatarRounded()Ljava/lang/String;

    move-result-object v10

    .line 35
    invoke-virtual/range {p1 .. p1}, Lcom/iMe/bots/data/model/database/BotsDbModel;->getLang()Lcom/iMe/bots/domain/model/BotLanguage;

    move-result-object v11

    .line 37
    invoke-virtual/range {p1 .. p1}, Lcom/iMe/bots/data/model/database/BotsDbModel;->getInstalls()J

    move-result-wide v14

    .line 38
    invoke-virtual/range {p1 .. p1}, Lcom/iMe/bots/data/model/database/BotsDbModel;->getPriority()J

    move-result-wide v16

    .line 39
    invoke-virtual/range {p1 .. p1}, Lcom/iMe/bots/data/model/database/BotsDbModel;->getReviews()J

    move-result-wide v18

    .line 40
    invoke-virtual/range {p1 .. p1}, Lcom/iMe/bots/data/model/database/BotsDbModel;->getRating()F

    move-result v20

    .line 41
    invoke-virtual/range {p1 .. p1}, Lcom/iMe/bots/data/model/database/BotsDbModel;->getOwnRating()I

    move-result v21

    .line 42
    invoke-virtual/range {p1 .. p1}, Lcom/iMe/bots/data/model/database/BotsDbModel;->getPhrases()J

    move-result-wide v22

    .line 43
    invoke-virtual/range {p1 .. p1}, Lcom/iMe/bots/data/model/database/BotsDbModel;->getThemes()J

    move-result-wide v24

    .line 44
    invoke-virtual/range {p1 .. p1}, Lcom/iMe/bots/data/model/database/BotsDbModel;->getCreated()Ljava/util/Date;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/iMe/bots/data/mapper/ShopItemMapper;->getDateString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v26

    .line 45
    invoke-virtual/range {p1 .. p1}, Lcom/iMe/bots/data/model/database/BotsDbModel;->getUpdated()Ljava/util/Date;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/iMe/bots/data/mapper/ShopItemMapper;->getDateString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v27

    .line 46
    invoke-virtual/range {p1 .. p1}, Lcom/iMe/bots/data/model/database/BotsDbModel;->getPrice()Ljava/lang/String;

    move-result-object v29

    .line 47
    invoke-virtual/range {p1 .. p1}, Lcom/iMe/bots/data/model/database/BotsDbModel;->getFile()Ljava/lang/String;

    move-result-object v30

    .line 49
    invoke-virtual/range {p1 .. p1}, Lcom/iMe/bots/data/model/database/BotsDbModel;->getType()Lcom/iMe/bots/data/model/BotType;

    move-result-object v31

    .line 50
    invoke-virtual/range {p1 .. p1}, Lcom/iMe/bots/data/model/database/BotsDbModel;->getStatus()Lcom/iMe/bots/data/model/BotStatus;

    move-result-object v32

    .line 30
    new-instance v2, Lcom/iMe/bots/domain/model/ShopItem;

    move-object v7, v2

    move-object/from16 v28, v1

    invoke-direct/range {v7 .. v32}, Lcom/iMe/bots/domain/model/ShopItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iMe/bots/domain/model/BotLanguage;Ljava/lang/String;Ljava/lang/String;JJJFIJJLjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/iMe/bots/data/model/BotType;Lcom/iMe/bots/data/model/BotStatus;)V

    return-object v2
.end method

.method public final mapList(Ljava/util/List;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/iMe/bots/data/model/database/BotsDbModel;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/iMe/bots/data/model/database/TagDbModel;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/iMe/bots/domain/model/ShopItem;",
            ">;"
        }
    .end annotation

    const-string v0, "from"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "language"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "list"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1549
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1621
    check-cast v1, Lcom/iMe/bots/data/model/database/BotsDbModel;

    .line 14
    invoke-virtual {p0, v1, p3, p2}, Lcom/iMe/bots/data/mapper/ShopItemMapper;->mapItem(Lcom/iMe/bots/data/model/database/BotsDbModel;Ljava/util/List;Ljava/lang/String;)Lcom/iMe/bots/domain/model/ShopItem;

    move-result-object v1

    .line 1621
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method
