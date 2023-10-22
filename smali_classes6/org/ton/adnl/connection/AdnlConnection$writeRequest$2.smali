.class final Lorg/ton/adnl/connection/AdnlConnection$writeRequest$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "AdnlConnection.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ton/adnl/connection/AdnlConnection;->writeRequest$ton_kotlin_adnl(Lorg/ton/adnl/connection/AdnlRequestData;Lkotlin/coroutines/CoroutineContext;Lio/ktor/utils/io/ByteWriteChannel;Lorg/ton/crypto/AesCtr;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "Lkotlinx/coroutines/Job;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "org.ton.adnl.connection.AdnlConnection$writeRequest$2"
    f = "AdnlConnection.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $callContext:Lkotlin/coroutines/CoroutineContext;

.field final synthetic $cipher:Lorg/ton/crypto/AesCtr;

.field final synthetic $closeChannel:Z

.field final synthetic $output:Lio/ktor/utils/io/ByteWriteChannel;

.field final synthetic $request:Lorg/ton/adnl/connection/AdnlRequestData;

.field label:I

.field final synthetic this$0:Lorg/ton/adnl/connection/AdnlConnection;


# direct methods
.method constructor <init>(Lkotlin/coroutines/CoroutineContext;Lorg/ton/adnl/connection/AdnlConnection;Lio/ktor/utils/io/ByteWriteChannel;Lorg/ton/crypto/AesCtr;Lorg/ton/adnl/connection/AdnlRequestData;ZLkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/CoroutineContext;",
            "Lorg/ton/adnl/connection/AdnlConnection;",
            "Lio/ktor/utils/io/ByteWriteChannel;",
            "Lorg/ton/crypto/AesCtr;",
            "Lorg/ton/adnl/connection/AdnlRequestData;",
            "Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/ton/adnl/connection/AdnlConnection$writeRequest$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/ton/adnl/connection/AdnlConnection$writeRequest$2;->$callContext:Lkotlin/coroutines/CoroutineContext;

    iput-object p2, p0, Lorg/ton/adnl/connection/AdnlConnection$writeRequest$2;->this$0:Lorg/ton/adnl/connection/AdnlConnection;

    iput-object p3, p0, Lorg/ton/adnl/connection/AdnlConnection$writeRequest$2;->$output:Lio/ktor/utils/io/ByteWriteChannel;

    iput-object p4, p0, Lorg/ton/adnl/connection/AdnlConnection$writeRequest$2;->$cipher:Lorg/ton/crypto/AesCtr;

    iput-object p5, p0, Lorg/ton/adnl/connection/AdnlConnection$writeRequest$2;->$request:Lorg/ton/adnl/connection/AdnlRequestData;

    iput-boolean p6, p0, Lorg/ton/adnl/connection/AdnlConnection$writeRequest$2;->$closeChannel:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p7}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 8
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

    new-instance p1, Lorg/ton/adnl/connection/AdnlConnection$writeRequest$2;

    iget-object v1, p0, Lorg/ton/adnl/connection/AdnlConnection$writeRequest$2;->$callContext:Lkotlin/coroutines/CoroutineContext;

    iget-object v2, p0, Lorg/ton/adnl/connection/AdnlConnection$writeRequest$2;->this$0:Lorg/ton/adnl/connection/AdnlConnection;

    iget-object v3, p0, Lorg/ton/adnl/connection/AdnlConnection$writeRequest$2;->$output:Lio/ktor/utils/io/ByteWriteChannel;

    iget-object v4, p0, Lorg/ton/adnl/connection/AdnlConnection$writeRequest$2;->$cipher:Lorg/ton/crypto/AesCtr;

    iget-object v5, p0, Lorg/ton/adnl/connection/AdnlConnection$writeRequest$2;->$request:Lorg/ton/adnl/connection/AdnlRequestData;

    iget-boolean v6, p0, Lorg/ton/adnl/connection/AdnlConnection$writeRequest$2;->$closeChannel:Z

    move-object v0, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lorg/ton/adnl/connection/AdnlConnection$writeRequest$2;-><init>(Lkotlin/coroutines/CoroutineContext;Lorg/ton/adnl/connection/AdnlConnection;Lio/ktor/utils/io/ByteWriteChannel;Lorg/ton/crypto/AesCtr;Lorg/ton/adnl/connection/AdnlRequestData;ZLkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lorg/ton/adnl/connection/AdnlConnection$writeRequest$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lkotlinx/coroutines/Job;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lorg/ton/adnl/connection/AdnlConnection$writeRequest$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lorg/ton/adnl/connection/AdnlConnection$writeRequest$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lorg/ton/adnl/connection/AdnlConnection$writeRequest$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 118
    iget v0, p0, Lorg/ton/adnl/connection/AdnlConnection$writeRequest$2;->label:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 119
    iget-object p1, p0, Lorg/ton/adnl/connection/AdnlConnection$writeRequest$2;->$callContext:Lkotlin/coroutines/CoroutineContext;

    new-instance v0, Lkotlinx/coroutines/CoroutineName;

    const-string v1, "Request body writer"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/CoroutineName;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 120
    new-instance p1, Lorg/ton/adnl/connection/AdnlConnection$writeRequest$2$1;

    iget-object v4, p0, Lorg/ton/adnl/connection/AdnlConnection$writeRequest$2;->this$0:Lorg/ton/adnl/connection/AdnlConnection;

    iget-object v5, p0, Lorg/ton/adnl/connection/AdnlConnection$writeRequest$2;->$output:Lio/ktor/utils/io/ByteWriteChannel;

    iget-object v6, p0, Lorg/ton/adnl/connection/AdnlConnection$writeRequest$2;->$cipher:Lorg/ton/crypto/AesCtr;

    iget-object v7, p0, Lorg/ton/adnl/connection/AdnlConnection$writeRequest$2;->$request:Lorg/ton/adnl/connection/AdnlRequestData;

    iget-boolean v8, p0, Lorg/ton/adnl/connection/AdnlConnection$writeRequest$2;->$closeChannel:Z

    const/4 v9, 0x0

    move-object v3, p1

    invoke-direct/range {v3 .. v9}, Lorg/ton/adnl/connection/AdnlConnection$writeRequest$2$1;-><init>(Lorg/ton/adnl/connection/AdnlConnection;Lio/ktor/utils/io/ByteWriteChannel;Lorg/ton/crypto/AesCtr;Lorg/ton/adnl/connection/AdnlRequestData;ZLkotlin/coroutines/Continuation;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object p1

    return-object p1

    .line 118
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
