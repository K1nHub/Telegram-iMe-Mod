.class final Lorg/orbitmvi/orbit/viewmodel/ContainerHostExtensionsKt$observe$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ContainerHostExtensions.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/orbitmvi/orbit/viewmodel/ContainerHostExtensionsKt$observe$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nContainerHostExtensions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ContainerHostExtensions.kt\norg/orbitmvi/orbit/viewmodel/ContainerHostExtensionsKt$observe$1$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,56:1\n1#2:57\n*E\n"
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "org.orbitmvi.orbit.viewmodel.ContainerHostExtensionsKt$observe$1$1"
    f = "ContainerHostExtensions.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $sideEffect:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "TSIDE_EFFECT;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $state:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "TSTATE;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $this_observe:Lorg/orbitmvi/orbit/ContainerHost;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/orbitmvi/orbit/ContainerHost<",
            "TSTATE;TSIDE_EFFECT;>;"
        }
    .end annotation
.end field

.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lorg/orbitmvi/orbit/ContainerHost;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-TSTATE;-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-TSIDE_EFFECT;-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/orbitmvi/orbit/ContainerHost<",
            "TSTATE;TSIDE_EFFECT;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/orbitmvi/orbit/viewmodel/ContainerHostExtensionsKt$observe$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/orbitmvi/orbit/viewmodel/ContainerHostExtensionsKt$observe$1$1;->$state:Lkotlin/jvm/functions/Function2;

    iput-object p2, p0, Lorg/orbitmvi/orbit/viewmodel/ContainerHostExtensionsKt$observe$1$1;->$sideEffect:Lkotlin/jvm/functions/Function2;

    iput-object p3, p0, Lorg/orbitmvi/orbit/viewmodel/ContainerHostExtensionsKt$observe$1$1;->$this_observe:Lorg/orbitmvi/orbit/ContainerHost;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 4
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

    new-instance v0, Lorg/orbitmvi/orbit/viewmodel/ContainerHostExtensionsKt$observe$1$1;

    iget-object v1, p0, Lorg/orbitmvi/orbit/viewmodel/ContainerHostExtensionsKt$observe$1$1;->$state:Lkotlin/jvm/functions/Function2;

    iget-object v2, p0, Lorg/orbitmvi/orbit/viewmodel/ContainerHostExtensionsKt$observe$1$1;->$sideEffect:Lkotlin/jvm/functions/Function2;

    iget-object v3, p0, Lorg/orbitmvi/orbit/viewmodel/ContainerHostExtensionsKt$observe$1$1;->$this_observe:Lorg/orbitmvi/orbit/ContainerHost;

    invoke-direct {v0, v1, v2, v3, p2}, Lorg/orbitmvi/orbit/viewmodel/ContainerHostExtensionsKt$observe$1$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lorg/orbitmvi/orbit/ContainerHost;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lorg/orbitmvi/orbit/viewmodel/ContainerHostExtensionsKt$observe$1$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lorg/orbitmvi/orbit/viewmodel/ContainerHostExtensionsKt$observe$1$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lorg/orbitmvi/orbit/viewmodel/ContainerHostExtensionsKt$observe$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lorg/orbitmvi/orbit/viewmodel/ContainerHostExtensionsKt$observe$1$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lorg/orbitmvi/orbit/viewmodel/ContainerHostExtensionsKt$observe$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 50
    iget v0, p0, Lorg/orbitmvi/orbit/viewmodel/ContainerHostExtensionsKt$observe$1$1;->label:I

    if-nez v0, :cond_2

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/orbitmvi/orbit/viewmodel/ContainerHostExtensionsKt$observe$1$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 51
    iget-object v0, p0, Lorg/orbitmvi/orbit/viewmodel/ContainerHostExtensionsKt$observe$1$1;->$state:Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/orbitmvi/orbit/viewmodel/ContainerHostExtensionsKt$observe$1$1;->$this_observe:Lorg/orbitmvi/orbit/ContainerHost;

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v4, Lorg/orbitmvi/orbit/viewmodel/ContainerHostExtensionsKt$observe$1$1$1$1;

    invoke-direct {v4, v1, v0, v6}, Lorg/orbitmvi/orbit/viewmodel/ContainerHostExtensionsKt$observe$1$1$1$1;-><init>(Lorg/orbitmvi/orbit/ContainerHost;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v7, 0x0

    move-object v0, p1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move v4, v5

    move-object v5, v7

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 52
    :goto_0
    iget-object v0, p0, Lorg/orbitmvi/orbit/viewmodel/ContainerHostExtensionsKt$observe$1$1;->$sideEffect:Lkotlin/jvm/functions/Function2;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lorg/orbitmvi/orbit/viewmodel/ContainerHostExtensionsKt$observe$1$1;->$this_observe:Lorg/orbitmvi/orbit/ContainerHost;

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v4, Lorg/orbitmvi/orbit/viewmodel/ContainerHostExtensionsKt$observe$1$1$2$1;

    invoke-direct {v4, v1, v0, v6}, Lorg/orbitmvi/orbit/viewmodel/ContainerHostExtensionsKt$observe$1$1$2$1;-><init>(Lorg/orbitmvi/orbit/ContainerHost;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v0, p1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move v4, v5

    move-object v5, v6

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 53
    :goto_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
