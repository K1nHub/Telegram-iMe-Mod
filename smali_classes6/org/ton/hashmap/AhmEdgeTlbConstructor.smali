.class final Lorg/ton/hashmap/AhmEdgeTlbConstructor;
.super Lorg/ton/tlb/TlbConstructor;
.source "HashmapAug.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<X:",
        "Ljava/lang/Object;",
        "Y:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/ton/tlb/TlbConstructor<",
        "Lorg/ton/hashmap/HashmapAug$AhmEdge<",
        "TX;TY;>;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHashmapAug.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HashmapAug.kt\norg/ton/hashmap/AhmEdgeTlbConstructor\n+ 2 TlbCodec.kt\norg/ton/tlb/TlbCodecKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,218:1\n56#2:219\n52#2:220\n64#2:222\n59#2,3:223\n1#3:221\n*S KotlinDebug\n*F\n+ 1 HashmapAug.kt\norg/ton/hashmap/AhmEdgeTlbConstructor\n*L\n205#1:219\n207#1:220\n213#1:222\n215#1:223,3\n*E\n"
.end annotation


# instance fields
.field private final n:I

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
.method public constructor <init>(ILorg/ton/tlb/TlbCodec;Lorg/ton/tlb/TlbCodec;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/ton/tlb/TlbCodec<",
            "TX;>;",
            "Lorg/ton/tlb/TlbCodec<",
            "TY;>;)V"
        }
    .end annotation

    const-string v0, "x"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "y"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ahm_edge#_ {n:#} {X:Type} {Y:Type} {l:#} {m:#} label:(HmLabel ~l n) {n = (~m) + l} node:(HashmapAugNode m X Y) = HashmapAug n X Y"

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 201
    invoke-direct {p0, v0, v1, v2, v1}, Lorg/ton/tlb/TlbConstructor;-><init>(Ljava/lang/String;Lorg/ton/bitstring/BitString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 198
    iput p1, p0, Lorg/ton/hashmap/AhmEdgeTlbConstructor;->n:I

    .line 199
    iput-object p2, p0, Lorg/ton/hashmap/AhmEdgeTlbConstructor;->x:Lorg/ton/tlb/TlbCodec;

    .line 200
    iput-object p3, p0, Lorg/ton/hashmap/AhmEdgeTlbConstructor;->y:Lorg/ton/tlb/TlbCodec;

    return-void
.end method


# virtual methods
.method public bridge synthetic loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;
    .locals 0

    .line 197
    invoke-virtual {p0, p1}, Lorg/ton/hashmap/AhmEdgeTlbConstructor;->loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/hashmap/HashmapAug$AhmEdge;

    move-result-object p1

    return-object p1
.end method

.method public loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/hashmap/HashmapAug$AhmEdge;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ton/cell/CellSlice;",
            ")",
            "Lorg/ton/hashmap/HashmapAug$AhmEdge<",
            "TX;TY;>;"
        }
    .end annotation

    const-string v0, "cellSlice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 205
    sget-object v0, Lorg/ton/hashmap/HmLabel;->Companion:Lorg/ton/hashmap/HmLabel$Companion;

    iget v1, p0, Lorg/ton/hashmap/AhmEdgeTlbConstructor;->n:I

    invoke-virtual {v0, v1}, Lorg/ton/hashmap/HmLabel$Companion;->tlbCodec(I)Lorg/ton/tlb/TlbNegatedCodec;

    move-result-object v0

    .line 56
    invoke-interface {v0, p1}, Lorg/ton/tlb/TlbNegatedLoader;->loadNegatedTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/tlb/TlbNegatedResult;

    move-result-object v0

    .line 205
    invoke-virtual {v0}, Lorg/ton/tlb/TlbNegatedResult;->component1()I

    move-result v1

    invoke-virtual {v0}, Lorg/ton/tlb/TlbNegatedResult;->component2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/ton/hashmap/HmLabel;

    .line 206
    iget v2, p0, Lorg/ton/hashmap/AhmEdgeTlbConstructor;->n:I

    sub-int/2addr v2, v1

    .line 207
    sget-object v1, Lorg/ton/hashmap/HashmapAugNode;->Companion:Lorg/ton/hashmap/HashmapAugNode$Companion;

    iget-object v3, p0, Lorg/ton/hashmap/AhmEdgeTlbConstructor;->x:Lorg/ton/tlb/TlbCodec;

    iget-object v4, p0, Lorg/ton/hashmap/AhmEdgeTlbConstructor;->y:Lorg/ton/tlb/TlbCodec;

    invoke-virtual {v1, v3, v4, v2}, Lorg/ton/hashmap/HashmapAugNode$Companion;->tlbCodec(Lorg/ton/tlb/TlbCodec;Lorg/ton/tlb/TlbCodec;I)Lorg/ton/tlb/TlbCodec;

    move-result-object v1

    .line 52
    invoke-interface {v1, p1}, Lorg/ton/tlb/TlbLoader;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object p1

    .line 207
    check-cast p1, Lorg/ton/hashmap/HashmapAugNode;

    .line 208
    sget-object v1, Lorg/ton/hashmap/HashmapAug;->Companion:Lorg/ton/hashmap/HashmapAug$Companion;

    iget v2, p0, Lorg/ton/hashmap/AhmEdgeTlbConstructor;->n:I

    invoke-virtual {v1, v2, v0, p1}, Lorg/ton/hashmap/HashmapAug$Companion;->edge(ILorg/ton/hashmap/HmLabel;Lorg/ton/hashmap/HashmapAugNode;)Lorg/ton/hashmap/HashmapAug$AhmEdge;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V
    .locals 0

    .line 197
    check-cast p2, Lorg/ton/hashmap/HashmapAug$AhmEdge;

    invoke-virtual {p0, p1, p2}, Lorg/ton/hashmap/AhmEdgeTlbConstructor;->storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/hashmap/HashmapAug$AhmEdge;)V

    return-void
