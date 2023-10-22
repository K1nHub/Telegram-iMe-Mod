.class final Lorg/ton/block/McBlockExtraTlbConstructor;
.super Lorg/ton/tlb/TlbConstructor;
.source "McBlockExtra.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/ton/tlb/TlbConstructor<",
        "Lorg/ton/block/McBlockExtra;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMcBlockExtra.kt\nKotlin\n*S Kotlin\n*F\n+ 1 McBlockExtra.kt\norg/ton/block/McBlockExtraTlbConstructor\n+ 2 CellBuilder.kt\norg/ton/cell/CellBuilderKt\n+ 3 TlbCodec.kt\norg/ton/tlb/TlbCodecKt\n+ 4 CellRef.kt\norg/ton/tlb/CellRefKt\n+ 5 CellSlice.kt\norg/ton/cell/CellSliceKt\n*L\n1#1,119:1\n131#2:120\n132#2:132\n59#3,3:121\n59#3,3:124\n59#3,3:129\n52#3:134\n52#3:135\n52#3:136\n106#4,2:127\n110#4:137\n14#4:138\n86#5:133\n*S KotlinDebug\n*F\n+ 1 McBlockExtra.kt\norg/ton/block/McBlockExtraTlbConstructor\n*L\n76#1:120\n76#1:132\n78#1:121,3\n79#1:124,3\n82#1:129,3\n90#1:134\n91#1:135\n92#1:136\n80#1:127,2\n93#1:137\n93#1:138\n88#1:133\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lorg/ton/block/McBlockExtraTlbConstructor;

.field private static final shardFees:Lorg/ton/tlb/TlbCodec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ton/tlb/TlbCodec<",
            "Lorg/ton/hashmap/HashmapAugE<",
            "Lorg/ton/block/ShardFeeCreated;",
            "Lorg/ton/block/ShardFeeCreated;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final shardHashes:Lorg/ton/tlb/TlbCodec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ton/tlb/TlbCodec<",
            "Lorg/ton/hashmap/HashMapE<",
            "Lorg/ton/block/BinTree<",
            "Lorg/ton/block/ShardDescr;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lorg/ton/block/McBlockExtraTlbConstructor;

    invoke-direct {v0}, Lorg/ton/block/McBlockExtraTlbConstructor;-><init>()V

    sput-object v0, Lorg/ton/block/McBlockExtraTlbConstructor;->INSTANCE:Lorg/ton/block/McBlockExtraTlbConstructor;

    .line 70
    sget-object v0, Lorg/ton/hashmap/HashMapE;->Companion:Lorg/ton/hashmap/HashMapE$Companion;

    sget-object v1, Lorg/ton/cell/Cell;->Companion:Lorg/ton/cell/Cell$Companion;

    sget-object v2, Lorg/ton/block/BinTree;->Companion:Lorg/ton/block/BinTree$Companion;

    sget-object v3, Lorg/ton/block/ShardDescr;->Companion:Lorg/ton/block/ShardDescr$Companion;

    invoke-virtual {v2, v3}, Lorg/ton/block/BinTree$Companion;->tlbCodec(Lorg/ton/tlb/TlbCodec;)Lorg/ton/tlb/TlbCombinator;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/ton/tlb/constructor/CellTlbConstructorKt;->tlbCodec(Lorg/ton/cell/Cell$Companion;Lorg/ton/tlb/TlbCodec;)Lorg/ton/tlb/TlbCodec;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v0, v2, v1}, Lorg/ton/hashmap/HashMapE$Companion;->tlbCodec(ILorg/ton/tlb/TlbCodec;)Lorg/ton/tlb/TlbCodec;

    move-result-object v0

    sput-object v0, Lorg/ton/block/McBlockExtraTlbConstructor;->shardHashes:Lorg/ton/tlb/TlbCodec;

    .line 71
    sget-object v0, Lorg/ton/hashmap/HashmapAugE;->Companion:Lorg/ton/hashmap/HashmapAugE$Companion;

    sget-object v1, Lorg/ton/block/ShardFeeCreated;->Companion:Lorg/ton/block/ShardFeeCreated$Companion;

    const/16 v2, 0x60

    invoke-virtual {v0, v2, v1, v1}, Lorg/ton/hashmap/HashmapAugE$Companion;->tlbCodec(ILorg/ton/tlb/TlbCodec;Lorg/ton/tlb/TlbCodec;)Lorg/ton/tlb/TlbCodec;

    move-result-object v0

    sput-object v0, Lorg/ton/block/McBlockExtraTlbConstructor;->shardFees:Lorg/ton/tlb/TlbCodec;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const-string v0, "masterchain_block_extra#cca5 key_block:(## 1) shard_hashes:ShardHashes shard_fees:ShardFees ^[ prev_blk_signatures:(HashmapE 16 CryptoSignaturePair)    recover_create_msg:(Maybe ^InMsg)    mint_msg:(Maybe ^InMsg) ] config:key_block?ConfigParams = McBlockExtra;"

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 59
    invoke-direct {p0, v0, v1, v2, v1}, Lorg/ton/tlb/TlbConstructor;-><init>(Ljava/lang/String;Lorg/ton/bitstring/BitString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;
    .locals 0

    .line 59
    invoke-virtual {p0, p1}, Lorg/ton/block/McBlockExtraTlbConstructor;->loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/McBlockExtra;

    move-result-object p1

    return-object p1
.end method

.method public loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/McBlockExtra;
    .locals 7

    const-string v0, "cellSlice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    invoke-interface {p1}, Lorg/ton/cell/CellSlice;->loadBit()Z

    move-result v2

    .line 90
    sget-object v0, Lorg/ton/block/McBlockExtraTlbConstructor;->shardHashes:Lorg/ton/tlb/TlbCodec;

    .line 52
    invoke-interface {v0, p1}, Lorg/ton/tlb/TlbLoader;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object v0

    .line 90
    move-object v3, v0

    check-cast v3, Lorg/ton/hashmap/HashMapE;

    .line 91
    sget-object v0, Lorg/ton/block/McBlockExtraTlbConstructor;->shardFees:Lorg/ton/tlb/TlbCodec;

    .line 52
    invoke-interface {v0, p1}, Lorg/ton/tlb/TlbLoader;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object v0

    .line 91
    move-object v4, v0

    check-cast v4, Lorg/ton/hashmap/HashmapAugE;

    if-eqz v2, :cond_0

    .line 92
    sget-object v0, Lorg/ton/block/ConfigParams;->Companion:Lorg/ton/block/ConfigParams$Companion;

    .line 52
    invoke-interface {v0, p1}, Lorg/ton/tlb/TlbLoader;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/ton/block/ConfigParams;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v6, v0

    .line 93
    sget-object v0, Lorg/ton/block/McBlockExtraAux;->Companion:Lorg/ton/block/McBlockExtraAux$Companion;

    .line 110
    invoke-interface {p1}, Lorg/ton/cell/CellSlice;->loadRef()Lorg/ton/cell/Cell;

    move-result-object p1

    .line 14
    sget-object v1, Lorg/ton/tlb/CellRef;->Companion:Lorg/ton/tlb/CellRef$Companion;

    invoke-virtual {v1, p1, v0}, Lorg/ton/tlb/CellRef$Companion;->valueOf(Lorg/ton/cell/Cell;Lorg/ton/tlb/TlbCodec;)Lorg/ton/tlb/CellRef;

    move-result-object v5

    .line 94
    new-instance p1, Lorg/ton/block/McBlockExtra;

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lorg/ton/block/McBlockExtra;-><init>(ZLorg/ton/hashmap/HashMapE;Lorg/ton/hashmap/HashmapAugE;Lorg/ton/tlb/CellRef;Lorg/ton/block/ConfigParams;)V

    return-object p1
.end method

.method public bridge synthetic storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V
    .locals 0

    .line 59
    check-cast p2, Lorg/ton/block/McBlockExtra;

    invoke-virtual {p0, p1, p2}, Lorg/ton/block/McBlockExtraTlbConstructor;->storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/McBlockExtra;)V

    return-void
