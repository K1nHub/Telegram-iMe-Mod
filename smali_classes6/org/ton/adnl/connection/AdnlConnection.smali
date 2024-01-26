.class public final Lorg/ton/adnl/connection/AdnlConnection;
.super Ljava/lang/Object;
.source "AdnlConnection.kt"

# interfaces
.implements Lkotlinx/coroutines/CoroutineScope;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ton/adnl/connection/AdnlConnection$ChannelCipher;,
        Lorg/ton/adnl/connection/AdnlConnection$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAdnlConnection.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AdnlConnection.kt\norg/ton/adnl/connection/AdnlConnection\n+ 2 ByteWriteChannel.kt\nio/ktor/utils/io/ByteWriteChannelKt\n+ 3 Builder.kt\nio/ktor/utils/io/core/BuilderKt\n+ 4 ByteReadPacket.kt\nio/ktor/utils/io/core/ByteReadPacketKt\n+ 5 ByteReadPacketExtensions.kt\nio/ktor/utils/io/core/ByteReadPacketExtensionsKt\n+ 6 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,217:1\n195#2:218\n12#3,11:219\n12#3,11:240\n57#4,2:230\n57#4,2:234\n57#4,2:237\n15#5:232\n15#5:236\n15#5:239\n1#6:233\n*S KotlinDebug\n*F\n+ 1 AdnlConnection.kt\norg/ton/adnl/connection/AdnlConnection\n*L\n68#1:218\n68#1:219,11\n183#1:240,11\n154#1:230,2\n157#1:234,2\n165#1:237,2\n154#1:232\n157#1:236\n165#1:239\n*E\n"
.end annotation


# static fields
.field private static final CONNECT_TIMEOUT:J

.field public static final Companion:Lorg/ton/adnl/connection/AdnlConnection$Companion;

.field private static final MAX_IDLE_TIME:J


# instance fields
.field private final connectionFactory:Lorg/ton/adnl/connection/AdnlConnectionFactory;

.field private final coroutineContext:Lkotlin/coroutines/CoroutineContext;

.field private final deliveryPoint:Lkotlinx/coroutines/channels/Channel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/channels/Channel<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final lastActivity:Lkotlinx/atomicfu/AtomicRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/atomicfu/AtomicRef<",
            "Lkotlinx/datetime/Instant;",
            ">;"
        }
    .end annotation
.end field

.field private final liteServerDesc:Lorg/ton/api/liteserver/LiteServerDesc;

.field private final onDone:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final timeout:Lkotlinx/coroutines/Job;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/ton/adnl/connection/AdnlConnection$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/ton/adnl/connection/AdnlConnection$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/ton/adnl/connection/AdnlConnection;->Companion:Lorg/ton/adnl/connection/AdnlConnection$Companion;

    .line 212
    sget-object v0, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    sget-object v0, Lkotlin/time/DurationUnit;->SECONDS:Lkotlin/time/DurationUnit;

    const/16 v1, 0xa

    invoke-static {v1, v0}, Lkotlin/time/DurationKt;->toDuration(ILkotlin/time/DurationUnit;)J

    move-result-wide v1

    sput-wide v1, Lorg/ton/adnl/connection/AdnlConnection;->MAX_IDLE_TIME:J

    const/4 v1, 0x5

    .line 213
    invoke-static {v1, v0}, Lkotlin/time/DurationKt;->toDuration(ILkotlin/time/DurationUnit;)J

    move-result-wide v0

    sput-wide v0, Lorg/ton/adnl/connection/AdnlConnection;->CONNECT_TIMEOUT:J

    return-void
.end method

