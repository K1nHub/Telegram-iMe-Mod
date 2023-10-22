.class final Lorg/ton/block/BinTreeTlbConstructor;
.super Lorg/ton/tlb/TlbConstructor;
.source "BinTreeLeaf.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<X:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/ton/tlb/TlbConstructor<",
        "Lorg/ton/block/BinTreeLeaf<",
        "TX;>;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBinTreeLeaf.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BinTreeLeaf.kt\norg/ton/block/BinTreeTlbConstructor\n+ 2 CellBuilder.kt\norg/ton/cell/CellBuilderKt\n+ 3 TlbCodec.kt\norg/ton/tlb/TlbCodecKt\n+ 4 CellSlice.kt\norg/ton/cell/CellSliceKt\n*L\n1#1,55:1\n131#2:56\n132#2:60\n59#3,3:57\n52#3:62\n86#4:61\n*S KotlinDebug\n*F\n+ 1 BinTreeLeaf.kt\norg/ton/block/BinTreeTlbConstructor\n*L\n44#1:56\n44#1:60\n45#1:57,3\n51#1:62\n50#1:61\n*E\n"
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


# direct methods
.method public constructor <init>(Lorg/ton/tlb/TlbCodec;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ton/tlb/TlbCodec<",
            "TX;>;)V"
        }
    .end annotation

    const-string v0, "x"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bt_leaf$0 {X:Type} leaf:X = BinTree X;"

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 38
    invoke-direct {p0, v0, v1, v2, v1}, Lorg/ton/tlb/TlbConstructor;-><init>(Ljava/lang/String;Lorg/ton/bitstring/BitString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 37
    iput-object p1, p0, Lorg/ton/block/BinTreeTlbConstructor;->x:Lorg/ton/tlb/TlbCodec;

    return-void
.end method


# virtual methods
.method public bridge synthetic loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lorg/ton/block/BinTreeTlbConstructor;->loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/BinTreeLeaf;

    move-result-object p1

    return-object p1
.end method

.method public loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/BinTreeLeaf;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ton/cell/CellSlice;",
            ")",
            "Lorg/ton/block/BinTreeLeaf<",
            "TX;>;"
        }
    .end annotation

    const-string v0, "cellSlice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lorg/ton/block/BinTreeTlbConstructor;->x:Lorg/ton/tlb/TlbCodec;

    .line 52
    invoke-interface {v0, p1}, Lorg/ton/tlb/TlbLoader;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object p1

    .line 52
    new-instance v0, Lorg/ton/block/BinTreeLeaf;

    invoke-direct {v0, p1}, Lorg/ton/block/BinTreeLeaf;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public bridge synthetic storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V
    .locals 0

    .line 36
    check-cast p2, Lorg/ton/block/BinTreeLeaf;

    invoke-virtual {p0, p1, p2}, Lorg/ton/block/BinTreeTlbConstructor;->storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/BinTreeLeaf;)V

    return-void
.end method

.method public storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/BinTreeLeaf;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ton/cell/CellBuilder;",
            "Lorg/ton/block/BinTreeLeaf<",
            "TX;>;)V"
        }
    .end annotation

    const-string v0, "cellBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lorg/ton/block/BinTreeTlbConstructor;->x:Lorg/ton/tlb/TlbCodec;

    invoke-virtual {p2}, Lorg/ton/block/BinTreeLeaf;->getLeaf()Ljava/lang/Object;

    move-result-object p2

    .line 60
    invoke-interface {v0, p1, p2}, Lorg/ton/tlb/TlbStorer;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    return-void
.end method
