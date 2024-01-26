.class final Lorg/ton/block/TlbConstructor;
.super Lorg/ton/tlb/TlbConstructor;
.source "Block.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/ton/tlb/TlbConstructor<",
        "Lorg/ton/block/Block;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBlock.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Block.kt\norg/ton/block/TlbConstructor\n+ 2 CellBuilder.kt\norg/ton/cell/CellBuilderKt\n+ 3 CellSlice.kt\norg/ton/cell/CellSliceKt\n+ 4 CellRef.kt\norg/ton/tlb/CellRefKt\n*L\n1#1,68:1\n131#2,2:69\n86#3:71\n14#4:72\n14#4:73\n14#4:74\n14#4:75\n*S KotlinDebug\n*F\n+ 1 Block.kt\norg/ton/block/TlbConstructor\n*L\n49#1:69,2\n59#1:71\n61#1:72\n62#1:73\n63#1:74\n64#1:75\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lorg/ton/block/TlbConstructor;

.field private static final merkleUpdate:Lorg/ton/tlb/TlbCodec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ton/tlb/TlbCodec<",
            "Lorg/ton/block/MerkleUpdate<",
            "Lorg/ton/block/ShardState;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/ton/block/TlbConstructor;

    invoke-direct {v0}, Lorg/ton/block/TlbConstructor;-><init>()V

    sput-object v0, Lorg/ton/block/TlbConstructor;->INSTANCE:Lorg/ton/block/TlbConstructor;

    .line 44
    sget-object v0, Lorg/ton/block/MerkleUpdate;->Companion:Lorg/ton/block/MerkleUpdate$Companion;

    sget-object v1, Lorg/ton/block/ShardState;->Companion:Lorg/ton/block/ShardState$Companion;

    invoke-virtual {v0, v1}, Lorg/ton/block/MerkleUpdate$Companion;->tlbCodec(Lorg/ton/tlb/TlbCodec;)Lorg/ton/tlb/TlbCodec;

    move-result-object v0

    sput-object v0, Lorg/ton/block/TlbConstructor;->merkleUpdate:Lorg/ton/tlb/TlbCodec;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const-string v0, "block#11ef55aa global_id:int32 info:^BlockInfo value_flow:^ValueFlow state_update:^(MERKLE_UPDATE ShardState) extra:^BlockExtra = Block;"

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 38
    invoke-direct {p0, v0, v1, v2, v1}, Lorg/ton/tlb/TlbConstructor;-><init>(Ljava/lang/String;Lorg/ton/bitstring/BitString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;
    .locals 0

    .line 38
    invoke-virtual {p0, p1}, Lorg/ton/block/TlbConstructor;->loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/Block;

    move-result-object p1

    return-object p1
.end method

.method public loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/Block;
    .locals 7

    const-string v0, "cellSlice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x20

    .line 60
    invoke-interface {p1, v0}, Lorg/ton/cell/CellSlice;->loadInt(I)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    .line 61
    invoke-interface {p1}, Lorg/ton/cell/CellSlice;->loadRef()Lorg/ton/cell/Cell;

    move-result-object v0

    sget-object v1, Lorg/ton/block/BlockInfo;->Companion:Lorg/ton/block/BlockInfo$Companion;

    .line 14
    sget-object v3, Lorg/ton/tlb/CellRef;->Companion:Lorg/ton/tlb/CellRef$Companion;

    invoke-virtual {v3, v0, v1}, Lorg/ton/tlb/CellRef$Companion;->valueOf(Lorg/ton/cell/Cell;Lorg/ton/tlb/TlbCodec;)Lorg/ton/tlb/CellRef;

    move-result-object v0

    .line 62
    invoke-interface {p1}, Lorg/ton/cell/CellSlice;->loadRef()Lorg/ton/cell/Cell;

    move-result-object v1

    sget-object v4, Lorg/ton/block/ValueFlow;->Companion:Lorg/ton/block/ValueFlow$Companion;

    .line 14
    invoke-virtual {v3, v1, v4}, Lorg/ton/tlb/CellRef$Companion;->valueOf(Lorg/ton/cell/Cell;Lorg/ton/tlb/TlbCodec;)Lorg/ton/tlb/CellRef;

    move-result-object v4

    .line 63
    invoke-interface {p1}, Lorg/ton/cell/CellSlice;->loadRef()Lorg/ton/cell/Cell;

    move-result-object v1

    sget-object v5, Lorg/ton/block/TlbConstructor;->merkleUpdate:Lorg/ton/tlb/TlbCodec;

    .line 14
    invoke-virtual {v3, v1, v5}, Lorg/ton/tlb/CellRef$Companion;->valueOf(Lorg/ton/cell/Cell;Lorg/ton/tlb/TlbCodec;)Lorg/ton/tlb/CellRef;

    move-result-object v5

    .line 64
    invoke-interface {p1}, Lorg/ton/cell/CellSlice;->loadRef()Lorg/ton/cell/Cell;

    move-result-object p1

    sget-object v1, Lorg/ton/block/BlockExtra;->Companion:Lorg/ton/block/BlockExtra$Companion;

    .line 14
    invoke-virtual {v3, p1, v1}, Lorg/ton/tlb/CellRef$Companion;->valueOf(Lorg/ton/cell/Cell;Lorg/ton/tlb/TlbCodec;)Lorg/ton/tlb/CellRef;

    move-result-object v6

    .line 65
    new-instance p1, Lorg/ton/block/Block;

    move-object v1, p1

    move-object v3, v0

    invoke-direct/range {v1 .. v6}, Lorg/ton/block/Block;-><init>(ILorg/ton/tlb/CellRef;Lorg/ton/tlb/CellRef;Lorg/ton/tlb/CellRef;Lorg/ton/tlb/CellRef;)V

    return-object p1
.end method

.method public bridge synthetic storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V
    .locals 0

    .line 38
    check-cast p2, Lorg/ton/block/Block;

    invoke-virtual {p0, p1, p2}, Lorg/ton/block/TlbConstructor;->storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/Block;)V

    return-void
