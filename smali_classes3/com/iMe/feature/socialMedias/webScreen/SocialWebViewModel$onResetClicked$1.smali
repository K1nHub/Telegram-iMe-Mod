.class final Lcom/iMe/feature/socialMedias/webScreen/SocialWebViewModel$onResetClicked$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SocialWebViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/feature/socialMedias/webScreen/SocialWebViewModel;->onResetClicked()V
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
    c = "com.iMe.feature.socialMedias.webScreen.SocialWebViewModel$onResetClicked$1"
    f = "SocialWebViewModel.kt"
    l = {
        0x2e,
        0x2f,
        0x30
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/iMe/feature/socialMedias/webScreen/SocialWebViewModel;


# direct methods
.method constructor <init>(Lcom/iMe/feature/socialMedias/webScreen/SocialWebViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/feature/socialMedias/webScreen/SocialWebViewModel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/iMe/feature/socialMedias/webScreen/SocialWebViewModel$onResetClicked$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/iMe/feature/socialMedias/webScreen/SocialWebViewModel$onResetClicked$1;->this$0:Lcom/iMe/feature/socialMedias/webScreen/SocialWebViewModel;

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

    new-instance v0, Lcom/iMe/feature/socialMedias/webScreen/SocialWebViewModel$onResetClicked$1;

    iget-object v1, p0, Lcom/iMe/feature/socialMedias/webScreen/SocialWebViewModel$onResetClicked$1;->this$0:Lcom/iMe/feature/socialMedias/webScreen/SocialWebViewModel;

    invoke-direct {v0, v1, p2}, Lcom/iMe/feature/socialMedias/webScreen/SocialWebViewModel$onResetClicked$1;-><init>(Lcom/iMe/feature/socialMedias/webScreen/SocialWebViewModel;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/iMe/feature/socialMedias/webScreen/SocialWebViewModel$onResetClicked$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lorg/orbitmvi/orbit/syntax/simple/SimpleSyntax;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/iMe/feature/socialMedias/webScreen/SocialWebViewModel$onResetClicked$1;->invoke(Lorg/orbitmvi/orbit/syntax/simple/SimpleSyntax;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/iMe/feature/socialMedias/webScreen/SocialWebViewModel$onResetClicked$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/iMe/feature/socialMedias/webScreen/SocialWebViewModel$onResetClicked$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/iMe/feature/socialMedias/webScreen/SocialWebViewModel$onResetClicked$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 45
    iget v1, p0, Lcom/iMe/feature/socialMedias/webScreen/SocialWebViewModel$onResetClicked$1;->label:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/iMe/feature/socialMedias/webScreen/SocialWebViewModel$onResetClicked$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/iMe/storage/domain/model/Result;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v1, p0, Lcom/iMe/feature/socialMedias/webScreen/SocialWebViewModel$onResetClicked$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lorg/orbitmvi/orbit/syntax/simple/SimpleSyntax;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/iMe/feature/socialMedias/webScreen/SocialWebViewModel$onResetClicked$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lorg/orbitmvi/orbit/syntax/simple/SimpleSyntax;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/iMe/feature/socialMedias/webScreen/SocialWebViewModel$onResetClicked$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lorg/orbitmvi/orbit/syntax/simple/SimpleSyntax;

    .line 46
    sget-object v1, Lcom/iMe/feature/socialMedias/webScreen/SocialWebViewModel$onResetClicked$1$1;->INSTANCE:Lcom/iMe/feature/socialMedias/webScreen/SocialWebViewModel$onResetClicked$1$1;

    iput-object p1, p0, Lcom/iMe/feature/socialMedias/webScreen/SocialWebViewModel$onResetClicked$1;->L$0:Ljava/lang/Object;

    iput v4, p0, Lcom/iMe/feature/socialMedias/webScreen/SocialWebViewModel$onResetClicked$1;->label:I

    invoke-static {p1, v1, p0}, Lorg/orbitmvi/orbit/syntax/simple/SimpleSyntaxExtensionsKt;->reduce(Lorg/orbitmvi/orbit/syntax/simple/SimpleSyntax;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_4

    return-object v0

    :cond_4
    move-object v1, p1

    .line 47
    :goto_0
    iget-object p1, p0, Lcom/iMe/feature/socialMedias/webScreen/SocialWebViewModel$onResetClicked$1;->this$0:Lcom/iMe/feature/socialMedias/webScreen/SocialWebViewModel;

    invoke-static {p1}, Lcom/iMe/feature/socialMedias/webScreen/SocialWebViewModel;->access$getSocialUseCase$p(Lcom/iMe/feature/socialMedias/webScreen/SocialWebViewModel;)Lcom/iMe/feature/socialMedias/SocialUseCase;

    move-result-object p1

    invoke-virtual {v1}, Lorg/orbitmvi/orbit/syntax/simple/SimpleSyntax;->getState()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/iMe/feature/socialMedias/webScreen/SocialWebState;

    invoke-virtual {v5}, Lcom/iMe/feature/socialMedias/webScreen/SocialWebState;->getSocialNetwork()Lcom/iMe/feature/socialMedias/SocialNetwork;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/iMe/feature/socialMedias/SocialUseCase;->logout(Lcom/iMe/feature/socialMedias/SocialNetwork;)Lio/reactivex/Observable;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/rx2/RxConvertKt;->asFlow(Lio/reactivex/ObservableSource;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    iput-object v1, p0, Lcom/iMe/feature/socialMedias/webScreen/SocialWebViewModel$onResetClicked$1;->L$0:Ljava/lang/Object;

    iput v3, p0, Lcom/iMe/feature/socialMedias/webScreen/SocialWebViewModel$onResetClicked$1;->label:I

    invoke-static {p1, p0}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    .line 45
    :cond_5
    :goto_1
    check-cast p1, Lcom/iMe/storage/domain/model/Result;

    .line 48
    sget-object v3, Lcom/iMe/feature/socialMedias/webScreen/SocialWebViewModel$onResetClicked$1$2;->INSTANCE:Lcom/iMe/feature/socialMedias/webScreen/SocialWebViewModel$onResetClicked$1$2;

    iput-object p1, p0, Lcom/iMe/feature/socialMedias/webScreen/SocialWebViewModel$onResetClicked$1;->L$0:Ljava/lang/Object;

    iput v2, p0, Lcom/iMe/feature/socialMedias/webScreen/SocialWebViewModel$onResetClicked$1;->label:I

    invoke-static {v1, v3, p0}, Lorg/orbitmvi/orbit/syntax/simple/SimpleSyntaxExtensionsKt;->reduce(Lorg/orbitmvi/orbit/syntax/simple/SimpleSyntax;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_6

    return-object v0

    :cond_6
    move-object v0, p1

    .line 49
    :goto_2
    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/Result;->getData()Ljava/lang/Object;

    move-result-object p1

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/iMe/feature/socialMedias/webScreen/SocialWebViewModel$onResetClicked$1;->this$0:Lcom/iMe/feature/socialMedias/webScreen/SocialWebViewModel;

    invoke-static {p1}, Lcom/iMe/feature/socialMedias/webScreen/SocialWebViewModel;->access$resetCookiesAndFinish(Lcom/iMe/feature/socialMedias/webScreen/SocialWebViewModel;)V

    goto :goto_3

    :cond_7
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "onResetClicked error"

    .line 50
    invoke-static {v0, p1}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    :goto_3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
