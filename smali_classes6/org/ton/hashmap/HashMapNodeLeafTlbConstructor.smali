.class final Lorg/ton/hashmap/HashMapNodeLeafTlbConstructor;
.super Lorg/ton/tlb/TlbConstructor;
.source "HmnLeaf.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<X:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/ton/tlb/TlbConstructor<",
        "Lorg/ton/hashmap/HmnLeaf<",
        "TX;>;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHmnLeaf.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HmnLeaf.kt\norg/ton/hashmap/HashMapNodeLeafTlbConstructor\n+ 2 CellBuilder.kt\norg/ton/cell/CellBuilderKt\n+ 3 TlbCodec.kt\norg/ton/tlb/TlbCodecKt\n+ 4 CellSlice.kt\norg/ton/cell/CellSliceKt\n*L\n1#1,50:1\n131#2:51\n132#2:55\n59#3,3:52\n52#3:57\n86#4:56\n*S KotlinDebug\n*F\n+ 1 HmnLeaf.kt\norg/ton/hashmap/HashMapNodeLeafTlbConstructor\n*L\n39#1:51\n39#1:55\n40#1:52,3\n46#1:57\n45#1:56\n*E\n"
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
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ton/tlb/TlbCodec<",
            "TX;>;)V"
        }
    .end annotation

    const-string v0, "x"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    sget-object v0, Lorg/ton/bitstring/BitString;->Companion:Lorg/ton/bitstring/BitString$Companion;

    invoke-virtual {v0}, Lorg/ton/bitstring/BitString$Companion;->empty()Lorg/ton/bitstring/BitString;

    move-result-object v0

    const-string v1, "hmn_leaf#_ {X:Type} value:X = HashmapNode 0 X;"

    .line 32
    invoke-direct {p0, v1, v0}, Lorg/ton/tlb/TlbConstructor;-><init>(Ljava/lang/String;Lorg/ton/bitstring/BitString;)V

    .line 31
    iput-object p1, p0, Lorg/ton/hashmap/HashMapNodeLeafTlbConstructor;->x:Lorg/ton/tlb/TlbCodec;

    return-void
.end method


# virtual methods
.method public bridge synthetic loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lorg/ton/hashmap/HashMapNodeLeafTlbConstructor;->loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/hashmap/HmnLeaf;

    move-result-object p1

    return-object p1
.end method

.method public loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/hashmap/HmnLeaf;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ton/cell/CellSlice;",
            ")",
            "Lorg/ton/hashmap/HmnLeaf<",
            "TX;>;"
        }
    .end annotation

    const-string v0, "cellSlice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lorg/ton/hashmap/HashMapNodeLeafTlbConstructor;->x:Lorg/ton/tlb/TlbCodec;

    .line 52
    invoke-interface {v0, p1}, Lorg/ton/tlb/TlbLoader;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object p1

    .line 47
    new-instance v0, Lorg/ton/hashmap/HmnLeaf;

    invoke-direct {v0, p1}, Lorg/ton/hashmap/HmnLeaf;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public bridge synthetic storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V
    .locals 0

    .line 30
    check-cast p2, Lorg/ton/hashmap/HmnLeaf;

    invoke-virtual {p0, p1, p2}, Lorg/ton/hashmap/HashMapNodeLeafTlbConstructor;->storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/hashmap/HmnLeaf;)V

    return-void
.end method

.method public storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/hashmap/HmnLeaf;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ton/cell/CellBuilder;",
            "Lorg/ton/hashmap/HmnLeaf<",
            "TX;>;)V"
        }
    .end annotation

    const-string v0, "cellBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    iget-object v0, p0, Lorg/ton/hashmap/HashMapNodeLeafTlbConstructor;->x:Lorg/ton/tlb/TlbCodec;

    invoke-virtual {p2}, Lorg/ton/hashmap/HmnLeaf;->getValue()Ljava/lang/Object;

    move-result-object p2

    .line 60
    invoke-interface {v0, p1, p2}, Lorg/ton/tlb/TlbStorer;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    return-void
.end method