.method public constructor <init>(Lorg/ton/api/liteserver/LiteServerDesc;Lorg/ton/adnl/connection/AdnlConnectionFactory;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function0;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ton/api/liteserver/LiteServerDesc;",
            "Lorg/ton/adnl/connection/AdnlConnectionFactory;",
            "Lkotlin/coroutines/CoroutineContext;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "liteServerDesc"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "connectionFactory"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coroutineContext"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onDone"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lorg/ton/adnl/connection/AdnlConnection;->liteServerDesc:Lorg/ton/api/liteserver/LiteServerDesc;

    .line 24
    iput-object p2, p0, Lorg/ton/adnl/connection/AdnlConnection;->connectionFactory:Lorg/ton/adnl/connection/AdnlConnectionFactory;

    .line 25
    iput-object p3, p0, Lorg/ton/adnl/connection/AdnlConnection;->coroutineContext:Lkotlin/coroutines/CoroutineContext;

    .line 26
    iput-object p4, p0, Lorg/ton/adnl/connection/AdnlConnection;->onDone:Lkotlin/jvm/functions/Function0;

    .line 28
    sget-object p1, Lkotlinx/datetime/Clock$System;->INSTANCE:Lkotlinx/datetime/Clock$System;

    invoke-virtual {p1}, Lkotlinx/datetime/Clock$System;->now()Lkotlinx/datetime/Instant;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/atomicfu/AtomicFU;->atomic(Ljava/lang/Object;)Lkotlinx/atomicfu/AtomicRef;

    move-result-object p1

    iput-object p1, p0, Lorg/ton/adnl/connection/AdnlConnection;->lastActivity:Lkotlinx/atomicfu/AtomicRef;

    const/4 p1, 0x0

    const/4 p2, 0x0

    const/4 p3, 0x7

    .line 29
    invoke-static {p1, p2, p2, p3, p2}, Lkotlinx/coroutines/channels/ChannelKt;->Channel$default(ILkotlinx/coroutines/channels/BufferOverflow;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlinx/coroutines/channels/Channel;

    move-result-object p1

    iput-object p1, p0, Lorg/ton/adnl/connection/AdnlConnection;->deliveryPoint:Lkotlinx/coroutines/channels/Channel;

    .line 30
    invoke-virtual {p0}, Lorg/ton/adnl/connection/AdnlConnection;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    new-instance p3, Lkotlinx/coroutines/CoroutineName;

    const-string p4, "Connection timeout"

    invoke-direct {p3, p4}, Lkotlinx/coroutines/CoroutineName;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p3}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v1

    new-instance v3, Lorg/ton/adnl/connection/AdnlConnection$timeout$1;

    invoke-direct {v3, p0, p2}, Lorg/ton/adnl/connection/AdnlConnection$timeout$1;-><init>(Lorg/ton/adnl/connection/AdnlConnection;Lkotlin/coroutines/Continuation;)V

    const/4 v2, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object p1

    iput-object p1, p0, Lorg/ton/adnl/connection/AdnlConnection;->timeout:Lkotlinx/coroutines/Job;

    return-void
.end method

.method public static final synthetic access$connect(Lorg/ton/adnl/connection/AdnlConnection;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lorg/ton/adnl/connection/AdnlConnection;->connect(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getConnectionFactory$p(Lorg/ton/adnl/connection/AdnlConnection;)Lorg/ton/adnl/connection/AdnlConnectionFactory;
    .locals 0

    .line 22
    iget-object p0, p0, Lorg/ton/adnl/connection/AdnlConnection;->connectionFactory:Lorg/ton/adnl/connection/AdnlConnectionFactory;

    return-object p0
.end method

.method public static final synthetic access$getLastActivity$p(Lorg/ton/adnl/connection/AdnlConnection;)Lkotlinx/atomicfu/AtomicRef;
    .locals 0

    .line 22
    iget-object p0, p0, Lorg/ton/adnl/connection/AdnlConnection;->lastActivity:Lkotlinx/atomicfu/AtomicRef;

    return-object p0
.end method

.method public static final synthetic access$getMAX_IDLE_TIME$cp()J
    .locals 2

    .line 22
    sget-wide v0, Lorg/ton/adnl/connection/AdnlConnection;->MAX_IDLE_TIME:J

    return-wide v0
.end method

.method public static final synthetic access$getOnDone$p(Lorg/ton/adnl/connection/AdnlConnection;)Lkotlin/jvm/functions/Function0;
    .locals 0

    .line 22
    iget-object p0, p0, Lorg/ton/adnl/connection/AdnlConnection;->onDone:Lkotlin/jvm/functions/Function0;

    return-object p0
.end method

.method public static final synthetic access$makeDedicatedRequest(Lorg/ton/adnl/connection/AdnlConnection;Lorg/ton/adnl/connection/AdnlRequestData;Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2, p3}, Lorg/ton/adnl/connection/AdnlConnection;->makeDedicatedRequest(Lorg/ton/adnl/connection/AdnlRequestData;Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$readRaw(Lorg/ton/adnl/connection/AdnlConnection;Lio/ktor/utils/io/ByteReadChannel;Lorg/ton/crypto/AesCtr;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2, p3}, Lorg/ton/adnl/connection/AdnlConnection;->readRaw(Lio/ktor/utils/io/ByteReadChannel;Lorg/ton/crypto/AesCtr;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$writeRaw(Lorg/ton/adnl/connection/AdnlConnection;Lio/ktor/utils/io/ByteWriteChannel;Lorg/ton/crypto/AesCtr;Lio/ktor/utils/io/core/ByteReadPacket;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/ton/adnl/connection/AdnlConnection;->writeRaw(Lio/ktor/utils/io/ByteWriteChannel;Lorg/ton/crypto/AesCtr;Lio/ktor/utils/io/core/ByteReadPacket;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final connect(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/ton/adnl/network/TcpClient;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lorg/ton/adnl/connection/AdnlConnection$connect$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/ton/adnl/connection/AdnlConnection$connect$1;

    iget v1, v0, Lorg/ton/adnl/connection/AdnlConnection$connect$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lorg/ton/adnl/connection/AdnlConnection$connect$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/ton/adnl/connection/AdnlConnection$connect$1;

    invoke-direct {v0, p0, p1}, Lorg/ton/adnl/connection/AdnlConnection$connect$1;-><init>(Lorg/ton/adnl/connection/AdnlConnection;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lorg/ton/adnl/connection/AdnlConnection$connect$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 87
    iget v2, v0, Lorg/ton/adnl/connection/AdnlConnection$connect$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget v2, v0, Lorg/ton/adnl/connection/AdnlConnection$connect$1;->I$1:I

    iget v4, v0, Lorg/ton/adnl/connection/AdnlConnection$connect$1;->I$0:I

    iget-object v5, v0, Lorg/ton/adnl/connection/AdnlConnection$connect$1;->L$1:Ljava/lang/Object;

    check-cast v5, Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v6, v0, Lorg/ton/adnl/connection/AdnlConnection$connect$1;->L$0:Ljava/lang/Object;

    check-cast v6, Lorg/ton/adnl/connection/AdnlConnection;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 89
    :try_start_1
    new-instance p1, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {p1}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    const/4 v2, 0x0

    move-object v6, p0

    move-object v5, p1

    move v4, v3

    :goto_1
    if-ge v2, v4, :cond_5

    .line 92
    sget-wide v7, Lorg/ton/adnl/connection/AdnlConnection;->CONNECT_TIMEOUT:J

    .line 91
    new-instance p1, Lorg/ton/adnl/connection/AdnlConnection$connect$2$tcpClient$1;

    const/4 v9, 0x0

    invoke-direct {p1, v6, v9}, Lorg/ton/adnl/connection/AdnlConnection$connect$2$tcpClient$1;-><init>(Lorg/ton/adnl/connection/AdnlConnection;Lkotlin/coroutines/Continuation;)V

    iput-object v6, v0, Lorg/ton/adnl/connection/AdnlConnection$connect$1;->L$0:Ljava/lang/Object;

    iput-object v5, v0, Lorg/ton/adnl/connection/AdnlConnection$connect$1;->L$1:Ljava/lang/Object;

    iput v4, v0, Lorg/ton/adnl/connection/AdnlConnection$connect$1;->I$0:I

    iput v2, v0, Lorg/ton/adnl/connection/AdnlConnection$connect$1;->I$1:I

    iput v3, v0, Lorg/ton/adnl/connection/AdnlConnection$connect$1;->label:I

    invoke-static {v7, v8, p1, v0}, Lkotlinx/coroutines/TimeoutKt;->withTimeoutOrNull-KLykuaI(JLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    .line 87
    :cond_3
    :goto_2
    check-cast p1, Lorg/ton/adnl/network/TcpClient;

    if-nez p1, :cond_4

    .line 97
    iget p1, v5, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    add-int/2addr p1, v3

    iput p1, v5, Lkotlin/jvm/internal/Ref$IntRef;->element:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/2addr v2, v3

    goto :goto_1

    :cond_4
    return-object p1

    .line 105
    :cond_5
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Connection timeout"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 103
    throw p1
.end method

.method private final makeDedicatedRequest(Lorg/ton/adnl/connection/AdnlRequestData;Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ton/adnl/connection/AdnlRequestData;",
            "Lkotlin/coroutines/CoroutineContext;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/ton/adnl/connection/AdnlResponseData;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p3

    instance-of v2, v0, Lorg/ton/adnl/connection/AdnlConnection$makeDedicatedRequest$1;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Lorg/ton/adnl/connection/AdnlConnection$makeDedicatedRequest$1;

    iget v3, v2, Lorg/ton/adnl/connection/AdnlConnection$makeDedicatedRequest$1;->label:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lorg/ton/adnl/connection/AdnlConnection$makeDedicatedRequest$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v2, Lorg/ton/adnl/connection/AdnlConnection$makeDedicatedRequest$1;

    invoke-direct {v2, v1, v0}, Lorg/ton/adnl/connection/AdnlConnection$makeDedicatedRequest$1;-><init>(Lorg/ton/adnl/connection/AdnlConnection;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v0, v2, Lorg/ton/adnl/connection/AdnlConnection$makeDedicatedRequest$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v10

    .line 53
    iget v3, v2, Lorg/ton/adnl/connection/AdnlConnection$makeDedicatedRequest$1;->label:I

    const/4 v11, 0x5

    const/4 v9, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v12, 0x0

    if-eqz v3, :cond_6

    if-eq v3, v6, :cond_5

    if-eq v3, v5, :cond_4

    if-eq v3, v4, :cond_3

    if-eq v3, v9, :cond_2

    if-ne v3, v11, :cond_1

    iget-object v2, v2, Lorg/ton/adnl/connection/AdnlConnection$makeDedicatedRequest$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lorg/ton/adnl/network/TcpClient;

    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_5

    :catchall_0
    move-exception v0

    goto/16 :goto_7

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v3, v2, Lorg/ton/adnl/connection/AdnlConnection$makeDedicatedRequest$1;->L$4:Ljava/lang/Object;

    check-cast v3, Lkotlinx/datetime/Instant;

    iget-object v4, v2, Lorg/ton/adnl/connection/AdnlConnection$makeDedicatedRequest$1;->L$3:Ljava/lang/Object;

    check-cast v4, Lorg/ton/adnl/connection/AdnlConnection$ChannelCipher;

    iget-object v5, v2, Lorg/ton/adnl/connection/AdnlConnection$makeDedicatedRequest$1;->L$2:Ljava/lang/Object;

    check-cast v5, Lorg/ton/adnl/network/TcpClient;

    iget-object v6, v2, Lorg/ton/adnl/connection/AdnlConnection$makeDedicatedRequest$1;->L$1:Ljava/lang/Object;

    check-cast v6, Lkotlin/coroutines/CoroutineContext;

    iget-object v7, v2, Lorg/ton/adnl/connection/AdnlConnection$makeDedicatedRequest$1;->L$0:Ljava/lang/Object;

    check-cast v7, Lorg/ton/adnl/connection/AdnlConnection;

    :try_start_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v14, v4

    move-object v13, v5

    move-object v4, v3

    move-object v3, v7

    move-object v7, v6

    goto/16 :goto_4

    :cond_3
    iget-object v3, v2, Lorg/ton/adnl/connection/AdnlConnection$makeDedicatedRequest$1;->L$5:Ljava/lang/Object;

    check-cast v3, Lkotlinx/datetime/Instant;

    iget-object v4, v2, Lorg/ton/adnl/connection/AdnlConnection$makeDedicatedRequest$1;->L$4:Ljava/lang/Object;

    check-cast v4, Lorg/ton/adnl/connection/AdnlConnection$ChannelCipher;

    iget-object v5, v2, Lorg/ton/adnl/connection/AdnlConnection$makeDedicatedRequest$1;->L$3:Ljava/lang/Object;

    check-cast v5, Lorg/ton/adnl/network/TcpClient;

    iget-object v6, v2, Lorg/ton/adnl/connection/AdnlConnection$makeDedicatedRequest$1;->L$2:Ljava/lang/Object;

    check-cast v6, Lkotlin/coroutines/CoroutineContext;

    iget-object v7, v2, Lorg/ton/adnl/connection/AdnlConnection$makeDedicatedRequest$1;->L$1:Ljava/lang/Object;

    check-cast v7, Lorg/ton/adnl/connection/AdnlRequestData;

    iget-object v8, v2, Lorg/ton/adnl/connection/AdnlConnection$makeDedicatedRequest$1;->L$0:Ljava/lang/Object;

    check-cast v8, Lorg/ton/adnl/connection/AdnlConnection;

    :try_start_2
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v0, v3

    move-object v14, v4

    move-object v13, v5

    move-object v15, v6

    move-object v4, v7

    goto/16 :goto_3

    :cond_4
    iget-object v3, v2, Lorg/ton/adnl/connection/AdnlConnection$makeDedicatedRequest$1;->L$4:Ljava/lang/Object;

    check-cast v3, [B

    iget-object v5, v2, Lorg/ton/adnl/connection/AdnlConnection$makeDedicatedRequest$1;->L$3:Ljava/lang/Object;

    check-cast v5, Lorg/ton/adnl/network/TcpClient;

    iget-object v6, v2, Lorg/ton/adnl/connection/AdnlConnection$makeDedicatedRequest$1;->L$2:Ljava/lang/Object;

    check-cast v6, Lkotlin/coroutines/CoroutineContext;

    iget-object v7, v2, Lorg/ton/adnl/connection/AdnlConnection$makeDedicatedRequest$1;->L$1:Ljava/lang/Object;

    check-cast v7, Lorg/ton/adnl/connection/AdnlRequestData;

    iget-object v8, v2, Lorg/ton/adnl/connection/AdnlConnection$makeDedicatedRequest$1;->L$0:Ljava/lang/Object;

    check-cast v8, Lorg/ton/adnl/connection/AdnlConnection;

    :try_start_3
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v13, v5

    move-object v0, v6

    move-object v14, v7

    move-object v15, v8

    goto/16 :goto_2

    :catchall_1
    move-exception v0

    move-object v2, v5

    goto/16 :goto_7

    :cond_5
    iget-object v3, v2, Lorg/ton/adnl/connection/AdnlConnection$makeDedicatedRequest$1;->L$2:Ljava/lang/Object;

    check-cast v3, Lkotlin/coroutines/CoroutineContext;

    iget-object v7, v2, Lorg/ton/adnl/connection/AdnlConnection$makeDedicatedRequest$1;->L$1:Ljava/lang/Object;

    check-cast v7, Lorg/ton/adnl/connection/AdnlRequestData;

    iget-object v8, v2, Lorg/ton/adnl/connection/AdnlConnection$makeDedicatedRequest$1;->L$0:Ljava/lang/Object;

    check-cast v8, Lorg/ton/adnl/connection/AdnlConnection;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v21, v7

    move-object v7, v0

    move-object/from16 v0, v21

    goto :goto_1

    :cond_6
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 57
    iput-object v1, v2, Lorg/ton/adnl/connection/AdnlConnection$makeDedicatedRequest$1;->L$0:Ljava/lang/Object;

    move-object/from16 v0, p1

    iput-object v0, v2, Lorg/ton/adnl/connection/AdnlConnection$makeDedicatedRequest$1;->L$1:Ljava/lang/Object;

    move-object/from16 v3, p2

    iput-object v3, v2, Lorg/ton/adnl/connection/AdnlConnection$makeDedicatedRequest$1;->L$2:Ljava/lang/Object;

    iput v6, v2, Lorg/ton/adnl/connection/AdnlConnection$makeDedicatedRequest$1;->label:I

    invoke-direct {v1, v2}, Lorg/ton/adnl/connection/AdnlConnection;->connect(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v10, :cond_7

    return-object v10

    :cond_7
    move-object v8, v1

    .line 53
    :goto_1
    check-cast v7, Lorg/ton/adnl/network/TcpClient;

    .line 59
    :try_start_4
    sget-object v13, Lorg/ton/crypto/SecureRandom;->INSTANCE:Lorg/ton/crypto/SecureRandom;

    const/16 v14, 0xa0

    invoke-virtual {v13, v14}, Lkotlin/random/Random;->nextBytes(I)[B

    move-result-object v13

    .line 61
    sget-object v14, Lkotlinx/coroutines/Job;->Key:Lkotlinx/coroutines/Job$Key;

    invoke-interface {v3, v14}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object v14

    invoke-static {v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v14, Lkotlinx/coroutines/Job;

    new-instance v15, Lorg/ton/adnl/connection/AdnlConnection$makeDedicatedRequest$2;

    invoke-direct {v15, v7}, Lorg/ton/adnl/connection/AdnlConnection$makeDedicatedRequest$2;-><init>(Lorg/ton/adnl/network/TcpClient;)V

    invoke-interface {v14, v15}, Lkotlinx/coroutines/Job;->invokeOnCompletion(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;

    .line 68
    invoke-interface {v7}, Lorg/ton/adnl/network/TcpClient;->getOutput()Lio/ktor/utils/io/ByteWriteChannel;

    move-result-object v14

    .line 16
    new-instance v15, Lio/ktor/utils/io/core/BytePacketBuilder;

    invoke-direct {v15, v12, v6, v12}, Lio/ktor/utils/io/core/BytePacketBuilder;-><init>(Lio/ktor/utils/io/pool/ObjectPool;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 69
    :try_start_5
    iget-object v6, v8, Lorg/ton/adnl/connection/AdnlConnection;->liteServerDesc:Lorg/ton/api/liteserver/LiteServerDesc;

    invoke-virtual {v6}, Lorg/ton/api/liteserver/LiteServerDesc;->getId()Lorg/ton/api/pub/PublicKey;

    move-result-object v6

    invoke-interface {v6}, Lorg/ton/api/pub/PublicKey;->toAdnlIdShort()Lorg/ton/api/adnl/AdnlIdShort;

    move-result-object v6

    invoke-interface {v6}, Lorg/ton/api/adnl/AdnlIdShort;->getId()[B

    move-result-object v16
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x6

    const/16 v20, 0x0

    move-object v6, v15

    :try_start_6
    invoke-static/range {v15 .. v20}, Lio/ktor/utils/io/core/OutputKt;->writeFully$default(Lio/ktor/utils/io/core/Output;[BIIILjava/lang/Object;)V

    .line 70
    iget-object v15, v8, Lorg/ton/adnl/connection/AdnlConnection;->liteServerDesc:Lorg/ton/api/liteserver/LiteServerDesc;

    invoke-virtual {v15}, Lorg/ton/api/liteserver/LiteServerDesc;->getId()Lorg/ton/api/pub/PublicKey;

    move-result-object v15

    invoke-interface {v15, v13}, Lorg/ton/crypto/Encryptor;->encrypt([B)[B

    move-result-object v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x6

    const/16 v20, 0x0

    move-object v15, v6

    invoke-static/range {v15 .. v20}, Lio/ktor/utils/io/core/OutputKt;->writeFully$default(Lio/ktor/utils/io/core/Output;[BIIILjava/lang/Object;)V

    .line 19
    invoke-virtual {v6}, Lio/ktor/utils/io/core/BytePacketBuilder;->build()Lio/ktor/utils/io/core/ByteReadPacket;

    move-result-object v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 195
    :try_start_7
    iput-object v8, v2, Lorg/ton/adnl/connection/AdnlConnection$makeDedicatedRequest$1;->L$0:Ljava/lang/Object;

    iput-object v0, v2, Lorg/ton/adnl/connection/AdnlConnection$makeDedicatedRequest$1;->L$1:Ljava/lang/Object;

    iput-object v3, v2, Lorg/ton/adnl/connection/AdnlConnection$makeDedicatedRequest$1;->L$2:Ljava/lang/Object;

    iput-object v7, v2, Lorg/ton/adnl/connection/AdnlConnection$makeDedicatedRequest$1;->L$3:Ljava/lang/Object;

    iput-object v13, v2, Lorg/ton/adnl/connection/AdnlConnection$makeDedicatedRequest$1;->L$4:Ljava/lang/Object;

    iput v5, v2, Lorg/ton/adnl/connection/AdnlConnection$makeDedicatedRequest$1;->label:I

    invoke-interface {v14, v6, v2}, Lio/ktor/utils/io/ByteWriteChannel;->writePacket(Lio/ktor/utils/io/core/ByteReadPacket;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    if-ne v5, v10, :cond_8

    return-object v10

    :cond_8
    move-object v14, v0

    move-object v0, v3

    move-object v15, v8

    move-object v3, v13

    move-object v13, v7

    .line 72
    :goto_2
    :try_start_8
    invoke-interface {v13}, Lorg/ton/adnl/network/TcpClient;->getOutput()Lio/ktor/utils/io/ByteWriteChannel;

    move-result-object v5

    invoke-interface {v5}, Lio/ktor/utils/io/ByteWriteChannel;->flush()V

    .line 74
    new-instance v8, Lorg/ton/adnl/connection/AdnlConnection$ChannelCipher;

    invoke-direct {v8, v3}, Lorg/ton/adnl/connection/AdnlConnection$ChannelCipher;-><init>([B)V

    .line 75
    sget-object v3, Lkotlinx/datetime/Clock$System;->INSTANCE:Lkotlinx/datetime/Clock$System;

    invoke-virtual {v3}, Lkotlinx/datetime/Clock$System;->now()Lkotlinx/datetime/Instant;

    move-result-object v7

    .line 76
    invoke-interface {v13}, Lorg/ton/adnl/network/TcpClient;->getInput()Lio/ktor/utils/io/ByteReadChannel;

    move-result-object v5

    invoke-virtual {v8}, Lorg/ton/adnl/connection/AdnlConnection$ChannelCipher;->getInput()Lorg/ton/crypto/AesCtr;

    move-result-object v6

    iput-object v15, v2, Lorg/ton/adnl/connection/AdnlConnection$makeDedicatedRequest$1;->L$0:Ljava/lang/Object;

    iput-object v14, v2, Lorg/ton/adnl/connection/AdnlConnection$makeDedicatedRequest$1;->L$1:Ljava/lang/Object;

    iput-object v0, v2, Lorg/ton/adnl/connection/AdnlConnection$makeDedicatedRequest$1;->L$2:Ljava/lang/Object;

    iput-object v13, v2, Lorg/ton/adnl/connection/AdnlConnection$makeDedicatedRequest$1;->L$3:Ljava/lang/Object;

    iput-object v8, v2, Lorg/ton/adnl/connection/AdnlConnection$makeDedicatedRequest$1;->L$4:Ljava/lang/Object;

    iput-object v7, v2, Lorg/ton/adnl/connection/AdnlConnection$makeDedicatedRequest$1;->L$5:Ljava/lang/Object;

    iput v4, v2, Lorg/ton/adnl/connection/AdnlConnection$makeDedicatedRequest$1;->label:I

    move-object v3, v15

    move-object v4, v7

    move-object/from16 v16, v7

    move-object v7, v0

    move-object/from16 v17, v8

    move-object v8, v2

    invoke-direct/range {v3 .. v8}, Lorg/ton/adnl/connection/AdnlConnection;->readResponse(Lkotlinx/datetime/Instant;Lio/ktor/utils/io/ByteReadChannel;Lorg/ton/crypto/AesCtr;Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v10, :cond_9

    return-object v10

    :cond_9
    move-object v4, v14

    move-object v8, v15

    move-object/from16 v14, v17

    move-object v15, v0

    move-object/from16 v0, v16

    .line 78
    :goto_3
    invoke-interface {v13}, Lorg/ton/adnl/network/TcpClient;->getOutput()Lio/ktor/utils/io/ByteWriteChannel;

    move-result-object v6

    invoke-virtual {v14}, Lorg/ton/adnl/connection/AdnlConnection$ChannelCipher;->getOutput()Lorg/ton/crypto/AesCtr;

    move-result-object v7

    const/16 v16, 0x0

    iput-object v8, v2, Lorg/ton/adnl/connection/AdnlConnection$makeDedicatedRequest$1;->L$0:Ljava/lang/Object;

    iput-object v15, v2, Lorg/ton/adnl/connection/AdnlConnection$makeDedicatedRequest$1;->L$1:Ljava/lang/Object;

    iput-object v13, v2, Lorg/ton/adnl/connection/AdnlConnection$makeDedicatedRequest$1;->L$2:Ljava/lang/Object;

    iput-object v14, v2, Lorg/ton/adnl/connection/AdnlConnection$makeDedicatedRequest$1;->L$3:Ljava/lang/Object;

    iput-object v0, v2, Lorg/ton/adnl/connection/AdnlConnection$makeDedicatedRequest$1;->L$4:Ljava/lang/Object;

    iput-object v12, v2, Lorg/ton/adnl/connection/AdnlConnection$makeDedicatedRequest$1;->L$5:Ljava/lang/Object;

    iput v9, v2, Lorg/ton/adnl/connection/AdnlConnection$makeDedicatedRequest$1;->label:I

    move-object v3, v8

    move-object v5, v15

    move-object/from16 v17, v8

    move/from16 v8, v16

    move-object v9, v2

    invoke-virtual/range {v3 .. v9}, Lorg/ton/adnl/connection/AdnlConnection;->writeRequest$ton_kotlin_adnl(Lorg/ton/adnl/connection/AdnlRequestData;Lkotlin/coroutines/CoroutineContext;Lio/ktor/utils/io/ByteWriteChannel;Lorg/ton/crypto/AesCtr;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v10, :cond_a

    return-object v10

    :cond_a
    move-object v4, v0

    move-object v7, v15

    move-object/from16 v3, v17

    .line 79
    :goto_4
    invoke-interface {v13}, Lorg/ton/adnl/network/TcpClient;->getInput()Lio/ktor/utils/io/ByteReadChannel;

    move-result-object v5

    invoke-virtual {v14}, Lorg/ton/adnl/connection/AdnlConnection$ChannelCipher;->getInput()Lorg/ton/crypto/AesCtr;

    move-result-object v6

    iput-object v13, v2, Lorg/ton/adnl/connection/AdnlConnection$makeDedicatedRequest$1;->L$0:Ljava/lang/Object;

    iput-object v12, v2, Lorg/ton/adnl/connection/AdnlConnection$makeDedicatedRequest$1;->L$1:Ljava/lang/Object;

    iput-object v12, v2, Lorg/ton/adnl/connection/AdnlConnection$makeDedicatedRequest$1;->L$2:Ljava/lang/Object;

    iput-object v12, v2, Lorg/ton/adnl/connection/AdnlConnection$makeDedicatedRequest$1;->L$3:Ljava/lang/Object;

    iput-object v12, v2, Lorg/ton/adnl/connection/AdnlConnection$makeDedicatedRequest$1;->L$4:Ljava/lang/Object;

    iput v11, v2, Lorg/ton/adnl/connection/AdnlConnection$makeDedicatedRequest$1;->label:I

    move-object v8, v2

    invoke-direct/range {v3 .. v8}, Lorg/ton/adnl/connection/AdnlConnection;->readResponse(Lkotlinx/datetime/Instant;Lio/ktor/utils/io/ByteReadChannel;Lorg/ton/crypto/AesCtr;Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    if-ne v0, v10, :cond_b

    return-object v10

    :cond_b
    move-object v2, v13

    .line 83
    :goto_5
    invoke-interface {v2}, Ljava/io/Closeable;->close()V

    return-object v0

    :catchall_2
    move-exception v0

    move-object v2, v13

    goto :goto_7

    :catchall_3
    move-exception v0

    goto :goto_6

    :catchall_4
    move-exception v0

    move-object v6, v15

    .line 21
    :goto_6
    :try_start_9
    invoke-virtual {v6}, Lio/ktor/utils/io/core/Output;->release()V

    .line 22
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    :catchall_5
    move-exception v0

    move-object v2, v7

    .line 81
    :goto_7
    :try_start_a
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    :catchall_6
    move-exception v0

    move-object v3, v0

    .line 83
    invoke-interface {v2}, Ljava/io/Closeable;->close()V

    throw v3
.end method

.method private final readRaw(Lio/ktor/utils/io/ByteReadChannel;Lorg/ton/crypto/AesCtr;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/ByteReadChannel;",
            "Lorg/ton/crypto/AesCtr;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/utils/io/core/ByteReadPacket;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lorg/ton/adnl/connection/AdnlConnection$readRaw$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lorg/ton/adnl/connection/AdnlConnection$readRaw$1;

    iget v1, v0, Lorg/ton/adnl/connection/AdnlConnection$readRaw$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lorg/ton/adnl/connection/AdnlConnection$readRaw$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/ton/adnl/connection/AdnlConnection$readRaw$1;

    invoke-direct {v0, p0, p3}, Lorg/ton/adnl/connection/AdnlConnection$readRaw$1;-><init>(Lorg/ton/adnl/connection/AdnlConnection;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lorg/ton/adnl/connection/AdnlConnection$readRaw$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 149
    iget v2, v0, Lorg/ton/adnl/connection/AdnlConnection$readRaw$1;->label:I

    const-string v3, "wrap(array, offset, length)"

    const/16 v4, 0x20

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v6, :cond_2

    if-ne v2, v5, :cond_1

    iget-object p1, v0, Lorg/ton/adnl/connection/AdnlConnection$readRaw$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lorg/ton/crypto/AesCtr;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, v0, Lorg/ton/adnl/connection/AdnlConnection$readRaw$1;->L$1:Ljava/lang/Object;

    move-object p2, p1

    check-cast p2, Lorg/ton/crypto/AesCtr;

    iget-object p1, v0, Lorg/ton/adnl/connection/AdnlConnection$readRaw$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lio/ktor/utils/io/ByteReadChannel;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    const/4 p3, 0x4

    .line 153
    iput-object p1, v0, Lorg/ton/adnl/connection/AdnlConnection$readRaw$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lorg/ton/adnl/connection/AdnlConnection$readRaw$1;->L$1:Ljava/lang/Object;

    iput v6, v0, Lorg/ton/adnl/connection/AdnlConnection$readRaw$1;->label:I

    invoke-interface {p1, p3, v0}, Lio/ktor/utils/io/ByteReadChannel;->readPacket(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_4

    return-object v1

    :cond_4
    :goto_1
    check-cast p3, Lio/ktor/utils/io/core/ByteReadPacket;

    invoke-static {p3, v8, v6, v7}, Lio/ktor/utils/io/core/StringsKt;->readBytes$default(Lio/ktor/utils/io/core/ByteReadPacket;IILjava/lang/Object;)[B

    move-result-object p3

    .line 154
    invoke-static {p2, p3, v7, v5, v7}, Lorg/ton/crypto/AesCtr;->update$default(Lorg/ton/crypto/AesCtr;[B[BILjava/lang/Object;)[B

    move-result-object p3

    .line 57
    array-length v2, p3

    .line 15
    invoke-static {p3, v8, v2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v9, Lorg/ton/adnl/connection/AdnlConnection$readRaw$$inlined$ByteReadPacket$default$1;

    invoke-direct {v9, p3}, Lorg/ton/adnl/connection/AdnlConnection$readRaw$$inlined$ByteReadPacket$default$1;-><init>([B)V

    invoke-static {v2, v9}, Lio/ktor/utils/io/core/ByteReadPacketExtensionsKt;->ByteReadPacket(Ljava/nio/ByteBuffer;Lkotlin/jvm/functions/Function1;)Lio/ktor/utils/io/core/ByteReadPacket;

    move-result-object p3

    .line 154
    invoke-static {p3}, Lio/ktor/utils/io/core/InputLittleEndianKt;->readIntLittleEndian(Lio/ktor/utils/io/core/Input;)I

    move-result p3

    if-gt v4, p3, :cond_5

    const v2, 0x1000001

    if-ge p3, v2, :cond_5

    move v2, v6

    goto :goto_2

    :cond_5
    move v2, v8

    :goto_2
    if-eqz v2, :cond_8

    .line 156
    iput-object p2, v0, Lorg/ton/adnl/connection/AdnlConnection$readRaw$1;->L$0:Ljava/lang/Object;

    iput-object v7, v0, Lorg/ton/adnl/connection/AdnlConnection$readRaw$1;->L$1:Ljava/lang/Object;

    iput v5, v0, Lorg/ton/adnl/connection/AdnlConnection$readRaw$1;->label:I

    invoke-interface {p1, p3, v0}, Lio/ktor/utils/io/ByteReadChannel;->readPacket(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_6

    return-object v1

    :cond_6
    move-object p1, p2

    :goto_3
    check-cast p3, Lio/ktor/utils/io/core/ByteReadPacket;

    invoke-static {p3, v8, v6, v7}, Lio/ktor/utils/io/core/StringsKt;->readBytes$default(Lio/ktor/utils/io/core/ByteReadPacket;IILjava/lang/Object;)[B

    move-result-object p2

    .line 157
    invoke-static {p1, p2, v7, v5, v7}, Lorg/ton/crypto/AesCtr;->update$default(Lorg/ton/crypto/AesCtr;[B[BILjava/lang/Object;)[B

    move-result-object p1

    .line 57
    array-length p2, p1

    .line 15
    invoke-static {p1, v8, p2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-static {p2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p3, Lorg/ton/adnl/connection/AdnlConnection$readRaw$$inlined$ByteReadPacket$default$2;

    invoke-direct {p3, p1}, Lorg/ton/adnl/connection/AdnlConnection$readRaw$$inlined$ByteReadPacket$default$2;-><init>([B)V

    invoke-static {p2, p3}, Lio/ktor/utils/io/core/ByteReadPacketExtensionsKt;->ByteReadPacket(Ljava/nio/ByteBuffer;Lkotlin/jvm/functions/Function1;)Lio/ktor/utils/io/core/ByteReadPacket;

    move-result-object p1

    .line 158
    invoke-virtual {p1}, Lio/ktor/utils/io/core/Input;->getRemaining()J

    move-result-wide p2

    int-to-long v0, v4

    sub-long/2addr p2, v0

    long-to-int p2, p2

    invoke-static {p1, p2}, Lio/ktor/utils/io/core/StringsKt;->readBytes(Lio/ktor/utils/io/core/ByteReadPacket;I)[B

    move-result-object p2

    .line 159
    invoke-static {p1, v4}, Lio/ktor/utils/io/core/StringsKt;->readBytes(Lio/ktor/utils/io/core/ByteReadPacket;I)[B

    move-result-object p1

    .line 161
    invoke-static {p2}, Lorg/ton/crypto/digest/DigestJvmKt;->sha256([B)[B

    move-result-object p3

    invoke-static {p3, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 57
    array-length p1, p2

    .line 15
    invoke-static {p2, v8, p1}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p3, Lorg/ton/adnl/connection/AdnlConnection$readRaw$$inlined$ByteReadPacket$default$3;

    invoke-direct {p3, p2}, Lorg/ton/adnl/connection/AdnlConnection$readRaw$$inlined$ByteReadPacket$default$3;-><init>([B)V

    invoke-static {p1, p3}, Lio/ktor/utils/io/core/ByteReadPacketExtensionsKt;->ByteReadPacket(Ljava/nio/ByteBuffer;Lkotlin/jvm/functions/Function1;)Lio/ktor/utils/io/core/ByteReadPacket;

    move-result-object p1

    .line 166
    invoke-virtual {p1, v4}, Lio/ktor/utils/io/core/Input;->discard(I)I

    return-object p1

    .line 161
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "sha256 mismatch"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 155
    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Invalid length"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final readResponse(Lkotlinx/datetime/Instant;Lio/ktor/utils/io/ByteReadChannel;Lorg/ton/crypto/AesCtr;Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/datetime/Instant;",
            "Lio/ktor/utils/io/ByteReadChannel;",
            "Lorg/ton/crypto/AesCtr;",
            "Lkotlin/coroutines/CoroutineContext;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/ton/adnl/connection/AdnlResponseData;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 140
    new-instance v7, Lorg/ton/adnl/connection/AdnlConnection$readResponse$2;

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lorg/ton/adnl/connection/AdnlConnection$readResponse$2;-><init>(Lorg/ton/adnl/connection/AdnlConnection;Lio/ktor/utils/io/ByteReadChannel;Lorg/ton/crypto/AesCtr;Lkotlinx/datetime/Instant;Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/Continuation;)V

    invoke-static {p4, v7, p5}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private final writeRaw(Lio/ktor/utils/io/ByteWriteChannel;Lorg/ton/crypto/AesCtr;Lio/ktor/utils/io/core/ByteReadPacket;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/ByteWriteChannel;",
            "Lorg/ton/crypto/AesCtr;",
            "Lio/ktor/utils/io/core/ByteReadPacket;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 175
    invoke-virtual/range {p3 .. p3}, Lio/ktor/utils/io/core/Input;->getRemaining()J

    move-result-wide v0

    const/16 v2, 0x20

    int-to-long v3, v2

    add-long/2addr v0, v3

    add-long/2addr v0, v3

    long-to-int v0, v0

    const/4 v1, 0x1

    const/4 v3, 0x0

    if-gt v2, v0, :cond_0

    const v4, 0x1000001

    if-ge v0, v4, :cond_0

    move v4, v1

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    if-eqz v4, :cond_2

    .line 177
    sget-object v4, Lorg/ton/crypto/SecureRandom;->INSTANCE:Lorg/ton/crypto/SecureRandom;

    invoke-virtual {v4, v2}, Lkotlin/random/Random;->nextBytes(I)[B

    move-result-object v6

    const/4 v2, 0x0

    move-object/from16 v4, p3

    .line 178
    invoke-static {v4, v3, v1, v2}, Lio/ktor/utils/io/core/StringsKt;->readBytes$default(Lio/ktor/utils/io/core/ByteReadPacket;IILjava/lang/Object;)[B

    move-result-object v4

    .line 179
    sget-object v5, Lorg/ton/crypto/digest/Digest;->Companion:Lorg/ton/crypto/digest/Digest$Companion;

    invoke-virtual {v5}, Lorg/ton/crypto/digest/Digest$Companion;->sha256()Lorg/ton/crypto/digest/Digest;

    move-result-object v5

    .line 180
    invoke-interface {v5, v6}, Lorg/ton/crypto/digest/Digest;->update([B)V

    .line 181
    invoke-interface {v5, v4}, Lorg/ton/crypto/digest/Digest;->update([B)V

    .line 182
    invoke-interface {v5}, Lorg/ton/crypto/digest/Digest;->build()[B

    move-result-object v13

    .line 16
    new-instance v14, Lio/ktor/utils/io/core/BytePacketBuilder;

    invoke-direct {v14, v2, v1, v2}, Lio/ktor/utils/io/core/BytePacketBuilder;-><init>(Lio/ktor/utils/io/pool/ObjectPool;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 184
    :try_start_0
    invoke-static {v14, v0}, Lio/ktor/utils/io/core/OutputLittleEndianKt;->writeIntLittleEndian(Lio/ktor/utils/io/core/Output;I)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x6

    const/4 v10, 0x0

    move-object v5, v14

    .line 185
    invoke-static/range {v5 .. v10}, Lio/ktor/utils/io/core/OutputKt;->writeFully$default(Lio/ktor/utils/io/core/Output;[BIIILjava/lang/Object;)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x6

    const/4 v12, 0x0

    move-object v7, v14

    move-object v8, v4

    .line 186
    invoke-static/range {v7 .. v12}, Lio/ktor/utils/io/core/OutputKt;->writeFully$default(Lio/ktor/utils/io/core/Output;[BIIILjava/lang/Object;)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x6

    const/4 v12, 0x0

    move-object v7, v14

    move-object v8, v13

    .line 187
    invoke-static/range {v7 .. v12}, Lio/ktor/utils/io/core/OutputKt;->writeFully$default(Lio/ktor/utils/io/core/Output;[BIIILjava/lang/Object;)V

    .line 19
    invoke-virtual {v14}, Lio/ktor/utils/io/core/BytePacketBuilder;->build()Lio/ktor/utils/io/core/ByteReadPacket;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    invoke-static {v0, v3, v1, v2}, Lio/ktor/utils/io/core/StringsKt;->readBytes$default(Lio/ktor/utils/io/core/ByteReadPacket;IILjava/lang/Object;)[B

    move-result-object v0

    const/4 v1, 0x2

    move-object/from16 v3, p2

    invoke-static {v3, v0, v2, v1, v2}, Lorg/ton/crypto/AesCtr;->update$default(Lorg/ton/crypto/AesCtr;[B[BILjava/lang/Object;)[B

    move-result-object v0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    .line 190
    invoke-static {v1, v0, v2}, Lio/ktor/utils/io/ByteWriteChannelKt;->writeFully(Lio/ktor/utils/io/ByteWriteChannel;[BLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_1

    return-object v0

    :cond_1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :catchall_0
    move-exception v0

    .line 21
    invoke-virtual {v14}, Lio/ktor/utils/io/core/Output;->release()V

    .line 22
    throw v0

    .line 176
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid packet size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public close()V
    .locals 0

    return-void
.end method

.method public final execute(Lorg/ton/adnl/connection/AdnlRequestData;Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ton/adnl/connection/AdnlRequestData;",
            "Lkotlin/coroutines/CoroutineContext;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/ton/adnl/connection/AdnlResponseData;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lorg/ton/adnl/connection/AdnlConnection;->lastActivity:Lkotlinx/atomicfu/AtomicRef;

    sget-object v1, Lkotlinx/datetime/Clock$System;->INSTANCE:Lkotlinx/datetime/Clock$System;

    invoke-virtual {v1}, Lkotlinx/datetime/Clock$System;->now()Lkotlinx/datetime/Instant;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlinx/atomicfu/AtomicRef;->setValue(Ljava/lang/Object;)V

    .line 50
    invoke-direct {p0, p1, p2, p3}, Lorg/ton/adnl/connection/AdnlConnection;->makeDedicatedRequest(Lorg/ton/adnl/connection/AdnlRequestData;Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getCoroutineContext()Lkotlin/coroutines/CoroutineContext;
    .locals 1

    .line 25
    iget-object v0, p0, Lorg/ton/adnl/connection/AdnlConnection;->coroutineContext:Lkotlin/coroutines/CoroutineContext;

    return-object v0
.end method

.method public final getLiteServerDesc()Lorg/ton/api/liteserver/LiteServerDesc;
    .locals 1

    .line 23
    iget-object v0, p0, Lorg/ton/adnl/connection/AdnlConnection;->liteServerDesc:Lorg/ton/api/liteserver/LiteServerDesc;

    return-object v0
.end method

.method public final writeRequest$ton_kotlin_adnl(Lorg/ton/adnl/connection/AdnlRequestData;Lkotlin/coroutines/CoroutineContext;Lio/ktor/utils/io/ByteWriteChannel;Lorg/ton/crypto/AesCtr;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ton/adnl/connection/AdnlRequestData;",
            "Lkotlin/coroutines/CoroutineContext;",
            "Lio/ktor/utils/io/ByteWriteChannel;",
            "Lorg/ton/crypto/AesCtr;",
            "Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlinx/coroutines/Job;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 118
    new-instance v8, Lorg/ton/adnl/connection/AdnlConnection$writeRequest$2;

    const/4 v7, 0x0

    move-object v0, v8

    move-object v1, p2

    move-object v2, p0

    move-object v3, p3

    move-object v4, p4

    move-object v5, p1

    move v6, p5

    invoke-direct/range {v0 .. v7}, Lorg/ton/adnl/connection/AdnlConnection$writeRequest$2;-><init>(Lkotlin/coroutines/CoroutineContext;Lorg/ton/adnl/connection/AdnlConnection;Lio/ktor/utils/io/ByteWriteChannel;Lorg/ton/crypto/AesCtr;Lorg/ton/adnl/connection/AdnlRequestData;ZLkotlin/coroutines/Continuation;)V

    invoke-static {p2, v8, p6}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
