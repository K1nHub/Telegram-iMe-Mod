.class final Lorg/ton/hashmap/AhmnLeafTlbConstructor;
.super Lorg/ton/tlb/TlbConstructor;
.source "HashmapAugNode.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<X:",
        "Ljava/lang/Object;",
        "Y:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/ton/tlb/TlbConstructor<",
        "Lorg/ton/hashmap/HashmapAugNode$AhmnLeaf<",
        "TX;TY;>;>;"
    }
.end annotation


# instance fields
.field private final x:Lorg/ton/tlb/TlbCodec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ton/tlb/TlbCodec<",
            "TX;>;"
        }
    .end annotation
.end field

.field private final y:Lorg/ton/tlb/TlbCodec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ton/tlb/TlbCodec<",
            "TY;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/ton/tlb/TlbCodec;Lorg/ton/tlb/TlbCodec;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ton/tlb/TlbCodec<",
            "TX;>;",
            "Lorg/ton/tlb/TlbCodec<",
            "TY;>;)V"
        }
    .end annotation

    const-string v0, "x"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "y"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ahmn_leaf#_ {X:Type} {Y:Type} extra:Y value:X = HashmapAugNode 0 X Y"

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 112
    invoke-direct {p0, v0, v1, v2, v1}, Lorg/ton/tlb/TlbConstructor;-><init>(Ljava/lang/String;Lorg/ton/bitstring/BitString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 110
    iput-object p1, p0, Lorg/ton/hashmap/AhmnLeafTlbConstructor;->x:Lorg/ton/tlb/TlbCodec;

    .line 111
    iput-object p2, p0, Lorg/ton/hashmap/AhmnLeafTlbConstructor;->y:Lorg/ton/tlb/TlbCodec;

    return-void
.end method


# virtual methods
.method public bridge synthetic loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;
    .locals 0

    .line 109
    invoke-virtual {p0, p1}, Lorg/ton/hashmap/AhmnLeafTlbConstructor;->loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/hashmap/HashmapAugNode$AhmnLeaf;

    move-result-object p1

    return-object p1
.end method

.method public loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/hashmap/HashmapAugNode$AhmnLeaf;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ton/cell/CellSlice;",
            ")",
            "Lorg/ton/hashmap/HashmapAugNode$AhmnLeaf<",
            "TX;TY;>;"
        }
    .end annotation

    const-string v0, "cellSlice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lorg/ton/hashmap/AhmnLeafTlbConstructor;->y:Lorg/ton/tlb/TlbCodec;

    invoke-interface {v0, p1}, Lorg/ton/tlb/TlbLoader;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object v0

    .line 117
    iget-object v1, p0, Lorg/ton/hashmap/AhmnLeafTlbConstructor;->x:Lorg/ton/tlb/TlbCodec;

    invoke-interface {v1, p1}, Lorg/ton/tlb/TlbLoader;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object p1

    .line 118
    new-instance v1, Lorg/ton/hashmap/AhmnLeafImpl;

    invoke-direct {v1, v0, p1}, Lorg/ton/hashmap/AhmnLeafImpl;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method

.method public bridge synthetic storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V
    .locals 0

    .line 109
    check-cast p2, Lorg/ton/hashmap/HashmapAugNode$AhmnLeaf;

    invoke-virtual {p0, p1, p2}, Lorg/ton/hashmap/AhmnLeafTlbConstructor;->storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/hashmap/HashmapAugNode$AhmnLeaf;)V

    return-void
.end method

.method public storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/hashmap/HashmapAugNode$AhmnLeaf;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ton/cell/CellBuilder;",
            "Lorg/ton/hashmap/HashmapAugNode$AhmnLeaf<",
            "TX;TY;>;)V"
        }
    .end annotation

    const-string v0, "cellBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lorg/ton/hashmap/AhmnLeafTlbConstructor;->y:Lorg/ton/tlb/TlbCodec;

    invoke-interface {p2}, Lorg/ton/hashmap/HashmapAugNode$AhmnLeaf;->getExtra()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lorg/ton/tlb/TlbStorer;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    .line 123
    iget-object v0, p0, Lorg/ton/hashmap/AhmnLeafTlbConstructor;->x:Lorg/ton/tlb/TlbCodec;

    invoke-interface {p2}, Lorg/ton/hashmap/HashmapAugNode$AhmnLeaf;->getValue()Ljava/lang/Object;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lorg/ton/tlb/TlbStorer;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    return-void
.end method
