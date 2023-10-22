.class public final Lorg/ton/lite/api/LiteApiClient$DefaultImpls;
.super Ljava/lang/Object;
.source "LiteApiClient.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ton/lite/api/LiteApiClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLiteApiClient.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LiteApiClient.kt\norg/ton/lite/api/LiteApiClient$DefaultImpls\n+ 2 Builder.kt\nio/ktor/utils/io/core/BuilderKt\n*L\n1#1,109:1\n12#2,11:110\n12#2,11:121\n*S KotlinDebug\n*F\n+ 1 LiteApiClient.kt\norg/ton/lite/api/LiteApiClient$DefaultImpls\n*L\n16#1:110,11\n26#1:121,11\n*E\n"
.end annotation


# direct methods
.method public static invoke(Lorg/ton/lite/api/LiteApiClient;Lorg/ton/lite/api/liteserver/functions/LiteServerGetAccountState;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ton/lite/api/LiteApiClient;",
            "Lorg/ton/lite/api/liteserver/functions/LiteServerGetAccountState;",
            "I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/ton/lite/api/liteserver/LiteServerAccountState;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 74
    sget-object v1, Lorg/ton/lite/api/liteserver/functions/LiteServerGetAccountState;->Companion:Lorg/ton/lite/api/liteserver/functions/LiteServerGetAccountState$Companion;

    sget-object v2, Lorg/ton/lite/api/liteserver/LiteServerAccountState;->Companion:Lorg/ton/lite/api/liteserver/LiteServerAccountState$Companion;

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    invoke-interface/range {v0 .. v5}, Lorg/ton/lite/api/LiteApiClient;->sendQuery(Lorg/ton/tl/TlCodec;Lorg/ton/tl/TlCodec;Ljava/lang/Object;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static invoke(Lorg/ton/lite/api/LiteApiClient;Lorg/ton/lite/api/liteserver/functions/LiteServerSendMessage;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ton/lite/api/LiteApiClient;",
            "Lorg/ton/lite/api/liteserver/functions/LiteServerSendMessage;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/ton/lite/api/liteserver/LiteServerSendMsgStatus;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 71
    sget-object v1, Lorg/ton/lite/api/liteserver/functions/LiteServerSendMessage;->Companion:Lorg/ton/lite/api/liteserver/functions/LiteServerSendMessage$Companion;

    sget-object v2, Lorg/ton/lite/api/liteserver/LiteServerSendMsgStatus;->Companion:Lorg/ton/lite/api/liteserver/LiteServerSendMsgStatus$Companion;

    const/4 v4, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v5, p2

    invoke-static/range {v0 .. v7}, Lorg/ton/lite/api/LiteApiClient$DefaultImpls;->sendQuery$default(Lorg/ton/lite/api/LiteApiClient;Lorg/ton/tl/TlCodec;Lorg/ton/tl/TlCodec;Ljava/lang/Object;ILkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static sendQuery(Lorg/ton/lite/api/LiteApiClient;Lorg/ton/tl/TlCodec;Lorg/ton/tl/TlCodec;Ljava/lang/Object;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Q:",
            "Ljava/lang/Object;",
            "A:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/ton/lite/api/LiteApiClient;",
            "Lorg/ton/tl/TlCodec<",
            "TQ;>;",
            "Lorg/ton/tl/TlCodec<",
            "TA;>;TQ;I",
            "Lkotlin/coroutines/Continuation<",
            "-TA;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p5, Lorg/ton/lite/api/LiteApiClient$sendQuery$1;

    if-eqz v0, :cond_0

    move-object v0, p5

    check-cast v0, Lorg/ton/lite/api/LiteApiClient$sendQuery$1;

    iget v1, v0, Lorg/ton/lite/api/LiteApiClient$sendQuery$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lorg/ton/lite/api/LiteApiClient$sendQuery$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/ton/lite/api/LiteApiClient$sendQuery$1;

    invoke-direct {v0, p5}, Lorg/ton/lite/api/LiteApiClient$sendQuery$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p5, v0, Lorg/ton/lite/api/LiteApiClient$sendQuery$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 10
    iget v2, v0, Lorg/ton/lite/api/LiteApiClient$sendQuery$1;->label:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lorg/ton/lite/api/LiteApiClient$sendQuery$1;->L$0:Ljava/lang/Object;

    move-object p2, p0

    check-cast p2, Lorg/ton/tl/TlCodec;

    invoke-static {p5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 16
    new-instance p5, Lio/ktor/utils/io/core/BytePacketBuilder;

    invoke-direct {p5, v4, v3, v4}, Lio/ktor/utils/io/core/BytePacketBuilder;-><init>(Lio/ktor/utils/io/pool/ObjectPool;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    if-lez p4, :cond_3

    .line 19
    :try_start_0
    new-instance v2, Lorg/ton/lite/api/liteserver/functions/LiteServerWaitMasterchainSeqno;

    const/16 v5, 0x7530

    invoke-direct {v2, p4, v5}, Lorg/ton/lite/api/liteserver/functions/LiteServerWaitMasterchainSeqno;-><init>(II)V

    .line 21
    sget-object p4, Lorg/ton/lite/api/liteserver/functions/LiteServerWaitMasterchainSeqno;->Companion:Lorg/ton/lite/api/liteserver/functions/LiteServerWaitMasterchainSeqno$Companion;

    invoke-virtual {p4, p5, v2}, Lorg/ton/lite/api/liteserver/functions/LiteServerWaitMasterchainSeqno$Companion;->encodeBoxed(Lio/ktor/utils/io/core/Output;Lorg/ton/lite/api/liteserver/functions/LiteServerWaitMasterchainSeqno;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    .line 23
    :cond_3
    :goto_1
    invoke-interface {p1, p5, p3}, Lorg/ton/tl/TlEncoder;->encodeBoxed(Lio/ktor/utils/io/core/Output;Ljava/lang/Object;)V

    .line 19
    invoke-virtual {p5}, Lio/ktor/utils/io/core/BytePacketBuilder;->build()Lio/ktor/utils/io/core/ByteReadPacket;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p3, 0x0

    .line 24
    invoke-static {p1, p3, v3, v4}, Lio/ktor/utils/io/core/StringsKt;->readBytes$default(Lio/ktor/utils/io/core/ByteReadPacket;IILjava/lang/Object;)[B

    move-result-object p1

    .line 25
    new-instance p3, Lorg/ton/lite/api/liteserver/functions/LiteServerQuery;

    invoke-direct {p3, p1}, Lorg/ton/lite/api/liteserver/functions/LiteServerQuery;-><init>([B)V

    .line 16
    new-instance p1, Lio/ktor/utils/io/core/BytePacketBuilder;

    invoke-direct {p1, v4, v3, v4}, Lio/ktor/utils/io/core/BytePacketBuilder;-><init>(Lio/ktor/utils/io/pool/ObjectPool;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 27
    :try_start_1
    sget-object p4, Lorg/ton/lite/api/liteserver/functions/LiteServerQuery;->Companion:Lorg/ton/lite/api/liteserver/functions/LiteServerQuery$Companion;

    invoke-virtual {p4, p1, p3}, Lorg/ton/lite/api/liteserver/functions/LiteServerQuery$Companion;->encodeBoxed(Lio/ktor/utils/io/core/Output;Lorg/ton/lite/api/liteserver/functions/LiteServerQuery;)V

    .line 19
    invoke-virtual {p1}, Lio/ktor/utils/io/core/BytePacketBuilder;->build()Lio/ktor/utils/io/core/ByteReadPacket;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 26
    iput-object p2, v0, Lorg/ton/lite/api/LiteApiClient$sendQuery$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lorg/ton/lite/api/LiteApiClient$sendQuery$1;->label:I

    invoke-interface {p0, p1, v0}, Lorg/ton/lite/api/LiteApiClient;->sendRawQuery(Lio/ktor/utils/io/core/ByteReadPacket;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p5

    if-ne p5, v1, :cond_4

    return-object v1

    .line 10
    :cond_4
    :goto_2
    check-cast p5, Lio/ktor/utils/io/core/ByteReadPacket;

    .line 30
    :try_start_2
    sget-object p0, Lorg/ton/lite/api/liteserver/LiteServerError;->Companion:Lorg/ton/lite/api/liteserver/LiteServerError$Companion;

    invoke-virtual {p5}, Lio/ktor/utils/io/core/ByteReadPacket;->copy()Lio/ktor/utils/io/core/ByteReadPacket;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/ton/tl/TlConstructor;->decodeBoxed(Lio/ktor/utils/io/core/Input;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/ton/lite/api/liteserver/LiteServerError;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v4, p0

    :catch_0
    if-nez v4, :cond_5

    .line 37
    invoke-interface {p2, p5}, Lorg/ton/tl/TlDecoder;->decodeBoxed(Lio/ktor/utils/io/core/Input;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 35
    :cond_5
    sget-object p0, Lorg/ton/lite/api/exception/LiteServerException;->Companion:Lorg/ton/lite/api/exception/LiteServerException$Companion;

    invoke-virtual {v4}, Lorg/ton/lite/api/liteserver/LiteServerError;->getCode()I

    move-result p1

    invoke-virtual {v4}, Lorg/ton/lite/api/liteserver/LiteServerError;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/ton/lite/api/exception/LiteServerException$Companion;->create(ILjava/lang/String;)Lorg/ton/lite/api/exception/LiteServerException;

    move-result-object p0

    throw p0

    :catchall_1
    move-exception p0

    .line 21
    invoke-virtual {p1}, Lio/ktor/utils/io/core/Output;->release()V

    .line 22
    throw p0

    .line 21
    :goto_3
    invoke-virtual {p5}, Lio/ktor/utils/io/core/Output;->release()V

    .line 22
    throw p0
.end method

.method public static synthetic sendQuery$default(Lorg/ton/lite/api/LiteApiClient;Lorg/ton/tl/TlCodec;Lorg/ton/tl/TlCodec;Ljava/lang/Object;ILkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 6

    if-nez p7, :cond_1

    and-int/lit8 p6, p6, 0x8

    if-eqz p6, :cond_0

    const/4 p4, -0x1

    :cond_0
    move v4, p4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    .line 10
    invoke-interface/range {v0 .. v5}, Lorg/ton/lite/api/LiteApiClient;->sendQuery(Lorg/ton/tl/TlCodec;Lorg/ton/tl/TlCodec;Ljava/lang/Object;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: sendQuery"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
