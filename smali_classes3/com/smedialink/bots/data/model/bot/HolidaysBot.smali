.class public final Lcom/smedialink/bots/data/model/bot/HolidaysBot;
.super Ljava/lang/Object;
.source "HolidaysBot.kt"

# interfaces
.implements Lcom/smedialink/bots/domain/AigramBot;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHolidaysBot.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HolidaysBot.kt\ncom/smedialink/bots/data/model/bot/HolidaysBot\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,32:1\n288#2,2:33\n*S KotlinDebug\n*F\n+ 1 HolidaysBot.kt\ncom/smedialink/bots/data/model/bot/HolidaysBot\n*L\n28#1:33,2\n*E\n"
.end annotation


# instance fields
.field private final botId:Ljava/lang/String;

.field private final currentDateTag$delegate:Lkotlin/Lazy;

.field private final language:Lcom/smedialink/bots/domain/model/BotLanguage;

.field private final responseSource:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/smedialink/bots/data/model/Response;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/smedialink/bots/domain/ResourceFactory;Z)V
    .locals 1

    const-string v0, "factory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "holidays"

    .line 14
    iput-object v0, p0, Lcom/smedialink/bots/data/model/bot/HolidaysBot;->botId:Ljava/lang/String;

    .line 15
    sget-object v0, Lcom/smedialink/bots/domain/model/BotLanguage;->RU:Lcom/smedialink/bots/domain/model/BotLanguage;

    iput-object v0, p0, Lcom/smedialink/bots/data/model/bot/HolidaysBot;->language:Lcom/smedialink/bots/domain/model/BotLanguage;

    .line 18
    invoke-virtual {p0}, Lcom/smedialink/bots/data/model/bot/HolidaysBot;->getBotId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Lcom/smedialink/bots/domain/ResourceFactory;->getHolidaysResponses(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/smedialink/bots/data/model/bot/HolidaysBot;->responseSource:Ljava/util/List;

    .line 20
    sget-object p1, Lcom/smedialink/bots/data/model/bot/HolidaysBot$currentDateTag$2;->INSTANCE:Lcom/smedialink/bots/data/model/bot/HolidaysBot$currentDateTag$2;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/smedialink/bots/data/model/bot/HolidaysBot;->currentDateTag$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private final getCurrentDateTag()Ljava/lang/String;
    .locals 2

    .line 20
    iget-object v0, p0, Lcom/smedialink/bots/data/model/bot/HolidaysBot;->currentDateTag$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "<get-currentDateTag>(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getBotId()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/smedialink/bots/data/model/bot/HolidaysBot;->botId:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguage()Lcom/smedialink/bots/domain/model/BotLanguage;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/smedialink/bots/data/model/bot/HolidaysBot;->language:Lcom/smedialink/bots/domain/model/BotLanguage;

    return-object v0
.end method

.method public getResponse(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/smedialink/bots/data/model/Response;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 28
    iget-object p1, p0, Lcom/smedialink/bots/data/model/bot/HolidaysBot;->responseSource:Ljava/util/List;

    .line 288
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    move-object v1, p2

    check-cast v1, Lcom/smedialink/bots/data/model/Response;

    .line 28
    invoke-virtual {v1}, Lcom/smedialink/bots/data/model/Response;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/smedialink/bots/data/model/bot/HolidaysBot;->getCurrentDateTag()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_1
    move-object p2, v0

    :goto_0
    check-cast p2, Lcom/smedialink/bots/data/model/Response;

    if-eqz p2, :cond_2

    .line 29
    new-instance v0, Lcom/smedialink/bots/data/model/Response;

    invoke-virtual {p0}, Lcom/smedialink/bots/data/model/bot/HolidaysBot;->getBotId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/smedialink/bots/data/model/Response;->getTag()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p2}, Lcom/smedialink/bots/data/model/Response;->getAnswers()Ljava/util/List;

    move-result-object v6

    const/16 v7, 0xc

    const/4 v8, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/smedialink/bots/data/model/Response;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :cond_2
    return-object v0
.end method
