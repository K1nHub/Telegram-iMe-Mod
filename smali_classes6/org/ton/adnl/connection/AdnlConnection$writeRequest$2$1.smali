.class final Lorg/ton/adnl/connection/AdnlConnection$writeRequest$2$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "AdnlConnection.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ton/adnl/connection/AdnlConnection$writeRequest$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    value = "SMAP\nAdnlConnection.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AdnlConnection.kt\norg/ton/adnl/connection/AdnlConnection$writeRequest$2$1\n+ 2 ByteReadPacket.kt\nio/ktor/utils/io/core/ByteReadPacketKt\n+ 3 ByteReadPacketExtensions.kt\nio/ktor/utils/io/core/ByteReadPacketExtensionsKt\n*L\n1#1,217:1\n57#2,2:218\n15#3:220\n*S KotlinDebug\n*F\n+ 1 AdnlConnection.kt\norg/ton/adnl/connection/AdnlConnection$writeRequest$2$1\n*L\n122#1:218,2\n122#1:220\n*E\n"
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "org.ton.adnl.connection.AdnlConnection$writeRequest$2$1"
    f = "AdnlConnection.kt"
    l = {
        0x7a
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $cipher:Lorg/ton/crypto/AesCtr;

.field final synthetic $closeChannel:Z

.field final synthetic $output:Lio/ktor/utils/io/ByteWriteChannel;

.field final synthetic $request:Lorg/ton/adnl/connection/AdnlRequestData;

.field label:I

.field final synthetic this$0:Lorg/ton/adnl/connection/AdnlConnection;


# direct methods
.method constructor <init>(Lorg/ton/adnl/connection/AdnlConnection;Lio/ktor/utils/io/ByteWriteChannel;Lorg/ton/crypto/AesCtr;Lorg/ton/adnl/connection/AdnlRequestData;ZLkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ton/adnl/connection/AdnlConnection;",
            "Lio/ktor/utils/io/ByteWriteChannel;",
            "Lorg/ton/crypto/AesCtr;",
            "Lorg/ton/adnl/connection/AdnlRequestData;",
            "Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/ton/adnl/connection/AdnlConnection$writeRequest$2$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/ton/adnl/connection/AdnlConnection$writeRequest$2$1;->this$0:Lorg/ton/adnl/connection/AdnlConnection;

    iput-object p2, p0, Lorg/ton/adnl/connection/AdnlConnection$writeRequest$2$1;->$output:Lio/ktor/utils/io/ByteWriteChannel;

    iput-object p3, p0, Lorg/ton/adnl/connection/AdnlConnection$writeRequest$2$1;->$cipher:Lorg/ton/crypto/AesCtr;

    iput-object p4, p0, Lorg/ton/adnl/connection/AdnlConnection$writeRequest$2$1;->$request:Lorg/ton/adnl/connection/AdnlRequestData;

    iput-boolean p5, p0, Lorg/ton/adnl/connection/AdnlConnection$writeRequest$2$1;->$closeChannel:Z

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

    new-instance p1, Lorg/ton/adnl/connection/AdnlConnection$writeRequest$2$1;

    iget-object v1, p0, Lorg/ton/adnl/connection/AdnlConnection$writeRequest$2$1;->this$0:Lorg/ton/adnl/connection/AdnlConnection;

    iget-object v2, p0, Lorg/ton/adnl/connection/AdnlConnection$writeRequest$2$1;->$output:Lio/ktor/utils/io/ByteWriteChannel;

    iget-object v3, p0, Lorg/ton/adnl/connection/AdnlConnection$writeRequest$2$1;->$cipher:Lorg/ton/crypto/AesCtr;

    iget-object v4, p0, Lorg/ton/adnl/connection/AdnlConnection$writeRequest$2$1;->$request:Lorg/ton/adnl/connection/AdnlRequestData;

    iget-boolean v5, p0, Lorg/ton/adnl/connection/AdnlConnection$writeRequest$2$1;->$closeChannel:Z

    move-object v0, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lorg/ton/adnl/connection/AdnlConnection$writeRequest$2$1;-><init>(Lorg/ton/adnl/connection/AdnlConnection;Lio/ktor/utils/io/ByteWriteChannel;Lorg/ton/crypto/AesCtr;Lorg/ton/adnl/connection/AdnlRequestData;ZLkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lorg/ton/adnl/connection/AdnlConnection$writeRequest$2$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lorg/ton/adnl/connection/AdnlConnection$writeRequest$2$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lorg/ton/adnl/connection/AdnlConnection$writeRequest$2$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lorg/ton/adnl/connection/AdnlConnection$writeRequest$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 120
    iget v1, p0, Lorg/ton/adnl/connection/AdnlConnection$writeRequest$2$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 122
    :try_start_1
    iget-object p1, p0, Lorg/ton/adnl/connection/AdnlConnection$writeRequest$2$1;->this$0:Lorg/ton/adnl/connection/AdnlConnection;

    iget-object v1, p0, Lorg/ton/adnl/connection/AdnlConnection$writeRequest$2$1;->$output:Lio/ktor/utils/io/ByteWriteChannel;

    iget-object v3, p0, Lorg/ton/adnl/connection/AdnlConnection$writeRequest$2$1;->$cipher:Lorg/ton/crypto/AesCtr;

    iget-object v4, p0, Lorg/ton/adnl/connection/AdnlConnection$writeRequest$2$1;->$request:Lorg/ton/adnl/connection/AdnlRequestData;

    invoke-virtual {v4}, Lorg/ton/adnl/connection/AdnlRequestData;->getBody()[B

    move-result-object v4

    const/4 v5, 0x0

    .line 57
    array-length v6, v4

    .line 15
    invoke-static {v4, v5, v6}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v5

    const-string v6, "wrap(array, offset, length)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v6, Lorg/ton/adnl/connection/AdnlConnection$writeRequest$2$1$invokeSuspend$$inlined$ByteReadPacket$default$1;

    invoke-direct {v6, v4}, Lorg/ton/adnl/connection/AdnlConnection$writeRequest$2$1$invokeSuspend$$inlined$ByteReadPacket$default$1;-><init>([B)V

    invoke-static {v5, v6}, Lio/ktor/utils/io/core/ByteReadPacketExtensionsKt;->ByteReadPacket(Ljava/nio/ByteBuffer;Lkotlin/jvm/functions/Function1;)Lio/ktor/utils/io/core/ByteReadPacket;

    move-result-object v4

    .line 122
    iput v2, p0, Lorg/ton/adnl/connection/AdnlConnection$writeRequest$2$1;->label:I

    invoke-static {p1, v1, v3, v4, p0}, Lorg/ton/adnl/connection/AdnlConnection;->access$writeRaw(Lorg/ton/adnl/connection/AdnlConnection;Lio/ktor/utils/io/ByteWriteChannel;Lorg/ton/crypto/AesCtr;Lio/ktor/utils/io/core/ByteReadPacket;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne p1, v0, :cond_2

    return-object v0

    .line 127
    :cond_2
    :goto_0
    iget-object p1, p0, Lorg/ton/adnl/connection/AdnlConnection$writeRequest$2$1;->$output:Lio/ktor/utils/io/ByteWriteChannel;

    invoke-interface {p1}, Lio/ktor/utils/io/ByteWriteChannel;->flush()V

    .line 128
    iget-boolean p1, p0, Lorg/ton/adnl/connection/AdnlConnection$writeRequest$2$1;->$closeChannel:Z

    if-eqz p1, :cond_3

    .line 129
    iget-object p1, p0, Lorg/ton/adnl/connection/AdnlConnection$writeRequest$2$1;->$output:Lio/ktor/utils/io/ByteWriteChannel;

    invoke-static {p1}, Lio/ktor/utils/io/ByteWriteChannelKt;->close(Lio/ktor/utils/io/ByteWriteChannel;)Z

    .line 132
    :cond_3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 124
    :goto_1
    :try_start_2
    iget-object v0, p0, Lorg/ton/adnl/connection/AdnlConnection$writeRequest$2$1;->$output:Lio/ktor/utils/io/ByteWriteChannel;

    invoke-interface {v0, p1}, Lio/ktor/utils/io/ByteWriteChannel;->close(Ljava/lang/Throwable;)Z

    .line 125
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    .line 127
    iget-object v0, p0, Lorg/ton/adnl/connection/AdnlConnection$writeRequest$2$1;->$output:Lio/ktor/utils/io/ByteWriteChannel;

    invoke-interface {v0}, Lio/ktor/utils/io/ByteWriteChannel;->flush()V

    .line 128
    iget-boolean v0, p0, Lorg/ton/adnl/connection/AdnlConnection$writeRequest$2$1;->$closeChannel:Z

    if-eqz v0, :cond_4

    .line 129
    iget-object v0, p0, Lorg/ton/adnl/connection/AdnlConnection$writeRequest$2$1;->$output:Lio/ktor/utils/io/ByteWriteChannel;

    invoke-static {v0}, Lio/ktor/utils/io/ByteWriteChannelKt;->close(Lio/ktor/utils/io/ByteWriteChannel;)Z

    :cond_4
    throw p1
.end method
