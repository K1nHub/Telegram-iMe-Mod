.class public final Lcom/iMe/bots/data/mapper/BotTagsMapper;
.super Ljava/lang/Object;
.source "BotTagsMapper.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/bots/data/mapper/BotTagsMapper$Companion;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/iMe/bots/data/mapper/BotTagsMapper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/bots/data/mapper/BotTagsMapper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final map(Lcom/iMe/bots/data/model/database/TagDbModel;Ljava/lang/String;)Lcom/iMe/bots/domain/model/SmartTag;
    .locals 3

    const-string v0, "language"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_3

    const-string v0, "ru"

    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/iMe/bots/data/model/database/TagDbModel;->getTitle()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p1}, Lcom/iMe/bots/data/model/database/TagDbModel;->getLocales()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-nez p2, :cond_1

    invoke-virtual {p1}, Lcom/iMe/bots/data/model/database/TagDbModel;->getLocales()Ljava/util/Map;

    move-result-object p2

    const-string v0, "en"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-nez p2, :cond_1

    .line 12
    invoke-virtual {p1}, Lcom/iMe/bots/data/model/database/TagDbModel;->getTitle()Ljava/lang/String;

    move-result-object p2

    .line 13
    :cond_1
    :goto_0
    new-instance v0, Lcom/iMe/bots/domain/model/SmartTag;

    .line 14
    invoke-virtual {p1}, Lcom/iMe/bots/data/model/database/TagDbModel;->getId()Ljava/lang/String;

    move-result-object v1

    .line 16
    invoke-virtual {p1}, Lcom/iMe/bots/data/model/database/TagDbModel;->getHidden()I

    move-result p1

    const/4 v2, 0x1

    if-ne p1, v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    .line 13
    :goto_1
    invoke-direct {v0, v1, p2, v2}, Lcom/iMe/bots/domain/model/SmartTag;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    return-object v0
.end method
