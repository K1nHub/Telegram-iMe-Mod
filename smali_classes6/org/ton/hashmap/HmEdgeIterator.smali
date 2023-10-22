.class final Lorg/ton/hashmap/HmEdgeIterator;
.super Lkotlin/collections/AbstractIterator;
.source "HmEdge.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ton/hashmap/HmEdgeIterator$WalkState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlin/collections/AbstractIterator<",
        "Lkotlin/Pair<",
        "+",
        "Lorg/ton/bitstring/BitString;",
        "+TT;>;>;"
    }
.end annotation


# instance fields
.field private final state:Lkotlin/collections/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/collections/ArrayDeque<",
            "Lorg/ton/hashmap/HmEdgeIterator$WalkState<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/ton/hashmap/HmEdge;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ton/hashmap/HmEdge<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "start"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    invoke-direct {p0}, Lkotlin/collections/AbstractIterator;-><init>()V

    .line 78
    new-instance v0, Lkotlin/collections/ArrayDeque;

    invoke-direct {v0}, Lkotlin/collections/ArrayDeque;-><init>()V

    iput-object v0, p0, Lorg/ton/hashmap/HmEdgeIterator;->state:Lkotlin/collections/ArrayDeque;

    .line 81
    invoke-virtual {p1}, Lorg/ton/hashmap/HmEdge;->getLabel()Lorg/ton/hashmap/HmLabel;

    move-result-object v0

    invoke-interface {v0}, Lorg/ton/hashmap/HmLabel;->toBitString()Lorg/ton/bitstring/BitString;

    move-result-object v0

    invoke-virtual {p1}, Lorg/ton/hashmap/HmEdge;->getNode()Lorg/ton/hashmap/HashMapNode;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lorg/ton/hashmap/HmEdgeIterator;->addState(Lorg/ton/bitstring/BitString;Lorg/ton/hashmap/HashMapNode;)V

    return-void
.end method

.method private final addState(Lorg/ton/bitstring/BitString;Lorg/ton/hashmap/HashMapNode;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ton/bitstring/BitString;",
            "Lorg/ton/hashmap/HashMapNode<",
            "TT;>;)V"
        }
    .end annotation

    .line 86
    instance-of v0, p2, Lorg/ton/hashmap/HmnFork;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/ton/hashmap/HmEdgeIterator;->state:Lkotlin/collections/ArrayDeque;

    new-instance v1, Lorg/ton/hashmap/HmEdgeIterator$WalkState$Fork;

    check-cast p2, Lorg/ton/hashmap/HmnFork;

    invoke-direct {v1, p1, p2}, Lorg/ton/hashmap/HmEdgeIterator$WalkState$Fork;-><init>(Lorg/ton/bitstring/BitString;Lorg/ton/hashmap/HmnFork;)V

    invoke-virtual {v0, v1}, Lkotlin/collections/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    goto :goto_0

    .line 87
    :cond_0
    instance-of v0, p2, Lorg/ton/hashmap/HmnLeaf;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/ton/hashmap/HmEdgeIterator;->state:Lkotlin/collections/ArrayDeque;

    new-instance v1, Lorg/ton/hashmap/HmEdgeIterator$WalkState$Leaf;

    check-cast p2, Lorg/ton/hashmap/HmnLeaf;

    invoke-direct {v1, p1, p2}, Lorg/ton/hashmap/HmEdgeIterator$WalkState$Leaf;-><init>(Lorg/ton/bitstring/BitString;Lorg/ton/hashmap/HmnLeaf;)V

    invoke-virtual {v0, v1}, Lkotlin/collections/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private final gotoNext()Lkotlin/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Pair<",
            "Lorg/ton/bitstring/BitString;",
            "TT;>;"
        }
    .end annotation

    .line 150
    :goto_0
    iget-object v0, p0, Lorg/ton/hashmap/HmEdgeIterator;->state:Lkotlin/collections/ArrayDeque;

    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->firstOrNull()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/ton/hashmap/HmEdgeIterator$WalkState;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 151
    :cond_0
    invoke-virtual {v0}, Lorg/ton/hashmap/HmEdgeIterator$WalkState;->step()Lkotlin/Pair;

    move-result-object v0

    if-nez v0, :cond_1

    .line 153
    iget-object v0, p0, Lorg/ton/hashmap/HmEdgeIterator;->state:Lkotlin/collections/ArrayDeque;

    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->removeFirst()Ljava/lang/Object;

    goto :goto_0

    .line 156
    :cond_1
    invoke-virtual {v0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/ton/bitstring/BitString;

    invoke-virtual {v0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/ton/hashmap/HashMapNode;

    .line 157
    instance-of v2, v0, Lorg/ton/hashmap/HmnLeaf;

    if-eqz v2, :cond_2

    .line 158
    check-cast v0, Lorg/ton/hashmap/HmnLeaf;

    invoke-virtual {v0}, Lorg/ton/hashmap/HmnLeaf;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    return-object v0

    .line 160
    :cond_2
    invoke-direct {p0, v1, v0}, Lorg/ton/hashmap/HmEdgeIterator;->addState(Lorg/ton/bitstring/BitString;Lorg/ton/hashmap/HashMapNode;)V

    goto :goto_0
.end method


# virtual methods
.method protected computeNext()V
    .locals 1

    .line 141
    invoke-direct {p0}, Lorg/ton/hashmap/HmEdgeIterator;->gotoNext()Lkotlin/Pair;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 143
    invoke-virtual {p0, v0}, Lkotlin/collections/AbstractIterator;->setNext(Ljava/lang/Object;)V

    goto :goto_0

    .line 145
    :cond_0
    invoke-virtual {p0}, Lkotlin/collections/AbstractIterator;->done()V

    :goto_0
    return-void
.end method
