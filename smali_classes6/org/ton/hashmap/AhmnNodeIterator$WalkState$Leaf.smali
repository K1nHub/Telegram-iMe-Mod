.class public final Lorg/ton/hashmap/AhmnNodeIterator$WalkState$Leaf;
.super Lorg/ton/hashmap/AhmnNodeIterator$WalkState;
.source "HashmapAug.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ton/hashmap/AhmnNodeIterator$WalkState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Leaf"
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


# instance fields
.field private final node:Lorg/ton/hashmap/HashmapAugNode$AhmnLeaf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ton/hashmap/HashmapAugNode$AhmnLeaf<",
            "TX;TY;>;"
        }
    .end annotation
.end field

.field private final prefix:Lorg/ton/bitstring/BitString;

.field private visited:Z


# direct methods
.method public constructor <init>(Lorg/ton/bitstring/BitString;Lorg/ton/hashmap/HashmapAugNode$AhmnLeaf;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ton/bitstring/BitString;",
            "Lorg/ton/hashmap/HashmapAugNode$AhmnLeaf<",
            "TX;TY;>;)V"
        }
    .end annotation

    const-string v0, "prefix"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "node"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 122
    invoke-direct {p0, p2, v0}, Lorg/ton/hashmap/AhmnNodeIterator$WalkState;-><init>(Lorg/ton/hashmap/HashmapAugNode;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 120
    iput-object p1, p0, Lorg/ton/hashmap/AhmnNodeIterator$WalkState$Leaf;->prefix:Lorg/ton/bitstring/BitString;

    .line 121
    iput-object p2, p0, Lorg/ton/hashmap/AhmnNodeIterator$WalkState$Leaf;->node:Lorg/ton/hashmap/HashmapAugNode$AhmnLeaf;

    return-void
.end method


# virtual methods
.method public getNode()Lorg/ton/hashmap/HashmapAugNode$AhmnLeaf;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/ton/hashmap/HashmapAugNode$AhmnLeaf<",
            "TX;TY;>;"
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lorg/ton/hashmap/AhmnNodeIterator$WalkState$Leaf;->node:Lorg/ton/hashmap/HashmapAugNode$AhmnLeaf;

    return-object v0
.end method

.method public bridge synthetic getNode()Lorg/ton/hashmap/HashmapAugNode;
    .locals 1

    .line 119
    invoke-virtual {p0}, Lorg/ton/hashmap/AhmnNodeIterator$WalkState$Leaf;->getNode()Lorg/ton/hashmap/HashmapAugNode$AhmnLeaf;

    move-result-object v0

    return-object v0
.end method

.method public step()Lkotlin/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Pair<",
            "Lorg/ton/bitstring/BitString;",
            "Lorg/ton/hashmap/HashmapAugNode<",
            "TX;TY;>;>;"
        }
    .end annotation

    .line 126
    iget-boolean v0, p0, Lorg/ton/hashmap/AhmnNodeIterator$WalkState$Leaf;->visited:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/4 v0, 0x1

    .line 127
    iput-boolean v0, p0, Lorg/ton/hashmap/AhmnNodeIterator$WalkState$Leaf;->visited:Z

    .line 128
    iget-object v0, p0, Lorg/ton/hashmap/AhmnNodeIterator$WalkState$Leaf;->prefix:Lorg/ton/bitstring/BitString;

    invoke-virtual {p0}, Lorg/ton/hashmap/AhmnNodeIterator$WalkState$Leaf;->getNode()Lorg/ton/hashmap/HashmapAugNode$AhmnLeaf;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    return-object v0
.end method
