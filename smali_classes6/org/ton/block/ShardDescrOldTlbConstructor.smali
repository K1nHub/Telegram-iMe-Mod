.class final Lorg/ton/block/ShardDescrOldTlbConstructor;
.super Lorg/ton/tlb/TlbConstructor;
.source "ShardDescr.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/ton/tlb/TlbConstructor<",
        "Lorg/ton/block/ShardDescrOld;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nShardDescr.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShardDescr.kt\norg/ton/block/ShardDescrOldTlbConstructor\n+ 2 TlbCodec.kt\norg/ton/tlb/TlbCodecKt\n*L\n1#1,321:1\n52#2:322\n52#2:323\n52#2:324\n59#2,3:325\n59#2,3:328\n59#2,3:331\n*S KotlinDebug\n*F\n+ 1 ShardDescr.kt\norg/ton/block/ShardDescrOldTlbConstructor\n*L\n181#1:322\n182#1:323\n183#1:324\n224#1:325,3\n225#1:328,3\n226#1:331,3\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lorg/ton/block/ShardDescrOldTlbConstructor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/ton/block/ShardDescrOldTlbConstructor;

    invoke-direct {v0}, Lorg/ton/block/ShardDescrOldTlbConstructor;-><init>()V

    sput-object v0, Lorg/ton/block/ShardDescrOldTlbConstructor;->INSTANCE:Lorg/ton/block/ShardDescrOldTlbConstructor;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const-string v0, "shard_descr_old#b seq_no:uint32 reg_mc_seqno:uint32\n  start_lt:uint64 end_lt:uint64\n  root_hash:bits256 file_hash:bits256 \n  before_split:Bool before_merge:Bool\n  want_split:Bool want_merge:Bool\n  nx_cc_updated:Bool flags:(## 3) { flags = 0 }\n  next_catchain_seqno:uint32 next_validator_shard:uint64\n  min_ref_mc_seqno:uint32 gen_utime:uint32\n  split_merge_at:FutureSplitMerge\n  fees_collected:CurrencyCollection\n  funds_created:CurrencyCollection = ShardDescr;"

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 151
    invoke-direct {p0, v0, v1, v2, v1}, Lorg/ton/tlb/TlbConstructor;-><init>(Ljava/lang/String;Lorg/ton/bitstring/BitString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;
    .locals 0

    .line 151
    invoke-virtual {p0, p1}, Lorg/ton/block/ShardDescrOldTlbConstructor;->loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/ShardDescrOld;

    move-result-object p1

    return-object p1
.end method

.method public loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/ShardDescrOld;
    .locals 26

    move-object/from16 v0, p1

    const-string v1, "cellSlice"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    invoke-interface/range {p1 .. p1}, Lorg/ton/cell/CellSlice;->loadUInt32-pVg5ArA()I

    move-result v3

    .line 166
    invoke-interface/range {p1 .. p1}, Lorg/ton/cell/CellSlice;->loadUInt32-pVg5ArA()I

    move-result v4

    .line 167
    invoke-interface/range {p1 .. p1}, Lorg/ton/cell/CellSlice;->loadUInt64-s-VKNKU()J

    move-result-wide v5

    .line 168
    invoke-interface/range {p1 .. p1}, Lorg/ton/cell/CellSlice;->loadUInt64-s-VKNKU()J

    move-result-wide v7

    const/16 v1, 0x100

    .line 169
    invoke-interface {v0, v1}, Lorg/ton/cell/CellSlice;->loadBits(I)Lorg/ton/bitstring/BitString;

    move-result-object v9

    .line 170
    invoke-interface {v0, v1}, Lorg/ton/cell/CellSlice;->loadBits(I)Lorg/ton/bitstring/BitString;

    move-result-object v10

    .line 171
    invoke-interface/range {p1 .. p1}, Lorg/ton/cell/CellSlice;->loadBit()Z

    move-result v11

    .line 172
    invoke-interface/range {p1 .. p1}, Lorg/ton/cell/CellSlice;->loadBit()Z

    move-result v12

    .line 173
    invoke-interface/range {p1 .. p1}, Lorg/ton/cell/CellSlice;->loadBit()Z

    move-result v13

    .line 174
    invoke-interface/range {p1 .. p1}, Lorg/ton/cell/CellSlice;->loadBit()Z

    move-result v14

    .line 175
    invoke-interface/range {p1 .. p1}, Lorg/ton/cell/CellSlice;->loadBit()Z

    move-result v15

    const/4 v1, 0x3

    .line 176
    invoke-interface {v0, v1}, Lorg/ton/cell/CellSlice;->loadInt(I)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v16

    .line 177
    invoke-interface/range {p1 .. p1}, Lorg/ton/cell/CellSlice;->loadUInt32-pVg5ArA()I

    move-result v17

    .line 178
    invoke-interface/range {p1 .. p1}, Lorg/ton/cell/CellSlice;->loadUInt64-s-VKNKU()J

    move-result-wide v18

    .line 179
    invoke-interface/range {p1 .. p1}, Lorg/ton/cell/CellSlice;->loadUInt32-pVg5ArA()I

    move-result v20

    .line 180
    invoke-interface/range {p1 .. p1}, Lorg/ton/cell/CellSlice;->loadUInt32-pVg5ArA()I

    move-result v21

    .line 181
    sget-object v1, Lorg/ton/block/FutureSplitMerge;->Companion:Lorg/ton/block/FutureSplitMerge$Companion;

    .line 52
    invoke-interface {v1, v0}, Lorg/ton/tlb/TlbLoader;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object v1

    .line 181
    move-object/from16 v22, v1

    check-cast v22, Lorg/ton/block/FutureSplitMerge;

    .line 182
    sget-object v1, Lorg/ton/block/CurrencyCollection;->Companion:Lorg/ton/block/CurrencyCollection$Companion;

    .line 52
    invoke-interface {v1, v0}, Lorg/ton/tlb/TlbLoader;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object v2

    .line 182
    move-object/from16 v23, v2

    check-cast v23, Lorg/ton/block/CurrencyCollection;

    .line 52
    invoke-interface {v1, v0}, Lorg/ton/tlb/TlbLoader;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object v0

    .line 183
    move-object/from16 v24, v0

    check-cast v24, Lorg/ton/block/CurrencyCollection;

    .line 184
    new-instance v0, Lorg/ton/block/ShardDescrOld;

    move-object v2, v0

    const/16 v25, 0x0

    invoke-direct/range {v2 .. v25}, Lorg/ton/block/ShardDescrOld;-><init>(IIJJLorg/ton/bitstring/BitString;Lorg/ton/bitstring/BitString;ZZZZZIIJIILorg/ton/block/FutureSplitMerge;Lorg/ton/block/CurrencyCollection;Lorg/ton/block/CurrencyCollection;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public bridge synthetic storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V
    .locals 0

    .line 151
    check-cast p2, Lorg/ton/block/ShardDescrOld;

    invoke-virtual {p0, p1, p2}, Lorg/ton/block/ShardDescrOldTlbConstructor;->storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/ShardDescrOld;)V

    return-void
.end method

.method public storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/ShardDescrOld;)V
    .locals 2

    const-string v0, "cellBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 208
    invoke-virtual {p2}, Lorg/ton/block/ShardDescrOld;->getSeqNo-pVg5ArA()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/ton/cell/CellBuilder;->storeUInt32-WZ4Q5Ns(I)Lorg/ton/cell/CellBuilder;

    .line 209
    invoke-virtual {p2}, Lorg/ton/block/ShardDescrOld;->getRegMcSeqno-pVg5ArA()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/ton/cell/CellBuilder;->storeUInt32-WZ4Q5Ns(I)Lorg/ton/cell/CellBuilder;

    .line 210
    invoke-virtual {p2}, Lorg/ton/block/ShardDescrOld;->getStartLt-s-VKNKU()J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lorg/ton/cell/CellBuilder;->storeUInt64-VKZWuLQ(J)Lorg/ton/cell/CellBuilder;

    .line 211
    invoke-virtual {p2}, Lorg/ton/block/ShardDescrOld;->getEndLt-s-VKNKU()J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lorg/ton/cell/CellBuilder;->storeUInt64-VKZWuLQ(J)Lorg/ton/cell/CellBuilder;

    .line 212
    invoke-virtual {p2}, Lorg/ton/block/ShardDescrOld;->getRootHash()Lorg/ton/bitstring/BitString;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/ton/cell/CellBuilder;->storeBits(Lorg/ton/bitstring/BitString;)Lorg/ton/cell/CellBuilder;

    .line 213
    invoke-virtual {p2}, Lorg/ton/block/ShardDescrOld;->getFileHash()Lorg/ton/bitstring/BitString;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/ton/cell/CellBuilder;->storeBits(Lorg/ton/bitstring/BitString;)Lorg/ton/cell/CellBuilder;

    .line 214
    invoke-virtual {p2}, Lorg/ton/block/ShardDescrOld;->getBeforeSplit()Z

    move-result v0

    invoke-interface {p1, v0}, Lorg/ton/cell/CellBuilder;->storeBit(Z)Lorg/ton/cell/CellBuilder;

    .line 215
    invoke-virtual {p2}, Lorg/ton/block/ShardDescrOld;->getBeforeMerge()Z

    move-result v0

    invoke-interface {p1, v0}, Lorg/ton/cell/CellBuilder;->storeBit(Z)Lorg/ton/cell/CellBuilder;

    .line 216
    invoke-virtual {p2}, Lorg/ton/block/ShardDescrOld;->getWantSplit()Z

    move-result v0

    invoke-interface {p1, v0}, Lorg/ton/cell/CellBuilder;->storeBit(Z)Lorg/ton/cell/CellBuilder;

    .line 217
    invoke-virtual {p2}, Lorg/ton/block/ShardDescrOld;->getWantMerge()Z

    move-result v0

    invoke-interface {p1, v0}, Lorg/ton/cell/CellBuilder;->storeBit(Z)Lorg/ton/cell/CellBuilder;

    .line 218
    invoke-virtual {p2}, Lorg/ton/block/ShardDescrOld;->getNxCcUpdated()Z

    move-result v0

    invoke-interface {p1, v0}, Lorg/ton/cell/CellBuilder;->storeBit(Z)Lorg/ton/cell/CellBuilder;

    .line 219
    invoke-virtual {p2}, Lorg/ton/block/ShardDescrOld;->getFlags()I

    move-result v0

    const/4 v1, 0x3

    invoke-interface {p1, v0, v1}, Lorg/ton/cell/CellBuilder;->storeInt(II)Lorg/ton/cell/CellBuilder;

    .line 220
    invoke-virtual {p2}, Lorg/ton/block/ShardDescrOld;->getNextCatchainSeqno-pVg5ArA()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/ton/cell/CellBuilder;->storeUInt32-WZ4Q5Ns(I)Lorg/ton/cell/CellBuilder;

    .line 221
    invoke-virtual {p2}, Lorg/ton/block/ShardDescrOld;->getNextValidatorShard-s-VKNKU()J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lorg/ton/cell/CellBuilder;->storeUInt64-VKZWuLQ(J)Lorg/ton/cell/CellBuilder;

    .line 222
    invoke-virtual {p2}, Lorg/ton/block/ShardDescrOld;->getMinRefMcSeqno-pVg5ArA()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/ton/cell/CellBuilder;->storeUInt32-WZ4Q5Ns(I)Lorg/ton/cell/CellBuilder;

    .line 223
    invoke-virtual {p2}, Lorg/ton/block/ShardDescrOld;->getGenUtime-pVg5ArA()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/ton/cell/CellBuilder;->storeUInt32-WZ4Q5Ns(I)Lorg/ton/cell/CellBuilder;

    .line 224
    sget-object v0, Lorg/ton/block/FutureSplitMerge;->Companion:Lorg/ton/block/FutureSplitMerge$Companion;

    invoke-virtual {p2}, Lorg/ton/block/ShardDescrOld;->getSplitMergeAt()Lorg/ton/block/FutureSplitMerge;

    move-result-object v1

    .line 60
    invoke-interface {v0, p1, v1}, Lorg/ton/tlb/TlbStorer;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    .line 225
    sget-object v0, Lorg/ton/block/CurrencyCollection;->Companion:Lorg/ton/block/CurrencyCollection$Companion;

    invoke-virtual {p2}, Lorg/ton/block/ShardDescrOld;->getFeesCollected()Lorg/ton/block/CurrencyCollection;

    move-result-object v1

    .line 60
    invoke-interface {v0, p1, v1}, Lorg/ton/tlb/TlbStorer;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    .line 226
    invoke-virtual {p2}, Lorg/ton/block/ShardDescrOld;->getFundsCreated()Lorg/ton/block/CurrencyCollection;

    move-result-object p2

    .line 60
    invoke-interface {v0, p1, p2}, Lorg/ton/tlb/TlbStorer;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    return-void
.end method
