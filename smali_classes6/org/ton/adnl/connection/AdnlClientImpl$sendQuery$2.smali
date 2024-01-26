.class final Lorg/ton/adnl/connection/AdnlClientImpl$sendQuery$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "AdnlClientImpl.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ton/adnl/connection/AdnlClientImpl;->sendQuery-8Mi8wO0(Lio/ktor/utils/io/core/ByteReadPacket;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "Lio/ktor/utils/io/core/ByteReadPacket;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAdnlClientImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AdnlClientImpl.kt\norg/ton/adnl/connection/AdnlClientImpl$sendQuery$2\n+ 2 Builder.kt\nio/ktor/utils/io/core/BuilderKt\n+ 3 ByteReadPacket.kt\nio/ktor/utils/io/core/ByteReadPacketKt\n+ 4 ByteReadPacketExtensions.kt\nio/ktor/utils/io/core/ByteReadPacketExtensionsKt\n*L\n1#1,113:1\n12#2,11:114\n57#3,2:125\n15#4:127\n*S KotlinDebug\n*F\n+ 1 AdnlClientImpl.kt\norg/ton/adnl/connection/AdnlClientImpl$sendQuery$2\n*L\n25#1:114,11\n33#1:125,2\n33#1:127\n*E\n"
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "org.ton.adnl.connection.AdnlClientImpl$sendQuery$2"
    f = "AdnlClientImpl.kt"
    l = {
        0x17
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $adnlConnection:Lorg/ton/adnl/connection/AdnlConnection;

.field final synthetic $context:Lkotlinx/coroutines/CompletableJob;

.field final synthetic $queryData:[B

.field final synthetic $queryId:Lorg/ton/tl/ByteString;

.field label:I


# direct methods
.method constructor <init>(Lorg/ton/adnl/connection/AdnlConnection;Lkotlinx/coroutines/CompletableJob;Lorg/ton/tl/ByteString;[BLkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ton/adnl/connection/AdnlConnection;",
            "Lkotlinx/coroutines/CompletableJob;",
            "Lorg/ton/tl/ByteString;",
            "[B",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/ton/adnl/connection/AdnlClientImpl$sendQuery$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/ton/adnl/connection/AdnlClientImpl$sendQuery$2;->$adnlConnection:Lorg/ton/adnl/connection/AdnlConnection;

    iput-object p2, p0, Lorg/ton/adnl/connection/AdnlClientImpl$sendQuery$2;->$context:Lkotlinx/coroutines/CompletableJob;

    iput-object p3, p0, Lorg/ton/adnl/connection/AdnlClientImpl$sendQuery$2;->$queryId:Lorg/ton/tl/ByteString;

    iput-object p4, p0, Lorg/ton/adnl/connection/AdnlClientImpl$sendQuery$2;->$queryData:[B

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6
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

    new-instance p1, Lorg/ton/adnl/connection/AdnlClientImpl$sendQuery$2;

    iget-object v1, p0, Lorg/ton/adnl/connection/AdnlClientImpl$sendQuery$2;->$adnlConnection:Lorg/ton/adnl/connection/AdnlConnection;

    iget-object v2, p0, Lorg/ton/adnl/connection/AdnlClientImpl$sendQuery$2;->$context:Lkotlinx/coroutines/CompletableJob;

    iget-object v3, p0, Lorg/ton/adnl/connection/AdnlClientImpl$sendQuery$2;->$queryId:Lorg/ton/tl/ByteString;

    iget-object v4, p0, Lorg/ton/adnl/connection/AdnlClientImpl$sendQuery$2;->$queryData:[B

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/ton/adnl/connection/AdnlClientImpl$sendQuery$2;-><init>(Lorg/ton/adnl/connection/AdnlConnection;Lkotlinx/coroutines/CompletableJob;Lorg/ton/tl/ByteString;[BLkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lorg/ton/adnl/connection/AdnlClientImpl$sendQuery$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lio/ktor/utils/io/core/ByteReadPacket;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lorg/ton/adnl/connection/AdnlClientImpl$sendQuery$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lorg/ton/adnl/connection/AdnlClientImpl$sendQuery$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lorg/ton/adnl/connection/AdnlClientImpl$sendQuery$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 22
    iget v1, p0, Lorg/ton/adnl/connection/AdnlClientImpl$sendQuery$2;->label:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 23
    iget-object p1, p0, Lorg/ton/adnl/connection/AdnlClientImpl$sendQuery$2;->$adnlConnection:Lorg/ton/adnl/connection/AdnlConnection;

    .line 25
    iget-object v1, p0, Lorg/ton/adnl/connection/AdnlClientImpl$sendQuery$2;->$queryId:Lorg/ton/tl/ByteString;

    iget-object v4, p0, Lorg/ton/adnl/connection/AdnlClientImpl$sendQuery$2;->$queryData:[B

    .line 16
    new-instance v5, Lio/ktor/utils/io/core/BytePacketBuilder;

    const/4 v6, 0x0

    invoke-direct {v5, v6, v3, v6}, Lio/ktor/utils/io/core/BytePacketBuilder;-><init>(Lio/ktor/utils/io/pool/ObjectPool;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 26
    :try_start_0
    sget-object v7, Lorg/ton/api/adnl/message/AdnlMessageQuery;->Companion:Lorg/ton/api/adnl/message/AdnlMessageQuery$Companion;

    .line 27
    new-instance v8, Lorg/ton/api/adnl/message/AdnlMessageQuery;

    invoke-direct {v8, v1, v4}, Lorg/ton/api/adnl/message/AdnlMessageQuery;-><init>(Lorg/ton/tl/ByteString;[B)V

    .line 26
    invoke-virtual {v7, v5, v8}, Lorg/ton/tl/TlConstructor;->encodeBoxed(Lio/ktor/utils/io/core/Output;Ljava/lang/Object;)V

    .line 19
    invoke-virtual {v5}, Lio/ktor/utils/io/core/BytePacketBuilder;->build()Lio/ktor/utils/io/core/ByteReadPacket;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    invoke-static {v1, v2, v3, v6}, Lio/ktor/utils/io/core/StringsKt;->readBytes$default(Lio/ktor/utils/io/core/ByteReadPacket;IILjava/lang/Object;)[B

    move-result-object v1

    .line 30
    iget-object v4, p0, Lorg/ton/adnl/connection/AdnlClientImpl$sendQuery$2;->$context:Lkotlinx/coroutines/CompletableJob;

    .line 24
    new-instance v5, Lorg/ton/adnl/connection/AdnlRequestData;

    invoke-direct {v5, v1, v4}, Lorg/ton/adnl/connection/AdnlRequestData;-><init>([BLkotlinx/coroutines/Job;)V

    .line 31
    iget-object v1, p0, Lorg/ton/adnl/connection/AdnlClientImpl$sendQuery$2;->$context:Lkotlinx/coroutines/CompletableJob;

    .line 23
    iput v3, p0, Lorg/ton/adnl/connection/AdnlClientImpl$sendQuery$2;->label:I

    invoke-virtual {p1, v5, v1, p0}, Lorg/ton/adnl/connection/AdnlConnection;->execute(Lorg/ton/adnl/connection/AdnlRequestData;Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 22
    :cond_2
    :goto_0
    check-cast p1, Lorg/ton/adnl/connection/AdnlResponseData;

    .line 34
    sget-object v0, Lorg/ton/api/adnl/message/AdnlMessageAnswer;->Companion:Lorg/ton/api/adnl/message/AdnlMessageAnswer$Companion;

    .line 35
    invoke-virtual {p1}, Lorg/ton/adnl/connection/AdnlResponseData;->getBody()Lio/ktor/utils/io/core/ByteReadPacket;

    move-result-object p1

    .line 34
    invoke-virtual {v0, p1}, Lorg/ton/tl/TlConstructor;->decodeBoxed(Lio/ktor/utils/io/core/Input;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/ton/api/adnl/message/AdnlMessageAnswer;

    .line 36
    invoke-virtual {p1}, Lorg/ton/api/adnl/message/AdnlMessageAnswer;->getAnswer()[B

    move-result-object p1

    .line 57
    array-length v0, p1

    .line 15
    invoke-static {p1, v2, v0}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    const-string v1, "wrap(array, offset, length)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lorg/ton/adnl/connection/AdnlClientImpl$sendQuery$2$invokeSuspend$$inlined$ByteReadPacket$default$1;

    invoke-direct {v1, p1}, Lorg/ton/adnl/connection/AdnlClientImpl$sendQuery$2$invokeSuspend$$inlined$ByteReadPacket$default$1;-><init>([B)V

    invoke-static {v0, v1}, Lio/ktor/utils/io/core/ByteReadPacketExtensionsKt;->ByteReadPacket(Ljava/nio/ByteBuffer;Lkotlin/jvm/functions/Function1;)Lio/ktor/utils/io/core/ByteReadPacket;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    .line 21
    invoke-virtual {v5}, Lio/ktor/utils/io/core/Output;->release()V

    .line 22
    throw p1
.end method
