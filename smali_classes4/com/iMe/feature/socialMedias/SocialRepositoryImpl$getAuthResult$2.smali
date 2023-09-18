.class final Lcom/iMe/feature/socialMedias/SocialRepositoryImpl$getAuthResult$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SocialRepositoryImpl.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/feature/socialMedias/SocialRepositoryImpl;->getAuthResult(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "Lcom/iMe/model/twitter/SocialAuthResult;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSocialRepositoryImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SocialRepositoryImpl.kt\ncom/iMe/feature/socialMedias/SocialRepositoryImpl$getAuthResult$2\n+ 2 Uri.kt\nandroidx/core/net/UriKt\n*L\n1#1,86:1\n29#2:87\n*S KotlinDebug\n*F\n+ 1 SocialRepositoryImpl.kt\ncom/iMe/feature/socialMedias/SocialRepositoryImpl$getAuthResult$2\n*L\n59#1:87\n*E\n"
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.iMe.feature.socialMedias.SocialRepositoryImpl$getAuthResult$2"
    f = "SocialRepositoryImpl.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $overrideUrl:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lcom/iMe/feature/socialMedias/SocialRepositoryImpl;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/iMe/feature/socialMedias/SocialRepositoryImpl;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/iMe/feature/socialMedias/SocialRepositoryImpl;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/iMe/feature/socialMedias/SocialRepositoryImpl$getAuthResult$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/iMe/feature/socialMedias/SocialRepositoryImpl$getAuthResult$2;->$overrideUrl:Ljava/lang/String;

    iput-object p2, p0, Lcom/iMe/feature/socialMedias/SocialRepositoryImpl$getAuthResult$2;->this$0:Lcom/iMe/feature/socialMedias/SocialRepositoryImpl;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

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

    new-instance p1, Lcom/iMe/feature/socialMedias/SocialRepositoryImpl$getAuthResult$2;

    iget-object v0, p0, Lcom/iMe/feature/socialMedias/SocialRepositoryImpl$getAuthResult$2;->$overrideUrl:Ljava/lang/String;

    iget-object v1, p0, Lcom/iMe/feature/socialMedias/SocialRepositoryImpl$getAuthResult$2;->this$0:Lcom/iMe/feature/socialMedias/SocialRepositoryImpl;

    invoke-direct {p1, v0, v1, p2}, Lcom/iMe/feature/socialMedias/SocialRepositoryImpl$getAuthResult$2;-><init>(Ljava/lang/String;Lcom/iMe/feature/socialMedias/SocialRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/iMe/feature/socialMedias/SocialRepositoryImpl$getAuthResult$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lcom/iMe/model/twitter/SocialAuthResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/iMe/feature/socialMedias/SocialRepositoryImpl$getAuthResult$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/iMe/feature/socialMedias/SocialRepositoryImpl$getAuthResult$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/iMe/feature/socialMedias/SocialRepositoryImpl$getAuthResult$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 58
    iget v0, p0, Lcom/iMe/feature/socialMedias/SocialRepositoryImpl$getAuthResult$2;->label:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 59
    iget-object p1, p0, Lcom/iMe/feature/socialMedias/SocialRepositoryImpl$getAuthResult$2;->$overrideUrl:Ljava/lang/String;

    .line 29
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v0, "parse(this)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    invoke-static {p1}, Lcom/iMe/feature/socialMedias/auth/SocialAuthResultMapperKt;->toAuthResult(Landroid/net/Uri;)Lcom/iMe/model/twitter/SocialAuthResult;

    move-result-object p1

    .line 60
    iget-object v0, p0, Lcom/iMe/feature/socialMedias/SocialRepositoryImpl$getAuthResult$2;->this$0:Lcom/iMe/feature/socialMedias/SocialRepositoryImpl;

    invoke-static {v0}, Lcom/iMe/feature/socialMedias/SocialRepositoryImpl;->access$getAuthResultRelay$p(Lcom/iMe/feature/socialMedias/SocialRepositoryImpl;)Lcom/jakewharton/rxrelay2/PublishRelay;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/jakewharton/rxrelay2/PublishRelay;->accept(Ljava/lang/Object;)V

    return-object p1

    .line 58
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
