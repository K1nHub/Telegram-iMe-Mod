.class final Lorg/ton/hashmap/HashMapNodeForkTlbConstructor;
.super Lorg/ton/tlb/TlbConstructor;
.source "HmnFork.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<X:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/ton/tlb/TlbConstructor<",
        "Lorg/ton/hashmap/HmnFork<",
        "TX;>;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHmnFork.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HmnFork.kt\norg/ton/hashmap/HashMapNodeForkTlbConstructor\n+ 2 CellBuilder.kt\norg/ton/cell/CellBuilderKt\n+ 3 TlbCodec.kt\norg/ton/tlb/TlbCodecKt\n+ 4 CellSlice.kt\norg/ton/cell/CellSliceKt\n*L\n1#1,77:1\n131#2:78\n132#2:85\n59#3,3:79\n59#3,3:82\n52#3:87\n52#3:88\n86#4:86\n*S KotlinDebug\n*F\n+ 1 HmnFork.kt\norg/ton/hashmap/HashMapNodeForkTlbConstructor\n*L\n64#1:78\n64#1:85\n65#1:79,3\n66#1:82,3\n72#1:87\n73#1:88\n71#1:86\n*E\n"
.end annotation


# instance fields
.field private final hashmapConstructor:Lorg/ton/tlb/TlbCodec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ton/tlb/TlbCodec<",
            "Lorg/ton/tlb/CellRef<",
            "Lorg/ton/hashmap/HmEdge<",
            "TX;>;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILorg/ton/tlb/TlbCodec;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/ton/tlb/TlbCodec<",
            "TX;>;)V"
        }
    .end annotation

    const-string v0, "x"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    sget-object v0, Lorg/ton/bitstring/BitString;->Companion:Lorg/ton/bitstring/BitString$Companion;

    invoke-virtual {v0}, Lorg/ton/bitstring/BitString$Companion;->empty()Lorg/ton/bitstring/BitString;

    move-result-object v0

    const-string v1, "hmn_fork#_ {n:#} {X:Type} left:^(Hashmap n X) right:^(Hashmap n X) = HashmapNode (n + 1) X;"

    .line 55
    invoke-direct {p0, v1, v0}, Lorg/ton/tlb/TlbConstructor;-><init>(Ljava/lang/String;Lorg/ton/bitstring/BitString;)V

    .line 59
    sget-object v0, Lorg/ton/tlb/CellRef;->Companion:Lorg/ton/tlb/CellRef$Companion;

    sget-object v1, Lorg/ton/hashmap/HmEdge;->Companion:Lorg/ton/hashmap/HmEdge$Companion;

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v1, p1, p2}, Lorg/ton/hashmap/HmEdge$Companion;->tlbCodec(ILorg/ton/tlb/TlbCodec;)Lorg/ton/tlb/TlbCodec;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/ton/tlb/CellRef$Companion;->tlbCodec(Lorg/ton/tlb/TlbCodec;)Lorg/ton/tlb/TlbCodec;

    move-result-object p1

    iput-object p1, p0, Lorg/ton/hashmap/HashMapNodeForkTlbConstructor;->hashmapConstructor:Lorg/ton/tlb/TlbCodec;

    return-void
.end method


# virtual methods
.method public bridge synthetic loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;
    .locals 0

    .line 52
    invoke-virtual {p0, p1}, Lorg/ton/hashmap/HashMapNodeForkTlbConstructor;->loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/hashmap/HmnFork;

    move-result-object p1

    return-object p1
.end method

.method public loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/hashmap/HmnFork;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ton/cell/CellSlice;",
            ")",
            "Lorg/ton/hashmap/HmnFork<",
            "TX;>;"
        }
    .end annotation

    const-string v0, "cellSlice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lorg/ton/hashmap/HashMapNodeForkTlbConstructor;->hashmapConstructor:Lorg/ton/tlb/TlbCodec;

    .line 52
    invoke-interface {v0, p1}, Lorg/ton/tlb/TlbLoader;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object v0

    .line 72
    check-cast v0, Lorg/ton/tlb/CellRef;

    .line 73
    iget-object v1, p0, Lorg/ton/hashmap/HashMapNodeForkTlbConstructor;->hashmapConstructor:Lorg/ton/tlb/TlbCodec;

    .line 52
    invoke-interface {v1, p1}, Lorg/ton/tlb/TlbLoader;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object p1

    .line 73
    check-cast p1, Lorg/ton/tlb/CellRef;

    .line 74
    new-instance v1, Lorg/ton/hashmap/HmnFork;

    invoke-direct {v1, v0, p1}, Lorg/ton/hashmap/HmnFork;-><init>(Lorg/ton/tlb/CellRef;Lorg/ton/tlb/CellRef;)V

    return-object v1
.end method

.method public bridge synthetic storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V
    .locals 0

    .line 52
    check-cast p2, Lorg/ton/hashmap/HmnFork;

    invoke-virtual {p0, p1, p2}, Lorg/ton/hashmap/HashMapNodeForkTlbConstructor;->storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/hashmap/HmnFork;)V

    return-void
.end method

.method public storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/hashmap/HmnFork;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ton/cell/CellBuilder;",
            "Lorg/ton/hashmap/HmnFork<",
            "TX;>;)V"
        }
    .end annotation

    const-string v0, "cellBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lorg/ton/hashmap/HashMapNodeForkTlbConstructor;->hashmapConstructor:Lorg/ton/tlb/TlbCodec;

    invoke-virtual {p2}, Lorg/ton/hashmap/HmnFork;->getLeft()Lorg/ton/tlb/CellRef;

    move-result-object v1

    .line 60
    invoke-interface {v0, p1, v1}, Lorg/ton/tlb/TlbStorer;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    .line 66
    iget-object v0, p0, Lorg/ton/hashmap/HashMapNodeForkTlbConstructor;->hashmapConstructor:Lorg/ton/tlb/TlbCodec;

    invoke-virtual {p2}, Lorg/ton/hashmap/HmnFork;->getRight()Lorg/ton/tlb/CellRef;

    move-result-object p2

    .line 60
    invoke-interface {v0, p1, p2}, Lorg/ton/tlb/TlbStorer;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    return-void
.end method
