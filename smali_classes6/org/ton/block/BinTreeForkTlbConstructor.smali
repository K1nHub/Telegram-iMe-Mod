.class final Lorg/ton/block/BinTreeForkTlbConstructor;
.super Lorg/ton/tlb/TlbConstructor;
.source "BinTreeFork.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<X:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/ton/tlb/TlbConstructor<",
        "Lorg/ton/block/BinTreeFork<",
        "TX;>;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBinTreeFork.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BinTreeFork.kt\norg/ton/block/BinTreeForkTlbConstructor\n+ 2 CellBuilder.kt\norg/ton/cell/CellBuilderKt\n+ 3 CellRef.kt\norg/ton/tlb/CellRefKt\n+ 4 CellSlice.kt\norg/ton/cell/CellSliceKt\n*L\n1#1,64:1\n131#2:65\n132#2:70\n106#3,2:66\n106#3,2:68\n110#3:72\n14#3:73\n110#3:74\n14#3:75\n86#4:71\n*S KotlinDebug\n*F\n+ 1 BinTreeFork.kt\norg/ton/block/BinTreeForkTlbConstructor\n*L\n51#1:65\n51#1:70\n52#1:66,2\n53#1:68,2\n59#1:72\n59#1:73\n60#1:74\n60#1:75\n58#1:71\n*E\n"
.end annotation


# instance fields
.field private final binTree$delegate:Lkotlin/Lazy;

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

    const-string v0, "bt_fork$1 {X:Type} left:^(BinTree X) right:^(BinTree X) = BinTree X;"

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 41
    invoke-direct {p0, v0, v1, v2, v1}, Lorg/ton/tlb/TlbConstructor;-><init>(Ljava/lang/String;Lorg/ton/bitstring/BitString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 40
    iput-object p1, p0, Lorg/ton/block/BinTreeForkTlbConstructor;->x:Lorg/ton/tlb/TlbCodec;

    .line 44
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    new-instance v0, Lorg/ton/block/BinTreeForkTlbConstructor$binTree$2;

    invoke-direct {v0, p0}, Lorg/ton/block/BinTreeForkTlbConstructor$binTree$2;-><init>(Lorg/ton/block/BinTreeForkTlbConstructor;)V

    invoke-static {p1, v0}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lorg/ton/block/BinTreeForkTlbConstructor;->binTree$delegate:Lkotlin/Lazy;

    return-void
.end method


# virtual methods
.method public final getBinTree()Lorg/ton/tlb/TlbCombinator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/ton/tlb/TlbCombinator<",
            "Lorg/ton/block/BinTree<",
            "TX;>;>;"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lorg/ton/block/BinTreeForkTlbConstructor;->binTree$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/ton/tlb/TlbCombinator;

    return-object v0
.end method

.method public final getX()Lorg/ton/tlb/TlbCodec;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/ton/tlb/TlbCodec<",
            "TX;>;"
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lorg/ton/block/BinTreeForkTlbConstructor;->x:Lorg/ton/tlb/TlbCodec;

    return-object v0
.end method

.method public bridge synthetic loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;
    .locals 0

    .line 39
    invoke-virtual {p0, p1}, Lorg/ton/block/BinTreeForkTlbConstructor;->loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/BinTreeFork;

    move-result-object p1

    return-object p1
.end method

.method public loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/BinTreeFork;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ton/cell/CellSlice;",
            ")",
            "Lorg/ton/block/BinTreeFork<",
            "TX;>;"
        }
    .end annotation

    const-string v0, "cellSlice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0}, Lorg/ton/block/BinTreeForkTlbConstructor;->getBinTree()Lorg/ton/tlb/TlbCombinator;

    move-result-object v0

    .line 110
    invoke-interface {p1}, Lorg/ton/cell/CellSlice;->loadRef()Lorg/ton/cell/Cell;

    move-result-object v1

    .line 14
    sget-object v2, Lorg/ton/tlb/CellRef;->Companion:Lorg/ton/tlb/CellRef$Companion;

    invoke-virtual {v2, v1, v0}, Lorg/ton/tlb/CellRef$Companion;->valueOf(Lorg/ton/cell/Cell;Lorg/ton/tlb/TlbCodec;)Lorg/ton/tlb/CellRef;

    move-result-object v0

    .line 60
    invoke-virtual {p0}, Lorg/ton/block/BinTreeForkTlbConstructor;->getBinTree()Lorg/ton/tlb/TlbCombinator;

    move-result-object v1

    .line 110
    invoke-interface {p1}, Lorg/ton/cell/CellSlice;->loadRef()Lorg/ton/cell/Cell;

    move-result-object p1

    .line 14
    invoke-virtual {v2, p1, v1}, Lorg/ton/tlb/CellRef$Companion;->valueOf(Lorg/ton/cell/Cell;Lorg/ton/tlb/TlbCodec;)Lorg/ton/tlb/CellRef;

    move-result-object p1

    .line 61
    new-instance v1, Lorg/ton/block/BinTreeFork;

    invoke-direct {v1, v0, p1}, Lorg/ton/block/BinTreeFork;-><init>(Lorg/ton/tlb/CellRef;Lorg/ton/tlb/CellRef;)V

    return-object v1
.end method

.method public bridge synthetic storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V
    .locals 0

    .line 39
    check-cast p2, Lorg/ton/block/BinTreeFork;

    invoke-virtual {p0, p1, p2}, Lorg/ton/block/BinTreeForkTlbConstructor;->storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/BinTreeFork;)V

    return-void
.end method

.method public storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/BinTreeFork;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ton/cell/CellBuilder;",
            "Lorg/ton/block/BinTreeFork<",
            "TX;>;)V"
        }
    .end annotation

    const-string v0, "cellBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0}, Lorg/ton/block/BinTreeForkTlbConstructor;->getBinTree()Lorg/ton/tlb/TlbCombinator;

    move-result-object v0

    invoke-virtual {p2}, Lorg/ton/block/BinTreeFork;->getLeft()Lorg/ton/tlb/CellRef;

    move-result-object v1

    .line 106
    invoke-interface {v1, v0}, Lorg/ton/tlb/CellRef;->toCell(Lorg/ton/tlb/TlbCodec;)Lorg/ton/cell/Cell;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/ton/cell/CellBuilder;->storeRef(Lorg/ton/cell/Cell;)Lorg/ton/cell/CellBuilder;

    .line 53
    invoke-virtual {p0}, Lorg/ton/block/BinTreeForkTlbConstructor;->getBinTree()Lorg/ton/tlb/TlbCombinator;

    move-result-object v0

    invoke-virtual {p2}, Lorg/ton/block/BinTreeFork;->getRight()Lorg/ton/tlb/CellRef;

    move-result-object p2

    .line 106
    invoke-interface {p2, v0}, Lorg/ton/tlb/CellRef;->toCell(Lorg/ton/tlb/TlbCodec;)Lorg/ton/cell/Cell;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/ton/cell/CellBuilder;->storeRef(Lorg/ton/cell/Cell;)Lorg/ton/cell/CellBuilder;

    return-void
.end method
