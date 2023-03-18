.class public final Lcom/smedialink/bots/data/mapper/ResponseMapper;
.super Ljava/lang/Object;
.source "ResponseMapper.kt"


# instance fields
.field private final frequentAnswersTitle:Ljava/lang/String;

.field private final holidays:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final repository:Lcom/smedialink/bots/data/repository/BotsRepository;


# direct methods
.method public constructor <init>(Lcom/smedialink/bots/data/repository/BotsRepository;Landroid/content/Context;)V
    .locals 2

    const-string v0, "repository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/smedialink/bots/data/mapper/ResponseMapper;->repository:Lcom/smedialink/bots/data/repository/BotsRepository;

    const/4 p1, 0x7

    new-array p1, p1, [Lkotlin/Pair;

    .line 15
    sget v0, Lcom/smedialink/bots/R$drawable;->bot_avatar_23_02:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "23.02"

    invoke-static {v1, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p1, v1

    .line 16
    sget v0, Lcom/smedialink/bots/R$drawable;->bot_avatar_08_03:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "08.03"

    invoke-static {v1, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, p1, v1

    .line 17
    sget v0, Lcom/smedialink/bots/R$drawable;->bot_avatar_01_04:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "01.04"

    invoke-static {v1, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v1, 0x2

    aput-object v0, p1, v1

    .line 18
    sget v0, Lcom/smedialink/bots/R$drawable;->bot_avatar_12_04:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "12.04"

    invoke-static {v1, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v1, 0x3

    aput-object v0, p1, v1

    .line 19
    sget v0, Lcom/smedialink/bots/R$drawable;->bot_avatar_28_04:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "28.04"

    invoke-static {v1, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v1, 0x4

    aput-object v0, p1, v1

    .line 20
    sget v0, Lcom/smedialink/bots/R$drawable;->bot_avatar_01_05:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "01.05"

    invoke-static {v1, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v1, 0x5

    aput-object v0, p1, v1

    .line 21
    sget v0, Lcom/smedialink/bots/R$drawable;->bot_avatar_09_05:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "09.05"

    invoke-static {v1, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v1, 0x6

    aput-object v0, p1, v1

    .line 14
    invoke-static {p1}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/smedialink/bots/data/mapper/ResponseMapper;->holidays:Ljava/util/Map;

    .line 25
    sget p1, Lcom/smedialink/bots/R$string;->bot_title_recent:I

    invoke-virtual {p2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "context.getString(R.string.bot_title_recent)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/smedialink/bots/data/mapper/ResponseMapper;->frequentAnswersTitle:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final map(Lcom/smedialink/bots/data/model/Response;)Lcom/smedialink/bots/domain/model/SmartBotResponse;
    .locals 14

    const-string v0, "from"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    iget-object v0, p0, Lcom/smedialink/bots/data/mapper/ResponseMapper;->repository:Lcom/smedialink/bots/data/repository/BotsRepository;

    invoke-virtual {p1}, Lcom/smedialink/bots/data/model/Response;->getBotId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smedialink/bots/data/repository/BotsRepository;->getBotById(Ljava/lang/String;)Lcom/smedialink/bots/data/model/database/BotsDbModel;

    move-result-object v0

    .line 34
    invoke-virtual {p1}, Lcom/smedialink/bots/data/model/Response;->getBotId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "recent"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_0

    .line 35
    invoke-virtual {p1}, Lcom/smedialink/bots/data/model/Response;->getBotId()Ljava/lang/String;

    move-result-object v1

    .line 36
    iget-object v3, p0, Lcom/smedialink/bots/data/mapper/ResponseMapper;->frequentAnswersTitle:Ljava/lang/String;

    .line 37
    sget v4, Lcom/smedialink/bots/R$drawable;->ic_bots_recent:I

    :goto_0
    move-object v6, v1

    move-object v7, v3

    move v8, v4

    goto :goto_1

    :cond_0
    if-eqz v0, :cond_1

    .line 39
    invoke-virtual {v0}, Lcom/smedialink/bots/data/model/database/BotsDbModel;->getId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    :cond_1
    move-object v1, v2

    :cond_2
    if-eqz v0, :cond_3

    .line 40
    invoke-virtual {v0}, Lcom/smedialink/bots/data/model/database/BotsDbModel;->getTitle()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4

    :cond_3
    move-object v3, v2

    .line 41
    :cond_4
    iget-object v4, p0, Lcom/smedialink/bots/data/mapper/ResponseMapper;->holidays:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/smedialink/bots/data/model/Response;->getTag()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_0

    :cond_5
    const/4 v4, 0x0

    goto :goto_0

    .line 44
    :goto_1
    new-instance v1, Lcom/smedialink/bots/domain/model/SmartBotResponse;

    if-eqz v0, :cond_7

    .line 48
    invoke-virtual {v0}, Lcom/smedialink/bots/data/model/database/BotsDbModel;->getAvatarOriginal()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6

    goto :goto_2

    :cond_6
    move-object v9, v0

    goto :goto_3

    :cond_7
    :goto_2
    move-object v9, v2

    .line 49
    :goto_3
    invoke-virtual {p1}, Lcom/smedialink/bots/data/model/Response;->getTag()Ljava/lang/String;

    move-result-object v10

    .line 50
    invoke-virtual {p1}, Lcom/smedialink/bots/data/model/Response;->getGif()Ljava/lang/String;

    move-result-object v11

    .line 51
    invoke-virtual {p1}, Lcom/smedialink/bots/data/model/Response;->getLink()Ljava/lang/String;

    move-result-object v12

    .line 52
    invoke-virtual {p1}, Lcom/smedialink/bots/data/model/Response;->getAnswers()Ljava/util/List;

    move-result-object v13

    move-object v5, v1

    .line 44
    invoke-direct/range {v5 .. v13}, Lcom/smedialink/bots/domain/model/SmartBotResponse;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-object v1
.end method
