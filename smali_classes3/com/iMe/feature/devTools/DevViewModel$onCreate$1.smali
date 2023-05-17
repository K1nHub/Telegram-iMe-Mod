.class final Lcom/iMe/feature/devTools/DevViewModel$onCreate$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "DevViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/feature/devTools/DevViewModel;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lorg/orbitmvi/orbit/syntax/simple/SimpleSyntax<",
        "Lcom/iMe/feature/devTools/DevState;",
        "Lcom/iMe/feature/devTools/DevSideEffects;",
        ">;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.iMe.feature.devTools.DevViewModel$onCreate$1"
    f = "DevViewModel.kt"
    l = {
        0x15,
        0x17,
        0x18,
        0x19,
        0x1a,
        0x1b,
        0x1c,
        0x1d,
        0x1e,
        0x1f,
        0x20,
        0x21
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/iMe/feature/devTools/DevViewModel;


# direct methods
.method constructor <init>(Lcom/iMe/feature/devTools/DevViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/feature/devTools/DevViewModel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/iMe/feature/devTools/DevViewModel$onCreate$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/iMe/feature/devTools/DevViewModel$onCreate$1;->this$0:Lcom/iMe/feature/devTools/DevViewModel;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
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

    new-instance v0, Lcom/iMe/feature/devTools/DevViewModel$onCreate$1;

    iget-object v1, p0, Lcom/iMe/feature/devTools/DevViewModel$onCreate$1;->this$0:Lcom/iMe/feature/devTools/DevViewModel;

    invoke-direct {v0, v1, p2}, Lcom/iMe/feature/devTools/DevViewModel$onCreate$1;-><init>(Lcom/iMe/feature/devTools/DevViewModel;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/iMe/feature/devTools/DevViewModel$onCreate$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lorg/orbitmvi/orbit/syntax/simple/SimpleSyntax;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/iMe/feature/devTools/DevViewModel$onCreate$1;->invoke(Lorg/orbitmvi/orbit/syntax/simple/SimpleSyntax;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lorg/orbitmvi/orbit/syntax/simple/SimpleSyntax;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/orbitmvi/orbit/syntax/simple/SimpleSyntax<",
            "Lcom/iMe/feature/devTools/DevState;",
            "Lcom/iMe/feature/devTools/DevSideEffects;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/iMe/feature/devTools/DevViewModel$onCreate$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/iMe/feature/devTools/DevViewModel$onCreate$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/iMe/feature/devTools/DevViewModel$onCreate$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 20
    iget v1, p0, Lcom/iMe/feature/devTools/DevViewModel$onCreate$1;->label:I

    const/4 v2, 0x0

    const-wide/16 v3, 0x5dc

    packed-switch v1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_b

    :pswitch_1
    iget-object v1, p0, Lcom/iMe/feature/devTools/DevViewModel$onCreate$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lorg/orbitmvi/orbit/syntax/simple/SimpleSyntax;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_a

    :pswitch_2
    iget-object v1, p0, Lcom/iMe/feature/devTools/DevViewModel$onCreate$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lorg/orbitmvi/orbit/syntax/simple/SimpleSyntax;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_9

    :pswitch_3
    iget-object v1, p0, Lcom/iMe/feature/devTools/DevViewModel$onCreate$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lorg/orbitmvi/orbit/syntax/simple/SimpleSyntax;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_8

    :pswitch_4
    iget-object v1, p0, Lcom/iMe/feature/devTools/DevViewModel$onCreate$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lorg/orbitmvi/orbit/syntax/simple/SimpleSyntax;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_7

    :pswitch_5
    iget-object v1, p0, Lcom/iMe/feature/devTools/DevViewModel$onCreate$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lorg/orbitmvi/orbit/syntax/simple/SimpleSyntax;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_6

    :pswitch_6
    iget-object v1, p0, Lcom/iMe/feature/devTools/DevViewModel$onCreate$1;->L$1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v5, p0, Lcom/iMe/feature/devTools/DevViewModel$onCreate$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lorg/orbitmvi/orbit/syntax/simple/SimpleSyntax;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    :cond_0
    move-object p1, v1

    move-object v1, v5

    goto/16 :goto_5

    :pswitch_7
    iget-object v1, p0, Lcom/iMe/feature/devTools/DevViewModel$onCreate$1;->L$1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v5, p0, Lcom/iMe/feature/devTools/DevViewModel$onCreate$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lorg/orbitmvi/orbit/syntax/simple/SimpleSyntax;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    :pswitch_8
    iget-object v1, p0, Lcom/iMe/feature/devTools/DevViewModel$onCreate$1;->L$1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v5, p0, Lcom/iMe/feature/devTools/DevViewModel$onCreate$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lorg/orbitmvi/orbit/syntax/simple/SimpleSyntax;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3

    :pswitch_9
    iget-object v1, p0, Lcom/iMe/feature/devTools/DevViewModel$onCreate$1;->L$1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v5, p0, Lcom/iMe/feature/devTools/DevViewModel$onCreate$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lorg/orbitmvi/orbit/syntax/simple/SimpleSyntax;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :pswitch_a
    iget-object v1, p0, Lcom/iMe/feature/devTools/DevViewModel$onCreate$1;->L$1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v5, p0, Lcom/iMe/feature/devTools/DevViewModel$onCreate$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lorg/orbitmvi/orbit/syntax/simple/SimpleSyntax;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_b
    iget-object v1, p0, Lcom/iMe/feature/devTools/DevViewModel$onCreate$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lorg/orbitmvi/orbit/syntax/simple/SimpleSyntax;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_c
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/iMe/feature/devTools/DevViewModel$onCreate$1;->L$0:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Lorg/orbitmvi/orbit/syntax/simple/SimpleSyntax;

    .line 21
    iget-object p1, p0, Lcom/iMe/feature/devTools/DevViewModel$onCreate$1;->this$0:Lcom/iMe/feature/devTools/DevViewModel;

    invoke-static {p1}, Lcom/iMe/feature/devTools/DevViewModel;->access$getDevUseCase$p(Lcom/iMe/feature/devTools/DevViewModel;)Lcom/iMe/feature/devTools/DevUseCase;

    move-result-object p1

    iput-object v1, p0, Lcom/iMe/feature/devTools/DevViewModel$onCreate$1;->L$0:Ljava/lang/Object;

    const/4 v5, 0x1

    iput v5, p0, Lcom/iMe/feature/devTools/DevViewModel$onCreate$1;->label:I

    invoke-virtual {p1, p0}, Lcom/iMe/feature/devTools/DevUseCase;->getRepoName(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_1

    return-object v0

    .line 20
    :cond_1
    :goto_0
    check-cast p1, Ljava/lang/String;

    .line 23
    sget-object v5, Lcom/iMe/feature/devTools/DevViewModel$onCreate$1$1;->INSTANCE:Lcom/iMe/feature/devTools/DevViewModel$onCreate$1$1;

    iput-object v1, p0, Lcom/iMe/feature/devTools/DevViewModel$onCreate$1;->L$0:Ljava/lang/Object;

    iput-object p1, p0, Lcom/iMe/feature/devTools/DevViewModel$onCreate$1;->L$1:Ljava/lang/Object;

    const/4 v6, 0x2

    iput v6, p0, Lcom/iMe/feature/devTools/DevViewModel$onCreate$1;->label:I

    invoke-static {v1, v5, p0}, Lorg/orbitmvi/orbit/syntax/simple/SimpleSyntaxExtensionsKt;->reduce(Lorg/orbitmvi/orbit/syntax/simple/SimpleSyntax;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v0, :cond_2

    return-object v0

    :cond_2
    move-object v5, v1

    move-object v1, p1

    .line 24
    :goto_1
    iput-object v5, p0, Lcom/iMe/feature/devTools/DevViewModel$onCreate$1;->L$0:Ljava/lang/Object;

    iput-object v1, p0, Lcom/iMe/feature/devTools/DevViewModel$onCreate$1;->L$1:Ljava/lang/Object;

    const/4 p1, 0x3

    iput p1, p0, Lcom/iMe/feature/devTools/DevViewModel$onCreate$1;->label:I

    invoke-static {v3, v4, p0}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    .line 25
    :cond_3
    :goto_2
    sget-object p1, Lcom/iMe/feature/devTools/DevViewModel$onCreate$1$2;->INSTANCE:Lcom/iMe/feature/devTools/DevViewModel$onCreate$1$2;

    iput-object v5, p0, Lcom/iMe/feature/devTools/DevViewModel$onCreate$1;->L$0:Ljava/lang/Object;

    iput-object v1, p0, Lcom/iMe/feature/devTools/DevViewModel$onCreate$1;->L$1:Ljava/lang/Object;

    const/4 v6, 0x4

    iput v6, p0, Lcom/iMe/feature/devTools/DevViewModel$onCreate$1;->label:I

    invoke-static {v5, p1, p0}, Lorg/orbitmvi/orbit/syntax/simple/SimpleSyntaxExtensionsKt;->reduce(Lorg/orbitmvi/orbit/syntax/simple/SimpleSyntax;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    .line 26
    :cond_4
    :goto_3
    sget-object p1, Lcom/iMe/feature/devTools/DevSideEffects$ShowError;->INSTANCE:Lcom/iMe/feature/devTools/DevSideEffects$ShowError;

    iput-object v5, p0, Lcom/iMe/feature/devTools/DevViewModel$onCreate$1;->L$0:Ljava/lang/Object;

    iput-object v1, p0, Lcom/iMe/feature/devTools/DevViewModel$onCreate$1;->L$1:Ljava/lang/Object;

    const/4 v6, 0x5

    iput v6, p0, Lcom/iMe/feature/devTools/DevViewModel$onCreate$1;->label:I

    invoke-static {v5, p1, p0}, Lorg/orbitmvi/orbit/syntax/simple/SimpleSyntaxExtensionsKt;->postSideEffect(Lorg/orbitmvi/orbit/syntax/simple/SimpleSyntax;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    .line 27
    :cond_5
    :goto_4
    iput-object v5, p0, Lcom/iMe/feature/devTools/DevViewModel$onCreate$1;->L$0:Ljava/lang/Object;

    iput-object v1, p0, Lcom/iMe/feature/devTools/DevViewModel$onCreate$1;->L$1:Ljava/lang/Object;

    const/4 p1, 0x6

    iput p1, p0, Lcom/iMe/feature/devTools/DevViewModel$onCreate$1;->label:I

    invoke-static {v3, v4, p0}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_0

    return-object v0

    .line 28
    :goto_5
    new-instance v5, Lcom/iMe/feature/devTools/DevViewModel$onCreate$1$3;

    invoke-direct {v5, p1}, Lcom/iMe/feature/devTools/DevViewModel$onCreate$1$3;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/iMe/feature/devTools/DevViewModel$onCreate$1;->L$0:Ljava/lang/Object;

    iput-object v2, p0, Lcom/iMe/feature/devTools/DevViewModel$onCreate$1;->L$1:Ljava/lang/Object;

    const/4 p1, 0x7

    iput p1, p0, Lcom/iMe/feature/devTools/DevViewModel$onCreate$1;->label:I

    invoke-static {v1, v5, p0}, Lorg/orbitmvi/orbit/syntax/simple/SimpleSyntaxExtensionsKt;->reduce(Lorg/orbitmvi/orbit/syntax/simple/SimpleSyntax;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_6

    return-object v0

    .line 29
    :cond_6
    :goto_6
    iput-object v1, p0, Lcom/iMe/feature/devTools/DevViewModel$onCreate$1;->L$0:Ljava/lang/Object;

    const/16 p1, 0x8

    iput p1, p0, Lcom/iMe/feature/devTools/DevViewModel$onCreate$1;->label:I

    invoke-static {v3, v4, p0}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_7

    return-object v0

    .line 30
    :cond_7
    :goto_7
    sget-object p1, Lcom/iMe/feature/devTools/DevViewModel$onCreate$1$4;->INSTANCE:Lcom/iMe/feature/devTools/DevViewModel$onCreate$1$4;

    iput-object v1, p0, Lcom/iMe/feature/devTools/DevViewModel$onCreate$1;->L$0:Ljava/lang/Object;

    const/16 v5, 0x9

    iput v5, p0, Lcom/iMe/feature/devTools/DevViewModel$onCreate$1;->label:I

    invoke-static {v1, p1, p0}, Lorg/orbitmvi/orbit/syntax/simple/SimpleSyntaxExtensionsKt;->reduce(Lorg/orbitmvi/orbit/syntax/simple/SimpleSyntax;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_8

    return-object v0

    .line 31
    :cond_8
    :goto_8
    sget-object p1, Lcom/iMe/feature/devTools/DevViewModel$onCreate$1$5;->INSTANCE:Lcom/iMe/feature/devTools/DevViewModel$onCreate$1$5;

    iput-object v1, p0, Lcom/iMe/feature/devTools/DevViewModel$onCreate$1;->L$0:Ljava/lang/Object;

    const/16 v5, 0xa

    iput v5, p0, Lcom/iMe/feature/devTools/DevViewModel$onCreate$1;->label:I

    invoke-static {v1, p1, p0}, Lorg/orbitmvi/orbit/syntax/simple/SimpleSyntaxExtensionsKt;->reduce(Lorg/orbitmvi/orbit/syntax/simple/SimpleSyntax;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_9

    return-object v0

    .line 32
    :cond_9
    :goto_9
    iput-object v1, p0, Lcom/iMe/feature/devTools/DevViewModel$onCreate$1;->L$0:Ljava/lang/Object;

    const/16 p1, 0xb

    iput p1, p0, Lcom/iMe/feature/devTools/DevViewModel$onCreate$1;->label:I

    invoke-static {v3, v4, p0}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_a

    return-object v0

    .line 33
    :cond_a
    :goto_a
    sget-object p1, Lcom/iMe/feature/devTools/DevSideEffects$NavigateToChat;->INSTANCE:Lcom/iMe/feature/devTools/DevSideEffects$NavigateToChat;

    iput-object v2, p0, Lcom/iMe/feature/devTools/DevViewModel$onCreate$1;->L$0:Ljava/lang/Object;

    const/16 v2, 0xc

    iput v2, p0, Lcom/iMe/feature/devTools/DevViewModel$onCreate$1;->label:I

    invoke-static {v1, p1, p0}, Lorg/orbitmvi/orbit/syntax/simple/SimpleSyntaxExtensionsKt;->postSideEffect(Lorg/orbitmvi/orbit/syntax/simple/SimpleSyntax;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_b

    return-object v0

    .line 34
    :cond_b
    :goto_b
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
