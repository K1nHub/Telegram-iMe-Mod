.class final Lorg/ton/hashmap/AhmeEmptyTlbConstructor;
.super Lorg/ton/tlb/TlbConstructor;
.source "HashmapAugE.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<X:",
        "Ljava/lang/Object;",
        "Y:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/ton/tlb/TlbConstructor<",
        "Lorg/ton/hashmap/HashmapAugE$AhmeEmpty<",
        "TX;TY;>;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHashmapAugE.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HashmapAugE.kt\norg/ton/hashmap/AhmeEmptyTlbConstructor\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,157:1\n1#2:158\n*E\n"
.end annotation


# instance fields
.field private final n:I

.field private final y:Lorg/ton/tlb/TlbCodec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ton/tlb/TlbCodec<",
            "TY;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILorg/ton/tlb/TlbCodec;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/ton/tlb/TlbCodec<",
            "TY;>;)V"
        }
    .end annotation

    const-string v0, "y"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ahme_empty$0 {n:#} {X:Type} {Y:Type} extra:Y = HashmapAugE n X Y"

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 122
    invoke-direct {p0, v0, v1, v2, v1}, Lorg/ton/tlb/TlbConstructor;-><init>(Ljava/lang/String;Lorg/ton/bitstring/BitString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 120
    iput p1, p0, Lorg/ton/hashmap/AhmeEmptyTlbConstructor;->n:I

    .line 121
    iput-object p2, p0, Lorg/ton/hashmap/AhmeEmptyTlbConstructor;->y:Lorg/ton/tlb/TlbCodec;

    return-void
.end method


# virtual methods
.method public bridge synthetic loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;
    .locals 0

    .line 119
    invoke-virtual {p0, p1}, Lorg/ton/hashmap/AhmeEmptyTlbConstructor;->loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/hashmap/HashmapAugE$AhmeEmpty;

    move-result-object p1

    return-object p1
.end method

.method public loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/hashmap/HashmapAugE$AhmeEmpty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ton/cell/CellSlice;",
            ")",
            "Lorg/ton/hashmap/HashmapAugE$AhmeEmpty<",
            "TX;TY;>;"
        }
    .end annotation

    const-string v0, "cellSlice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lorg/ton/hashmap/AhmeEmptyTlbConstructor;->y:Lorg/ton/tlb/TlbCodec;

    invoke-interface {v0, p1}, Lorg/ton/tlb/TlbLoader;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object p1

    .line 127
    new-instance v0, Lorg/ton/hashmap/AhmeEmptyImpl;

    iget v1, p0, Lorg/ton/hashmap/AhmeEmptyTlbConstructor;->n:I

    invoke-direct {v0, v1, p1}, Lorg/ton/hashmap/AhmeEmptyImpl;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public bridge synthetic storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V
    .locals 0

    .line 119
    check-cast p2, Lorg/ton/hashmap/HashmapAugE$AhmeEmpty;

    invoke-virtual {p0, p1, p2}, Lorg/ton/hashmap/AhmeEmptyTlbConstructor;->storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/hashmap/HashmapAugE$AhmeEmpty;)V

    return-void
.end method

.method public storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/hashmap/HashmapAugE$AhmeEmpty;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ton/cell/CellBuilder;",
            "Lorg/ton/hashmap/HashmapAugE$AhmeEmpty<",
            "TX;TY;>;)V"
        }
    .end annotation

    const-string v0, "cellBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    invoke-interface {p2}, Lorg/ton/hashmap/HashmapAugE$AhmeEmpty;->getN()I

    move-result v0

    iget v1, p0, Lorg/ton/hashmap/AhmeEmptyTlbConstructor;->n:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 132
    iget-object v0, p0, Lorg/ton/hashmap/AhmeEmptyTlbConstructor;->y:Lorg/ton/tlb/TlbCodec;

    invoke-interface {p2}, Lorg/ton/hashmap/HashmapAugE$AhmeEmpty;->getExtra()Ljava/lang/Object;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lorg/ton/tlb/TlbStorer;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    return-void

    .line 131
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "n mismatch, expected: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lorg/ton/hashmap/AhmeEmptyTlbConstructor;->n:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", actual: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lorg/ton/hashmap/HashmapAugE$AhmeEmpty;->getN()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
