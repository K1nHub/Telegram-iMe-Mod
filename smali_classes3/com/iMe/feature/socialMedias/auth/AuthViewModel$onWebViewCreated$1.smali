.class final Lcom/iMe/feature/socialMedias/auth/AuthViewModel$onWebViewCreated$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "AuthViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/feature/socialMedias/auth/AuthViewModel;->onWebViewCreated(Lcom/iMe/feature/socialMedias/SocialAuthDomain;)V
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
        "Lcom/iMe/feature/socialMedias/auth/AuthState;",
        "Lcom/iMe/feature/socialMedias/auth/AuthSideEffects;",
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
    c = "com.iMe.feature.socialMedias.auth.AuthViewModel$onWebViewCreated$1"
    f = "AuthViewModel.kt"
    l = {
        0x17,
        0x18,
        0x1a
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $socialAuthDomain:Lcom/iMe/feature/socialMedias/SocialAuthDomain;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/iMe/feature/socialMedias/auth/AuthViewModel;


# direct methods
.method constructor <init>(Lcom/iMe/feature/socialMedias/SocialAuthDomain;Lcom/iMe/feature/socialMedias/auth/AuthViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/feature/socialMedias/SocialAuthDomain;",
            "Lcom/iMe/feature/socialMedias/auth/AuthViewModel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/iMe/feature/socialMedias/auth/AuthViewModel$onWebViewCreated$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/iMe/feature/socialMedias/auth/AuthViewModel$onWebViewCreated$1;->$socialAuthDomain:Lcom/iMe/feature/socialMedias/SocialAuthDomain;

    iput-object p2, p0, Lcom/iMe/feature/socialMedias/auth/AuthViewModel$onWebViewCreated$1;->this$0:Lcom/iMe/feature/socialMedias/auth/AuthViewModel;

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

    new-instance v0, Lcom/iMe/feature/socialMedias/auth/AuthViewModel$onWebViewCreated$1;

    iget-object v1, p0, Lcom/iMe/feature/socialMedias/auth/AuthViewModel$onWebViewCreated$1;->$socialAuthDomain:Lcom/iMe/feature/socialMedias/SocialAuthDomain;

    iget-object v2, p0, Lcom/iMe/feature/socialMedias/auth/AuthViewModel$onWebViewCreated$1;->this$0:Lcom/iMe/feature/socialMedias/auth/AuthViewModel;

    invoke-direct {v0, v1, v2, p2}, Lcom/iMe/feature/socialMedias/auth/AuthViewModel$onWebViewCreated$1;-><init>(Lcom/iMe/feature/socialMedias/SocialAuthDomain;Lcom/iMe/feature/socialMedias/auth/AuthViewModel;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/iMe/feature/socialMedias/auth/AuthViewModel$onWebViewCreated$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lorg/orbitmvi/orbit/syntax/simple/SimpleSyntax;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/iMe/feature/socialMedias/auth/AuthViewModel$onWebViewCreated$1;->invoke(Lorg/orbitmvi/orbit/syntax/simple/SimpleSyntax;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lorg/orbitmvi/orbit/syntax/simple/SimpleSyntax;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/orbitmvi/orbit/syntax/simple/SimpleSyntax<",
            "Lcom/iMe/feature/socialMedias/auth/AuthState;",
            "Lcom/iMe/feature/socialMedias/auth/AuthSideEffects;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/iMe/feature/socialMedias/auth/AuthViewModel$onWebViewCreated$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/iMe/feature/socialMedias/auth/AuthViewModel$onWebViewCreated$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/iMe/feature/socialMedias/auth/AuthViewModel$onWebViewCreated$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 21
    iget v1, p0, Lcom/iMe/feature/socialMedias/auth/AuthViewModel$onWebViewCreated$1;->label:I

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
    iget-object v1, p0, Lcom/iMe/feature/socialMedias/auth/AuthViewModel$onWebViewCreated$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lorg/orbitmvi/orbit/syntax/simple/SimpleSyntax;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/iMe/feature/socialMedias/auth/AuthViewModel$onWebViewCreated$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lorg/orbitmvi/orbit/syntax/simple/SimpleSyntax;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/iMe/feature/socialMedias/auth/AuthViewModel$onWebViewCreated$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lorg/orbitmvi/orbit/syntax/simple/SimpleSyntax;

    .line 22
    iget-object v1, p0, Lcom/iMe/feature/socialMedias/auth/AuthViewModel$onWebViewCreated$1;->$socialAuthDomain:Lcom/iMe/feature/socialMedias/SocialAuthDomain;

    invoke-virtual {v1}, Lcom/iMe/feature/socialMedias/SocialAuthDomain;->getSocialType()Lcom/iMe/feature/socialMedias/SocialType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/iMe/utils/extentions/common/StringExtKt;->capitalizeOnlyFirstSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 23
    new-instance v5, Lcom/iMe/feature/socialMedias/auth/AuthViewModel$onWebViewCreated$1$1;

    invoke-direct {v5, v1}, Lcom/iMe/feature/socialMedias/auth/AuthViewModel$onWebViewCreated$1$1;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/iMe/feature/socialMedias/auth/AuthViewModel$onWebViewCreated$1;->L$0:Ljava/lang/Object;

    iput v4, p0, Lcom/iMe/feature/socialMedias/auth/AuthViewModel$onWebViewCreated$1;->label:I

    invoke-static {p1, v5, p0}, Lorg/orbitmvi/orbit/syntax/simple/SimpleSyntaxExtensionsKt;->reduce(Lorg/orbitmvi/orbit/syntax/simple/SimpleSyntax;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_4

    return-object v0

    :cond_4
    move-object v1, p1

    :goto_0
    const-wide/16 v4, 0x3e8

    .line 24
    iput-object v1, p0, Lcom/iMe/feature/socialMedias/auth/AuthViewModel$onWebViewCreated$1;->L$0:Ljava/lang/Object;

    iput v3, p0, Lcom/iMe/feature/socialMedias/auth/AuthViewModel$onWebViewCreated$1;->label:I

    invoke-static {v4, v5, p0}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    .line 25
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/iMe/feature/socialMedias/auth/AuthViewModel$onWebViewCreated$1;->this$0:Lcom/iMe/feature/socialMedias/auth/AuthViewModel;

    invoke-static {p1}, Lcom/iMe/feature/socialMedias/auth/AuthViewModel;->access$getAuthUseCase$p(Lcom/iMe/feature/socialMedias/auth/AuthViewModel;)Lcom/iMe/feature/socialMedias/auth/AuthUseCase;

    move-result-object p1

    iget-object v3, p0, Lcom/iMe/feature/socialMedias/auth/AuthViewModel$onWebViewCreated$1;->$socialAuthDomain:Lcom/iMe/feature/socialMedias/SocialAuthDomain;

    invoke-virtual {v3}, Lcom/iMe/feature/socialMedias/SocialAuthDomain;->getAuthToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/iMe/feature/socialMedias/auth/AuthUseCase;->makeAuthHeader(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    .line 26
    new-instance v3, Lcom/iMe/feature/socialMedias/auth/AuthSideEffects$LoadUrl;

    iget-object v4, p0, Lcom/iMe/feature/socialMedias/auth/AuthViewModel$onWebViewCreated$1;->$socialAuthDomain:Lcom/iMe/feature/socialMedias/SocialAuthDomain;

    invoke-virtual {v4}, Lcom/iMe/feature/socialMedias/SocialAuthDomain;->getAuthUrl()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, p1}, Lcom/iMe/feature/socialMedias/auth/AuthSideEffects$LoadUrl;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/iMe/feature/socialMedias/auth/AuthViewModel$onWebViewCreated$1;->L$0:Ljava/lang/Object;

    iput v2, p0, Lcom/iMe/feature/socialMedias/auth/AuthViewModel$onWebViewCreated$1;->label:I

    invoke-static {v1, v3, p0}, Lorg/orbitmvi/orbit/syntax/simple/SimpleSyntaxExtensionsKt;->postSideEffect(Lorg/orbitmvi/orbit/syntax/simple/SimpleSyntax;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_6

    return-object v0

    .line 27
    :cond_6
    :goto_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
