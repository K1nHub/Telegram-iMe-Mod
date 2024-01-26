.class final Lorg/ton/hashmap/HashMapEdgeTlbConstructor;
.super Lorg/ton/tlb/TlbConstructor;
.source "HmEdge.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<X:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/ton/tlb/TlbConstructor<",
        "Lorg/ton/hashmap/HmEdge<",
        "TX;>;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHmEdge.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HmEdge.kt\norg/ton/hashmap/HashMapEdgeTlbConstructor\n+ 2 TlbCodec.kt\norg/ton/tlb/TlbCodecKt\n*L\n1#1,194:1\n64#2:195\n59#2,3:196\n56#2:199\n52#2:200\n*S KotlinDebug\n*F\n+ 1 HmEdge.kt\norg/ton/hashmap/HashMapEdgeTlbConstructor\n*L\n180#1:195\n182#1:196,3\n188#1:199\n190#1:200\n*E\n"
.end annotation


# instance fields
.field private final hashMapLabelCodec:Lorg/ton/tlb/TlbNegatedCodec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ton/tlb/TlbNegatedCodec<",
            "Lorg/ton/hashmap/HmLabel;",
            ">;"
        }
    .end annotation
.end field

.field private final n:I

.field private final x:Lorg/ton/tlb/TlbCodec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ton/tlb/TlbCodec<",
            "TX;>;"
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

    .line 172
    sget-object v0, Lorg/ton/bitstring/BitString;->Companion:Lorg/ton/bitstring/BitString$Companion;

    invoke-virtual {v0}, Lorg/ton/bitstring/BitString$Companion;->empty()Lorg/ton/bitstring/BitString;

    move-result-object v0

    const-string v1, "hm_edge#_ {n:#} {X:Type} {l:#} {m:#} label:(HmLabel ~l n) {n = (~m) + l} node:(HashmapNode m X) = Hashmap n X;"

    .line 170
    invoke-direct {p0, v1, v0}, Lorg/ton/tlb/TlbConstructor;-><init>(Ljava/lang/String;Lorg/ton/bitstring/BitString;)V

    .line 168
    iput p1, p0, Lorg/ton/hashmap/HashMapEdgeTlbConstructor;->n:I

    .line 169
    iput-object p2, p0, Lorg/ton/hashmap/HashMapEdgeTlbConstructor;->x:Lorg/ton/tlb/TlbCodec;

    .line 174
    sget-object p2, Lorg/ton/hashmap/HmLabel;->Companion:Lorg/ton/hashmap/HmLabel$Companion;

    invoke-virtual {p2, p1}, Lorg/ton/hashmap/HmLabel$Companion;->tlbCodec(I)Lorg/ton/tlb/TlbNegatedCodec;

    move-result-object p1

    iput-object p1, p0, Lorg/ton/hashmap/HashMapEdgeTlbConstructor;->hashMapLabelCodec:Lorg/ton/tlb/TlbNegatedCodec;

    return-void
.end method


# virtual methods
.method public bridge synthetic loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;
    .locals 0

    .line 167
    invoke-virtual {p0, p1}, Lorg/ton/hashmap/HashMapEdgeTlbConstructor;->loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/hashmap/HmEdge;

    move-result-object p1

    return-object p1
.end method

.method public loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/hashmap/HmEdge;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ton/cell/CellSlice;",
            ")",
            "Lorg/ton/hashmap/HmEdge<",
            "TX;>;"
        }
    .end annotation

    const-string v0, "cellSlice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 188
    iget-object v0, p0, Lorg/ton/hashmap/HashMapEdgeTlbConstructor;->hashMapLabelCodec:Lorg/ton/tlb/TlbNegatedCodec;

    .line 56
    invoke-interface {v0, p1}, Lorg/ton/tlb/TlbNegatedLoader;->loadNegatedTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/tlb/TlbNegatedResult;

    move-result-object v0

    .line 188
    invoke-virtual {v0}, Lorg/ton/tlb/TlbNegatedResult;->component1()I

    move-result v1

    invoke-virtual {v0}, Lorg/ton/tlb/TlbNegatedResult;->component2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/ton/hashmap/HmLabel;

    .line 189
    iget v2, p0, Lorg/ton/hashmap/HashMapEdgeTlbConstructor;->n:I

    sub-int/2addr v2, v1

    .line 190
    sget-object v1, Lorg/ton/hashmap/HashMapNode;->Companion:Lorg/ton/hashmap/HashMapNode$Companion;

    iget-object v3, p0, Lorg/ton/hashmap/HashMapEdgeTlbConstructor;->x:Lorg/ton/tlb/TlbCodec;

    invoke-virtual {v1, v2, v3}, Lorg/ton/hashmap/HashMapNode$Companion;->tlbCodec(ILorg/ton/tlb/TlbCodec;)Lorg/ton/tlb/TlbCodec;

    move-result-object v1

    .line 52
    invoke-interface {v1, p1}, Lorg/ton/tlb/TlbLoader;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object p1

    .line 190
    check-cast p1, Lorg/ton/hashmap/HashMapNode;

    .line 191
    new-instance v1, Lorg/ton/hashmap/HmEdge;

    invoke-direct {v1, v0, p1}, Lorg/ton/hashmap/HmEdge;-><init>(Lorg/ton/hashmap/HmLabel;Lorg/ton/hashmap/HashMapNode;)V

    return-object v1
.end method

.method public bridge synthetic storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V
    .locals 0

    .line 167
    check-cast p2, Lorg/ton/hashmap/HmEdge;

    invoke-virtual {p0, p1, p2}, Lorg/ton/hashmap/HashMapEdgeTlbConstructor;->storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/hashmap/HmEdge;)V

    return-void
.end method

.method public storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/hashmap/HmEdge;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ton/cell/CellBuilder;",
            "Lorg/ton/hashmap/HmEdge<",
            "TX;>;)V"
        }
    .end annotation

    const-string v0, "cellBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lorg/ton/hashmap/HashMapEdgeTlbConstructor;->hashMapLabelCodec:Lorg/ton/tlb/TlbNegatedCodec;

    invoke-virtual {p2}, Lorg/ton/hashmap/HmEdge;->getLabel()Lorg/ton/hashmap/HmLabel;

    move-result-object v1

    .line 64
    invoke-interface {v0, p1, v1}, Lorg/ton/tlb/TlbNegatedStorer;->storeNegatedTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)I

    move-result v0

    .line 181
    iget v1, p0, Lorg/ton/hashmap/HashMapEdgeTlbConstructor;->n:I

    sub-int/2addr v1, v0

    .line 182
    sget-object v0, Lorg/ton/hashmap/HashMapNode;->Companion:Lorg/ton/hashmap/HashMapNode$Companion;

    iget-object v2, p0, Lorg/ton/hashmap/HashMapEdgeTlbConstructor;->x:Lorg/ton/tlb/TlbCodec;

    invoke-virtual {v0, v1, v2}, Lorg/ton/hashmap/HashMapNode$Companion;->tlbCodec(ILorg/ton/tlb/TlbCodec;)Lorg/ton/tlb/TlbCodec;

    move-result-object v0

    invoke-virtual {p2}, Lorg/ton/hashmap/HmEdge;->getNode()Lorg/ton/hashmap/HashMapNode;

    move-result-object p2

    .line 60
    invoke-interface {v0, p1, p2}, Lorg/ton/tlb/TlbStorer;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    return-void
.end method
