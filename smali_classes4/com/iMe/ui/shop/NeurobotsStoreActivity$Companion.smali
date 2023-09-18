.class public final Lcom/iMe/ui/shop/NeurobotsStoreActivity$Companion;
.super Ljava/lang/Object;
.source "NeurobotsStoreActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/shop/NeurobotsStoreActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNeurobotsStoreActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NeurobotsStoreActivity.kt\ncom/iMe/ui/shop/NeurobotsStoreActivity$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,487:1\n1549#2:488\n1620#2,3:489\n*S KotlinDebug\n*F\n+ 1 NeurobotsStoreActivity.kt\ncom/iMe/ui/shop/NeurobotsStoreActivity$Companion\n*L\n70#1:488\n70#1:489,3\n*E\n"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/iMe/ui/shop/NeurobotsStoreActivity$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final isFree(Ljava/lang/String;)Z
    .locals 0

    if-eqz p1, :cond_1

    .line 74
    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public final isMy(Lcom/iMe/bots/data/model/BotStatus;)Z
    .locals 3

    const-string v0, "status"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/iMe/bots/data/model/BotStatus;

    .line 79
    sget-object v1, Lcom/iMe/bots/data/model/BotStatus;->AVAILABLE:Lcom/iMe/bots/data/model/BotStatus;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 80
    sget-object v1, Lcom/iMe/bots/data/model/BotStatus;->UPDATE_AVAILABLE:Lcom/iMe/bots/data/model/BotStatus;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 81
    sget-object v1, Lcom/iMe/bots/data/model/BotStatus;->DOWNLOADING:Lcom/iMe/bots/data/model/BotStatus;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 82
    sget-object v1, Lcom/iMe/bots/data/model/BotStatus;->ENABLED:Lcom/iMe/bots/data/model/BotStatus;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 83
    sget-object v1, Lcom/iMe/bots/data/model/BotStatus;->DISABLED:Lcom/iMe/bots/data/model/BotStatus;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 78
    invoke-static {v0}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    .line 84
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final isPopular(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/iMe/bots/domain/model/SmartTag;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "tags"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

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
    check-cast v1, Lcom/iMe/bots/domain/model/SmartTag;

    .line 70
    invoke-virtual {v1}, Lcom/iMe/bots/domain/model/SmartTag;->getId()Ljava/lang/String;

    move-result-object v1

    .line 1621
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string p1, "popular"

    .line 70
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
