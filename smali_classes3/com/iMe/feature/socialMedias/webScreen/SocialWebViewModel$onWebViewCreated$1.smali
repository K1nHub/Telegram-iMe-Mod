.class final Lcom/iMe/feature/socialMedias/webScreen/SocialWebViewModel$onWebViewCreated$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SocialWebViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/feature/socialMedias/webScreen/SocialWebViewModel;->onWebViewCreated(Lcom/iMe/feature/socialMedias/SocialNetwork;)V
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
        "Lcom/iMe/feature/socialMedias/webScreen/SocialWebState;",
        "Lcom/iMe/feature/socialMedias/webScreen/SocialSideEffects;",
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
    c = "com.iMe.feature.socialMedias.webScreen.SocialWebViewModel$onWebViewCreated$1"
    f = "SocialWebViewModel.kt"
    l = {
        0x1d,
        0x1e,
        0x20
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $socialNetwork:Lcom/iMe/feature/socialMedias/SocialNetwork;

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/iMe/feature/socialMedias/webScreen/SocialWebViewModel;


# direct methods
.method constructor <init>(Lcom/iMe/feature/socialMedias/SocialNetwork;Lcom/iMe/feature/socialMedias/webScreen/SocialWebViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/feature/socialMedias/SocialNetwork;",
            "Lcom/iMe/feature/socialMedias/webScreen/SocialWebViewModel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/iMe/feature/socialMedias/webScreen/SocialWebViewModel$onWebViewCreated$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/iMe/feature/socialMedias/webScreen/SocialWebViewModel$onWebViewCreated$1;->$socialNetwork:Lcom/iMe/feature/socialMedias/SocialNetwork;

    iput-object p2, p0, Lcom/iMe/feature/socialMedias/webScreen/SocialWebViewModel$onWebViewCreated$1;->this$0:Lcom/iMe/feature/socialMedias/webScreen/SocialWebViewModel;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
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

    new-instance v0, Lcom/iMe/feature/socialMedias/webScreen/SocialWebViewModel$onWebViewCreated$1;

    iget-object v1, p0, Lcom/iMe/feature/socialMedias/webScreen/SocialWebViewModel$onWebViewCreated$1;->$socialNetwork:Lcom/iMe/feature/socialMedias/SocialNetwork;

    iget-object v2, p0, Lcom/iMe/feature/socialMedias/webScreen/SocialWebViewModel$onWebViewCreated$1;->this$0:Lcom/iMe/feature/socialMedias/webScreen/SocialWebViewModel;

    invoke-direct {v0, v1, v2, p2}, Lcom/iMe/feature/socialMedias/webScreen/SocialWebViewModel$onWebViewCreated$1;-><init>(Lcom/iMe/feature/socialMedias/SocialNetwork;Lcom/iMe/feature/socialMedias/webScreen/SocialWebViewModel;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/iMe/feature/socialMedias/webScreen/SocialWebViewModel$onWebViewCreated$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lorg/orbitmvi/orbit/syntax/simple/SimpleSyntax;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/iMe/feature/socialMedias/webScreen/SocialWebViewModel$onWebViewCreated$1;->invoke(Lorg/orbitmvi/orbit/syntax/simple/SimpleSyntax;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lorg/orbitmvi/orbit/syntax/simple/SimpleSyntax;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/orbitmvi/orbit/syntax/simple/SimpleSyntax<",
            "Lcom/iMe/feature/socialMedias/webScreen/SocialWebState;",
            "Lcom/iMe/feature/socialMedias/webScreen/SocialSideEffects;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/iMe/feature/socialMedias/webScreen/SocialWebViewModel$onWebViewCreated$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/iMe/feature/socialMedias/webScreen/SocialWebViewModel$onWebViewCreated$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/iMe/feature/socialMedias/webScreen/SocialWebViewModel$onWebViewCreated$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 26
    iget v1, p0, Lcom/iMe/feature/socialMedias/webScreen/SocialWebViewModel$onWebViewCreated$1;->label:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v1, p0, Lcom/iMe/feature/socialMedias/webScreen/SocialWebViewModel$onWebViewCreated$1;->L$1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v3, p0, Lcom/iMe/feature/socialMedias/webScreen/SocialWebViewModel$onWebViewCreated$1;->L$0:Ljava/lang/Object;

    check-cast v3, Lorg/orbitmvi/orbit/syntax/simple/SimpleSyntax;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/iMe/feature/socialMedias/webScreen/SocialWebViewModel$onWebViewCreated$1;->L$1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v4, p0, Lcom/iMe/feature/socialMedias/webScreen/SocialWebViewModel$onWebViewCreated$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lorg/orbitmvi/orbit/syntax/simple/SimpleSyntax;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p1, v4

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/iMe/feature/socialMedias/webScreen/SocialWebViewModel$onWebViewCreated$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lorg/orbitmvi/orbit/syntax/simple/SimpleSyntax;

    .line 27
    iget-object v1, p0, Lcom/iMe/feature/socialMedias/webScreen/SocialWebViewModel$onWebViewCreated$1;->$socialNetwork:Lcom/iMe/feature/socialMedias/SocialNetwork;

    invoke-virtual {v1}, Lcom/iMe/feature/socialMedias/SocialNetwork;->getSocialWebUrl()Ljava/lang/String;

    move-result-object v1

    .line 28
    iget-object v5, p0, Lcom/iMe/feature/socialMedias/webScreen/SocialWebViewModel$onWebViewCreated$1;->$socialNetwork:Lcom/iMe/feature/socialMedias/SocialNetwork;

    invoke-virtual {v5}, Lcom/iMe/feature/socialMedias/SocialNetwork;->getSocialName()Ljava/lang/String;

    move-result-object v5

    .line 29
    new-instance v6, Lcom/iMe/feature/socialMedias/webScreen/SocialWebViewModel$onWebViewCreated$1$1;

    iget-object v7, p0, Lcom/iMe/feature/socialMedias/webScreen/SocialWebViewModel$onWebViewCreated$1;->$socialNetwork:Lcom/iMe/feature/socialMedias/SocialNetwork;

    invoke-direct {v6, v5, v7}, Lcom/iMe/feature/socialMedias/webScreen/SocialWebViewModel$onWebViewCreated$1$1;-><init>(Ljava/lang/String;Lcom/iMe/feature/socialMedias/SocialNetwork;)V

    iput-object p1, p0, Lcom/iMe/feature/socialMedias/webScreen/SocialWebViewModel$onWebViewCreated$1;->L$0:Ljava/lang/Object;

    iput-object v1, p0, Lcom/iMe/feature/socialMedias/webScreen/SocialWebViewModel$onWebViewCreated$1;->L$1:Ljava/lang/Object;

    iput v4, p0, Lcom/iMe/feature/socialMedias/webScreen/SocialWebViewModel$onWebViewCreated$1;->label:I

    invoke-static {p1, v6, p0}, Lorg/orbitmvi/orbit/syntax/simple/SimpleSyntaxExtensionsKt;->reduce(Lorg/orbitmvi/orbit/syntax/simple/SimpleSyntax;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v0, :cond_4

    return-object v0

    :cond_4
    :goto_0
    const-wide/16 v4, 0x5dc

    .line 30
    iput-object p1, p0, Lcom/iMe/feature/socialMedias/webScreen/SocialWebViewModel$onWebViewCreated$1;->L$0:Ljava/lang/Object;

    iput-object v1, p0, Lcom/iMe/feature/socialMedias/webScreen/SocialWebViewModel$onWebViewCreated$1;->L$1:Ljava/lang/Object;

    iput v3, p0, Lcom/iMe/feature/socialMedias/webScreen/SocialWebViewModel$onWebViewCreated$1;->label:I

    invoke-static {v4, v5, p0}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_5

    return-object v0

    :cond_5
    move-object v3, p1

    .line 31
    :goto_1
    iget-object p1, p0, Lcom/iMe/feature/socialMedias/webScreen/SocialWebViewModel$onWebViewCreated$1;->this$0:Lcom/iMe/feature/socialMedias/webScreen/SocialWebViewModel;

    invoke-static {p1, v1}, Lcom/iMe/feature/socialMedias/webScreen/SocialWebViewModel;->access$processUrl(Lcom/iMe/feature/socialMedias/webScreen/SocialWebViewModel;Ljava/lang/String;)V

    .line 32
    sget-object p1, Lcom/iMe/feature/socialMedias/webScreen/SocialWebViewModel$onWebViewCreated$1$2;->INSTANCE:Lcom/iMe/feature/socialMedias/webScreen/SocialWebViewModel$onWebViewCreated$1$2;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/iMe/feature/socialMedias/webScreen/SocialWebViewModel$onWebViewCreated$1;->L$0:Ljava/lang/Object;

    iput-object v1, p0, Lcom/iMe/feature/socialMedias/webScreen/SocialWebViewModel$onWebViewCreated$1;->L$1:Ljava/lang/Object;

    iput v2, p0, Lcom/iMe/feature/socialMedias/webScreen/SocialWebViewModel$onWebViewCreated$1;->label:I

    invoke-static {v3, p1, p0}, Lorg/orbitmvi/orbit/syntax/simple/SimpleSyntaxExtensionsKt;->reduce(Lorg/orbitmvi/orbit/syntax/simple/SimpleSyntax;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_6

    return-object v0

    .line 33
    :cond_6
    :goto_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
