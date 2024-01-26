.class final Lorg/ton/block/McStateExtraTlbConstructor;
.super Lorg/ton/tlb/TlbConstructor;
.source "McStateExtra.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/ton/tlb/TlbConstructor<",
        "Lorg/ton/block/McStateExtra;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMcStateExtra.kt\nKotlin\n*S Kotlin\n*F\n+ 1 McStateExtra.kt\norg/ton/block/McStateExtraTlbConstructor\n+ 2 CellBuilder.kt\norg/ton/cell/CellBuilderKt\n+ 3 TlbCodec.kt\norg/ton/tlb/TlbCodecKt\n+ 4 CellRef.kt\norg/ton/tlb/CellRefKt\n+ 5 CellSlice.kt\norg/ton/cell/CellSliceKt\n*L\n1#1,132:1\n131#2:133\n132#2:145\n59#3,3:134\n59#3,3:137\n59#3,3:142\n52#3:147\n52#3:148\n52#3:151\n106#4,2:140\n110#4:149\n14#4:150\n86#5:146\n*S KotlinDebug\n*F\n+ 1 McStateExtra.kt\norg/ton/block/McStateExtraTlbConstructor\n*L\n79#1:133\n79#1:145\n80#1:134,3\n81#1:137,3\n83#1:142,3\n89#1:147\n90#1:148\n92#1:151\n82#1:140,2\n91#1:149\n91#1:150\n88#1:146\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lorg/ton/block/McStateExtraTlbConstructor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/ton/block/McStateExtraTlbConstructor;

    invoke-direct {v0}, Lorg/ton/block/McStateExtraTlbConstructor;-><init>()V

    sput-object v0, Lorg/ton/block/McStateExtraTlbConstructor;->INSTANCE:Lorg/ton/block/McStateExtraTlbConstructor;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const-string v0, "masterchain_state_extra#cc26  shard_hashes:ShardHashes  config:ConfigParams  ^[ flags:(## 16) { flags <= 1 }     validator_info:ValidatorInfo     prev_blocks:OldMcBlocksInfo     after_key_block:Bool     last_key_block:(Maybe ExtBlkRef)     block_create_stats:(flags . 0)?BlockCreateStats ]  global_balance:CurrencyCollection= McStateExtra;"

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 63
    invoke-direct {p0, v0, v1, v2, v1}, Lorg/ton/tlb/TlbConstructor;-><init>(Ljava/lang/String;Lorg/ton/bitstring/BitString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;
    .locals 0

    .line 63
    invoke-virtual {p0, p1}, Lorg/ton/block/McStateExtraTlbConstructor;->loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/McStateExtra;

    move-result-object p1

    return-object p1
.end method

.method public loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/McStateExtra;
    .locals 7

    const-string v0, "cellSlice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    sget-object v0, Lorg/ton/block/ShardHashes;->Companion:Lorg/ton/block/ShardHashes$Companion;

    .line 52
    invoke-interface {v0, p1}, Lorg/ton/tlb/TlbLoader;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object v0

    .line 89
    check-cast v0, Lorg/ton/block/ShardHashes;

    invoke-virtual {v0}, Lorg/ton/block/ShardHashes;->unbox-impl()Lorg/ton/hashmap/HashMapE;

    move-result-object v2

    .line 90
    sget-object v0, Lorg/ton/block/ConfigParams;->Companion:Lorg/ton/block/ConfigParams$Companion;

    .line 52
    invoke-interface {v0, p1}, Lorg/ton/tlb/TlbLoader;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object v0

    .line 90
    move-object v3, v0

    check-cast v3, Lorg/ton/block/ConfigParams;

    .line 91
    sget-object v0, Lorg/ton/block/McStateExtraAux;->Companion:Lorg/ton/block/McStateExtraAux$Companion;

    .line 110
    invoke-interface {p1}, Lorg/ton/cell/CellSlice;->loadRef()Lorg/ton/cell/Cell;

    move-result-object v1

    .line 14
    sget-object v4, Lorg/ton/tlb/CellRef;->Companion:Lorg/ton/tlb/CellRef$Companion;

    invoke-virtual {v4, v1, v0}, Lorg/ton/tlb/CellRef$Companion;->valueOf(Lorg/ton/cell/Cell;Lorg/ton/tlb/TlbCodec;)Lorg/ton/tlb/CellRef;

    move-result-object v4

    .line 92
    sget-object v0, Lorg/ton/block/CurrencyCollection;->Companion:Lorg/ton/block/CurrencyCollection$Companion;

    .line 52
    invoke-interface {v0, p1}, Lorg/ton/tlb/TlbLoader;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object p1

    .line 92
    move-object v5, p1

    check-cast v5, Lorg/ton/block/CurrencyCollection;

    .line 93
    new-instance p1, Lorg/ton/block/McStateExtra;

    const/4 v6, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lorg/ton/block/McStateExtra;-><init>(Lorg/ton/hashmap/HashMapE;Lorg/ton/block/ConfigParams;Lorg/ton/tlb/CellRef;Lorg/ton/block/CurrencyCollection;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p1
.end method

.method public bridge synthetic storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V
    .locals 0

    .line 63
    check-cast p2, Lorg/ton/block/McStateExtra;

    invoke-virtual {p0, p1, p2}, Lorg/ton/block/McStateExtraTlbConstructor;->storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/McStateExtra;)V

    return-void
.end method

.method public storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/McStateExtra;)V
    .locals 2

    const-string v0, "cellBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    sget-object v0, Lorg/ton/block/ShardHashes;->Companion:Lorg/ton/block/ShardHashes$Companion;

    invoke-virtual {p2}, Lorg/ton/block/McStateExtra;->getShardHashes-78z5ENA()Lorg/ton/hashmap/HashMapE;

    move-result-object v1

    invoke-static {v1}, Lorg/ton/block/ShardHashes;->box-impl(Lorg/ton/hashmap/HashMapE;)Lorg/ton/block/ShardHashes;

    move-result-object v1

    .line 60
    invoke-interface {v0, p1, v1}, Lorg/ton/tlb/TlbStorer;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    .line 81
    sget-object v0, Lorg/ton/block/ConfigParams;->Companion:Lorg/ton/block/ConfigParams$Companion;

    invoke-virtual {p2}, Lorg/ton/block/McStateExtra;->getConfig()Lorg/ton/block/ConfigParams;

    move-result-object v1

    .line 60
    invoke-interface {v0, p1, v1}, Lorg/ton/tlb/TlbStorer;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    .line 82
    sget-object v0, Lorg/ton/block/McStateExtraAux;->Companion:Lorg/ton/block/McStateExtraAux$Companion;

    invoke-virtual {p2}, Lorg/ton/block/McStateExtra;->getR1()Lorg/ton/tlb/CellRef;

    move-result-object v1

    .line 106
    invoke-interface {v1, v0}, Lorg/ton/tlb/CellRef;->toCell(Lorg/ton/tlb/TlbCodec;)Lorg/ton/cell/Cell;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/ton/cell/CellBuilder;->storeRef(Lorg/ton/cell/Cell;)Lorg/ton/cell/CellBuilder;

    .line 83
    sget-object v0, Lorg/ton/block/CurrencyCollection;->Companion:Lorg/ton/block/CurrencyCollection$Companion;

    invoke-virtual {p2}, Lorg/ton/block/McStateExtra;->getGlobalBalance()Lorg/ton/block/CurrencyCollection;

    move-result-object p2

    .line 60
    invoke-interface {v0, p1, p2}, Lorg/ton/tlb/TlbStorer;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    return-void
.end method
