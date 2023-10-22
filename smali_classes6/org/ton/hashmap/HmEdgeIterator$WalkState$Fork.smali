.class public final Lorg/ton/hashmap/HmEdgeIterator$WalkState$Fork;
.super Lorg/ton/hashmap/HmEdgeIterator$WalkState;
.source "HmEdge.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ton/hashmap/HmEdgeIterator$WalkState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Fork"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/ton/hashmap/HmEdgeIterator$WalkState<",
        "TT;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHmEdge.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HmEdge.kt\norg/ton/hashmap/HmEdgeIterator$WalkState$Fork\n+ 2 CellBuilder.kt\norg/ton/cell/CellBuilderKt\n*L\n1#1,194:1\n147#2:195\n147#2:196\n*S KotlinDebug\n*F\n+ 1 HmEdge.kt\norg/ton/hashmap/HmEdgeIterator$WalkState$Fork\n*L\n120#1:195\n129#1:196\n*E\n"
.end annotation


# instance fields
.field private leftVisited:Z

.field private final node:Lorg/ton/hashmap/HmnFork;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ton/hashmap/HmnFork<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final prefix:Lorg/ton/bitstring/BitString;

.field private rightVisited:Z


# direct methods
.method public constructor <init>(Lorg/ton/bitstring/BitString;Lorg/ton/hashmap/HmnFork;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ton/bitstring/BitString;",
            "Lorg/ton/hashmap/HmnFork<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "prefix"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "node"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 110
    invoke-direct {p0, p2, v0}, Lorg/ton/hashmap/HmEdgeIterator$WalkState;-><init>(Lorg/ton/hashmap/HashMapNode;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 108
    iput-object p1, p0, Lorg/ton/hashmap/HmEdgeIterator$WalkState$Fork;->prefix:Lorg/ton/bitstring/BitString;

    .line 109
    iput-object p2, p0, Lorg/ton/hashmap/HmEdgeIterator$WalkState$Fork;->node:Lorg/ton/hashmap/HmnFork;

    return-void
.end method


# virtual methods
.method public getNode()Lorg/ton/hashmap/HmnFork;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/ton/hashmap/HmnFork<",
            "TT;>;"
        }
    .end annotation

    .line 109
    iget-object v0, p0, Lorg/ton/hashmap/HmEdgeIterator$WalkState$Fork;->node:Lorg/ton/hashmap/HmnFork;

    return-object v0
.end method

.method public step()Lkotlin/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Pair<",
            "Lorg/ton/bitstring/BitString;",
            "Lorg/ton/hashmap/HashMapNode<",
            "TT;>;>;"
        }
    .end annotation

    .line 115
    iget-boolean v0, p0, Lorg/ton/hashmap/HmEdgeIterator$WalkState$Fork;->leftVisited:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 116
    iget-boolean v0, p0, Lorg/ton/hashmap/HmEdgeIterator$WalkState$Fork;->rightVisited:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto/16 :goto_0

    .line 119
    :cond_0
    iput-boolean v1, p0, Lorg/ton/hashmap/HmEdgeIterator$WalkState$Fork;->rightVisited:Z

    .line 147
    sget-object v0, Lorg/ton/cell/CellBuilder;->Companion:Lorg/ton/cell/CellBuilder$Companion;

    invoke-virtual {v0}, Lorg/ton/cell/CellBuilder$Companion;->beginCell()Lorg/ton/cell/CellBuilder;

    move-result-object v0

    .line 121
    iget-object v2, p0, Lorg/ton/hashmap/HmEdgeIterator$WalkState$Fork;->prefix:Lorg/ton/bitstring/BitString;

    invoke-interface {v0, v2}, Lorg/ton/cell/CellBuilder;->storeBits(Lorg/ton/bitstring/BitString;)Lorg/ton/cell/CellBuilder;

    .line 122
    invoke-interface {v0, v1}, Lorg/ton/cell/CellBuilder;->storeBit(Z)Lorg/ton/cell/CellBuilder;

    .line 123
    invoke-virtual {p0}, Lorg/ton/hashmap/HmEdgeIterator$WalkState$Fork;->getNode()Lorg/ton/hashmap/HmnFork;

    move-result-object v1

    invoke-virtual {v1}, Lorg/ton/hashmap/HmnFork;->getRight()Lorg/ton/tlb/CellRef;

    move-result-object v1

    invoke-interface {v1}, Lorg/ton/tlb/CellRef;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/ton/hashmap/HmEdge;

    invoke-virtual {v1}, Lorg/ton/hashmap/HmEdge;->getLabel()Lorg/ton/hashmap/HmLabel;

    move-result-object v1

    invoke-interface {v1}, Lorg/ton/hashmap/HmLabel;->toBitString()Lorg/ton/bitstring/BitString;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/ton/cell/CellBuilder;->storeBits(Lorg/ton/bitstring/BitString;)Lorg/ton/cell/CellBuilder;

    .line 124
    invoke-interface {v0}, Lorg/ton/cell/CellBuilder;->getBits()Lorg/ton/bitstring/MutableBitString;

    move-result-object v0

    invoke-interface {v0}, Lorg/ton/bitstring/BitString;->toBitString()Lorg/ton/bitstring/BitString;

    move-result-object v0

    .line 125
    invoke-virtual {p0}, Lorg/ton/hashmap/HmEdgeIterator$WalkState$Fork;->getNode()Lorg/ton/hashmap/HmnFork;

    move-result-object v1

    invoke-virtual {v1}, Lorg/ton/hashmap/HmnFork;->getRight()Lorg/ton/tlb/CellRef;

    move-result-object v1

    invoke-interface {v1}, Lorg/ton/tlb/CellRef;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/ton/hashmap/HmEdge;

    invoke-virtual {v1}, Lorg/ton/hashmap/HmEdge;->getNode()Lorg/ton/hashmap/HashMapNode;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    goto :goto_0

    .line 128
    :cond_1
    iput-boolean v1, p0, Lorg/ton/hashmap/HmEdgeIterator$WalkState$Fork;->leftVisited:Z

    .line 147
    sget-object v0, Lorg/ton/cell/CellBuilder;->Companion:Lorg/ton/cell/CellBuilder$Companion;

    invoke-virtual {v0}, Lorg/ton/cell/CellBuilder$Companion;->beginCell()Lorg/ton/cell/CellBuilder;

    move-result-object v0

    .line 130
    iget-object v1, p0, Lorg/ton/hashmap/HmEdgeIterator$WalkState$Fork;->prefix:Lorg/ton/bitstring/BitString;

    invoke-interface {v0, v1}, Lorg/ton/cell/CellBuilder;->storeBits(Lorg/ton/bitstring/BitString;)Lorg/ton/cell/CellBuilder;

    const/4 v1, 0x0

    .line 131
    invoke-interface {v0, v1}, Lorg/ton/cell/CellBuilder;->storeBit(Z)Lorg/ton/cell/CellBuilder;

    .line 132
    invoke-virtual {p0}, Lorg/ton/hashmap/HmEdgeIterator$WalkState$Fork;->getNode()Lorg/ton/hashmap/HmnFork;

    move-result-object v1

    invoke-virtual {v1}, Lorg/ton/hashmap/HmnFork;->getLeft()Lorg/ton/tlb/CellRef;

    move-result-object v1

    invoke-interface {v1}, Lorg/ton/tlb/CellRef;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/ton/hashmap/HmEdge;

    invoke-virtual {v1}, Lorg/ton/hashmap/HmEdge;->getLabel()Lorg/ton/hashmap/HmLabel;

    move-result-object v1

    invoke-interface {v1}, Lorg/ton/hashmap/HmLabel;->toBitString()Lorg/ton/bitstring/BitString;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/ton/cell/CellBuilder;->storeBits(Lorg/ton/bitstring/BitString;)Lorg/ton/cell/CellBuilder;

    .line 133
    invoke-interface {v0}, Lorg/ton/cell/CellBuilder;->getBits()Lorg/ton/bitstring/MutableBitString;

    move-result-object v0

    invoke-interface {v0}, Lorg/ton/bitstring/BitString;->toBitString()Lorg/ton/bitstring/BitString;

    move-result-object v0

    .line 134
    invoke-virtual {p0}, Lorg/ton/hashmap/HmEdgeIterator$WalkState$Fork;->getNode()Lorg/ton/hashmap/HmnFork;

    move-result-object v1

    invoke-virtual {v1}, Lorg/ton/hashmap/HmnFork;->getLeft()Lorg/ton/tlb/CellRef;

    move-result-object v1

    invoke-interface {v1}, Lorg/ton/tlb/CellRef;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/ton/hashmap/HmEdge;

    invoke-virtual {v1}, Lorg/ton/hashmap/HmEdge;->getNode()Lorg/ton/hashmap/HashMapNode;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    :goto_0
    return-object v0
.end method
