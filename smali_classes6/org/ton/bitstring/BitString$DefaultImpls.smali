.class public final Lorg/ton/bitstring/BitString$DefaultImpls;
.super Ljava/lang/Object;
.source "BitString.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ton/bitstring/BitString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation


# direct methods
.method public static commonPrefixWith(Lorg/ton/bitstring/BitString;Lorg/ton/bitstring/BitString;)Lorg/ton/bitstring/BitString;
    .locals 4

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    sget-object v0, Lorg/ton/bitstring/BitString;->Companion:Lorg/ton/bitstring/BitString$Companion;

    invoke-interface {p0}, Lorg/ton/bitstring/BitString;->toBinary()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1}, Lorg/ton/bitstring/BitString;->toBinary()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p0, p1, v1, v2, v3}, Lkotlin/text/StringsKt;->commonPrefixWith$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/ton/bitstring/BitString$Companion;->binary(Ljava/lang/String;)Lorg/ton/bitstring/BitString;

    move-result-object p0

    return-object p0
.end method

.method public static compareTo(Lorg/ton/bitstring/BitString;Lorg/ton/bitstring/BitString;)I
    .locals 1

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    invoke-interface {p0}, Lorg/ton/bitstring/BitString;->toBinary()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1}, Lorg/ton/bitstring/BitString;->toBinary()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static slice(Lorg/ton/bitstring/BitString;II)Lorg/ton/bitstring/BitString;
    .locals 1

    .line 63
    sget-object v0, Lorg/ton/bitstring/BitString;->Companion:Lorg/ton/bitstring/BitString$Companion;

    invoke-interface {p0}, Lorg/ton/bitstring/BitString;->toBinary()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string p1, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lorg/ton/bitstring/BitString$Companion;->binary(Ljava/lang/String;)Lorg/ton/bitstring/BitString;

    move-result-object p0

    return-object p0
.end method

.method public static slice(Lorg/ton/bitstring/BitString;Lkotlin/ranges/IntRange;)Lorg/ton/bitstring/BitString;
    .locals 1

    const-string v0, "indices"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    invoke-virtual {p1}, Lkotlin/ranges/IntProgression;->getFirst()I

    move-result v0

    invoke-virtual {p1}, Lkotlin/ranges/IntProgression;->getLast()I

    move-result p1

    invoke-interface {p0, v0, p1}, Lorg/ton/bitstring/BitString;->slice(II)Lorg/ton/bitstring/BitString;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic slice$default(Lorg/ton/bitstring/BitString;IIILjava/lang/Object;)Lorg/ton/bitstring/BitString;
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 62
    invoke-interface {p0}, Lorg/ton/bitstring/BitString;->getSize()I

    move-result p2

    :cond_0
    invoke-interface {p0, p1, p2}, Lorg/ton/bitstring/BitString;->slice(II)Lorg/ton/bitstring/BitString;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: slice"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static toBinary(Lorg/ton/bitstring/BitString;)Ljava/lang/String;
    .locals 9

    .line 74
    sget-object v6, Lorg/ton/bitstring/BitString$toBinary$1;->INSTANCE:Lorg/ton/bitstring/BitString$toBinary$1;

    const-string v1, ""

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v7, 0x1e

    const/4 v8, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v8}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toBitString(Lorg/ton/bitstring/BitString;)Lorg/ton/bitstring/BitString;
    .locals 0

    return-object p0
.end method

.method public static synthetic toByteArray$default(Lorg/ton/bitstring/BitString;ZILjava/lang/Object;)[B
    .locals 0

    if-nez p3, :cond_1

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 44
    :cond_0
    invoke-interface {p0, p1}, Lorg/ton/bitstring/BitString;->toByteArray(Z)[B

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: toByteArray"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
