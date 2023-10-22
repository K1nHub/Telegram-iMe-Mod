.class public final Lorg/ton/tl/TlCodec$DefaultImpls;
.super Ljava/lang/Object;
.source "TlCodec.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ton/tl/TlCodec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation


# direct methods
.method public static decodeBoxed(Lorg/ton/tl/TlCodec;Lio/ktor/utils/io/core/Input;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/ton/tl/TlCodec<",
            "TT;>;",
            "Lio/ktor/utils/io/core/Input;",
            ")TT;"
        }
    .end annotation

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-static {p0, p1}, Lorg/ton/tl/TlDecoder$DefaultImpls;->decodeBoxed(Lorg/ton/tl/TlDecoder;Lio/ktor/utils/io/core/Input;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static decodeBoxed(Lorg/ton/tl/TlCodec;[B)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/ton/tl/TlCodec<",
            "TT;>;[B)TT;"
        }
    .end annotation

    const-string v0, "byteArray"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-static {p0, p1}, Lorg/ton/tl/TlDecoder$DefaultImpls;->decodeBoxed(Lorg/ton/tl/TlDecoder;[B)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static encode(Lorg/ton/tl/TlCodec;Lio/ktor/utils/io/core/Output;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/ton/tl/TlCodec<",
            "TT;>;",
            "Lio/ktor/utils/io/core/Output;",
            "TT;)V"
        }
    .end annotation

    const-string v0, "output"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-static {p0, p1, p2}, Lorg/ton/tl/TlEncoder$DefaultImpls;->encode(Lorg/ton/tl/TlEncoder;Lio/ktor/utils/io/core/Output;Ljava/lang/Object;)V

    return-void
.end method

.method public static encodeBoxed(Lorg/ton/tl/TlCodec;Lio/ktor/utils/io/core/Output;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/ton/tl/TlCodec<",
            "TT;>;",
            "Lio/ktor/utils/io/core/Output;",
            "TT;)V"
        }
    .end annotation

    const-string v0, "output"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-static {p0, p1, p2}, Lorg/ton/tl/TlEncoder$DefaultImpls;->encodeBoxed(Lorg/ton/tl/TlEncoder;Lio/ktor/utils/io/core/Output;Ljava/lang/Object;)V

    return-void
.end method

.method public static encodeToByteArray(Lorg/ton/tl/TlCodec;Ljava/lang/Object;Z)[B
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/ton/tl/TlCodec<",
            "TT;>;TT;Z)[B"
        }
    .end annotation

    .line 3
    invoke-static {p0, p1, p2}, Lorg/ton/tl/TlEncoder$DefaultImpls;->encodeToByteArray(Lorg/ton/tl/TlEncoder;Ljava/lang/Object;Z)[B

    move-result-object p0

    return-object p0
.end method

.method public static hash(Lorg/ton/tl/TlCodec;Ljava/lang/Object;)[B
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/ton/tl/TlCodec<",
            "TT;>;TT;)[B"
        }
    .end annotation

    .line 3
    invoke-static {p0, p1}, Lorg/ton/tl/TlEncoder$DefaultImpls;->hash(Lorg/ton/tl/TlEncoder;Ljava/lang/Object;)[B

    move-result-object p0

    return-object p0
.end method
