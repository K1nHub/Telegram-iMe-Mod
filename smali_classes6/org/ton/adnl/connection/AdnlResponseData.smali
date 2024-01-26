.class public final Lorg/ton/adnl/connection/AdnlResponseData;
.super Ljava/lang/Object;
.source "AdnlRequestData.kt"


# instance fields
.field private final body:Lio/ktor/utils/io/core/ByteReadPacket;

.field private final callContext:Lkotlin/coroutines/CoroutineContext;


# direct methods
.method public constructor <init>(Lkotlinx/datetime/Instant;Lio/ktor/utils/io/core/ByteReadPacket;Lkotlin/coroutines/CoroutineContext;)V
    .locals 1

    const-string v0, "requestTime"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "body"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "callContext"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p2, p0, Lorg/ton/adnl/connection/AdnlResponseData;->body:Lio/ktor/utils/io/core/ByteReadPacket;

    .line 19
    iput-object p3, p0, Lorg/ton/adnl/connection/AdnlResponseData;->callContext:Lkotlin/coroutines/CoroutineContext;

    .line 21
    sget-object p1, Lkotlinx/datetime/Clock$System;->INSTANCE:Lkotlinx/datetime/Clock$System;

    invoke-virtual {p1}, Lkotlinx/datetime/Clock$System;->now()Lkotlinx/datetime/Instant;

    return-void
.end method


# virtual methods
.method public final getBody()Lio/ktor/utils/io/core/ByteReadPacket;
    .locals 1

    .line 18
    iget-object v0, p0, Lorg/ton/adnl/connection/AdnlResponseData;->body:Lio/ktor/utils/io/core/ByteReadPacket;

    return-object v0
.end method
