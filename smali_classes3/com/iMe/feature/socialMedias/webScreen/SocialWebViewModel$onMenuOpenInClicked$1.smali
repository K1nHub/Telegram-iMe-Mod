.class final Lcom/iMe/feature/socialMedias/webScreen/SocialWebViewModel$onMenuOpenInClicked$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SocialWebViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/feature/socialMedias/webScreen/SocialWebViewModel;->onMenuOpenInClicked()V
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
    c = "com.iMe.feature.socialMedias.webScreen.SocialWebViewModel$onMenuOpenInClicked$1"
    f = "SocialWebViewModel.kt"
    l = {
        0x2a
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/iMe/feature/socialMedias/webScreen/SocialWebViewModel$onMenuOpenInClicked$1;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1
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

    new-instance v0, Lcom/iMe/feature/socialMedias/webScreen/SocialWebViewModel$onMenuOpenInClicked$1;

    invoke-direct {v0, p2}, Lcom/iMe/feature/socialMedias/webScreen/SocialWebViewModel$onMenuOpenInClicked$1;-><init>(Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/iMe/feature/socialMedias/webScreen/SocialWebViewModel$onMenuOpenInClicked$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lorg/orbitmvi/orbit/syntax/simple/SimpleSyntax;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/iMe/feature/socialMedias/webScreen/SocialWebViewModel$onMenuOpenInClicked$1;->invoke(Lorg/orbitmvi/orbit/syntax/simple/SimpleSyntax;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/iMe/feature/socialMedias/webScreen/SocialWebViewModel$onMenuOpenInClicked$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/iMe/feature/socialMedias/webScreen/SocialWebViewModel$onMenuOpenInClicked$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/iMe/feature/socialMedias/webScreen/SocialWebViewModel$onMenuOpenInClicked$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 40
    iget v1, p0, Lcom/iMe/feature/socialMedias/webScreen/SocialWebViewModel$onMenuOpenInClicked$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/iMe/feature/socialMedias/webScreen/SocialWebViewModel$onMenuOpenInClicked$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lorg/orbitmvi/orbit/syntax/simple/SimpleSyntax;

    .line 41
    invoke-virtual {p1}, Lorg/orbitmvi/orbit/syntax/simple/SimpleSyntax;->getState()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iMe/feature/socialMedias/webScreen/SocialWebState;

    invoke-virtual {v1}, Lcom/iMe/feature/socialMedias/webScreen/SocialWebState;->getSocialNetwork()Lcom/iMe/feature/socialMedias/SocialNetwork;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/feature/socialMedias/SocialNetwork;->getSocialWebUrl()Ljava/lang/String;

    move-result-object v1

    .line 42
    new-instance v3, Lcom/iMe/feature/socialMedias/webScreen/SocialSideEffects$OpenInApp;

    invoke-direct {v3, v1}, Lcom/iMe/feature/socialMedias/webScreen/SocialSideEffects$OpenInApp;-><init>(Ljava/lang/String;)V

    iput v2, p0, Lcom/iMe/feature/socialMedias/webScreen/SocialWebViewModel$onMenuOpenInClicked$1;->label:I

    invoke-static {p1, v3, p0}, Lorg/orbitmvi/orbit/syntax/simple/SimpleSyntaxExtensionsKt;->postSideEffect(Lorg/orbitmvi/orbit/syntax/simple/SimpleSyntax;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 43
    :cond_2
    :goto_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
