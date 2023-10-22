.class public final Lorg/ton/tl/TlEncoder$DefaultImpls;
.super Ljava/lang/Object;
.source "TlEncoder.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ton/tl/TlEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation


# direct methods
.method public static encode(Lorg/ton/tl/TlEncoder;Lio/ktor/utils/io/core/Output;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/ton/tl/TlEncoder<",
            "-TT;>;",
            "Lio/ktor/utils/io/core/Output;",
            "TT;)V"
        }
    .end annotation

    const-string v0, "output"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    new-instance v0, Lorg/ton/tl/TlWriter;

    invoke-direct {v0, p1}, Lorg/ton/tl/TlWriter;-><init>(Lio/ktor/utils/io/core/Output;)V

    invoke-interface {p0, v0, p2}, Lorg/ton/tl/TlEncoder;->encode(Lorg/ton/tl/TlWriter;Ljava/lang/Object;)V

    return-void
.end method

.method public static encodeBoxed(Lorg/ton/tl/TlEncoder;Lio/ktor/utils/io/core/Output;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/ton/tl/TlEncoder<",
            "-TT;>;",
            "Lio/ktor/utils/io/core/Output;",
            "TT;)V"
        }
    .end annotation

    const-string v0, "output"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    new-instance v0, Lorg/ton/tl/TlWriter;

    invoke-direct {v0, p1}, Lorg/ton/tl/TlWriter;-><init>(Lio/ktor/utils/io/core/Output;)V

    invoke-interface {p0, v0, p2}, Lorg/ton/tl/TlEncoder;->encodeBoxed(Lorg/ton/tl/TlWriter;Ljava/lang/Object;)V

    return-void
.end method

.method public static encodeToByteArray(Lorg/ton/tl/TlEncoder;Ljava/lang/Object;Z)[B
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/ton/tl/TlEncoder<",
            "-TT;>;TT;Z)[B"
        }
    .end annotation

    .line 13
    new-instance v0, Lio/ktor/utils/io/core/BytePacketBuilder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Lio/ktor/utils/io/core/BytePacketBuilder;-><init>(Lio/ktor/utils/io/pool/ObjectPool;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    if-eqz p2, :cond_0

    .line 14
    invoke-interface {p0, v0, p1}, Lorg/ton/tl/TlEncoder;->encodeBoxed(Lio/ktor/utils/io/core/Output;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-interface {p0, v0, p1}, Lorg/ton/tl/TlEncoder;->encode(Lio/ktor/utils/io/core/Output;Ljava/lang/Object;)V

    .line 15
    :goto_0
    invoke-virtual {v0}, Lio/ktor/utils/io/core/BytePacketBuilder;->build()Lio/ktor/utils/io/core/ByteReadPacket;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1, v2, v1}, Lio/ktor/utils/io/core/StringsKt;->readBytes$default(Lio/ktor/utils/io/core/ByteReadPacket;IILjava/lang/Object;)[B

    move-result-object p0

    return-object p0
.end method

.method public static synthetic encodeToByteArray$default(Lorg/ton/tl/TlEncoder;Ljava/lang/Object;ZILjava/lang/Object;)[B
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    .line 12
    :cond_0
    invoke-interface {p0, p1, p2}, Lorg/ton/tl/TlEncoder;->encodeToByteArray(Ljava/lang/Object;Z)[B

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: encodeToByteArray"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static hash(Lorg/ton/tl/TlEncoder;Ljava/lang/Object;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/ton/tl/TlEncoder<",
            "-TT;>;TT;)[B"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 19
    invoke-static {p0, p1, v0, v1, v2}, Lorg/ton/tl/TlEncoder$DefaultImpls;->encodeToByteArray$default(Lorg/ton/tl/TlEncoder;Ljava/lang/Object;ZILjava/lang/Object;)[B

    move-result-object p0

    invoke-static {p0}, Lorg/ton/crypto/digest/DigestJvmKt;->sha256([B)[B

    move-result-object p0

    return-object p0
.end method
