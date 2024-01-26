.class public abstract Lorg/ton/tl/TlConstructor;
.super Ljava/lang/Object;
.source "TlConstructor.kt"

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
    value = "SMAP\nTlConstructor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TlConstructor.kt\norg/ton/tl/TlConstructor\n+ 2 ByteOrderJvm.kt\nio/ktor/utils/io/bits/ByteOrderJVMKt\n*L\n1#1,48:1\n15#2:49\n15#2:50\n*S KotlinDebug\n*F\n+ 1 TlConstructor.kt\norg/ton/tl/TlConstructor\n*L\n29#1:49\n30#1:50\n*E\n"
.end annotation


# instance fields
.field private final id$delegate:Lkotlin/Lazy;

.field private final schema$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 2

    const-string v0, "schema"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lorg/ton/tl/TlConstructor$schema$2;

    invoke-direct {v1, p1}, Lorg/ton/tl/TlConstructor$schema$2;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lorg/ton/tl/TlConstructor;->schema$delegate:Lkotlin/Lazy;

    .line 17
    new-instance p1, Lorg/ton/tl/TlConstructor$id$2;

    invoke-direct {p1, p2, p0}, Lorg/ton/tl/TlConstructor$id$2;-><init>(Ljava/lang/Integer;Lorg/ton/tl/TlConstructor;)V

    invoke-static {v0, p1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lorg/ton/tl/TlConstructor;->id$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 7
    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/ton/tl/TlConstructor;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method


# virtual methods
.method public decodeBoxed(Lio/ktor/utils/io/core/Input;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/core/Input;",
            ")TT;"
        }
    .end annotation

    .line 7
    invoke-static {p0, p1}, Lorg/ton/tl/TlCodec$DefaultImpls;->decodeBoxed(Lorg/ton/tl/TlCodec;Lio/ktor/utils/io/core/Input;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public decodeBoxed(Lorg/ton/tl/TlReader;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ton/tl/TlReader;",
            ")TT;"
        }
    .end annotation

    const-string v0, "reader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-virtual {p1}, Lorg/ton/tl/TlReader;->readInt()I

    move-result v0

    .line 28
    invoke-virtual {p0}, Lorg/ton/tl/TlConstructor;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 33
    invoke-interface {p0, p1}, Lorg/ton/tl/TlDecoder;->decode(Lorg/ton/tl/TlReader;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 29
    :cond_1
    invoke-virtual {p0}, Lorg/ton/tl/TlConstructor;->getId()I

    move-result p1

    .line 15
    invoke-static {p1}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result p1

    .line 29
    invoke-static {p1}, Lkotlin/UInt;->constructor-impl(I)I

    move-result p1

    const/16 v1, 0x10

    invoke-static {p1, v1}, Lkotlin/text/UStringsKt;->toString-V7xB4Y4(II)Ljava/lang/String;

    move-result-object p1

    const/16 v2, 0x8

    const/16 v3, 0x30

    invoke-static {p1, v2, v3}, Lkotlin/text/StringsKt;->padStart(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p1

    .line 15
    invoke-static {v0}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v4

    .line 30
    invoke-static {v4}, Lkotlin/UInt;->constructor-impl(I)I

    move-result v4

    invoke-static {v4, v1}, Lkotlin/text/UStringsKt;->toString-V7xB4Y4(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2, v3}, Lkotlin/text/StringsKt;->padStart(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v1

    .line 31
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid ID. expected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ("

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/ton/tl/TlConstructor;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") actual: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0x29

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public decodeBoxed([B)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)TT;"
        }
    .end annotation

    .line 7
    invoke-static {p0, p1}, Lorg/ton/tl/TlCodec$DefaultImpls;->decodeBoxed(Lorg/ton/tl/TlCodec;[B)Ljava/lang/Object;

    move-result-object p1

    return-object p1
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

    .line 7
    invoke-static {p0, p1, p2}, Lorg/ton/tl/TlCodec$DefaultImpls;->encode(Lorg/ton/tl/TlCodec;Lio/ktor/utils/io/core/Output;Ljava/lang/Object;)V

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

    .line 7
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
    invoke-virtual {p0}, Lorg/ton/tl/TlConstructor;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/ton/tl/TlWriter;->writeInt(I)V

    .line 23
    invoke-interface {p0, p1, p2}, Lorg/ton/tl/TlEncoder;->encode(Lorg/ton/tl/TlWriter;Ljava/lang/Object;)V

    return-void
.end method

.method public encodeToByteArray(Ljava/lang/Object;Z)[B
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)[B"
        }
    .end annotation

    .line 7
    invoke-static {p0, p1, p2}, Lorg/ton/tl/TlCodec$DefaultImpls;->encodeToByteArray(Lorg/ton/tl/TlCodec;Ljava/lang/Object;Z)[B

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 40
    :cond_0
    instance-of v1, p1, Lorg/ton/tl/TlConstructor;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 41
    :cond_1
    invoke-virtual {p0}, Lorg/ton/tl/TlConstructor;->getId()I

    move-result v1

    check-cast p1, Lorg/ton/tl/TlConstructor;

    invoke-virtual {p1}, Lorg/ton/tl/TlConstructor;->getId()I

    move-result v3

    if-eq v1, v3, :cond_2

    return v2

    .line 42
    :cond_2
    invoke-virtual {p0}, Lorg/ton/tl/TlConstructor;->getSchema()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/ton/tl/TlConstructor;->getSchema()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getId()I
    .locals 1

    .line 17
    iget-object v0, p0, Lorg/ton/tl/TlConstructor;->id$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public final getSchema()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lorg/ton/tl/TlConstructor;->schema$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public hash(Ljava/lang/Object;)[B
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)[B"
        }
    .end annotation

    .line 7
    invoke-static {p0, p1}, Lorg/ton/tl/TlCodec$DefaultImpls;->hash(Lorg/ton/tl/TlCodec;Ljava/lang/Object;)[B

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .locals 1

    .line 46
    invoke-virtual {p0}, Lorg/ton/tl/TlConstructor;->getId()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lorg/ton/tl/TlConstructor;->getSchema()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
