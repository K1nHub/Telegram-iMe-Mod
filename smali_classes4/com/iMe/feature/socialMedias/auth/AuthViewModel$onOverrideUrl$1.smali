.class final Lcom/iMe/feature/socialMedias/auth/AuthViewModel$onOverrideUrl$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "AuthViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/feature/socialMedias/auth/AuthViewModel;->onOverrideUrl(Ljava/lang/String;)V
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
    c = "com.iMe.feature.socialMedias.auth.AuthViewModel$onOverrideUrl$1"
    f = "AuthViewModel.kt"
    l = {
        0x1e,
        0x22,
        0x23,
        0x24,
        0x25,
        0x26
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $overrideUrl:Ljava/lang/String;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/iMe/feature/socialMedias/auth/AuthViewModel;


# direct methods
.method constructor <init>(Lcom/iMe/feature/socialMedias/auth/AuthViewModel;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/feature/socialMedias/auth/AuthViewModel;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/iMe/feature/socialMedias/auth/AuthViewModel$onOverrideUrl$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/iMe/feature/socialMedias/auth/AuthViewModel$onOverrideUrl$1;->this$0:Lcom/iMe/feature/socialMedias/auth/AuthViewModel;

    iput-object p2, p0, Lcom/iMe/feature/socialMedias/auth/AuthViewModel$onOverrideUrl$1;->$overrideUrl:Ljava/lang/String;

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

    new-instance v0, Lcom/iMe/feature/socialMedias/auth/AuthViewModel$onOverrideUrl$1;

    iget-object v1, p0, Lcom/iMe/feature/socialMedias/auth/AuthViewModel$onOverrideUrl$1;->this$0:Lcom/iMe/feature/socialMedias/auth/AuthViewModel;

    iget-object v2, p0, Lcom/iMe/feature/socialMedias/auth/AuthViewModel$onOverrideUrl$1;->$overrideUrl:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p2}, Lcom/iMe/feature/socialMedias/auth/AuthViewModel$onOverrideUrl$1;-><init>(Lcom/iMe/feature/socialMedias/auth/AuthViewModel;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/iMe/feature/socialMedias/auth/AuthViewModel$onOverrideUrl$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lorg/orbitmvi/orbit/syntax/simple/SimpleSyntax;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/iMe/feature/socialMedias/auth/AuthViewModel$onOverrideUrl$1;->invoke(Lorg/orbitmvi/orbit/syntax/simple/SimpleSyntax;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/iMe/feature/socialMedias/auth/AuthViewModel$onOverrideUrl$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/iMe/feature/socialMedias/auth/AuthViewModel$onOverrideUrl$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/iMe/feature/socialMedias/auth/AuthViewModel$onOverrideUrl$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 29
    iget v1, p0, Lcom/iMe/feature/socialMedias/auth/AuthViewModel$onOverrideUrl$1;->label:I

    packed-switch v1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_1
    iget-object v1, p0, Lcom/iMe/feature/socialMedias/auth/AuthViewModel$onOverrideUrl$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lorg/orbitmvi/orbit/syntax/simple/SimpleSyntax;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/iMe/feature/socialMedias/auth/AuthViewModel$onOverrideUrl$1;->L$0:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Lorg/orbitmvi/orbit/syntax/simple/SimpleSyntax;

    .line 30
    iget-object p1, p0, Lcom/iMe/feature/socialMedias/auth/AuthViewModel$onOverrideUrl$1;->this$0:Lcom/iMe/feature/socialMedias/auth/AuthViewModel;

    invoke-static {p1}, Lcom/iMe/feature/socialMedias/auth/AuthViewModel;->access$getAuthUseCase$p(Lcom/iMe/feature/socialMedias/auth/AuthViewModel;)Lcom/iMe/feature/socialMedias/auth/AuthUseCase;

    move-result-object p1

    iget-object v2, p0, Lcom/iMe/feature/socialMedias/auth/AuthViewModel$onOverrideUrl$1;->$overrideUrl:Ljava/lang/String;

    iput-object v1, p0, Lcom/iMe/feature/socialMedias/auth/AuthViewModel$onOverrideUrl$1;->L$0:Ljava/lang/Object;

    const/4 v3, 0x1

    iput v3, p0, Lcom/iMe/feature/socialMedias/auth/AuthViewModel$onOverrideUrl$1;->label:I

    invoke-virtual {p1, v2, p0}, Lcom/iMe/feature/socialMedias/auth/AuthUseCase;->processAuthResult(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_0

    return-object v0

    .line 29
    :cond_0
    :goto_0
    check-cast p1, Lcom/iMe/model/twitter/SocialAuthResult;

    .line 31
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onOverrideUrl authResult: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 34
    instance-of v2, p1, Lcom/iMe/model/twitter/SocialAuthResult$Success;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    sget-object p1, Lcom/iMe/feature/socialMedias/auth/AuthSideEffects$FinishAuth;->INSTANCE:Lcom/iMe/feature/socialMedias/auth/AuthSideEffects$FinishAuth;

    iput-object v3, p0, Lcom/iMe/feature/socialMedias/auth/AuthViewModel$onOverrideUrl$1;->L$0:Ljava/lang/Object;

    const/4 v2, 0x2

    iput v2, p0, Lcom/iMe/feature/socialMedias/auth/AuthViewModel$onOverrideUrl$1;->label:I

    invoke-static {v1, p1, p0}, Lorg/orbitmvi/orbit/syntax/simple/SimpleSyntaxExtensionsKt;->postSideEffect(Lorg/orbitmvi/orbit/syntax/simple/SimpleSyntax;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    .line 35
    :cond_1
    instance-of v2, p1, Lcom/iMe/model/twitter/SocialAuthResult$Failure;

    if-eqz v2, :cond_2

    new-instance v2, Lcom/iMe/feature/socialMedias/auth/AuthSideEffects$ShowError;

    check-cast p1, Lcom/iMe/model/twitter/SocialAuthResult$Failure;

    invoke-virtual {p1}, Lcom/iMe/model/twitter/SocialAuthResult$Failure;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Lcom/iMe/feature/socialMedias/auth/AuthSideEffects$ShowError;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/iMe/feature/socialMedias/auth/AuthViewModel$onOverrideUrl$1;->L$0:Ljava/lang/Object;

    const/4 p1, 0x3

    iput p1, p0, Lcom/iMe/feature/socialMedias/auth/AuthViewModel$onOverrideUrl$1;->label:I

    invoke-static {v1, v2, p0}, Lorg/orbitmvi/orbit/syntax/simple/SimpleSyntaxExtensionsKt;->postSideEffect(Lorg/orbitmvi/orbit/syntax/simple/SimpleSyntax;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    .line 36
    :cond_2
    sget-object v2, Lcom/iMe/model/twitter/SocialAuthResult$Cancelled;->INSTANCE:Lcom/iMe/model/twitter/SocialAuthResult$Cancelled;

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object p1, Lcom/iMe/feature/socialMedias/auth/AuthSideEffects$ShowAccessError;->INSTANCE:Lcom/iMe/feature/socialMedias/auth/AuthSideEffects$ShowAccessError;

    iput-object v3, p0, Lcom/iMe/feature/socialMedias/auth/AuthViewModel$onOverrideUrl$1;->L$0:Ljava/lang/Object;

    const/4 v2, 0x4

    iput v2, p0, Lcom/iMe/feature/socialMedias/auth/AuthViewModel$onOverrideUrl$1;->label:I

    invoke-static {v1, p1, p0}, Lorg/orbitmvi/orbit/syntax/simple/SimpleSyntaxExtensionsKt;->postSideEffect(Lorg/orbitmvi/orbit/syntax/simple/SimpleSyntax;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    .line 37
    :cond_3
    instance-of v2, p1, Lcom/iMe/model/twitter/SocialAuthResult$Verification;

    if-eqz v2, :cond_4

    sget-object p1, Lcom/iMe/feature/socialMedias/auth/AuthSideEffects$FinishAuth;->INSTANCE:Lcom/iMe/feature/socialMedias/auth/AuthSideEffects$FinishAuth;

    iput-object v3, p0, Lcom/iMe/feature/socialMedias/auth/AuthViewModel$onOverrideUrl$1;->L$0:Ljava/lang/Object;

    const/4 v2, 0x5

    iput v2, p0, Lcom/iMe/feature/socialMedias/auth/AuthViewModel$onOverrideUrl$1;->label:I

    invoke-static {v1, p1, p0}, Lorg/orbitmvi/orbit/syntax/simple/SimpleSyntaxExtensionsKt;->postSideEffect(Lorg/orbitmvi/orbit/syntax/simple/SimpleSyntax;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    .line 38
    :cond_4
    sget-object v2, Lcom/iMe/model/twitter/SocialAuthResult$Logout;->INSTANCE:Lcom/iMe/model/twitter/SocialAuthResult$Logout;

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    sget-object p1, Lcom/iMe/feature/socialMedias/auth/AuthSideEffects$FinishAuth;->INSTANCE:Lcom/iMe/feature/socialMedias/auth/AuthSideEffects$FinishAuth;

    iput-object v3, p0, Lcom/iMe/feature/socialMedias/auth/AuthViewModel$onOverrideUrl$1;->L$0:Ljava/lang/Object;

    const/4 v2, 0x6

    iput v2, p0, Lcom/iMe/feature/socialMedias/auth/AuthViewModel$onOverrideUrl$1;->label:I

    invoke-static {v1, p1, p0}, Lorg/orbitmvi/orbit/syntax/simple/SimpleSyntaxExtensionsKt;->postSideEffect(Lorg/orbitmvi/orbit/syntax/simple/SimpleSyntax;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    .line 40
    :cond_5
    :goto_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
