.class final Lcom/iMe/feature/socialMedias/webScreen/SocialWebViewModel$processUrl$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SocialWebViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/feature/socialMedias/webScreen/SocialWebViewModel;->processUrl(Ljava/lang/String;)V
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
    c = "com.iMe.feature.socialMedias.webScreen.SocialWebViewModel$processUrl$1"
    f = "SocialWebViewModel.kt"
    l = {
        0x37,
        0x38,
        0x39,
        0x3a
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $url:Ljava/lang/String;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/iMe/feature/socialMedias/webScreen/SocialWebViewModel$processUrl$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/iMe/feature/socialMedias/webScreen/SocialWebViewModel$processUrl$1;->$url:Ljava/lang/String;

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

    new-instance v0, Lcom/iMe/feature/socialMedias/webScreen/SocialWebViewModel$processUrl$1;

    iget-object v1, p0, Lcom/iMe/feature/socialMedias/webScreen/SocialWebViewModel$processUrl$1;->$url:Ljava/lang/String;

    invoke-direct {v0, v1, p2}, Lcom/iMe/feature/socialMedias/webScreen/SocialWebViewModel$processUrl$1;-><init>(Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/iMe/feature/socialMedias/webScreen/SocialWebViewModel$processUrl$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lorg/orbitmvi/orbit/syntax/simple/SimpleSyntax;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/iMe/feature/socialMedias/webScreen/SocialWebViewModel$processUrl$1;->invoke(Lorg/orbitmvi/orbit/syntax/simple/SimpleSyntax;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/iMe/feature/socialMedias/webScreen/SocialWebViewModel$processUrl$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/iMe/feature/socialMedias/webScreen/SocialWebViewModel$processUrl$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/iMe/feature/socialMedias/webScreen/SocialWebViewModel$processUrl$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 53
    iget v1, p0, Lcom/iMe/feature/socialMedias/webScreen/SocialWebViewModel$processUrl$1;->label:I

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v1, :cond_4

    if-eq v1, v5, :cond_3

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_4

    :cond_2
    iget-object v1, p0, Lcom/iMe/feature/socialMedias/webScreen/SocialWebViewModel$processUrl$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lorg/orbitmvi/orbit/syntax/simple/SimpleSyntax;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3

    :cond_3
    iget-object v1, p0, Lcom/iMe/feature/socialMedias/webScreen/SocialWebViewModel$processUrl$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lorg/orbitmvi/orbit/syntax/simple/SimpleSyntax;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/iMe/feature/socialMedias/webScreen/SocialWebViewModel$processUrl$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lorg/orbitmvi/orbit/syntax/simple/SimpleSyntax;

    .line 54
    iget-object v1, p0, Lcom/iMe/feature/socialMedias/webScreen/SocialWebViewModel$processUrl$1;->$url:Ljava/lang/String;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_5

    move v1, v5

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_8

    .line 55
    sget-object v1, Lcom/iMe/feature/socialMedias/webScreen/SocialSideEffects$ShowError;->INSTANCE:Lcom/iMe/feature/socialMedias/webScreen/SocialSideEffects$ShowError;

    iput-object p1, p0, Lcom/iMe/feature/socialMedias/webScreen/SocialWebViewModel$processUrl$1;->L$0:Ljava/lang/Object;

    iput v5, p0, Lcom/iMe/feature/socialMedias/webScreen/SocialWebViewModel$processUrl$1;->label:I

    invoke-static {p1, v1, p0}, Lorg/orbitmvi/orbit/syntax/simple/SimpleSyntaxExtensionsKt;->postSideEffect(Lorg/orbitmvi/orbit/syntax/simple/SimpleSyntax;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_6

    return-object v0

    :cond_6
    move-object v1, p1

    :goto_2
    const-wide/16 v5, 0x5dc

    .line 56
    iput-object v1, p0, Lcom/iMe/feature/socialMedias/webScreen/SocialWebViewModel$processUrl$1;->L$0:Ljava/lang/Object;

    iput v4, p0, Lcom/iMe/feature/socialMedias/webScreen/SocialWebViewModel$processUrl$1;->label:I

    invoke-static {v5, v6, p0}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_7

    return-object v0

    .line 57
    :cond_7
    :goto_3
    sget-object p1, Lcom/iMe/feature/socialMedias/webScreen/SocialSideEffects$FinishAuth;->INSTANCE:Lcom/iMe/feature/socialMedias/webScreen/SocialSideEffects$FinishAuth;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/iMe/feature/socialMedias/webScreen/SocialWebViewModel$processUrl$1;->L$0:Ljava/lang/Object;

    iput v3, p0, Lcom/iMe/feature/socialMedias/webScreen/SocialWebViewModel$processUrl$1;->label:I

    invoke-static {v1, p1, p0}, Lorg/orbitmvi/orbit/syntax/simple/SimpleSyntaxExtensionsKt;->postSideEffect(Lorg/orbitmvi/orbit/syntax/simple/SimpleSyntax;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_9

    return-object v0

    .line 58
    :cond_8
    new-instance v1, Lcom/iMe/feature/socialMedias/webScreen/SocialSideEffects$LoadUrl;

    iget-object v3, p0, Lcom/iMe/feature/socialMedias/webScreen/SocialWebViewModel$processUrl$1;->$url:Ljava/lang/String;

    invoke-direct {v1, v3}, Lcom/iMe/feature/socialMedias/webScreen/SocialSideEffects$LoadUrl;-><init>(Ljava/lang/String;)V

    iput v2, p0, Lcom/iMe/feature/socialMedias/webScreen/SocialWebViewModel$processUrl$1;->label:I

    invoke-static {p1, v1, p0}, Lorg/orbitmvi/orbit/syntax/simple/SimpleSyntaxExtensionsKt;->postSideEffect(Lorg/orbitmvi/orbit/syntax/simple/SimpleSyntax;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_9

    return-object v0

    .line 59
    :cond_9
    :goto_4
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