.end method

.method public storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/hashmap/HashmapAug$AhmEdge;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ton/cell/CellBuilder;",
            "Lorg/ton/hashmap/HashmapAug$AhmEdge<",
            "TX;TY;>;)V"
        }
    .end annotation

    const-string v0, "cellBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 212
    invoke-interface {p2}, Lorg/ton/hashmap/HashmapAug$AhmEdge;->getN()I

    move-result v0

    iget v1, p0, Lorg/ton/hashmap/AhmEdgeTlbConstructor;->n:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 213
    sget-object v0, Lorg/ton/hashmap/HmLabel;->Companion:Lorg/ton/hashmap/HmLabel$Companion;

    invoke-virtual {v0, v1}, Lorg/ton/hashmap/HmLabel$Companion;->tlbCodec(I)Lorg/ton/tlb/TlbNegatedCodec;

    move-result-object v0

    invoke-interface {p2}, Lorg/ton/hashmap/HashmapAug$AhmEdge;->getLabel()Lorg/ton/hashmap/HmLabel;

    move-result-object v1

    .line 64
    invoke-interface {v0, p1, v1}, Lorg/ton/tlb/TlbNegatedStorer;->storeNegatedTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)I

    move-result v0

    .line 214
    iget v1, p0, Lorg/ton/hashmap/AhmEdgeTlbConstructor;->n:I

    sub-int/2addr v1, v0

    .line 215
    sget-object v0, Lorg/ton/hashmap/HashmapAugNode;->Companion:Lorg/ton/hashmap/HashmapAugNode$Companion;

    iget-object v2, p0, Lorg/ton/hashmap/AhmEdgeTlbConstructor;->x:Lorg/ton/tlb/TlbCodec;

    iget-object v3, p0, Lorg/ton/hashmap/AhmEdgeTlbConstructor;->y:Lorg/ton/tlb/TlbCodec;

    invoke-virtual {v0, v2, v3, v1}, Lorg/ton/hashmap/HashmapAugNode$Companion;->tlbCodec(Lorg/ton/tlb/TlbCodec;Lorg/ton/tlb/TlbCodec;I)Lorg/ton/tlb/TlbCodec;

    move-result-object v0

    invoke-interface {p2}, Lorg/ton/hashmap/HashmapAug$AhmEdge;->getNode()Lorg/ton/hashmap/HashmapAugNode;

    move-result-object p2

    .line 60
    invoke-interface {v0, p1, p2}, Lorg/ton/tlb/TlbStorer;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    return-void

    .line 212
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid n, expected: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lorg/ton/hashmap/AhmEdgeTlbConstructor;->n:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", actual: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lorg/ton/hashmap/HashmapAug$AhmEdge;->getN()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