.end method

.method public storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/Block;)V
    .locals 2

    const-string v0, "cellBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Lorg/ton/block/Block;->getGlobalId()I

    move-result v0

    const/16 v1, 0x20

    invoke-interface {p1, v0, v1}, Lorg/ton/cell/CellBuilder;->storeInt(II)Lorg/ton/cell/CellBuilder;

    .line 51
    invoke-virtual {p2}, Lorg/ton/block/Block;->getInfo()Lorg/ton/tlb/CellRef;

    move-result-object v0

    sget-object v1, Lorg/ton/block/BlockInfo;->Companion:Lorg/ton/block/BlockInfo$Companion;

    invoke-interface {v0, v1}, Lorg/ton/tlb/CellRef;->toCell(Lorg/ton/tlb/TlbCodec;)Lorg/ton/cell/Cell;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/ton/cell/CellBuilder;->storeRef(Lorg/ton/cell/Cell;)Lorg/ton/cell/CellBuilder;

    .line 52
    invoke-virtual {p2}, Lorg/ton/block/Block;->getValueFlow()Lorg/ton/tlb/CellRef;

    move-result-object v0

    sget-object v1, Lorg/ton/block/ValueFlow;->Companion:Lorg/ton/block/ValueFlow$Companion;

    invoke-interface {v0, v1}, Lorg/ton/tlb/CellRef;->toCell(Lorg/ton/tlb/TlbCodec;)Lorg/ton/cell/Cell;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/ton/cell/CellBuilder;->storeRef(Lorg/ton/cell/Cell;)Lorg/ton/cell/CellBuilder;

    .line 53
    invoke-virtual {p2}, Lorg/ton/block/Block;->getStateUpdate()Lorg/ton/tlb/CellRef;

    move-result-object v0

    sget-object v1, Lorg/ton/block/TlbConstructor;->merkleUpdate:Lorg/ton/tlb/TlbCodec;

    invoke-interface {v0, v1}, Lorg/ton/tlb/CellRef;->toCell(Lorg/ton/tlb/TlbCodec;)Lorg/ton/cell/Cell;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/ton/cell/CellBuilder;->storeRef(Lorg/ton/cell/Cell;)Lorg/ton/cell/CellBuilder;

    .line 54
    invoke-virtual {p2}, Lorg/ton/block/Block;->getExtra()Lorg/ton/tlb/CellRef;

    move-result-object p2

    sget-object v0, Lorg/ton/block/BlockExtra;->Companion:Lorg/ton/block/BlockExtra$Companion;

    invoke-interface {p2, v0}, Lorg/ton/tlb/CellRef;->toCell(Lorg/ton/tlb/TlbCodec;)Lorg/ton/cell/Cell;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/ton/cell/CellBuilder;->storeRef(Lorg/ton/cell/Cell;)Lorg/ton/cell/CellBuilder;

    return-void
.end method
