.class final Lorg/ton/block/MerkleUpdateTlbConstructor;
.super Lorg/ton/tlb/TlbConstructor;
.source "MerkleUpdate.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<X:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/ton/tlb/TlbConstructor<",
        "Lorg/ton/block/MerkleUpdate<",
        "TX;>;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMerkleUpdate.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MerkleUpdate.kt\norg/ton/block/MerkleUpdateTlbConstructor\n+ 2 CellBuilder.kt\norg/ton/cell/CellBuilderKt\n+ 3 TlbCodec.kt\norg/ton/tlb/TlbCodecKt\n+ 4 CellSlice.kt\norg/ton/cell/CellSliceKt\n*L\n1#1,78:1\n131#2:79\n132#2:86\n59#3,3:80\n59#3,3:83\n52#3:88\n52#3:89\n86#4:87\n*S KotlinDebug\n*F\n+ 1 MerkleUpdate.kt\norg/ton/block/MerkleUpdateTlbConstructor\n*L\n56#1:79\n56#1:86\n62#1:80,3\n63#1:83,3\n73#1:88\n74#1:89\n68#1:87\n*E\n"
.end annotation


# instance fields
.field private final xCellRef:Lorg/ton/tlb/TlbCodec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ton/tlb/TlbCodec<",
            "Lorg/ton/tlb/CellRef<",
            "TX;>;>;"
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

    const-string v0, "!merkle_update#04 {X:Type} old_hash:bits256 new_hash:bits256 old_depth:uint16 new_depth:uint16 old:^X new:^X = MERKLE_UPDATE X"

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 48
    invoke-direct {p0, v0, v1, v2, v1}, Lorg/ton/tlb/TlbConstructor;-><init>(Ljava/lang/String;Lorg/ton/bitstring/BitString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 51
    sget-object v0, Lorg/ton/tlb/CellRef;->Companion:Lorg/ton/tlb/CellRef$Companion;

    invoke-virtual {v0, p1}, Lorg/ton/tlb/CellRef$Companion;->tlbCodec(Lorg/ton/tlb/TlbCodec;)Lorg/ton/tlb/TlbCodec;

    move-result-object p1

    iput-object p1, p0, Lorg/ton/block/MerkleUpdateTlbConstructor;->xCellRef:Lorg/ton/tlb/TlbCodec;

    return-void
.end method


# virtual methods
.method public bridge synthetic loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;
    .locals 0

    .line 46
    invoke-virtual {p0, p1}, Lorg/ton/block/MerkleUpdateTlbConstructor;->loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/MerkleUpdate;

    move-result-object p1

    return-object p1
.end method

.method public loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/MerkleUpdate;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ton/cell/CellSlice;",
            ")",
            "Lorg/ton/block/MerkleUpdate<",
            "TX;>;"
        }
    .end annotation

    const-string v0, "cellSlice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x100

    .line 69
    invoke-interface {p1, v0}, Lorg/ton/cell/CellSlice;->loadBits(I)Lorg/ton/bitstring/BitString;

    move-result-object v2

    .line 70
    invoke-interface {p1, v0}, Lorg/ton/cell/CellSlice;->loadBits(I)Lorg/ton/bitstring/BitString;

    move-result-object v3

    .line 71
    invoke-interface {p1}, Lorg/ton/cell/CellSlice;->loadUInt16-Mh2AYeg()S

    move-result v4

    .line 72
    invoke-interface {p1}, Lorg/ton/cell/CellSlice;->loadUInt16-Mh2AYeg()S

    move-result v5

    .line 73
    iget-object v0, p0, Lorg/ton/block/MerkleUpdateTlbConstructor;->xCellRef:Lorg/ton/tlb/TlbCodec;

    .line 52
    invoke-interface {v0, p1}, Lorg/ton/tlb/TlbLoader;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object v0

    .line 73
    move-object v6, v0

    check-cast v6, Lorg/ton/tlb/CellRef;

    .line 74
    iget-object v0, p0, Lorg/ton/block/MerkleUpdateTlbConstructor;->xCellRef:Lorg/ton/tlb/TlbCodec;

    .line 52
    invoke-interface {v0, p1}, Lorg/ton/tlb/TlbLoader;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object p1

    .line 74
    move-object v7, p1

    check-cast v7, Lorg/ton/tlb/CellRef;

    .line 75
    new-instance p1, Lorg/ton/block/MerkleUpdate;

    const/4 v8, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v8}, Lorg/ton/block/MerkleUpdate;-><init>(Lorg/ton/bitstring/BitString;Lorg/ton/bitstring/BitString;SSLorg/ton/tlb/CellRef;Lorg/ton/tlb/CellRef;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p1
.end method

.method public bridge synthetic storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V
    .locals 0

    .line 46
    check-cast p2, Lorg/ton/block/MerkleUpdate;

    invoke-virtual {p0, p1, p2}, Lorg/ton/block/MerkleUpdateTlbConstructor;->storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/MerkleUpdate;)V

    return-void
.end method

.method public storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/MerkleUpdate;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ton/cell/CellBuilder;",
            "Lorg/ton/block/MerkleUpdate<",
            "TX;>;)V"
        }
    .end annotation

    const-string v0, "cellBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 57
    invoke-interface {p1, v0}, Lorg/ton/cell/CellBuilder;->setExotic(Z)V

    .line 58
    invoke-virtual {p2}, Lorg/ton/block/MerkleUpdate;->getOldHash()Lorg/ton/bitstring/BitString;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/ton/cell/CellBuilder;->storeBits(Lorg/ton/bitstring/BitString;)Lorg/ton/cell/CellBuilder;

    .line 59
    invoke-virtual {p2}, Lorg/ton/block/MerkleUpdate;->getNewHash()Lorg/ton/bitstring/BitString;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/ton/cell/CellBuilder;->storeBits(Lorg/ton/bitstring/BitString;)Lorg/ton/cell/CellBuilder;

    .line 60
    invoke-virtual {p2}, Lorg/ton/block/MerkleUpdate;->getOldDepth-Mh2AYeg()S

    move-result v0

    invoke-interface {p1, v0}, Lorg/ton/cell/CellBuilder;->storeUInt16-xj2QHRw(S)Lorg/ton/cell/CellBuilder;

    .line 61
    invoke-virtual {p2}, Lorg/ton/block/MerkleUpdate;->getNewDepth-Mh2AYeg()S

    move-result v0

    invoke-interface {p1, v0}, Lorg/ton/cell/CellBuilder;->storeUInt16-xj2QHRw(S)Lorg/ton/cell/CellBuilder;

    .line 62
    iget-object v0, p0, Lorg/ton/block/MerkleUpdateTlbConstructor;->xCellRef:Lorg/ton/tlb/TlbCodec;

    invoke-virtual {p2}, Lorg/ton/block/MerkleUpdate;->getOld()Lorg/ton/tlb/CellRef;

    move-result-object v1

    .line 60
    invoke-interface {v0, p1, v1}, Lorg/ton/tlb/TlbStorer;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    .line 63
    iget-object v0, p0, Lorg/ton/block/MerkleUpdateTlbConstructor;->xCellRef:Lorg/ton/tlb/TlbCodec;

    invoke-virtual {p2}, Lorg/ton/block/MerkleUpdate;->getNew()Lorg/ton/tlb/CellRef;

    move-result-object p2

    .line 60
    invoke-interface {v0, p1, p2}, Lorg/ton/tlb/TlbStorer;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    return-void
.end method
