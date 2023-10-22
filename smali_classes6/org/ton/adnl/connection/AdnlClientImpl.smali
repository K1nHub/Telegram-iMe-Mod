.class public final Lorg/ton/adnl/connection/AdnlClientImpl;
.super Ljava/lang/Object;
.source "AdnlClientImpl.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ton/adnl/connection/AdnlClientImpl$Companion;
    }
.end annotation


# static fields
.field private static final connectionPool:Lorg/ton/adnl/connection/AdnlConnectionPool;


# instance fields
.field private final liteServerDesc:Lorg/ton/api/liteserver/LiteServerDesc;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/ton/adnl/connection/AdnlClientImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/ton/adnl/connection/AdnlClientImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 110
    new-instance v0, Lorg/ton/adnl/connection/AdnlConnectionPool;

    invoke-direct {v0}, Lorg/ton/adnl/connection/AdnlConnectionPool;-><init>()V

    sput-object v0, Lorg/ton/adnl/connection/AdnlClientImpl;->connectionPool:Lorg/ton/adnl/connection/AdnlConnectionPool;

    return-void
.end method

.method public constructor <init>(Lorg/ton/api/liteserver/LiteServerDesc;)V
    .locals 1

    const-string v0, "liteServerDesc"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lorg/ton/adnl/connection/AdnlClientImpl;->liteServerDesc:Lorg/ton/api/liteserver/LiteServerDesc;

    return-void
.end method


# virtual methods
.method public sendQuery-8Mi8wO0(Lio/ktor/utils/io/core/ByteReadPacket;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/core/ByteReadPacket;",
            "J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/utils/io/core/ByteReadPacket;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p4, Lorg/ton/adnl/connection/AdnlClientImpl$sendQuery$1;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lorg/ton/adnl/connection/AdnlClientImpl$sendQuery$1;

    iget v1, v0, Lorg/ton/adnl/connection/AdnlClientImpl$sendQuery$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lorg/ton/adnl/connection/AdnlClientImpl$sendQuery$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/ton/adnl/connection/AdnlClientImpl$sendQuery$1;

    invoke-direct {v0, p0, p4}, Lorg/ton/adnl/connection/AdnlClientImpl$sendQuery$1;-><init>(Lorg/ton/adnl/connection/AdnlClientImpl;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p4, v0, Lorg/ton/adnl/connection/AdnlClientImpl$sendQuery$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 16
    iget v2, v0, Lorg/ton/adnl/connection/AdnlClientImpl$sendQuery$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    :try_start_0
    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 17
    sget-object p4, Lorg/ton/adnl/connection/AdnlClientImpl;->connectionPool:Lorg/ton/adnl/connection/AdnlConnectionPool;

    iget-object v2, p0, Lorg/ton/adnl/connection/AdnlClientImpl;->liteServerDesc:Lorg/ton/api/liteserver/LiteServerDesc;

    invoke-virtual {p4, v2}, Lorg/ton/adnl/connection/AdnlConnectionPool;->selectConnection(Lorg/ton/api/liteserver/LiteServerDesc;)Lorg/ton/adnl/connection/AdnlConnection;

    move-result-object v5

    .line 18
    sget-object p4, Lorg/ton/tl/ByteString;->Companion:Lorg/ton/tl/ByteString$Companion;

    sget-object v2, Lkotlin/random/Random;->Default:Lkotlin/random/Random$Default;

    const/16 v4, 0x20

    invoke-virtual {v2, v4}, Lkotlin/random/Random$Default;->nextBytes(I)[B

    move-result-object v2

    array-length v4, v2

    invoke-static {v2, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    invoke-virtual {p4, v2}, Lorg/ton/tl/ByteString$Companion;->of([B)Lorg/ton/tl/ByteString;

    move-result-object v7

    const/4 p4, 0x0

    .line 19
    invoke-static {p4, v3, p4}, Lkotlinx/coroutines/SupervisorKt;->SupervisorJob$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object v6

    const/4 v2, 0x0

    .line 20
    invoke-static {p1, v2, v3, p4}, Lio/ktor/utils/io/core/StringsKt;->readBytes$default(Lio/ktor/utils/io/core/ByteReadPacket;IILjava/lang/Object;)[B

    move-result-object v8

    .line 22
    :try_start_1
    new-instance p1, Lorg/ton/adnl/connection/AdnlClientImpl$sendQuery$2;

    const/4 v9, 0x0

    move-object v4, p1

    invoke-direct/range {v4 .. v9}, Lorg/ton/adnl/connection/AdnlClientImpl$sendQuery$2;-><init>(Lorg/ton/adnl/connection/AdnlConnection;Lkotlinx/coroutines/CompletableJob;Lorg/ton/tl/ByteString;[BLkotlin/coroutines/Continuation;)V

    iput v3, v0, Lorg/ton/adnl/connection/AdnlClientImpl$sendQuery$1;->label:I

    invoke-static {p2, p3, p1, v0}, Lkotlinx/coroutines/TimeoutKt;->withTimeout-KLykuaI(JLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne p4, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    return-object p4

    .line 40
    :goto_2
    throw p1
.end method
