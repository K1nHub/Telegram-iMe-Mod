.class public final Lorg/ton/hashmap/AhmnNodeIterator$WalkState$Fork;
.super Lorg/ton/hashmap/AhmnNodeIterator$WalkState;
.source "HashmapAug.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ton/hashmap/AhmnNodeIterator$WalkState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Fork"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<X:",
        "Ljava/lang/Object;",
        "Y:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/ton/hashmap/AhmnNodeIterator$WalkState<",
        "TX;TY;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHashmapAug.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HashmapAug.kt\norg/ton/hashmap/AhmnNodeIterator$WalkState$Fork\n+ 2 CellBuilder.kt\norg/ton/cell/CellBuilderKt\n*L\n1#1,218:1\n147#2:219\n147#2:220\n*S KotlinDebug\n*F\n+ 1 HashmapAug.kt\norg/ton/hashmap/AhmnNodeIterator$WalkState$Fork\n*L\n149#1:219\n159#1:220\n*E\n"
.end annotation


# instance fields
.field private leftVisited:Z

.field private final node:Lorg/ton/hashmap/HashmapAugNode$AhmnFork;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ton/hashmap/HashmapAugNode$AhmnFork<",
            "TX;TY;>;"
        }
    .end annotation
.end field

.field private final prefix:Lorg/ton/bitstring/BitString;

.field private rightVisited:Z

.field private rootVisited:Z


# direct methods
.method public constructor <init>(Lorg/ton/bitstring/BitString;Lorg/ton/hashmap/HashmapAugNode$AhmnFork;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ton/bitstring/BitString;",
            "Lorg/ton/hashmap/HashmapAugNode$AhmnFork<",
            "TX;TY;>;)V"
        }
    .end annotation

    const-string v0, "prefix"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "node"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 135
    invoke-direct {p0, p2, v0}, Lorg/ton/hashmap/AhmnNodeIterator$WalkState;-><init>(Lorg/ton/hashmap/HashmapAugNode;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 133
    iput-object p1, p0, Lorg/ton/hashmap/AhmnNodeIterator$WalkState$Fork;->prefix:Lorg/ton/bitstring/BitString;

    .line 134
    iput-object p2, p0, Lorg/ton/hashmap/AhmnNodeIterator$WalkState$Fork;->node:Lorg/ton/hashmap/HashmapAugNode$AhmnFork;

    return-void
.end method


# virtual methods
.method public getNode()Lorg/ton/hashmap/HashmapAugNode$AhmnFork;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/ton/hashmap/HashmapAugNode$AhmnFork<",
            "TX;TY;>;"
        }
    .end annotation

    .line 134
    iget-object v0, p0, Lorg/ton/hashmap/AhmnNodeIterator$WalkState$Fork;->node:Lorg/ton/hashmap/HashmapAugNode$AhmnFork;

    return-object v0
.end method

.method public bridge synthetic getNode()Lorg/ton/hashmap/HashmapAugNode;
    .locals 1

    .line 132
    invoke-virtual {p0}, Lorg/ton/hashmap/AhmnNodeIterator$WalkState$Fork;->getNode()Lorg/ton/hashmap/HashmapAugNode$AhmnFork;

    move-result-object v0

    return-object v0
.end method

