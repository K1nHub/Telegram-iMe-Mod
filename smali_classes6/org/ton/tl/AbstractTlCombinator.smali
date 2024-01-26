.class public abstract Lorg/ton/tl/AbstractTlCombinator;
.super Ljava/lang/Object;
.source "AbstractTlCombinator.kt"

# interfaces
.implements Lorg/ton/tl/TlCodec;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/ton/tl/TlCodec<",
        "TT;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAbstractTlCombinator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AbstractTlCombinator.kt\norg/ton/tl/AbstractTlCombinator\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,31:1\n1#2:32\n*E\n"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public decode(Lorg/ton/tl/TlReader;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ton/tl/TlReader;",
            ")TT;"
        }
    .end annotation

    const-string v0, "reader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0, p1}, Lorg/ton/tl/AbstractTlCombinator;->decodeBoxed(Lorg/ton/tl/TlReader;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public decodeBoxed(Lio/ktor/utils/io/core/Input;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/core/Input;",
            ")TT;"
        }
    .end annotation

    .line 5
    invoke-static {p0, p1}, Lorg/ton/tl/TlCodec$DefaultImpls;->decodeBoxed(Lorg/ton/tl/TlCodec;Lio/ktor/utils/io/core/Input;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public decodeBoxed(Lorg/ton/tl/TlReader;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ton/tl/TlReader;",
            ")TT;"
        }
    .end annotation

    const-string v0, "reader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-virtual {p1}, Lorg/ton/tl/TlReader;->readInt()I

    move-result v0

    .line 12
    invoke-virtual {p0, v0}, Lorg/ton/tl/AbstractTlCombinator;->findConstructorOrNull(I)Lorg/ton/tl/TlDecoder;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 14
    invoke-interface {v1, p1}, Lorg/ton/tl/TlDecoder;->decode(Lorg/ton/tl/TlReader;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 13
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown constructor ID: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public encode(Lio/ktor/utils/io/core/Output;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/core/Output;",
            "TT;)V"
        }
    .end annotation

    .line 5
    invoke-static {p0, p1, p2}, Lorg/ton/tl/TlCodec$DefaultImpls;->encode(Lorg/ton/tl/TlCodec;Lio/ktor/utils/io/core/Output;Ljava/lang/Object;)V

    return-void
.end method

.method public encode(Lorg/ton/tl/TlWriter;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ton/tl/TlWriter;",
            "TT;)V"
        }
    .end annotation

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-virtual {p0, p1, p2}, Lorg/ton/tl/AbstractTlCombinator;->encodeBoxed(Lorg/ton/tl/TlWriter;Ljava/lang/Object;)V

    return-void
.end method

.method public encodeBoxed(Lio/ktor/utils/io/core/Output;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/core/Output;",
            "TT;)V"
        }
    .end annotation

    .line 5
    invoke-static {p0, p1, p2}, Lorg/ton/tl/TlCodec$DefaultImpls;->encodeBoxed(Lorg/ton/tl/TlCodec;Lio/ktor/utils/io/core/Output;Ljava/lang/Object;)V

    return-void
.end method

.method public encodeBoxed(Lorg/ton/tl/TlWriter;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ton/tl/TlWriter;",
            "TT;)V"
        }
    .end annotation

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-virtual {p0, p2}, Lorg/ton/tl/AbstractTlCombinator;->findConstructorOrNull(Ljava/lang/Object;)Lorg/ton/tl/TlEncoder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 24
    invoke-interface {v0, p1, p2}, Lorg/ton/tl/TlEncoder;->encodeBoxed(Lorg/ton/tl/TlWriter;Ljava/lang/Object;)V

    return-void

    .line 23
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown constructor for type: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public encodeToByteArray(Ljava/lang/Object;Z)[B
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)[B"
        }
    .end annotation

    .line 5
    invoke-static {p0, p1, p2}, Lorg/ton/tl/TlCodec$DefaultImpls;->encodeToByteArray(Lorg/ton/tl/TlCodec;Ljava/lang/Object;Z)[B

    move-result-object p1

    return-object p1
.end method

.method public abstract findConstructorOrNull(I)Lorg/ton/tl/TlDecoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/ton/tl/TlDecoder<",
            "+TT;>;"
        }
    .end annotation
.end method

.method public abstract findConstructorOrNull(Ljava/lang/Object;)Lorg/ton/tl/TlEncoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lorg/ton/tl/TlEncoder<",
            "TT;>;"
        }
    .end annotation
.end method
