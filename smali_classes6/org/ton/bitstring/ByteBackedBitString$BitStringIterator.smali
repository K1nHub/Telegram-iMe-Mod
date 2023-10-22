.class public Lorg/ton/bitstring/ByteBackedBitString$BitStringIterator;
.super Ljava/lang/Object;
.source "ByteBackedBitString.kt"

# interfaces
.implements Ljava/util/ListIterator;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;
.implements Lj$/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ton/bitstring/ByteBackedBitString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BitStringIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/ListIterator<",
        "Ljava/lang/Boolean;",
        ">;",
        "Lkotlin/jvm/internal/markers/KMappedMarker;",
        "Lj$/util/Iterator;"
    }
.end annotation


# instance fields
.field private final bitString:Lorg/ton/bitstring/BitString;

.field private index:I


# direct methods
.method public constructor <init>(Lorg/ton/bitstring/BitString;I)V
    .locals 1

    const-string v0, "bitString"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    iput-object p1, p0, Lorg/ton/bitstring/ByteBackedBitString$BitStringIterator;->bitString:Lorg/ton/bitstring/BitString;

    .line 123
    iput p2, p0, Lorg/ton/bitstring/ByteBackedBitString$BitStringIterator;->index:I

    return-void
.end method

.method public synthetic constructor <init>(Lorg/ton/bitstring/BitString;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 121
    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/ton/bitstring/ByteBackedBitString$BitStringIterator;-><init>(Lorg/ton/bitstring/BitString;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic add(Ljava/lang/Object;)V
    .locals 1

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Operation is not supported for read-only collection"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic forEachRemaining(Lj$/util/function/Consumer;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/Iterator$-CC;->$default$forEachRemaining(Ljava/util/Iterator;Lj$/util/function/Consumer;)V

    return-void
.end method

.method public hasNext()Z
    .locals 2

    .line 125
    iget v0, p0, Lorg/ton/bitstring/ByteBackedBitString$BitStringIterator;->index:I

    iget-object v1, p0, Lorg/ton/bitstring/ByteBackedBitString$BitStringIterator;->bitString:Lorg/ton/bitstring/BitString;

    invoke-interface {v1}, Lorg/ton/bitstring/BitString;->getSize()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasPrevious()Z
    .locals 2

    .line 126
    iget v0, p0, Lorg/ton/bitstring/ByteBackedBitString$BitStringIterator;->index:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public next()Ljava/lang/Boolean;
    .locals 3

    .line 127
    iget-object v0, p0, Lorg/ton/bitstring/ByteBackedBitString$BitStringIterator;->bitString:Lorg/ton/bitstring/BitString;

    iget v1, p0, Lorg/ton/bitstring/ByteBackedBitString$BitStringIterator;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/ton/bitstring/ByteBackedBitString$BitStringIterator;->index:I

    invoke-interface {v0, v1}, Lorg/ton/bitstring/BitString;->get(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 121
    invoke-virtual {p0}, Lorg/ton/bitstring/ByteBackedBitString$BitStringIterator;->next()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public nextIndex()I
    .locals 1

    .line 128
    iget v0, p0, Lorg/ton/bitstring/ByteBackedBitString$BitStringIterator;->index:I

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public previous()Ljava/lang/Boolean;
    .locals 3

    .line 129
    iget-object v0, p0, Lorg/ton/bitstring/ByteBackedBitString$BitStringIterator;->bitString:Lorg/ton/bitstring/BitString;

    iget v1, p0, Lorg/ton/bitstring/ByteBackedBitString$BitStringIterator;->index:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lorg/ton/bitstring/ByteBackedBitString$BitStringIterator;->index:I

    invoke-interface {v0, v1}, Lorg/ton/bitstring/BitString;->get(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic previous()Ljava/lang/Object;
    .locals 1

    .line 121
    invoke-virtual {p0}, Lorg/ton/bitstring/ByteBackedBitString$BitStringIterator;->previous()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public previousIndex()I
    .locals 1

    .line 130
    iget v0, p0, Lorg/ton/bitstring/ByteBackedBitString$BitStringIterator;->index:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public remove()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation is not supported for read-only collection"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic set(Ljava/lang/Object;)V
    .locals 1

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Operation is not supported for read-only collection"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
