.class final Lorg/ton/adnl/connection/AdnlConnection$readResponse$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "AdnlConnection.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ton/adnl/connection/AdnlConnection;->readResponse(Lkotlinx/datetime/Instant;Lio/ktor/utils/io/ByteReadChannel;Lorg/ton/crypto/AesCtr;Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "Lorg/ton/adnl/connection/AdnlResponseData;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "org.ton.adnl.connection.AdnlConnection$readResponse$2"
    f = "AdnlConnection.kt"
    l = {
        0x8d
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $callContext:Lkotlin/coroutines/CoroutineContext;

.field final synthetic $cipher:Lorg/ton/crypto/AesCtr;

.field final synthetic $input:Lio/ktor/utils/io/ByteReadChannel;

.field final synthetic $requestTime:Lkotlinx/datetime/Instant;

.field label:I

.field final synthetic this$0:Lorg/ton/adnl/connection/AdnlConnection;


# direct methods
.method constructor <init>(Lorg/ton/adnl/connection/AdnlConnection;Lio/ktor/utils/io/ByteReadChannel;Lorg/ton/crypto/AesCtr;Lkotlinx/datetime/Instant;Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ton/adnl/connection/AdnlConnection;",
            "Lio/ktor/utils/io/ByteReadChannel;",
            "Lorg/ton/crypto/AesCtr;",
            "Lkotlinx/datetime/Instant;",
            "Lkotlin/coroutines/CoroutineContext;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/ton/adnl/connection/AdnlConnection$readResponse$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/ton/adnl/connection/AdnlConnection$readResponse$2;->this$0:Lorg/ton/adnl/connection/AdnlConnection;

    iput-object p2, p0, Lorg/ton/adnl/connection/AdnlConnection$readResponse$2;->$input:Lio/ktor/utils/io/ByteReadChannel;

    iput-object p3, p0, Lorg/ton/adnl/connection/AdnlConnection$readResponse$2;->$cipher:Lorg/ton/crypto/AesCtr;

    iput-object p4, p0, Lorg/ton/adnl/connection/AdnlConnection$readResponse$2;->$requestTime:Lkotlinx/datetime/Instant;

    iput-object p5, p0, Lorg/ton/adnl/connection/AdnlConnection$readResponse$2;->$callContext:Lkotlin/coroutines/CoroutineContext;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7
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

    new-instance p1, Lorg/ton/adnl/connection/AdnlConnection$readResponse$2;

    iget-object v1, p0, Lorg/ton/adnl/connection/AdnlConnection$readResponse$2;->this$0:Lorg/ton/adnl/connection/AdnlConnection;

    iget-object v2, p0, Lorg/ton/adnl/connection/AdnlConnection$readResponse$2;->$input:Lio/ktor/utils/io/ByteReadChannel;

    iget-object v3, p0, Lorg/ton/adnl/connection/AdnlConnection$readResponse$2;->$cipher:Lorg/ton/crypto/AesCtr;

    iget-object v4, p0, Lorg/ton/adnl/connection/AdnlConnection$readResponse$2;->$requestTime:Lkotlinx/datetime/Instant;

    iget-object v5, p0, Lorg/ton/adnl/connection/AdnlConnection$readResponse$2;->$callContext:Lkotlin/coroutines/CoroutineContext;

    move-object v0, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lorg/ton/adnl/connection/AdnlConnection$readResponse$2;-><init>(Lorg/ton/adnl/connection/AdnlConnection;Lio/ktor/utils/io/ByteReadChannel;Lorg/ton/crypto/AesCtr;Lkotlinx/datetime/Instant;Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lorg/ton/adnl/connection/AdnlConnection$readResponse$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lorg/ton/adnl/connection/AdnlResponseData;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lorg/ton/adnl/connection/AdnlConnection$readResponse$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lorg/ton/adnl/connection/AdnlConnection$readResponse$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lorg/ton/adnl/connection/AdnlConnection$readResponse$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 140
    iget v1, p0, Lorg/ton/adnl/connection/AdnlConnection$readResponse$2;->label:I

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

    .line 141
    iget-object p1, p0, Lorg/ton/adnl/connection/AdnlConnection$readResponse$2;->this$0:Lorg/ton/adnl/connection/AdnlConnection;

    iget-object v1, p0, Lorg/ton/adnl/connection/AdnlConnection$readResponse$2;->$input:Lio/ktor/utils/io/ByteReadChannel;

    iget-object v3, p0, Lorg/ton/adnl/connection/AdnlConnection$readResponse$2;->$cipher:Lorg/ton/crypto/AesCtr;

    iput v2, p0, Lorg/ton/adnl/connection/AdnlConnection$readResponse$2;->label:I

    invoke-static {p1, v1, v3, p0}, Lorg/ton/adnl/connection/AdnlConnection;->access$readRaw(Lorg/ton/adnl/connection/AdnlConnection;Lio/ktor/utils/io/ByteReadChannel;Lorg/ton/crypto/AesCtr;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 140
    :cond_2
    :goto_0
    check-cast p1, Lio/ktor/utils/io/core/ByteReadPacket;

    .line 142
    new-instance v0, Lorg/ton/adnl/connection/AdnlResponseData;

    .line 143
    iget-object v1, p0, Lorg/ton/adnl/connection/AdnlConnection$readResponse$2;->$requestTime:Lkotlinx/datetime/Instant;

    .line 145
    iget-object v2, p0, Lorg/ton/adnl/connection/AdnlConnection$readResponse$2;->$callContext:Lkotlin/coroutines/CoroutineContext;

    .line 142
    invoke-direct {v0, v1, p1, v2}, Lorg/ton/adnl/connection/AdnlResponseData;-><init>(Lkotlinx/datetime/Instant;Lio/ktor/utils/io/core/ByteReadPacket;Lkotlin/coroutines/CoroutineContext;)V

    return-object v0
.end method
