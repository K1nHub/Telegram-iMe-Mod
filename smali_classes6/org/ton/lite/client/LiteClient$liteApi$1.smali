.class public final Lorg/ton/lite/client/LiteClient$liteApi$1;
.super Ljava/lang/Object;
.source "LiteClient.kt"

# interfaces
.implements Lorg/ton/lite/api/LiteApiClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ton/lite/client/LiteClient;-><init>(Lkotlin/coroutines/CoroutineContext;Lorg/ton/api/liteclient/config/LiteClientConfigGlobal;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLiteClient.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LiteClient.kt\norg/ton/lite/client/LiteClient$liteApi$1\n+ 2 ByteReadPacket.kt\nio/ktor/utils/io/core/ByteReadPacketKt\n+ 3 ByteReadPacketExtensions.kt\nio/ktor/utils/io/core/ByteReadPacketExtensionsKt\n*L\n1#1,501:1\n57#2,2:502\n15#3:504\n*S KotlinDebug\n*F\n+ 1 LiteClient.kt\norg/ton/lite/client/LiteClient$liteApi$1\n*L\n91#1:502,2\n91#1:504\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/ton/lite/client/LiteClient;


# direct methods
.method constructor <init>(Lorg/ton/lite/client/LiteClient;)V
    .locals 0

    iput-object p1, p0, Lorg/ton/lite/client/LiteClient$liteApi$1;->this$0:Lorg/ton/lite/client/LiteClient;

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lorg/ton/lite/api/liteserver/functions/LiteServerGetAccountState;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ton/lite/api/liteserver/functions/LiteServerGetAccountState;",
            "I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/ton/lite/api/liteserver/LiteServerAccountState;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 81
    invoke-static {p0, p1, p2, p3}, Lorg/ton/lite/api/LiteApiClient$DefaultImpls;->invoke(Lorg/ton/lite/api/LiteApiClient;Lorg/ton/lite/api/liteserver/functions/LiteServerGetAccountState;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public invoke(Lorg/ton/lite/api/liteserver/functions/LiteServerSendMessage;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ton/lite/api/liteserver/functions/LiteServerSendMessage;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/ton/lite/api/liteserver/LiteServerSendMsgStatus;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 81
    invoke-static {p0, p1, p2}, Lorg/ton/lite/api/LiteApiClient$DefaultImpls;->invoke(Lorg/ton/lite/api/LiteApiClient;Lorg/ton/lite/api/liteserver/functions/LiteServerSendMessage;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public sendQuery(Lorg/ton/tl/TlCodec;Lorg/ton/tl/TlCodec;Ljava/lang/Object;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Q:",
            "Ljava/lang/Object;",
            "A:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/ton/tl/TlCodec<",
            "TQ;>;",
            "Lorg/ton/tl/TlCodec<",
            "TA;>;TQ;I",
            "Lkotlin/coroutines/Continuation<",
            "-TA;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 81
    invoke-static/range {p0 .. p5}, Lorg/ton/lite/api/LiteApiClient$DefaultImpls;->sendQuery(Lorg/ton/lite/api/LiteApiClient;Lorg/ton/tl/TlCodec;Lorg/ton/tl/TlCodec;Ljava/lang/Object;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public sendRawQuery(Lio/ktor/utils/io/core/ByteReadPacket;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/core/ByteReadPacket;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/utils/io/core/ByteReadPacket;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lorg/ton/lite/client/LiteClient$liteApi$1$sendRawQuery$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lorg/ton/lite/client/LiteClient$liteApi$1$sendRawQuery$1;

    iget v1, v0, Lorg/ton/lite/client/LiteClient$liteApi$1$sendRawQuery$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lorg/ton/lite/client/LiteClient$liteApi$1$sendRawQuery$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/ton/lite/client/LiteClient$liteApi$1$sendRawQuery$1;

    invoke-direct {v0, p0, p2}, Lorg/ton/lite/client/LiteClient$liteApi$1$sendRawQuery$1;-><init>(Lorg/ton/lite/client/LiteClient$liteApi$1;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lorg/ton/lite/client/LiteClient$liteApi$1$sendRawQuery$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 82
    iget v2, v0, Lorg/ton/lite/client/LiteClient$liteApi$1$sendRawQuery$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v2, :cond_4

    if-eq v2, v6, :cond_3

    if-ne v2, v3, :cond_2

    iget p1, v0, Lorg/ton/lite/client/LiteClient$liteApi$1$sendRawQuery$1;->I$0:I

    iget-object v2, v0, Lorg/ton/lite/client/LiteClient$liteApi$1$sendRawQuery$1;->L$3:Ljava/lang/Object;

    check-cast v2, [B

    iget-object v7, v0, Lorg/ton/lite/client/LiteClient$liteApi$1$sendRawQuery$1;->L$2:Ljava/lang/Object;

    check-cast v7, Lorg/ton/api/liteserver/LiteServerDesc;

    iget-object v8, v0, Lorg/ton/lite/client/LiteClient$liteApi$1$sendRawQuery$1;->L$1:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Exception;

    iget-object v9, v0, Lorg/ton/lite/client/LiteClient$liteApi$1$sendRawQuery$1;->L$0:Ljava/lang/Object;

    check-cast v9, Lorg/ton/lite/client/LiteClient$liteApi$1;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    :cond_1
    move-object p2, v2

    move-object v2, v9

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    iget p1, v0, Lorg/ton/lite/client/LiteClient$liteApi$1$sendRawQuery$1;->I$0:I

    iget-object v2, v0, Lorg/ton/lite/client/LiteClient$liteApi$1$sendRawQuery$1;->L$2:Ljava/lang/Object;

    check-cast v2, [B

    iget-object v7, v0, Lorg/ton/lite/client/LiteClient$liteApi$1$sendRawQuery$1;->L$1:Ljava/lang/Object;

    check-cast v7, Lorg/ton/api/liteserver/LiteServerDesc;

    iget-object v8, v0, Lorg/ton/lite/client/LiteClient$liteApi$1$sendRawQuery$1;->L$0:Ljava/lang/Object;

    check-cast v8, Lorg/ton/lite/client/LiteClient$liteApi$1;

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/ton/lite/api/exception/LiteServerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception p2

    move-object v9, v8

    move-object v8, p2

    goto/16 :goto_3

    :catch_1
    move-exception p1

    goto/16 :goto_4

    :cond_4
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 86
    invoke-static {p1, v4, v6, v5}, Lio/ktor/utils/io/core/StringsKt;->readBytes$default(Lio/ktor/utils/io/core/ByteReadPacket;IILjava/lang/Object;)[B

    move-result-object p1

    move-object v2, p0

    move-object p2, p1

    move p1, v4

    move-object v7, v5

    move-object v8, v7

    :goto_1
    const/4 v9, 0x5

    .line 87
    iget-object v10, v2, Lorg/ton/lite/client/LiteClient$liteApi$1;->this$0:Lorg/ton/lite/client/LiteClient;

    invoke-static {v10}, Lorg/ton/lite/client/LiteClient;->access$getServerList$p(Lorg/ton/lite/client/LiteClient;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    if-ge p1, v9, :cond_6

    .line 89
    :try_start_1
    iget-object v8, v2, Lorg/ton/lite/client/LiteClient$liteApi$1;->this$0:Lorg/ton/lite/client/LiteClient;

    invoke-static {v8}, Lorg/ton/lite/client/LiteClient;->access$getServerList$p(Lorg/ton/lite/client/LiteClient;)Ljava/util/List;

    move-result-object v8

    iget-object v9, v2, Lorg/ton/lite/client/LiteClient$liteApi$1;->this$0:Lorg/ton/lite/client/LiteClient;

    invoke-static {v9}, Lorg/ton/lite/client/LiteClient;->access$getCurrentServer$p(Lorg/ton/lite/client/LiteClient;)I

    move-result v10

    add-int/lit8 v11, v10, 0x1

    invoke-static {v9, v11}, Lorg/ton/lite/client/LiteClient;->access$setCurrentServer$p(Lorg/ton/lite/client/LiteClient;I)V

    iget-object v9, v2, Lorg/ton/lite/client/LiteClient$liteApi$1;->this$0:Lorg/ton/lite/client/LiteClient;

    invoke-static {v9}, Lorg/ton/lite/client/LiteClient;->access$getServerList$p(Lorg/ton/lite/client/LiteClient;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    rem-int/2addr v10, v9

    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/ton/api/liteserver/LiteServerDesc;
    :try_end_1
    .catch Lorg/ton/lite/api/exception/LiteServerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 90
    :try_start_2
    new-instance v7, Lorg/ton/adnl/connection/AdnlClientImpl;

    invoke-direct {v7, v8}, Lorg/ton/adnl/connection/AdnlClientImpl;-><init>(Lorg/ton/api/liteserver/LiteServerDesc;)V

    .line 57
    array-length v9, p2

    .line 15
    invoke-static {p2, v4, v9}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v9

    const-string v10, "wrap(array, offset, length)"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v10, Lorg/ton/lite/client/LiteClient$liteApi$1$sendRawQuery$$inlined$ByteReadPacket$default$1;

    invoke-direct {v10, p2}, Lorg/ton/lite/client/LiteClient$liteApi$1$sendRawQuery$$inlined$ByteReadPacket$default$1;-><init>([B)V

    invoke-static {v9, v10}, Lio/ktor/utils/io/core/ByteReadPacketExtensionsKt;->ByteReadPacket(Ljava/nio/ByteBuffer;Lkotlin/jvm/functions/Function1;)Lio/ktor/utils/io/core/ByteReadPacket;

    move-result-object v9

    .line 91
    sget-object v10, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    const/16 v10, 0xa

    sget-object v11, Lkotlin/time/DurationUnit;->SECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v10, v11}, Lkotlin/time/DurationKt;->toDuration(ILkotlin/time/DurationUnit;)J

    move-result-wide v10

    iput-object v2, v0, Lorg/ton/lite/client/LiteClient$liteApi$1$sendRawQuery$1;->L$0:Ljava/lang/Object;

    iput-object v8, v0, Lorg/ton/lite/client/LiteClient$liteApi$1$sendRawQuery$1;->L$1:Ljava/lang/Object;

    iput-object p2, v0, Lorg/ton/lite/client/LiteClient$liteApi$1$sendRawQuery$1;->L$2:Ljava/lang/Object;

    iput-object v5, v0, Lorg/ton/lite/client/LiteClient$liteApi$1$sendRawQuery$1;->L$3:Ljava/lang/Object;

    iput p1, v0, Lorg/ton/lite/client/LiteClient$liteApi$1$sendRawQuery$1;->I$0:I

    iput v6, v0, Lorg/ton/lite/client/LiteClient$liteApi$1$sendRawQuery$1;->label:I

    invoke-virtual {v7, v9, v10, v11, v0}, Lorg/ton/adnl/connection/AdnlClientImpl;->sendQuery-8Mi8wO0(Lio/ktor/utils/io/core/ByteReadPacket;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2
    :try_end_2
    .catch Lorg/ton/lite/api/exception/LiteServerException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    if-ne p2, v1, :cond_5

    return-object v1

    :cond_5
    :goto_2
    return-object p2

    :catch_2
    move-exception v7

    move-object v9, v2

    move-object v2, p2

    move-object v12, v8

    move-object v8, v7

    move-object v7, v12

    goto :goto_3

    :catch_3
    move-exception p1

    move-object v7, v8

    goto :goto_4

    :catch_4
    move-exception v8

    move-object v9, v2

    move-object v2, p2

    :goto_3
    add-int/2addr p1, v6

    const-wide/16 v10, 0x64

    .line 98
    iput-object v9, v0, Lorg/ton/lite/client/LiteClient$liteApi$1$sendRawQuery$1;->L$0:Ljava/lang/Object;

    iput-object v8, v0, Lorg/ton/lite/client/LiteClient$liteApi$1$sendRawQuery$1;->L$1:Ljava/lang/Object;

    iput-object v7, v0, Lorg/ton/lite/client/LiteClient$liteApi$1$sendRawQuery$1;->L$2:Ljava/lang/Object;

    iput-object v2, v0, Lorg/ton/lite/client/LiteClient$liteApi$1$sendRawQuery$1;->L$3:Ljava/lang/Object;

    iput p1, v0, Lorg/ton/lite/client/LiteClient$liteApi$1$sendRawQuery$1;->I$0:I

    iput v3, v0, Lorg/ton/lite/client/LiteClient$liteApi$1$sendRawQuery$1;->label:I

    invoke-static {v10, v11, v0}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_1

    return-object v1

    :goto_4
    move-object v8, p1

    .line 101
    :cond_6
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to send query to lite server: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method