.end method

.method public storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/McBlockExtra;)V
    .locals 2

    const-string v0, "cellBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    invoke-virtual {p2}, Lorg/ton/block/McBlockExtra;->getKeyBlock()Z

    move-result v0

    invoke-interface {p1, v0}, Lorg/ton/cell/CellBuilder;->storeBit(Z)Lorg/ton/cell/CellBuilder;

    .line 78
    sget-object v0, Lorg/ton/block/McBlockExtraTlbConstructor;->shardHashes:Lorg/ton/tlb/TlbCodec;

    invoke-virtual {p2}, Lorg/ton/block/McBlockExtra;->getShardHashes()Lorg/ton/hashmap/HashMapE;

    move-result-object v1

    .line 60
    invoke-interface {v0, p1, v1}, Lorg/ton/tlb/TlbStorer;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    .line 79
    sget-object v0, Lorg/ton/block/McBlockExtraTlbConstructor;->shardFees:Lorg/ton/tlb/TlbCodec;

    invoke-virtual {p2}, Lorg/ton/block/McBlockExtra;->getShardFees()Lorg/ton/hashmap/HashmapAugE;

    move-result-object v1

    .line 60
    invoke-interface {v0, p1, v1}, Lorg/ton/tlb/TlbStorer;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    .line 80
    sget-object v0, Lorg/ton/block/McBlockExtraAux;->Companion:Lorg/ton/block/McBlockExtraAux$Companion;

    invoke-virtual {p2}, Lorg/ton/block/McBlockExtra;->getR1()Lorg/ton/tlb/CellRef;

    move-result-object v1

    .line 106
    invoke-interface {v1, v0}, Lorg/ton/tlb/CellRef;->toCell(Lorg/ton/tlb/TlbCodec;)Lorg/ton/cell/Cell;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/ton/cell/CellBuilder;->storeRef(Lorg/ton/cell/Cell;)Lorg/ton/cell/CellBuilder;

    .line 81
    invoke-virtual {p2}, Lorg/ton/block/McBlockExtra;->getKeyBlock()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lorg/ton/block/McBlockExtra;->getConfig()Lorg/ton/block/ConfigParams;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 82
    sget-object v0, Lorg/ton/block/ConfigParams;->Companion:Lorg/ton/block/ConfigParams$Companion;

    invoke-virtual {p2}, Lorg/ton/block/McBlockExtra;->getConfig()Lorg/ton/block/ConfigParams;

    move-result-object p2

    .line 60
    invoke-interface {v0, p1, p2}, Lorg/ton/tlb/TlbStorer;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
