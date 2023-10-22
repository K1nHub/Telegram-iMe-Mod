.class public Lorg/ton/bitstring/ByteBackedMutableBitString;
.super Lorg/ton/bitstring/ByteBackedBitString;
.source "ByteBackedMutableBitString.kt"

# interfaces
.implements Lorg/ton/bitstring/MutableBitString;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ton/bitstring/ByteBackedMutableBitString$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nByteBackedMutableBitString.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ByteBackedMutableBitString.kt\norg/ton/bitstring/ByteBackedMutableBitString\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,161:1\n1864#2,3:162\n13654#3,3:165\n*S KotlinDebug\n*F\n+ 1 ByteBackedMutableBitString.kt\norg/ton/bitstring/ByteBackedMutableBitString\n*L\n33#1:162,3\n96#1:165,3\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lorg/ton/bitstring/ByteBackedMutableBitString$Companion;


# instance fields
.field private bytes:[B

.field private size:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/ton/bitstring/ByteBackedMutableBitString$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/ton/bitstring/ByteBackedMutableBitString$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/ton/bitstring/ByteBackedMutableBitString;->Companion:Lorg/ton/bitstring/ByteBackedMutableBitString$Companion;

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 1

    const-string v0, "bytes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0, p2, p1}, Lorg/ton/bitstring/ByteBackedBitString;-><init>(I[B)V

    .line 9
    iput-object p1, p0, Lorg/ton/bitstring/ByteBackedMutableBitString;->bytes:[B

    .line 10
    iput p2, p0, Lorg/ton/bitstring/ByteBackedMutableBitString;->size:I

    return-void
.end method

.method private final appendWithDoubleShifting([BI)V
    .locals 10

    .line 91
    invoke-virtual {p0}, Lorg/ton/bitstring/ByteBackedMutableBitString;->getSize()I

    move-result v0

    rem-int/lit8 v0, v0, 0x8

    .line 92
    invoke-virtual {p0}, Lorg/ton/bitstring/ByteBackedMutableBitString;->getBytes()[B

    move-result-object v1

    invoke-virtual {p0}, Lorg/ton/bitstring/ByteBackedMutableBitString;->getSize()I

    move-result v2

    div-int/lit8 v2, v2, 0x8

    array-length v3, p1

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    const-string v2, "copyOf(this, newSize)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    invoke-virtual {p0}, Lorg/ton/bitstring/ByteBackedMutableBitString;->getSize()I

    move-result v2

    div-int/lit8 v2, v2, 0x8

    .line 94
    aget-byte v3, v1, v2

    rsub-int/lit8 v4, v0, 0x8

    shr-int/2addr v3, v4

    .line 13655
    array-length v5, p1

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-ge v6, v5, :cond_0

    aget-byte v8, p1, v6

    add-int/lit8 v9, v7, 0x1

    shl-int/lit8 v3, v3, 0x8

    and-int/lit16 v8, v8, 0xff

    or-int/2addr v3, v8

    shr-int v8, v3, v0

    add-int/2addr v7, v2

    int-to-byte v8, v8

    .line 99
    aput-byte v8, v1, v7

    add-int/lit8 v6, v6, 0x1

    move v7, v9

    goto :goto_0

    .line 101
    :cond_0
    array-length p1, p1

    add-int/2addr v2, p1

    shl-int p1, v3, v4

    int-to-byte p1, p1

    .line 102
    aput-byte p1, v1, v2

    .line 104
    invoke-virtual {p0}, Lorg/ton/bitstring/ByteBackedMutableBitString;->getSize()I

    move-result p1

    add-int/2addr p1, p2

    .line 105
    rem-int/lit8 p2, p1, 0x8

    if-nez p2, :cond_1

    .line 107
    invoke-static {v1, p1}, Lorg/ton/bitstring/ByteBackedBitString;->expandByteArray([BI)[B

    move-result-object p2

    .line 108
    invoke-virtual {p0, p2}, Lorg/ton/bitstring/ByteBackedMutableBitString;->setBytes([B)V

    .line 109
    invoke-virtual {p0, p1}, Lorg/ton/bitstring/ByteBackedMutableBitString;->setSize(I)V

    goto :goto_1

    .line 111
    :cond_1
    invoke-static {v1, p1}, Lorg/ton/bitstring/ByteBackedBitString;->expandByteArray([BI)[B

    move-result-object v0

    .line 112
    invoke-static {v0}, Lkotlin/collections/ArraysKt;->getLastIndex([B)I

    move-result v1

    aget-byte v1, v0, v1

    rsub-int/lit8 p2, p2, 0x8

    shr-int/2addr v1, p2

    shl-int p2, v1, p2

    .line 115
    invoke-static {v0}, Lkotlin/collections/ArraysKt;->getLastIndex([B)I

    move-result v1

    int-to-byte p2, p2

    aput-byte p2, v0, v1

    .line 116
    invoke-virtual {p0, v0}, Lorg/ton/bitstring/ByteBackedMutableBitString;->setBytes([B)V

    .line 117
    invoke-virtual {p0, p1}, Lorg/ton/bitstring/ByteBackedMutableBitString;->setSize(I)V

    :goto_1
    return-void
.end method

.method private final appendWithShifting([BI)V
    .locals 10

    .line 72
    invoke-virtual {p0}, Lorg/ton/bitstring/ByteBackedMutableBitString;->getSize()I

    move-result v0

    rem-int/lit8 v0, v0, 0x8

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-string v3, "Failed requirement."

    if-eqz v0, :cond_3

    .line 73
    rem-int/lit8 v0, p2, 0x8

    if-eqz v0, :cond_1

    move v1, v2

    :cond_1
    if-eqz v1, :cond_2

    .line 76
    invoke-virtual {p0}, Lorg/ton/bitstring/ByteBackedMutableBitString;->getBytes()[B

    move-result-object v1

    invoke-virtual {p0}, Lorg/ton/bitstring/ByteBackedMutableBitString;->getSize()I

    move-result v2

    add-int/2addr v2, p2

    invoke-static {v1, v2}, Lorg/ton/bitstring/ByteBackedBitString;->expandByteArray([BI)[B

    move-result-object v1

    .line 79
    invoke-virtual {p0}, Lorg/ton/bitstring/ByteBackedMutableBitString;->getSize()I

    move-result v2

    div-int/lit8 v5, v2, 0x8

    const/4 v6, 0x0

    .line 80
    div-int/lit8 v2, p2, 0x8

    add-int/lit8 v7, v2, 0x1

    const/4 v8, 0x4

    const/4 v9, 0x0

    move-object v3, p1

    move-object v4, v1

    .line 77
    invoke-static/range {v3 .. v9}, Lkotlin/collections/ArraysKt;->copyInto$default([B[BIIIILjava/lang/Object;)[B

    .line 82
    aget-byte p1, p1, v2

    rsub-int/lit8 v0, v0, 0x8

    shr-int/2addr p1, v0

    shl-int/2addr p1, v0

    .line 85
    invoke-virtual {p0}, Lorg/ton/bitstring/ByteBackedMutableBitString;->getSize()I

    move-result v0

    add-int/2addr v0, p2

    div-int/lit8 v0, v0, 0x8

    int-to-byte p1, p1

    aput-byte p1, v1, v0

    .line 86
    invoke-virtual {p0, v1}, Lorg/ton/bitstring/ByteBackedMutableBitString;->setBytes([B)V

    .line 87
    invoke-virtual {p0}, Lorg/ton/bitstring/ByteBackedMutableBitString;->getSize()I

    move-result p1

    add-int/2addr p1, p2

    invoke-virtual {p0, p1}, Lorg/ton/bitstring/ByteBackedMutableBitString;->setSize(I)V

    return-void

    .line 74
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 72
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final appendWithoutShifting([BI)V
    .locals 9

    .line 58
    invoke-virtual {p0}, Lorg/ton/bitstring/ByteBackedMutableBitString;->getSize()I

    move-result v0

    rem-int/lit8 v0, v0, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const-string v3, "Failed requirement."

    if-eqz v0, :cond_3

    .line 59
    rem-int/lit8 v0, p2, 0x8

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    if-eqz v1, :cond_2

    .line 61
    invoke-virtual {p0}, Lorg/ton/bitstring/ByteBackedMutableBitString;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0}, Lorg/ton/bitstring/ByteBackedMutableBitString;->getSize()I

    move-result v1

    add-int/2addr v1, p2

    invoke-static {v0, v1}, Lorg/ton/bitstring/ByteBackedBitString;->expandByteArray([BI)[B

    move-result-object v0

    .line 64
    invoke-virtual {p0}, Lorg/ton/bitstring/ByteBackedMutableBitString;->getSize()I

    move-result v1

    div-int/lit8 v4, v1, 0x8

    const/4 v5, 0x0

    .line 65
    div-int/lit8 v6, p2, 0x8

    const/4 v7, 0x4

    const/4 v8, 0x0

    move-object v2, p1

    move-object v3, v0

    .line 62
    invoke-static/range {v2 .. v8}, Lkotlin/collections/ArraysKt;->copyInto$default([B[BIIIILjava/lang/Object;)[B

    .line 67
    invoke-virtual {p0, v0}, Lorg/ton/bitstring/ByteBackedMutableBitString;->setBytes([B)V

    .line 68
    invoke-virtual {p0}, Lorg/ton/bitstring/ByteBackedMutableBitString;->getSize()I

    move-result p1

    add-int/2addr p1, p2

    invoke-virtual {p0, p1}, Lorg/ton/bitstring/ByteBackedMutableBitString;->setSize(I)V

    return-void

    .line 59
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 58
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected static final set([BIZ)Z
    .locals 1

    sget-object v0, Lorg/ton/bitstring/ByteBackedMutableBitString;->Companion:Lorg/ton/bitstring/ByteBackedMutableBitString$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lorg/ton/bitstring/ByteBackedMutableBitString$Companion;->set([BIZ)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public getBytes()[B
    .locals 1

    .line 9
    iget-object v0, p0, Lorg/ton/bitstring/ByteBackedMutableBitString;->bytes:[B

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .line 10
    iget v0, p0, Lorg/ton/bitstring/ByteBackedMutableBitString;->size:I

    return v0
.end method

.method public plus(Ljava/lang/Iterable;)Lorg/ton/bitstring/ByteBackedMutableBitString;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lorg/ton/bitstring/ByteBackedMutableBitString;"
        }
    .end annotation

    const-string v0, "bits"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/ton/bitstring/ByteBackedMutableBitString;->plus(Ljava/util/Collection;)Lorg/ton/bitstring/ByteBackedMutableBitString;

    move-result-object p1

    return-object p1
.end method

.method public plus(Ljava/util/Collection;)Lorg/ton/bitstring/ByteBackedMutableBitString;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lorg/ton/bitstring/ByteBackedMutableBitString;"
        }
    .end annotation

    const-string v0, "bits"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    instance-of v0, p1, Lorg/ton/bitstring/ByteBackedBitString;

    if-eqz v0, :cond_0

    .line 28
    move-object v0, p1

    check-cast v0, Lorg/ton/bitstring/ByteBackedBitString;

    invoke-virtual {v0}, Lorg/ton/bitstring/ByteBackedBitString;->getBytes()[B

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lorg/ton/bitstring/ByteBackedMutableBitString;->plus([BI)Lorg/ton/bitstring/ByteBackedMutableBitString;

    goto :goto_1

    .line 30
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    .line 32
    invoke-virtual {p0}, Lorg/ton/bitstring/ByteBackedMutableBitString;->getBytes()[B

    move-result-object v1

    invoke-virtual {p0}, Lorg/ton/bitstring/ByteBackedMutableBitString;->getSize()I

    move-result v2

    add-int/2addr v2, v0

    invoke-static {v1, v2}, Lorg/ton/bitstring/ByteBackedBitString;->expandByteArray([BI)[B

    move-result-object v1

    const/4 v2, 0x0

    .line 1865
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    if-gez v2, :cond_1

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_1
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 34
    invoke-virtual {p0}, Lorg/ton/bitstring/ByteBackedMutableBitString;->getSize()I

    move-result v5

    add-int/2addr v5, v2

    invoke-static {v1, v5, v3}, Lorg/ton/bitstring/ByteBackedMutableBitString;->set([BIZ)Z

    move v2, v4

    goto :goto_0

    .line 36
    :cond_2
    invoke-virtual {p0, v1}, Lorg/ton/bitstring/ByteBackedMutableBitString;->setBytes([B)V

    .line 37
    invoke-virtual {p0}, Lorg/ton/bitstring/ByteBackedMutableBitString;->getSize()I

    move-result p1

    add-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lorg/ton/bitstring/ByteBackedMutableBitString;->setSize(I)V

    :goto_1
    return-object p0
.end method

.method public plus([B)Lorg/ton/bitstring/ByteBackedMutableBitString;
    .locals 1

    const-string v0, "bytes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    array-length v0, p1

    mul-int/lit8 v0, v0, 0x8

    invoke-virtual {p0, p1, v0}, Lorg/ton/bitstring/ByteBackedMutableBitString;->plus([BI)Lorg/ton/bitstring/ByteBackedMutableBitString;

    move-result-object p1

    return-object p1
.end method

.method public plus([BI)Lorg/ton/bitstring/ByteBackedMutableBitString;
    .locals 1

    const-string v0, "bytes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_2

    .line 45
    invoke-virtual {p0}, Lorg/ton/bitstring/ByteBackedMutableBitString;->getSize()I

    move-result v0

    rem-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_1

    .line 46
    rem-int/lit8 v0, p2, 0x8

    if-nez v0, :cond_0

    .line 47
    invoke-direct {p0, p1, p2}, Lorg/ton/bitstring/ByteBackedMutableBitString;->appendWithoutShifting([BI)V

    goto :goto_0

    .line 49
    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/ton/bitstring/ByteBackedMutableBitString;->appendWithShifting([BI)V

    goto :goto_0

    .line 52
    :cond_1
    invoke-direct {p0, p1, p2}, Lorg/ton/bitstring/ByteBackedMutableBitString;->appendWithDoubleShifting([BI)V

    :cond_2
    :goto_0
    return-object p0
.end method

.method public plus([Z)Lorg/ton/bitstring/ByteBackedMutableBitString;
    .locals 1

    const-string v0, "bits"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-static {p1}, Lkotlin/collections/ArraysKt;->asIterable([Z)Ljava/lang/Iterable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/ton/bitstring/ByteBackedMutableBitString;->plus(Ljava/lang/Iterable;)Lorg/ton/bitstring/ByteBackedMutableBitString;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic plus(Ljava/lang/Iterable;)Lorg/ton/bitstring/MutableBitString;
    .locals 0

    .line 8
    invoke-virtual {p0, p1}, Lorg/ton/bitstring/ByteBackedMutableBitString;->plus(Ljava/lang/Iterable;)Lorg/ton/bitstring/ByteBackedMutableBitString;

    move-result-object p1

    return-object p1
.end method

.method public plus(Z)Lorg/ton/bitstring/MutableBitString;
    .locals 0

    .line 41
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/ton/bitstring/ByteBackedMutableBitString;->plus(Ljava/util/Collection;)Lorg/ton/bitstring/ByteBackedMutableBitString;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic plus([B)Lorg/ton/bitstring/MutableBitString;
    .locals 0

    .line 8
    invoke-virtual {p0, p1}, Lorg/ton/bitstring/ByteBackedMutableBitString;->plus([B)Lorg/ton/bitstring/ByteBackedMutableBitString;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic plus([Z)Lorg/ton/bitstring/MutableBitString;
    .locals 0

    .line 8
    invoke-virtual {p0, p1}, Lorg/ton/bitstring/ByteBackedMutableBitString;->plus([Z)Lorg/ton/bitstring/ByteBackedMutableBitString;

    move-result-object p1

    return-object p1
.end method

.method public set(IZ)Z
    .locals 2

    .line 17
    invoke-virtual {p0}, Lorg/ton/bitstring/ByteBackedMutableBitString;->getBytes()[B

    move-result-object v0

    add-int/lit8 v1, p1, 0x1

    invoke-static {v0, v1}, Lorg/ton/bitstring/ByteBackedBitString;->expandByteArray([BI)[B

    move-result-object v0

    .line 18
    invoke-static {v0, p1, p2}, Lorg/ton/bitstring/ByteBackedMutableBitString;->set([BIZ)Z

    move-result p1

    .line 19
    invoke-virtual {p0, v0}, Lorg/ton/bitstring/ByteBackedMutableBitString;->setBytes([B)V

    return p1
.end method

.method public setBytes([B)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    iput-object p1, p0, Lorg/ton/bitstring/ByteBackedMutableBitString;->bytes:[B

    return-void
.end method

.method public setSize(I)V
    .locals 0

    .line 10
    iput p1, p0, Lorg/ton/bitstring/ByteBackedMutableBitString;->size:I

    return-void
.end method
