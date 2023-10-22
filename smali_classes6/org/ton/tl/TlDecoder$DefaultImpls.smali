.class public final Lorg/ton/tl/TlDecoder$DefaultImpls;
.super Ljava/lang/Object;
.source "TlDecoder.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ton/tl/TlDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTlDecoder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TlDecoder.kt\norg/ton/tl/TlDecoder$DefaultImpls\n+ 2 ByteReadPacket.kt\nio/ktor/utils/io/core/ByteReadPacketKt\n+ 3 ByteReadPacketExtensions.kt\nio/ktor/utils/io/core/ByteReadPacketExtensionsKt\n*L\n1#1,14:1\n57#2,2:15\n57#2,2:18\n15#3:17\n15#3:20\n*S KotlinDebug\n*F\n+ 1 TlDecoder.kt\norg/ton/tl/TlDecoder$DefaultImpls\n*L\n6#1:15,2\n10#1:18,2\n6#1:17\n10#1:20\n*E\n"
.end annotation


# direct methods
.method public static decodeBoxed(Lorg/ton/tl/TlDecoder;Lio/ktor/utils/io/core/Input;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/ton/tl/TlDecoder<",
            "TT;>;",
            "Lio/ktor/utils/io/core/Input;",
            ")TT;"
        }
    .end annotation

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    new-instance v0, Lorg/ton/tl/TlReader;

    invoke-direct {v0, p1}, Lorg/ton/tl/TlReader;-><init>(Lio/ktor/utils/io/core/Input;)V

    invoke-interface {p0, v0}, Lorg/ton/tl/TlDecoder;->decodeBoxed(Lorg/ton/tl/TlReader;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static decodeBoxed(Lorg/ton/tl/TlDecoder;[B)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/ton/tl/TlDecoder<",
            "TT;>;[B)TT;"
        }
    .end annotation

    const-string v0, "byteArray"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    array-length v0, p1

    const/4 v1, 0x0

    .line 15
    invoke-static {p1, v1, v0}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    const-string v1, "wrap(array, offset, length)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lorg/ton/tl/TlDecoder$DefaultImpls$decodeBoxed$$inlined$ByteReadPacket$default$1;

    invoke-direct {v1, p1}, Lorg/ton/tl/TlDecoder$DefaultImpls$decodeBoxed$$inlined$ByteReadPacket$default$1;-><init>([B)V

    invoke-static {v0, v1}, Lio/ktor/utils/io/core/ByteReadPacketExtensionsKt;->ByteReadPacket(Ljava/nio/ByteBuffer;Lkotlin/jvm/functions/Function1;)Lio/ktor/utils/io/core/ByteReadPacket;

    move-result-object p1

    .line 10
    invoke-interface {p0, p1}, Lorg/ton/tl/TlDecoder;->decodeBoxed(Lio/ktor/utils/io/core/Input;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
