.class final Lorg/ton/block/McStateExtraAuxTlbConstructor;
.super Lorg/ton/tlb/TlbConstructor;
.source "McStateExtra.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/ton/tlb/TlbConstructor<",
        "Lorg/ton/block/McStateExtraAux;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMcStateExtra.kt\nKotlin\n*S Kotlin\n*F\n+ 1 McStateExtra.kt\norg/ton/block/McStateExtraAuxTlbConstructor\n+ 2 TlbCodec.kt\norg/ton/tlb/TlbCodecKt\n+ 3 CellBuilder.kt\norg/ton/cell/CellBuilderKt\n*L\n1#1,132:1\n52#2:133\n52#2:134\n52#2:135\n52#2:136\n59#2,3:138\n59#2,3:141\n59#2,3:144\n59#2,3:147\n131#3:137\n132#3:150\n*S KotlinDebug\n*F\n+ 1 McStateExtra.kt\norg/ton/block/McStateExtraAuxTlbConstructor\n*L\n109#1:133\n110#1:134\n112#1:135\n114#1:136\n123#1:138,3\n124#1:141,3\n126#1:144,3\n128#1:147,3\n121#1:137\n121#1:150\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lorg/ton/block/McStateExtraAuxTlbConstructor;

.field private static final maybeExtBlkRef:Lorg/ton/tlb/TlbCodec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ton/tlb/TlbCodec<",
            "Lorg/ton/block/Maybe<",
            "Lorg/ton/block/ExtBlkRef;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/ton/block/McStateExtraAuxTlbConstructor;

    invoke-direct {v0}, Lorg/ton/block/McStateExtraAuxTlbConstructor;-><init>()V

    sput-object v0, Lorg/ton/block/McStateExtraAuxTlbConstructor;->INSTANCE:Lorg/ton/block/McStateExtraAuxTlbConstructor;

    .line 105
    sget-object v0, Lorg/ton/block/Maybe;->Companion:Lorg/ton/block/Maybe$Companion;

    sget-object v1, Lorg/ton/block/ExtBlkRef;->Companion:Lorg/ton/block/ExtBlkRef$Companion;

    invoke-virtual {v0, v1}, Lorg/ton/block/Maybe$Companion;->tlbCodec(Lorg/ton/tlb/TlbCodec;)Lorg/ton/tlb/TlbCodec;

    move-result-object v0

    sput-object v0, Lorg/ton/block/McStateExtraAuxTlbConstructor;->maybeExtBlkRef:Lorg/ton/tlb/TlbCodec;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const-string v0, "[$_ flags:(## 16) {<= flags 1} validator_info:ValidatorInfo prev_blocks:OldMcBlocksInfo after_key_block:Bool last_key_block:(Maybe ExtBlkRef) block_create_stats:flags.0?BlockCreateStats ]"

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 97
    invoke-direct {p0, v0, v1, v2, v1}, Lorg/ton/tlb/TlbConstructor;-><init>(Ljava/lang/String;Lorg/ton/bitstring/BitString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;
    .locals 0

    .line 97
    invoke-virtual {p0, p1}, Lorg/ton/block/McStateExtraAuxTlbConstructor;->loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/McStateExtraAux;

    move-result-object p1

    return-object p1
.end method

.method public loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/McStateExtraAux;
    .locals 9

    const-string v0, "cellSlice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x10

    .line 108
    invoke-interface {p1, v0}, Lorg/ton/cell/CellSlice;->loadUInt(I)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    .line 109
    sget-object v0, Lorg/ton/block/ValidatorInfo;->Companion:Lorg/ton/block/ValidatorInfo$Companion;

    .line 52
    invoke-interface {v0, p1}, Lorg/ton/tlb/TlbLoader;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object v0

    .line 109
    move-object v3, v0

    check-cast v3, Lorg/ton/block/ValidatorInfo;

    .line 110
    sget-object v0, Lorg/ton/block/OldMcBlocksInfo;->Companion:Lorg/ton/block/OldMcBlocksInfo$Companion;

    .line 52
    invoke-interface {v0, p1}, Lorg/ton/tlb/TlbLoader;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object v0

    .line 110
    check-cast v0, Lorg/ton/block/OldMcBlocksInfo;

    invoke-virtual {v0}, Lorg/ton/block/OldMcBlocksInfo;->unbox-impl()Lorg/ton/hashmap/HashmapAugE;

    move-result-object v4

    .line 111
    invoke-interface {p1}, Lorg/ton/cell/CellSlice;->loadBit()Z

    move-result v5

    .line 112
    sget-object v0, Lorg/ton/block/McStateExtraAuxTlbConstructor;->maybeExtBlkRef:Lorg/ton/tlb/TlbCodec;

    .line 52
    invoke-interface {v0, p1}, Lorg/ton/tlb/TlbLoader;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object v0

    .line 112
    move-object v6, v0

    check-cast v6, Lorg/ton/block/Maybe;

    and-int/lit8 v0, v2, 0x1

    if-eqz v0, :cond_0

    .line 114
    sget-object v0, Lorg/ton/block/BlockCreateStats;->Companion:Lorg/ton/block/BlockCreateStats$Companion;

    .line 52
    invoke-interface {v0, p1}, Lorg/ton/tlb/TlbLoader;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/ton/block/BlockCreateStats;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    move-object v7, p1

    .line 118
    new-instance p1, Lorg/ton/block/McStateExtraAux;

    const/4 v8, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v8}, Lorg/ton/block/McStateExtraAux;-><init>(ILorg/ton/block/ValidatorInfo;Lorg/ton/hashmap/HashmapAugE;ZLorg/ton/block/Maybe;Lorg/ton/block/BlockCreateStats;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p1
.end method

.method public bridge synthetic storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V
    .locals 0

    .line 97
    check-cast p2, Lorg/ton/block/McStateExtraAux;

    invoke-virtual {p0, p1, p2}, Lorg/ton/block/McStateExtraAuxTlbConstructor;->storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/McStateExtraAux;)V

    return-void
