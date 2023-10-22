.class public Lorg/ton/bitstring/ByteBackedBitString;
.super Ljava/lang/Object;
.source "ByteBackedBitString.kt"

# interfaces
.implements Lorg/ton/bitstring/BitString;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ton/bitstring/ByteBackedBitString$BitStringIterator;,
        Lorg/ton/bitstring/ByteBackedBitString$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lorg/ton/bitstring/ByteBackedBitString$Companion;


# instance fields
.field private final bytes:[B

.field private final size:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/ton/bitstring/ByteBackedBitString$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/ton/bitstring/ByteBackedBitString$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/ton/bitstring/ByteBackedBitString;->Companion:Lorg/ton/bitstring/ByteBackedBitString$Companion;

    return-void
.end method

.method protected constructor <init>(I[B)V
    .locals 1

    const-string v0, "bytes"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput p1, p0, Lorg/ton/bitstring/ByteBackedBitString;->size:I

    .line 13
    iput-object p2, p0, Lorg/ton/bitstring/ByteBackedBitString;->bytes:[B

    return-void
.end method

.method private final appendTag([BI)[B
    .locals 4

    .line 134
    rem-int/lit8 v0, p2, 0x8

    const-string v1, "copyOf(this, newSize)"

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    .line 135
    array-length v3, p1

    if-nez v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_1

    goto :goto_1

    .line 140
    :cond_1
    div-int/lit8 p2, p2, 0x8

    add-int/2addr p2, v2

    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    invoke-static {p1}, Lkotlin/collections/ArraysKt;->getLastIndex([B)I

    move-result p2

    aget-byte p2, p1, p2

    const/4 v1, 0x7

    if-eq v0, v1, :cond_2

    rsub-int/lit8 v3, v0, 0x7

    shr-int/2addr p2, v3

    :cond_2
    or-int/2addr p2, v2

    if-eq v0, v1, :cond_3

    sub-int/2addr v1, v0

    shl-int/2addr p2, v1

    .line 149
    :cond_3
    invoke-static {p1}, Lkotlin/collections/ArraysKt;->getLastIndex([B)I

    move-result v0

    int-to-byte p2, p2

    aput-byte p2, p1, v0

    return-object p1

    .line 136
    :cond_4
    :goto_1
    div-int/lit8 p2, p2, 0x8

    add-int/2addr p2, v2

    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    invoke-static {p1}, Lkotlin/collections/ArraysKt;->getLastIndex([B)I

    move-result p2

    const/16 v0, -0x80

    aput-byte v0, p1, p2

    return-object p1
.end method

.method protected static final constructByteArray(I)[B
    .locals 1

    sget-object v0, Lorg/ton/bitstring/ByteBackedBitString;->Companion:Lorg/ton/bitstring/ByteBackedBitString$Companion;

    invoke-virtual {v0, p0}, Lorg/ton/bitstring/ByteBackedBitString$Companion;->constructByteArray(I)[B

    move-result-object p0

    return-object p0
.end method

.method protected static final constructByteArray([BI)[B
    .locals 1

    sget-object v0, Lorg/ton/bitstring/ByteBackedBitString;->Companion:Lorg/ton/bitstring/ByteBackedBitString$Companion;

    invoke-virtual {v0, p0, p1}, Lorg/ton/bitstring/ByteBackedBitString$Companion;->constructByteArray([BI)[B

    move-result-object p0

    return-object p0
.end method

.method protected static final expandByteArray([BI)[B
    .locals 1

    sget-object v0, Lorg/ton/bitstring/ByteBackedBitString;->Companion:Lorg/ton/bitstring/ByteBackedBitString$Companion;

    invoke-virtual {v0, p0, p1}, Lorg/ton/bitstring/ByteBackedBitString$Companion;->expandByteArray([BI)[B

    move-result-object p0

    return-object p0
.end method

.method protected static final get([BI)Z
    .locals 1

    sget-object v0, Lorg/ton/bitstring/ByteBackedBitString;->Companion:Lorg/ton/bitstring/ByteBackedBitString$Companion;

    invoke-virtual {v0, p0, p1}, Lorg/ton/bitstring/ByteBackedBitString$Companion;->get([BI)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public commonPrefixWith(Lorg/ton/bitstring/BitString;)Lorg/ton/bitstring/BitString;
    .locals 0

    .line 11
    invoke-static {p0, p1}, Lorg/ton/bitstring/BitString$DefaultImpls;->commonPrefixWith(Lorg/ton/bitstring/BitString;Lorg/ton/bitstring/BitString;)Lorg/ton/bitstring/BitString;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 11
    check-cast p1, Lorg/ton/bitstring/BitString;

    invoke-virtual {p0, p1}, Lorg/ton/bitstring/ByteBackedBitString;->compareTo(Lorg/ton/bitstring/BitString;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lorg/ton/bitstring/BitString;)I
    .locals 0

    .line 11
    invoke-static {p0, p1}, Lorg/ton/bitstring/BitString$DefaultImpls;->compareTo(Lorg/ton/bitstring/BitString;Lorg/ton/bitstring/BitString;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 105
    :cond_0
    instance-of v1, p1, Lorg/ton/bitstring/BitString;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 106
    :cond_1
    invoke-virtual {p0}, Lorg/ton/bitstring/ByteBackedBitString;->getSize()I

    move-result v1

    move-object v3, p1

    check-cast v3, Lorg/ton/bitstring/BitString;

    invoke-interface {v3}, Lorg/ton/bitstring/BitString;->getSize()I

    move-result v4

    if-eq v1, v4, :cond_2

    return v2

    .line 107
    :cond_2
    instance-of v1, p1, Lorg/ton/bitstring/ByteBackedBitString;

    if-eqz v1, :cond_3

    .line 108
    invoke-virtual {p0}, Lorg/ton/bitstring/ByteBackedBitString;->getBytes()[B

    move-result-object v1

    check-cast p1, Lorg/ton/bitstring/ByteBackedBitString;

    invoke-virtual {p1}, Lorg/ton/bitstring/ByteBackedBitString;->getBytes()[B

    move-result-object p1

    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    .line 110
    :cond_3
    invoke-virtual {p0}, Lorg/ton/bitstring/ByteBackedBitString;->toBooleanArray()[Z

    move-result-object p1

    invoke-interface {v3}, Lorg/ton/bitstring/BitString;->toBooleanArray()[Z

    move-result-object v1

    invoke-static {p1, v1}, Ljava/util/Arrays;->equals([Z[Z)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public get(I)Z
    .locals 0

    .line 15
    invoke-virtual {p0, p1}, Lorg/ton/bitstring/ByteBackedBitString;->getOrNull(I)Ljava/lang/Boolean;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_0
    new-instance p1, Lorg/ton/bitstring/exception/BitStringUnderflowException;

    invoke-direct {p1}, Lorg/ton/bitstring/exception/BitStringUnderflowException;-><init>()V

    throw p1
.end method

.method public getBytes()[B
    .locals 1

    .line 13
    iget-object v0, p0, Lorg/ton/bitstring/ByteBackedBitString;->bytes:[B

    return-object v0
.end method

.method public getOrNull(I)Ljava/lang/Boolean;
    .locals 2

    const/4 v0, 0x0

    if-ltz p1, :cond_0

    .line 18
    invoke-virtual {p0}, Lorg/ton/bitstring/ByteBackedBitString;->getSize()I

    move-result v1

    if-gt p1, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/ton/bitstring/ByteBackedBitString;->getBytes()[B

    move-result-object v0

    invoke-static {v0, p1}, Lorg/ton/bitstring/ByteBackedBitString;->get([BI)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getSize()I
    .locals 1

    .line 12
    iget v0, p0, Lorg/ton/bitstring/ByteBackedBitString;->size:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 116
    invoke-virtual {p0}, Lorg/ton/bitstring/ByteBackedBitString;->getSize()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 117
    invoke-virtual {p0}, Lorg/ton/bitstring/ByteBackedBitString;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 47
    new-instance v0, Lorg/ton/bitstring/ByteBackedBitString$BitStringIterator;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Lorg/ton/bitstring/ByteBackedBitString$BitStringIterator;-><init>(Lorg/ton/bitstring/BitString;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public slice(II)Lorg/ton/bitstring/BitString;
    .locals 0

    .line 11
    invoke-static {p0, p1, p2}, Lorg/ton/bitstring/BitString$DefaultImpls;->slice(Lorg/ton/bitstring/BitString;II)Lorg/ton/bitstring/BitString;

    move-result-object p1

    return-object p1
.end method

.method public slice(Lkotlin/ranges/IntRange;)Lorg/ton/bitstring/BitString;
    .locals 0

    .line 11
    invoke-static {p0, p1}, Lorg/ton/bitstring/BitString$DefaultImpls;->slice(Lorg/ton/bitstring/BitString;Lkotlin/ranges/IntRange;)Lorg/ton/bitstring/BitString;

    move-result-object p1

    return-object p1
.end method

.method public toBinary()Ljava/lang/String;
    .locals 1

    .line 11
    invoke-static {p0}, Lorg/ton/bitstring/BitString$DefaultImpls;->toBinary(Lorg/ton/bitstring/BitString;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toBitString()Lorg/ton/bitstring/BitString;
    .locals 4

    .line 45
    new-instance v0, Lorg/ton/bitstring/ByteBackedBitString;

    invoke-virtual {p0}, Lorg/ton/bitstring/ByteBackedBitString;->getSize()I

    move-result v1

    invoke-virtual {p0}, Lorg/ton/bitstring/ByteBackedBitString;->getBytes()[B

    move-result-object v2

    array-length v3, v2

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    const-string v3, "copyOf(this, size)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lorg/ton/bitstring/ByteBackedBitString;-><init>(I[B)V

    return-object v0
.end method

.method public toBooleanArray()[Z
    .locals 1

    .line 41
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toBooleanArray(Ljava/util/Collection;)[Z

    move-result-object v0

    return-object v0
.end method

.method public toByteArray(Z)[B
    .locals 1

    if-eqz p1, :cond_0

    .line 35
    invoke-virtual {p0}, Lorg/ton/bitstring/ByteBackedBitString;->getSize()I

    move-result p1

    rem-int/lit8 p1, p1, 0x8

    if-eqz p1, :cond_0

    .line 36
    invoke-virtual {p0}, Lorg/ton/bitstring/ByteBackedBitString;->getBytes()[B

    move-result-object p1

    invoke-virtual {p0}, Lorg/ton/bitstring/ByteBackedBitString;->getSize()I

    move-result v0

    invoke-static {p1, v0}, Lorg/ton/bitstring/ByteBackedBitStringKt;->access$appendAugmentTag([BI)[B

    move-result-object p1

    goto :goto_0

    .line 38
    :cond_0
    invoke-virtual {p0}, Lorg/ton/bitstring/ByteBackedBitString;->getBytes()[B

    move-result-object p1

    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    const-string v0, "copyOf(this, size)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p1
.end method

.method public toHex()Ljava/lang/String;
    .locals 6

    .line 84
    invoke-virtual {p0}, Lorg/ton/bitstring/ByteBackedBitString;->getSize()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 85
    :cond_0
    invoke-virtual {p0}, Lorg/ton/bitstring/ByteBackedBitString;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0}, Lorg/ton/bitstring/ByteBackedBitString;->getSize()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lorg/ton/bitstring/ByteBackedBitString;->appendTag([BI)[B

    move-result-object v0

    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Lorg/ton/crypto/HexKt;->hex([B)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0}, Lorg/ton/bitstring/ByteBackedBitString;->getSize()I

    move-result v0

    rem-int/lit8 v0, v0, 0x8

    const-string v2, "this.deleteCharAt(index)"

    if-nez v0, :cond_1

    .line 89
    invoke-static {v1}, Lkotlin/text/StringsKt;->getLastIndex(Ljava/lang/CharSequence;)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    invoke-static {v1}, Lkotlin/text/StringsKt;->getLastIndex(Ljava/lang/CharSequence;)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-gt v5, v0, :cond_2

    if-ge v0, v3, :cond_2

    move v4, v5

    :cond_2
    const/16 v5, 0x5f

    if-eqz v4, :cond_3

    .line 94
    invoke-static {v1}, Lkotlin/text/StringsKt;->getLastIndex(Ljava/lang/CharSequence;)I

    move-result v0

    invoke-virtual {v1, v0, v5}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    goto :goto_0

    :cond_3
    if-ne v0, v3, :cond_4

    .line 97
    invoke-static {v1}, Lkotlin/text/StringsKt;->getLastIndex(Ljava/lang/CharSequence;)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 98
    :cond_4
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 100
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "result.toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "this as java.lang.String).toUpperCase(Locale.ROOT)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "x{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/ton/bitstring/ByteBackedBitString;->toHex()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
