.class public final Lorg/ton/hashmap/HmEdgeIterator$WalkState$Leaf;
.super Lorg/ton/hashmap/HmEdgeIterator$WalkState;
.source "HmEdge.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ton/hashmap/HmEdgeIterator$WalkState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Leaf"
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


# instance fields
.field private final node:Lorg/ton/hashmap/HmnLeaf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ton/hashmap/HmnLeaf<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final prefix:Lorg/ton/bitstring/BitString;

.field private visited:Z


# direct methods
.method public constructor <init>(Lorg/ton/bitstring/BitString;Lorg/ton/hashmap/HmnLeaf;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ton/bitstring/BitString;",
            "Lorg/ton/hashmap/HmnLeaf<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "prefix"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "node"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 97
    invoke-direct {p0, p2, v0}, Lorg/ton/hashmap/HmEdgeIterator$WalkState;-><init>(Lorg/ton/hashmap/HashMapNode;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 95
    iput-object p1, p0, Lorg/ton/hashmap/HmEdgeIterator$WalkState$Leaf;->prefix:Lorg/ton/bitstring/BitString;

    .line 96
    iput-object p2, p0, Lorg/ton/hashmap/HmEdgeIterator$WalkState$Leaf;->node:Lorg/ton/hashmap/HmnLeaf;

    return-void
.end method


# virtual methods
.method public getNode()Lorg/ton/hashmap/HmnLeaf;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/ton/hashmap/HmnLeaf<",
            "TT;>;"
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lorg/ton/hashmap/HmEdgeIterator$WalkState$Leaf;->node:Lorg/ton/hashmap/HmnLeaf;

    return-object v0
.end method

.method public step()Lkotlin/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Pair<",
            "Lorg/ton/bitstring/BitString;",
            "Lorg/ton/hashmap/HashMapNode<",
            "TT;>;>;"
        }
    .end annotation

    .line 101
    iget-boolean v0, p0, Lorg/ton/hashmap/HmEdgeIterator$WalkState$Leaf;->visited:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/4 v0, 0x1

    .line 102
    iput-boolean v0, p0, Lorg/ton/hashmap/HmEdgeIterator$WalkState$Leaf;->visited:Z

    .line 103
    iget-object v0, p0, Lorg/ton/hashmap/HmEdgeIterator$WalkState$Leaf;->prefix:Lorg/ton/bitstring/BitString;

    invoke-virtual {p0}, Lorg/ton/hashmap/HmEdgeIterator$WalkState$Leaf;->getNode()Lorg/ton/hashmap/HmnLeaf;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    return-object v0
.end method
