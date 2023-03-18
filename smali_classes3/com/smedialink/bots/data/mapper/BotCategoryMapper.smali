.class public final Lcom/smedialink/bots/data/mapper/BotCategoryMapper;
.super Ljava/lang/Object;
.source "BotCategoryMapper.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smedialink/bots/data/mapper/BotCategoryMapper$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBotCategoryMapper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BotCategoryMapper.kt\ncom/smedialink/bots/data/mapper/BotCategoryMapper\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,28:1\n1603#2,9:29\n1855#2:38\n1856#2:40\n1612#2:41\n1#3:39\n*S KotlinDebug\n*F\n+ 1 BotCategoryMapper.kt\ncom/smedialink/bots/data/mapper/BotCategoryMapper\n*L\n9#1:29,9\n9#1:38\n9#1:40\n9#1:41\n9#1:39\n*E\n"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/smedialink/bots/data/mapper/BotCategoryMapper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/smedialink/bots/data/mapper/BotCategoryMapper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final mapItem(Lcom/smedialink/bots/data/model/database/BotsCategoryDbModel;Ljava/lang/String;)Lcom/smedialink/bots/domain/model/SmartBotCategory;
    .locals 3

    if-eqz p1, :cond_2

    .line 13
    new-instance v0, Lcom/smedialink/bots/domain/model/SmartBotCategory;

    .line 14
    invoke-virtual {p1}, Lcom/smedialink/bots/data/model/database/BotsCategoryDbModel;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ru"

    .line 15
    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/smedialink/bots/data/model/database/BotsCategoryDbModel;->getTitle()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p1}, Lcom/smedialink/bots/data/model/database/BotsCategoryDbModel;->getLocales()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-nez p2, :cond_1

    invoke-virtual {p1}, Lcom/smedialink/bots/data/model/database/BotsCategoryDbModel;->getLocales()Ljava/util/Map;

    move-result-object p2

    const-string v2, "en"

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-nez p2, :cond_1

    .line 17
    invoke-virtual {p1}, Lcom/smedialink/bots/data/model/database/BotsCategoryDbModel;->getTitle()Ljava/lang/String;

    move-result-object p2

    .line 18
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/smedialink/bots/data/model/database/BotsCategoryDbModel;->getPriority()I

    move-result v2

    .line 19
    invoke-virtual {p1}, Lcom/smedialink/bots/data/model/database/BotsCategoryDbModel;->getTags()Ljava/util/List;

    move-result-object p1

    .line 13
    invoke-direct {v0, v1, p2, v2, p1}, Lcom/smedialink/bots/domain/model/SmartBotCategory;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/util/List;)V

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method


# virtual methods
.method public final mapList(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/smedialink/bots/data/model/database/BotsCategoryDbModel;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/smedialink/bots/domain/model/SmartBotCategory;",
            ">;"
        }
    .end annotation

    const-string v0, "from"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "language"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1603
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1855
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1611
    check-cast v1, Lcom/smedialink/bots/data/model/database/BotsCategoryDbModel;

    .line 9
    invoke-direct {p0, v1, p2}, Lcom/smedialink/bots/data/mapper/BotCategoryMapper;->mapItem(Lcom/smedialink/bots/data/model/database/BotsCategoryDbModel;Ljava/lang/String;)Lcom/smedialink/bots/domain/model/SmartBotCategory;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1611
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method
