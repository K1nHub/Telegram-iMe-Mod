.class public interface abstract Lorg/ton/lite/api/LiteApiClient;
.super Ljava/lang/Object;
.source "LiteApiClient.kt"

# interfaces
.implements Lorg/ton/lite/api/LiteApi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ton/lite/api/LiteApiClient$DefaultImpls;
    }
.end annotation


# virtual methods
.method public abstract invoke(Lorg/ton/lite/api/liteserver/functions/LiteServerGetAccountState;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
.end method

.method public abstract sendQuery(Lorg/ton/tl/TlCodec;Lorg/ton/tl/TlCodec;Ljava/lang/Object;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
.end method

.method public abstract sendRawQuery(Lio/ktor/utils/io/core/ByteReadPacket;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
.end method