.method public step()Lkotlin/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Pair<",
            "Lorg/ton/bitstring/BitString;",
            "Lorg/ton/hashmap/HashmapAugNode<",
            "TX;TY;>;>;"
        }
    .end annotation

    .line 141
    iget-boolean v0, p0, Lorg/ton/hashmap/AhmnNodeIterator$WalkState$Fork;->rootVisited:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 142
    iput-boolean v1, p0, Lorg/ton/hashmap/AhmnNodeIterator$WalkState$Fork;->rootVisited:Z

    .line 143
    iget-object v0, p0, Lorg/ton/hashmap/AhmnNodeIterator$WalkState$Fork;->prefix:Lorg/ton/bitstring/BitString;

    invoke-virtual {p0}, Lorg/ton/hashmap/AhmnNodeIterator$WalkState$Fork;->getNode()Lorg/ton/hashmap/HashmapAugNode$AhmnFork;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    return-object v0

    .line 144
    :cond_0
    iget-boolean v0, p0, Lorg/ton/hashmap/AhmnNodeIterator$WalkState$Fork;->leftVisited:Z

    const-string v2, "null cannot be cast to non-null type org.ton.hashmap.HashmapAug.AhmEdge<X of org.ton.hashmap.AhmnNodeIterator.WalkState.Fork, Y of org.ton.hashmap.AhmnNodeIterator.WalkState.Fork>"

    if-eqz v0, :cond_2

    .line 145
    iget-boolean v0, p0, Lorg/ton/hashmap/AhmnNodeIterator$WalkState$Fork;->rightVisited:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 147
    :cond_1
    iput-boolean v1, p0, Lorg/ton/hashmap/AhmnNodeIterator$WalkState$Fork;->rightVisited:Z

    .line 148
    invoke-virtual {p0}, Lorg/ton/hashmap/AhmnNodeIterator$WalkState$Fork;->getNode()Lorg/ton/hashmap/HashmapAugNode$AhmnFork;

    move-result-object v0

    invoke-interface {v0}, Lorg/ton/hashmap/HashmapAugNode$AhmnFork;->getRight()Lorg/ton/tlb/CellRef;

    move-result-object v0

    invoke-interface {v0}, Lorg/ton/tlb/CellRef;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lorg/ton/hashmap/HashmapAug$AhmEdge;

    .line 147
    sget-object v2, Lorg/ton/cell/CellBuilder;->Companion:Lorg/ton/cell/CellBuilder$Companion;

    invoke-virtual {v2}, Lorg/ton/cell/CellBuilder$Companion;->beginCell()Lorg/ton/cell/CellBuilder;

    move-result-object v2

    .line 150
    iget-object v3, p0, Lorg/ton/hashmap/AhmnNodeIterator$WalkState$Fork;->prefix:Lorg/ton/bitstring/BitString;

    invoke-interface {v2, v3}, Lorg/ton/cell/CellBuilder;->storeBits(Lorg/ton/bitstring/BitString;)Lorg/ton/cell/CellBuilder;

    .line 151
    invoke-interface {v2, v1}, Lorg/ton/cell/CellBuilder;->storeBit(Z)Lorg/ton/cell/CellBuilder;

    .line 152
    invoke-interface {v0}, Lorg/ton/hashmap/HashmapAug$AhmEdge;->getLabel()Lorg/ton/hashmap/HmLabel;

    move-result-object v1

    invoke-interface {v1}, Lorg/ton/hashmap/HmLabel;->toBitString()Lorg/ton/bitstring/BitString;

    move-result-object v1

    invoke-interface {v2, v1}, Lorg/ton/cell/CellBuilder;->storeBits(Lorg/ton/bitstring/BitString;)Lorg/ton/cell/CellBuilder;

    .line 153
    invoke-interface {v2}, Lorg/ton/cell/CellBuilder;->getBits()Lorg/ton/bitstring/MutableBitString;

    move-result-object v1

    invoke-interface {v1}, Lorg/ton/bitstring/BitString;->toBitString()Lorg/ton/bitstring/BitString;

    move-result-object v1

    .line 154
    invoke-interface {v0}, Lorg/ton/hashmap/HashmapAug$AhmEdge;->getNode()Lorg/ton/hashmap/HashmapAugNode;

    move-result-object v0

    invoke-static {v1, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    goto :goto_0

    .line 157
    :cond_2
    iput-boolean v1, p0, Lorg/ton/hashmap/AhmnNodeIterator$WalkState$Fork;->leftVisited:Z

    .line 158
    invoke-virtual {p0}, Lorg/ton/hashmap/AhmnNodeIterator$WalkState$Fork;->getNode()Lorg/ton/hashmap/HashmapAugNode$AhmnFork;

    move-result-object v0

    invoke-interface {v0}, Lorg/ton/hashmap/HashmapAugNode$AhmnFork;->getLeft()Lorg/ton/tlb/CellRef;

    move-result-object v0

    invoke-interface {v0}, Lorg/ton/tlb/CellRef;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lorg/ton/hashmap/HashmapAug$AhmEdge;

    .line 147
    sget-object v1, Lorg/ton/cell/CellBuilder;->Companion:Lorg/ton/cell/CellBuilder$Companion;

    invoke-virtual {v1}, Lorg/ton/cell/CellBuilder$Companion;->beginCell()Lorg/ton/cell/CellBuilder;

    move-result-object v1

    .line 160
    iget-object v2, p0, Lorg/ton/hashmap/AhmnNodeIterator$WalkState$Fork;->prefix:Lorg/ton/bitstring/BitString;

    invoke-interface {v1, v2}, Lorg/ton/cell/CellBuilder;->storeBits(Lorg/ton/bitstring/BitString;)Lorg/ton/cell/CellBuilder;

    const/4 v2, 0x0

    .line 161
    invoke-interface {v1, v2}, Lorg/ton/cell/CellBuilder;->storeBit(Z)Lorg/ton/cell/CellBuilder;

    .line 162
    invoke-interface {v0}, Lorg/ton/hashmap/HashmapAug$AhmEdge;->getLabel()Lorg/ton/hashmap/HmLabel;

    move-result-object v2

    invoke-interface {v2}, Lorg/ton/hashmap/HmLabel;->toBitString()Lorg/ton/bitstring/BitString;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/ton/cell/CellBuilder;->storeBits(Lorg/ton/bitstring/BitString;)Lorg/ton/cell/CellBuilder;

    .line 163
    invoke-interface {v1}, Lorg/ton/cell/CellBuilder;->getBits()Lorg/ton/bitstring/MutableBitString;

    move-result-object v1

    invoke-interface {v1}, Lorg/ton/bitstring/BitString;->toBitString()Lorg/ton/bitstring/BitString;

    move-result-object v1

    .line 164
    invoke-interface {v0}, Lorg/ton/hashmap/HashmapAug$AhmEdge;->getNode()Lorg/ton/hashmap/HashmapAugNode;

    move-result-object v0

    invoke-static {v1, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    :goto_0
    return-object v0
.end method
