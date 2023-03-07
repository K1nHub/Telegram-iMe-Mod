.class final Lcom/smedialink/bots/data/SmartReplier$getResponsesFromBots$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SmartReplier.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/bots/data/SmartReplier;->getResponsesFromBots(Ljava/lang/String;JLcom/smedialink/bots/usecase/AiBotsManager$SmartReplierCallback;)V
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
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.smedialink.bots.data.SmartReplier$getResponsesFromBots$1"
    f = "SmartReplier.kt"
    l = {
        0x25
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $callback:Lcom/smedialink/bots/usecase/AiBotsManager$SmartReplierCallback;

.field final synthetic $sentence:Ljava/lang/String;

.field final synthetic $userId:J

.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/smedialink/bots/data/SmartReplier;


# direct methods
.method constructor <init>(Lcom/smedialink/bots/usecase/AiBotsManager$SmartReplierCallback;Lcom/smedialink/bots/data/SmartReplier;JLjava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smedialink/bots/usecase/AiBotsManager$SmartReplierCallback;",
            "Lcom/smedialink/bots/data/SmartReplier;",
            "J",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/smedialink/bots/data/SmartReplier$getResponsesFromBots$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/smedialink/bots/data/SmartReplier$getResponsesFromBots$1;->$callback:Lcom/smedialink/bots/usecase/AiBotsManager$SmartReplierCallback;

    iput-object p2, p0, Lcom/smedialink/bots/data/SmartReplier$getResponsesFromBots$1;->this$0:Lcom/smedialink/bots/data/SmartReplier;

    iput-wide p3, p0, Lcom/smedialink/bots/data/SmartReplier$getResponsesFromBots$1;->$userId:J

    iput-object p5, p0, Lcom/smedialink/bots/data/SmartReplier$getResponsesFromBots$1;->$sentence:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7
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

    new-instance p1, Lcom/smedialink/bots/data/SmartReplier$getResponsesFromBots$1;

    iget-object v1, p0, Lcom/smedialink/bots/data/SmartReplier$getResponsesFromBots$1;->$callback:Lcom/smedialink/bots/usecase/AiBotsManager$SmartReplierCallback;

    iget-object v2, p0, Lcom/smedialink/bots/data/SmartReplier$getResponsesFromBots$1;->this$0:Lcom/smedialink/bots/data/SmartReplier;

    iget-wide v3, p0, Lcom/smedialink/bots/data/SmartReplier$getResponsesFromBots$1;->$userId:J

    iget-object v5, p0, Lcom/smedialink/bots/data/SmartReplier$getResponsesFromBots$1;->$sentence:Ljava/lang/String;

    move-object v0, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/smedialink/bots/data/SmartReplier$getResponsesFromBots$1;-><init>(Lcom/smedialink/bots/usecase/AiBotsManager$SmartReplierCallback;Lcom/smedialink/bots/data/SmartReplier;JLjava/lang/String;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/smedialink/bots/data/SmartReplier$getResponsesFromBots$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/smedialink/bots/data/SmartReplier$getResponsesFromBots$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/smedialink/bots/data/SmartReplier$getResponsesFromBots$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/smedialink/bots/data/SmartReplier$getResponsesFromBots$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 31
    iget v1, p0, Lcom/smedialink/bots/data/SmartReplier$getResponsesFromBots$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/smedialink/bots/data/SmartReplier$getResponsesFromBots$1;->L$0:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 52
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 31
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 34
    :try_start_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 35
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 37
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    new-instance v11, Lcom/smedialink/bots/data/SmartReplier$getResponsesFromBots$1$1;

    iget-object v4, p0, Lcom/smedialink/bots/data/SmartReplier$getResponsesFromBots$1;->this$0:Lcom/smedialink/bots/data/SmartReplier;

    iget-wide v7, p0, Lcom/smedialink/bots/data/SmartReplier$getResponsesFromBots$1;->$userId:J

    iget-object v9, p0, Lcom/smedialink/bots/data/SmartReplier$getResponsesFromBots$1;->$sentence:Ljava/lang/String;

    const/4 v10, 0x0

    move-object v3, v11

    move-object v5, p1

    invoke-direct/range {v3 .. v10}, Lcom/smedialink/bots/data/SmartReplier$getResponsesFromBots$1$1;-><init>(Lcom/smedialink/bots/data/SmartReplier;Ljava/util/List;Ljava/util/List;JLjava/lang/String;Lkotlin/coroutines/Continuation;)V

    iput-object p1, p0, Lcom/smedialink/bots/data/SmartReplier$getResponsesFromBots$1;->L$0:Ljava/lang/Object;

    iput v2, p0, Lcom/smedialink/bots/data/SmartReplier$getResponsesFromBots$1;->label:I

    invoke-static {v1, v11, p0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_2

    return-object v0

    :cond_2
    move-object v0, p1

    .line 47
    :goto_0
    iget-object p1, p0, Lcom/smedialink/bots/data/SmartReplier$getResponsesFromBots$1;->$callback:Lcom/smedialink/bots/usecase/AiBotsManager$SmartReplierCallback;

    invoke-interface {p1, v0}, Lcom/smedialink/bots/usecase/AiBotsManager$SmartReplierCallback;->onSuccess(Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 50
    iget-object v0, p0, Lcom/smedialink/bots/data/SmartReplier$getResponsesFromBots$1;->$callback:Lcom/smedialink/bots/usecase/AiBotsManager$SmartReplierCallback;

    invoke-interface {v0, p1}, Lcom/smedialink/bots/usecase/AiBotsManager$SmartReplierCallback;->onError(Ljava/lang/Throwable;)V

    .line 52
    :goto_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
