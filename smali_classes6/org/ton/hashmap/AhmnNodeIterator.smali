.class public final Lorg/ton/hashmap/AhmnNodeIterator;
.super Lkotlin/collections/AbstractIterator;
.source "HashmapAug.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ton/hashmap/AhmnNodeIterator$WalkState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<X:",
        "Ljava/lang/Object;",
        "Y:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlin/collections/AbstractIterator<",
        "Lkotlin/Pair<",
        "+",
        "Lorg/ton/bitstring/BitString;",
        "+",
        "Lorg/ton/hashmap/HashmapAugNode<",
        "TX;TY;>;>;>;"
    }
.end annotation


# instance fields
.field private final state:Lkotlin/collections/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/collections/ArrayDeque<",
            "Lorg/ton/hashmap/AhmnNodeIterator$WalkState<",
            "TX;TY;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/ton/hashmap/HashmapAug$AhmEdge;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ton/hashmap/HashmapAug$AhmEdge<",
            "TX;TY;>;)V"
        }
    .end annotation

    .line 96
    invoke-direct {p0}, Lkotlin/collections/AbstractIterator;-><init>()V

    .line 97
    new-instance v0, Lkotlin/collections/ArrayDeque;

    invoke-direct {v0}, Lkotlin/collections/ArrayDeque;-><init>()V

    iput-object v0, p0, Lorg/ton/hashmap/AhmnNodeIterator;->state:Lkotlin/collections/ArrayDeque;

    if-eqz p1, :cond_0

    .line 101
    invoke-interface {p1}, Lorg/ton/hashmap/HashmapAug$AhmEdge;->getLabel()Lorg/ton/hashmap/HmLabel;

    move-result-object v0

    invoke-interface {v0}, Lorg/ton/hashmap/HmLabel;->toBitString()Lorg/ton/bitstring/BitString;

    move-result-object v0

    invoke-interface {p1}, Lorg/ton/hashmap/HashmapAug$AhmEdge;->getNode()Lorg/ton/hashmap/HashmapAugNode;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lorg/ton/hashmap/AhmnNodeIterator;->addState(Lorg/ton/bitstring/BitString;Lorg/ton/hashmap/HashmapAugNode;)V

    goto :goto_0

    .line 103
    :cond_0
    invoke-virtual {p0}, Lkotlin/collections/AbstractIterator;->done()V

    :goto_0
    return-void
.end method

.method private final addState(Lorg/ton/bitstring/BitString;Lorg/ton/hashmap/HashmapAugNode;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ton/bitstring/BitString;",
            "Lorg/ton/hashmap/HashmapAugNode<",
            "TX;TY;>;)V"
        }
    .end annotation

    .line 109
    instance-of v0, p2, Lorg/ton/hashmap/HashmapAugNode$AhmnFork;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/ton/hashmap/AhmnNodeIterator;->state:Lkotlin/collections/ArrayDeque;

    new-instance v1, Lorg/ton/hashmap/AhmnNodeIterator$WalkState$Fork;

    check-cast p2, Lorg/ton/hashmap/HashmapAugNode$AhmnFork;

    invoke-direct {v1, p1, p2}, Lorg/ton/hashmap/AhmnNodeIterator$WalkState$Fork;-><init>(Lorg/ton/bitstring/BitString;Lorg/ton/hashmap/HashmapAugNode$AhmnFork;)V

    invoke-virtual {v0, v1}, Lkotlin/collections/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    goto :goto_0

    .line 110
    :cond_0
    instance-of v0, p2, Lorg/ton/hashmap/HashmapAugNode$AhmnLeaf;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/ton/hashmap/AhmnNodeIterator;->state:Lkotlin/collections/ArrayDeque;

    new-instance v1, Lorg/ton/hashmap/AhmnNodeIterator$WalkState$Leaf;

    check-cast p2, Lorg/ton/hashmap/HashmapAugNode$AhmnLeaf;

    invoke-direct {v1, p1, p2}, Lorg/ton/hashmap/AhmnNodeIterator$WalkState$Leaf;-><init>(Lorg/ton/bitstring/BitString;Lorg/ton/hashmap/HashmapAugNode$AhmnLeaf;)V

    invoke-virtual {v0, v1}, Lkotlin/collections/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private final gotoNext()Lkotlin/Pair;
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

    .line 180
    :goto_0
    iget-object v0, p0, Lorg/ton/hashmap/AhmnNodeIterator;->state:Lkotlin/collections/ArrayDeque;

    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->firstOrNull()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/ton/hashmap/AhmnNodeIterator$WalkState;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 181
    :cond_0
    invoke-virtual {v0}, Lorg/ton/hashmap/AhmnNodeIterator$WalkState;->step()Lkotlin/Pair;

    move-result-object v1

    if-nez v1, :cond_1

    .line 183
    iget-object v0, p0, Lorg/ton/hashmap/AhmnNodeIterator;->state:Lkotlin/collections/ArrayDeque;

    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->removeFirst()Ljava/lang/Object;

    goto :goto_0

    .line 186
    :cond_1
    invoke-virtual {v1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/ton/bitstring/BitString;

    invoke-virtual {v1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/ton/hashmap/HashmapAugNode;

    .line 187
    invoke-virtual {v0}, Lorg/ton/hashmap/AhmnNodeIterator$WalkState;->getNode()Lorg/ton/hashmap/HashmapAugNode;

    move-result-object v0

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    instance-of v0, v3, Lorg/ton/hashmap/HashmapAugNode$AhmnLeaf;

    if-eqz v0, :cond_2

    goto :goto_1

    .line 190
    :cond_2
    invoke-direct {p0, v2, v3}, Lorg/ton/hashmap/AhmnNodeIterator;->addState(Lorg/ton/bitstring/BitString;Lorg/ton/hashmap/HashmapAugNode;)V

    goto :goto_0

    :cond_3
    :goto_1
    return-object v1
.end method


# virtual methods
.method protected computeNext()V
    .locals 1

    .line 171
    invoke-direct {p0}, Lorg/ton/hashmap/AhmnNodeIterator;->gotoNext()Lkotlin/Pair;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 173
    invoke-virtual {p0, v0}, Lkotlin/collections/AbstractIterator;->setNext(Ljava/lang/Object;)V

    goto :goto_0

    .line 175
    :cond_0
    invoke-virtual {p0}, Lkotlin/collections/AbstractIterator;->done()V

    :goto_0
    return-void
.end method
