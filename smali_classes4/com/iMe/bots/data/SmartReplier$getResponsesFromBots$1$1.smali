.class final Lcom/iMe/bots/data/SmartReplier$getResponsesFromBots$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SmartReplier.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/bots/data/SmartReplier$getResponsesFromBots$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Ljava/lang/Boolean;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSmartReplier.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SmartReplier.kt\ncom/iMe/bots/data/SmartReplier$getResponsesFromBots$1$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,149:1\n1855#2,2:150\n*S KotlinDebug\n*F\n+ 1 SmartReplier.kt\ncom/iMe/bots/data/SmartReplier$getResponsesFromBots$1$1\n*L\n38#1:150,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.iMe.bots.data.SmartReplier$getResponsesFromBots$1$1"
    f = "SmartReplier.kt"
    l = {
        0x27
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $detected:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/iMe/bots/data/model/Response;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $result:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/iMe/bots/domain/model/SmartBotResponse;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $sentence:Ljava/lang/String;

.field final synthetic $userId:J

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/iMe/bots/data/SmartReplier;


# direct methods
.method constructor <init>(Lcom/iMe/bots/data/SmartReplier;Ljava/util/List;Ljava/util/List;JLjava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/bots/data/SmartReplier;",
            "Ljava/util/List<",
            "Lcom/iMe/bots/domain/model/SmartBotResponse;",
            ">;",
            "Ljava/util/List<",
            "Lcom/iMe/bots/data/model/Response;",
            ">;J",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/iMe/bots/data/SmartReplier$getResponsesFromBots$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/iMe/bots/data/SmartReplier$getResponsesFromBots$1$1;->this$0:Lcom/iMe/bots/data/SmartReplier;

    iput-object p2, p0, Lcom/iMe/bots/data/SmartReplier$getResponsesFromBots$1$1;->$result:Ljava/util/List;

    iput-object p3, p0, Lcom/iMe/bots/data/SmartReplier$getResponsesFromBots$1$1;->$detected:Ljava/util/List;

    iput-wide p4, p0, Lcom/iMe/bots/data/SmartReplier$getResponsesFromBots$1$1;->$userId:J

    iput-object p6, p0, Lcom/iMe/bots/data/SmartReplier$getResponsesFromBots$1$1;->$sentence:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p7}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/iMe/bots/data/SmartReplier$getResponsesFromBots$1$1;

    iget-object v1, p0, Lcom/iMe/bots/data/SmartReplier$getResponsesFromBots$1$1;->this$0:Lcom/iMe/bots/data/SmartReplier;

    iget-object v2, p0, Lcom/iMe/bots/data/SmartReplier$getResponsesFromBots$1$1;->$result:Ljava/util/List;

    iget-object v3, p0, Lcom/iMe/bots/data/SmartReplier$getResponsesFromBots$1$1;->$detected:Ljava/util/List;

    iget-wide v4, p0, Lcom/iMe/bots/data/SmartReplier$getResponsesFromBots$1$1;->$userId:J

    iget-object v6, p0, Lcom/iMe/bots/data/SmartReplier$getResponsesFromBots$1$1;->$sentence:Ljava/lang/String;

    move-object v0, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/iMe/bots/data/SmartReplier$getResponsesFromBots$1$1;-><init>(Lcom/iMe/bots/data/SmartReplier;Ljava/util/List;Ljava/util/List;JLjava/lang/String;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/iMe/bots/data/SmartReplier$getResponsesFromBots$1$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/iMe/bots/data/SmartReplier$getResponsesFromBots$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/iMe/bots/data/SmartReplier$getResponsesFromBots$1$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/iMe/bots/data/SmartReplier$getResponsesFromBots$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 37
    iget v1, p0, Lcom/iMe/bots/data/SmartReplier$getResponsesFromBots$1$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/iMe/bots/data/SmartReplier$getResponsesFromBots$1$1;->L$3:Ljava/lang/Object;

    check-cast v1, Ljava/util/Iterator;

    iget-object v3, p0, Lcom/iMe/bots/data/SmartReplier$getResponsesFromBots$1$1;->L$2:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    iget-object v4, p0, Lcom/iMe/bots/data/SmartReplier$getResponsesFromBots$1$1;->L$1:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/iMe/bots/data/SmartReplier$getResponsesFromBots$1$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lcom/iMe/bots/data/SmartReplier;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v6, v5

    move-object v5, v4

    move-object v4, v3

    move-object v3, v1

    move-object v1, v0

    move-object v0, p0

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 38
    iget-object p1, p0, Lcom/iMe/bots/data/SmartReplier$getResponsesFromBots$1$1;->this$0:Lcom/iMe/bots/data/SmartReplier;

    invoke-static {p1}, Lcom/iMe/bots/data/SmartReplier;->access$getManager$p(Lcom/iMe/bots/data/SmartReplier;)Lcom/iMe/bots/usecase/AiBotsManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iMe/bots/usecase/AiBotsManager;->getActiveBots()Ljava/util/List;

    move-result-object p1

    iget-object v1, p0, Lcom/iMe/bots/data/SmartReplier$getResponsesFromBots$1$1;->this$0:Lcom/iMe/bots/data/SmartReplier;

    iget-object v3, p0, Lcom/iMe/bots/data/SmartReplier$getResponsesFromBots$1$1;->$sentence:Ljava/lang/String;

    iget-object v4, p0, Lcom/iMe/bots/data/SmartReplier$getResponsesFromBots$1$1;->$detected:Ljava/util/List;

    .line 1855
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move-object v5, v1

    move-object v1, p1

    move-object p1, p0

    move-object v8, v4

    move-object v4, v3

    move-object v3, v8

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/iMe/bots/domain/AigramBot;

    .line 39
    invoke-interface {v6}, Lcom/iMe/bots/domain/AigramBot;->getLanguage()Lcom/iMe/bots/domain/model/BotLanguage;

    move-result-object v7

    invoke-static {v5, v7, v4}, Lcom/iMe/bots/data/SmartReplier;->access$splitLemmas(Lcom/iMe/bots/data/SmartReplier;Lcom/iMe/bots/domain/model/BotLanguage;Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    iput-object v5, p1, Lcom/iMe/bots/data/SmartReplier$getResponsesFromBots$1$1;->L$0:Ljava/lang/Object;

    iput-object v4, p1, Lcom/iMe/bots/data/SmartReplier$getResponsesFromBots$1$1;->L$1:Ljava/lang/Object;

    iput-object v3, p1, Lcom/iMe/bots/data/SmartReplier$getResponsesFromBots$1$1;->L$2:Ljava/lang/Object;

    iput-object v1, p1, Lcom/iMe/bots/data/SmartReplier$getResponsesFromBots$1$1;->L$3:Ljava/lang/Object;

    iput v2, p1, Lcom/iMe/bots/data/SmartReplier$getResponsesFromBots$1$1;->label:I

    invoke-interface {v6, v7, p1}, Lcom/iMe/bots/domain/AigramBot;->getResponse(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v0, :cond_2

    return-object v0

    :cond_2
    move-object v8, v0

    move-object v0, p1

    move-object p1, v6

    move-object v6, v5

    move-object v5, v4

    move-object v4, v3

    move-object v3, v1

    move-object v1, v8

    :goto_1
    check-cast p1, Lcom/iMe/bots/data/model/Response;

    if-eqz p1, :cond_3

    .line 40
    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    move-object p1, v0

    move-object v0, v1

    move-object v1, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    goto :goto_0

    .line 44
    :cond_4
    iget-object v0, p1, Lcom/iMe/bots/data/SmartReplier$getResponsesFromBots$1$1;->$result:Ljava/util/List;

    iget-object v1, p1, Lcom/iMe/bots/data/SmartReplier$getResponsesFromBots$1$1;->this$0:Lcom/iMe/bots/data/SmartReplier;

    iget-object v2, p1, Lcom/iMe/bots/data/SmartReplier$getResponsesFromBots$1$1;->$detected:Ljava/util/List;

    iget-wide v3, p1, Lcom/iMe/bots/data/SmartReplier$getResponsesFromBots$1$1;->$userId:J

    invoke-static {v1, v2, v3, v4}, Lcom/iMe/bots/data/SmartReplier;->access$buildBotsList(Lcom/iMe/bots/data/SmartReplier;Ljava/util/List;J)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result p1

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