.end method

.method public storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/McStateExtraAux;)V
    .locals 2

    const-string v0, "cellBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    invoke-virtual {p2}, Lorg/ton/block/McStateExtraAux;->getFlags()I

    move-result v0

    const/16 v1, 0x10

    invoke-interface {p1, v0, v1}, Lorg/ton/cell/CellBuilder;->storeUInt(II)Lorg/ton/cell/CellBuilder;

    .line 123
    sget-object v0, Lorg/ton/block/ValidatorInfo;->Companion:Lorg/ton/block/ValidatorInfo$Companion;

    invoke-virtual {p2}, Lorg/ton/block/McStateExtraAux;->getValidatorInfo()Lorg/ton/block/ValidatorInfo;

    move-result-object v1

    .line 60
    invoke-interface {v0, p1, v1}, Lorg/ton/tlb/TlbStorer;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    .line 124
    sget-object v0, Lorg/ton/block/OldMcBlocksInfo;->Companion:Lorg/ton/block/OldMcBlocksInfo$Companion;

    invoke-virtual {p2}, Lorg/ton/block/McStateExtraAux;->getPrevBlocks-D6f0ERk()Lorg/ton/hashmap/HashmapAugE;

    move-result-object v1

    invoke-static {v1}, Lorg/ton/block/OldMcBlocksInfo;->box-impl(Lorg/ton/hashmap/HashmapAugE;)Lorg/ton/block/OldMcBlocksInfo;

    move-result-object v1

    .line 60
    invoke-interface {v0, p1, v1}, Lorg/ton/tlb/TlbStorer;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    .line 125
    invoke-virtual {p2}, Lorg/ton/block/McStateExtraAux;->getAfterKeyBlock()Z

    move-result v0

    invoke-interface {p1, v0}, Lorg/ton/cell/CellBuilder;->storeBit(Z)Lorg/ton/cell/CellBuilder;

    .line 126
    sget-object v0, Lorg/ton/block/McStateExtraAuxTlbConstructor;->maybeExtBlkRef:Lorg/ton/tlb/TlbCodec;

    invoke-virtual {p2}, Lorg/ton/block/McStateExtraAux;->getLastKeyBlock()Lorg/ton/block/Maybe;

    move-result-object v1

    .line 60
    invoke-interface {v0, p1, v1}, Lorg/ton/tlb/TlbStorer;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    .line 127
    invoke-virtual {p2}, Lorg/ton/block/McStateExtraAux;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 128
    sget-object v0, Lorg/ton/block/BlockCreateStats;->Companion:Lorg/ton/block/BlockCreateStats$Companion;

    invoke-virtual {p2}, Lorg/ton/block/McStateExtraAux;->getBlockCreateStats()Lorg/ton/block/BlockCreateStats;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 60
    invoke-interface {v0, p1, p2}, Lorg/ton/tlb/TlbStorer;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
