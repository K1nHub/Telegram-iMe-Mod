.class final Lorg/ton/hashmap/AhmeEdgeImpl;
.super Ljava/lang/Object;
.source "HashmapAug.kt"

# interfaces
.implements Lorg/ton/hashmap/HashmapAug$AhmEdge;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<X:",
        "Ljava/lang/Object;",
        "Y:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/ton/hashmap/HashmapAug$AhmEdge<",
        "TX;TY;>;"
    }
.end annotation


# instance fields
.field private final label:Lorg/ton/hashmap/HmLabel;

.field private final n:I

.field private final node:Lorg/ton/hashmap/HashmapAugNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ton/hashmap/HashmapAugNode<",
            "TX;TY;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILorg/ton/hashmap/HmLabel;Lorg/ton/hashmap/HashmapAugNode;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/ton/hashmap/HmLabel;",
            "Lorg/ton/hashmap/HashmapAugNode<",
            "TX;TY;>;)V"
        }
    .end annotation

    const-string v0, "label"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "node"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput p1, p0, Lorg/ton/hashmap/AhmeEdgeImpl;->n:I

    .line 59
    iput-object p2, p0, Lorg/ton/hashmap/AhmeEdgeImpl;->label:Lorg/ton/hashmap/HmLabel;

    .line 60
    iput-object p3, p0, Lorg/ton/hashmap/AhmeEdgeImpl;->node:Lorg/ton/hashmap/HashmapAugNode;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/ton/hashmap/AhmeEdgeImpl;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/ton/hashmap/AhmeEdgeImpl;

    iget v1, p0, Lorg/ton/hashmap/AhmeEdgeImpl;->n:I

    iget v3, p1, Lorg/ton/hashmap/AhmeEdgeImpl;->n:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lorg/ton/hashmap/AhmeEdgeImpl;->label:Lorg/ton/hashmap/HmLabel;

    iget-object v3, p1, Lorg/ton/hashmap/AhmeEdgeImpl;->label:Lorg/ton/hashmap/HmLabel;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lorg/ton/hashmap/AhmeEdgeImpl;->node:Lorg/ton/hashmap/HashmapAugNode;

    iget-object p1, p1, Lorg/ton/hashmap/AhmeEdgeImpl;->node:Lorg/ton/hashmap/HashmapAugNode;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public get(Lorg/ton/bitstring/BitString;)Lorg/ton/hashmap/HashmapAugNode$AhmnLeaf;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ton/bitstring/BitString;",
            ")",
            "Lorg/ton/hashmap/HashmapAugNode$AhmnLeaf<",
            "TX;TY;>;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    .line 66
    :cond_0
    :goto_0
    invoke-interface {v0}, Lorg/ton/hashmap/HashmapAug$AhmEdge;->getLabel()Lorg/ton/hashmap/HmLabel;

    move-result-object v1

    invoke-interface {v1}, Lorg/ton/hashmap/HmLabel;->toBitString()Lorg/ton/bitstring/BitString;

    move-result-object v1

    .line 67
    invoke-interface {v1}, Lorg/ton/bitstring/BitString;->toBitString()Lorg/ton/bitstring/BitString;

    move-result-object v2

    invoke-interface {p1, v2}, Lorg/ton/bitstring/BitString;->commonPrefixWith(Lorg/ton/bitstring/BitString;)Lorg/ton/bitstring/BitString;

    move-result-object v2

    .line 68
    invoke-interface {v0}, Lorg/ton/hashmap/HashmapAug$AhmEdge;->getNode()Lorg/ton/hashmap/HashmapAugNode;

    move-result-object v3

    .line 69
    instance-of v4, v3, Lorg/ton/hashmap/HashmapAugNode$AhmnLeaf;

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    .line 70
    invoke-interface {v2}, Lorg/ton/bitstring/BitString;->getSize()I

    move-result p1

    invoke-interface {v1}, Lorg/ton/bitstring/BitString;->getSize()I

    move-result v0

    if-eq p1, v0, :cond_1

    return-object v5

    .line 73
    :cond_1
    check-cast v3, Lorg/ton/hashmap/HashmapAugNode$AhmnLeaf;

    return-object v3

    .line 76
    :cond_2
    instance-of v1, v3, Lorg/ton/hashmap/HashmapAugNode$AhmnFork;

    if-eqz v1, :cond_0

    .line 77
    invoke-interface {v2}, Lorg/ton/bitstring/BitString;->getSize()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/ton/bitstring/BitString;->get(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 78
    check-cast v3, Lorg/ton/hashmap/HashmapAugNode$AhmnFork;

    invoke-interface {v3}, Lorg/ton/hashmap/HashmapAugNode$AhmnFork;->loadRight()Lorg/ton/hashmap/HashmapAug;

    move-result-object v0

    goto :goto_1

    .line 80
    :cond_3
    check-cast v3, Lorg/ton/hashmap/HashmapAugNode$AhmnFork;

    invoke-interface {v3}, Lorg/ton/hashmap/HashmapAugNode$AhmnFork;->loadLeft()Lorg/ton/hashmap/HashmapAug;

    move-result-object v0

    :goto_1
    const-string v1, "null cannot be cast to non-null type org.ton.hashmap.HashmapAug.AhmEdge<X of org.ton.hashmap.AhmeEdgeImpl, Y of org.ton.hashmap.AhmeEdgeImpl>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lorg/ton/hashmap/HashmapAug$AhmEdge;

    .line 82
    invoke-interface {v2}, Lorg/ton/bitstring/BitString;->getSize()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {p1, v1, v2, v3, v5}, Lorg/ton/bitstring/BitString$DefaultImpls;->slice$default(Lorg/ton/bitstring/BitString;IIILjava/lang/Object;)Lorg/ton/bitstring/BitString;

    move-result-object p1

    goto :goto_0
.end method

.method public getLabel()Lorg/ton/hashmap/HmLabel;
    .locals 1

    .line 59
    iget-object v0, p0, Lorg/ton/hashmap/AhmeEdgeImpl;->label:Lorg/ton/hashmap/HmLabel;

    return-object v0
.end method

.method public getN()I
    .locals 1

    .line 58
    iget v0, p0, Lorg/ton/hashmap/AhmeEdgeImpl;->n:I

    return v0
.end method

.method public getNode()Lorg/ton/hashmap/HashmapAugNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/ton/hashmap/HashmapAugNode<",
            "TX;TY;>;"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lorg/ton/hashmap/AhmeEdgeImpl;->node:Lorg/ton/hashmap/HashmapAugNode;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lorg/ton/hashmap/AhmeEdgeImpl;->n:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/ton/hashmap/AhmeEdgeImpl;->label:Lorg/ton/hashmap/HmLabel;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/ton/hashmap/AhmeEdgeImpl;->node:Lorg/ton/hashmap/HashmapAugNode;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lkotlin/Pair<",
            "Lorg/ton/bitstring/BitString;",
            "Lorg/ton/hashmap/HashmapAugNode<",
            "TX;TY;>;>;>;"
        }
    .end annotation

    .line 89
    new-instance v0, Lorg/ton/hashmap/AhmnNodeIterator;

    invoke-direct {v0, p0}, Lorg/ton/hashmap/AhmnNodeIterator;-><init>(Lorg/ton/hashmap/HashmapAug$AhmEdge;)V

    return-object v0
.end method

.method public print(Lorg/ton/tlb/TlbPrettyPrinter;)Lorg/ton/tlb/TlbPrettyPrinter;
    .locals 0

    .line 57
    invoke-static {p0, p1}, Lorg/ton/hashmap/HashmapAug$AhmEdge$DefaultImpls;->print(Lorg/ton/hashmap/HashmapAug$AhmEdge;Lorg/ton/tlb/TlbPrettyPrinter;)Lorg/ton/tlb/TlbPrettyPrinter;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 91
    invoke-static {p0, v0, v1, v0}, Lorg/ton/tlb/TlbObject$DefaultImpls;->print$default(Lorg/ton/tlb/TlbObject;Lorg/ton/tlb/TlbPrettyPrinter;ILjava/lang/Object;)Lorg/ton/tlb/TlbPrettyPrinter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/ton/tlb/TlbPrettyPrinter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
