.class final Lorg/ton/block/ShardDescrNewTlbConstructor;
.super Lorg/ton/tlb/TlbConstructor;
.source "ShardDescr.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/ton/tlb/TlbConstructor<",
        "Lorg/ton/block/ShardDescrNew;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nShardDescr.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShardDescr.kt\norg/ton/block/ShardDescrNewTlbConstructor\n+ 2 TlbCodec.kt\norg/ton/tlb/TlbCodecKt\n+ 3 CellRef.kt\norg/ton/tlb/CellRefKt\n*L\n1#1,321:1\n52#2:322\n59#2,3:325\n110#3:323\n14#3:324\n106#3,2:328\n*S KotlinDebug\n*F\n+ 1 ShardDescr.kt\norg/ton/block/ShardDescrNewTlbConstructor\n*L\n276#1:322\n317#1:325,3\n277#1:323\n277#1:324\n318#1:328,2\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lorg/ton/block/ShardDescrNewTlbConstructor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/ton/block/ShardDescrNewTlbConstructor;

    invoke-direct {v0}, Lorg/ton/block/ShardDescrNewTlbConstructor;-><init>()V

    sput-object v0, Lorg/ton/block/ShardDescrNewTlbConstructor;->INSTANCE:Lorg/ton/block/ShardDescrNewTlbConstructor;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const-string v0, "shard_descr_new#a seq_no:uint32 reg_mc_seqno:uint32\n  start_lt:uint64 end_lt:uint64\n  root_hash:bits256 file_hash:bits256 \n  before_split:Bool before_merge:Bool\n  want_split:Bool want_merge:Bool\n  nx_cc_updated:Bool flags:(## 3) { flags = 0 }\n  next_catchain_seqno:uint32 next_validator_shard:uint64\n  min_ref_mc_seqno:uint32 gen_utime:uint32\n  split_merge_at:FutureSplitMerge\n  fees_collected:CurrencyCollection\n  funds_created:CurrencyCollection = ShardDescr;"

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 246
    invoke-direct {p0, v0, v1, v2, v1}, Lorg/ton/tlb/TlbConstructor;-><init>(Ljava/lang/String;Lorg/ton/bitstring/BitString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;
    .locals 0

    .line 246
    invoke-virtual {p0, p1}, Lorg/ton/block/ShardDescrNewTlbConstructor;->loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/ShardDescrNew;

    move-result-object p1

    return-object p1
.end method

.method public loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/ShardDescrNew;
    .locals 25

    move-object/from16 v0, p1

    const-string v1, "cellSlice"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 260
    invoke-interface/range {p1 .. p1}, Lorg/ton/cell/CellSlice;->loadUInt32-pVg5ArA()I

    move-result v3

    .line 261
    invoke-interface/range {p1 .. p1}, Lorg/ton/cell/CellSlice;->loadUInt32-pVg5ArA()I

    move-result v4

    .line 262
    invoke-interface/range {p1 .. p1}, Lorg/ton/cell/CellSlice;->loadUInt64-s-VKNKU()J

    move-result-wide v5

    .line 263
    invoke-interface/range {p1 .. p1}, Lorg/ton/cell/CellSlice;->loadUInt64-s-VKNKU()J

    move-result-wide v7

    const/16 v1, 0x100

    .line 264
    invoke-interface {v0, v1}, Lorg/ton/cell/CellSlice;->loadBits(I)Lorg/ton/bitstring/BitString;

    move-result-object v9

    .line 265
    invoke-interface {v0, v1}, Lorg/ton/cell/CellSlice;->loadBits(I)Lorg/ton/bitstring/BitString;

    move-result-object v10

    .line 266
    invoke-interface/range {p1 .. p1}, Lorg/ton/cell/CellSlice;->loadBit()Z

    move-result v11

    .line 267
    invoke-interface/range {p1 .. p1}, Lorg/ton/cell/CellSlice;->loadBit()Z

    move-result v12

    .line 268
    invoke-interface/range {p1 .. p1}, Lorg/ton/cell/CellSlice;->loadBit()Z

    move-result v13

    .line 269
    invoke-interface/range {p1 .. p1}, Lorg/ton/cell/CellSlice;->loadBit()Z

    move-result v14

    .line 270
    invoke-interface/range {p1 .. p1}, Lorg/ton/cell/CellSlice;->loadBit()Z

    move-result v15

    const/4 v1, 0x3

    .line 271
    invoke-interface {v0, v1}, Lorg/ton/cell/CellSlice;->loadInt(I)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v16

    .line 272
    invoke-interface/range {p1 .. p1}, Lorg/ton/cell/CellSlice;->loadUInt32-pVg5ArA()I

    move-result v17

    .line 273
    invoke-interface/range {p1 .. p1}, Lorg/ton/cell/CellSlice;->loadUInt64-s-VKNKU()J

    move-result-wide v18

    .line 274
    invoke-interface/range {p1 .. p1}, Lorg/ton/cell/CellSlice;->loadUInt32-pVg5ArA()I

    move-result v20

    .line 275
    invoke-interface/range {p1 .. p1}, Lorg/ton/cell/CellSlice;->loadUInt32-pVg5ArA()I

    move-result v21

    .line 276
    sget-object v1, Lorg/ton/block/FutureSplitMerge;->Companion:Lorg/ton/block/FutureSplitMerge$Companion;

    .line 52
    invoke-interface {v1, v0}, Lorg/ton/tlb/TlbLoader;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object v1

    .line 276
    move-object/from16 v22, v1

    check-cast v22, Lorg/ton/block/FutureSplitMerge;

    .line 277
    sget-object v1, Lorg/ton/block/ShardDescrAux;->Companion:Lorg/ton/block/ShardDescrAux$Companion;

    .line 110
    invoke-interface/range {p1 .. p1}, Lorg/ton/cell/CellSlice;->loadRef()Lorg/ton/cell/Cell;

    move-result-object v0

    .line 14
    sget-object v2, Lorg/ton/tlb/CellRef;->Companion:Lorg/ton/tlb/CellRef$Companion;

    invoke-virtual {v2, v0, v1}, Lorg/ton/tlb/CellRef$Companion;->valueOf(Lorg/ton/cell/Cell;Lorg/ton/tlb/TlbCodec;)Lorg/ton/tlb/CellRef;

    move-result-object v23

    .line 278
    new-instance v0, Lorg/ton/block/ShardDescrNew;

    move-object v2, v0

    const/16 v24, 0x0

    invoke-direct/range {v2 .. v24}, Lorg/ton/block/ShardDescrNew;-><init>(IIJJLorg/ton/bitstring/BitString;Lorg/ton/bitstring/BitString;ZZZZZIIJIILorg/ton/block/FutureSplitMerge;Lorg/ton/tlb/CellRef;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public bridge synthetic storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V
    .locals 0

    .line 246
    check-cast p2, Lorg/ton/block/ShardDescrNew;

    invoke-virtual {p0, p1, p2}, Lorg/ton/block/ShardDescrNewTlbConstructor;->storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/ShardDescrNew;)V

    return-void
.end method

.method public storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/ShardDescrNew;)V
    .locals 2

    const-string v0, "cellBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 301
    invoke-virtual {p2}, Lorg/ton/block/ShardDescrNew;->getSeqNo-pVg5ArA()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/ton/cell/CellBuilder;->storeUInt32-WZ4Q5Ns(I)Lorg/ton/cell/CellBuilder;

    .line 302
    invoke-virtual {p2}, Lorg/ton/block/ShardDescrNew;->getRegMcSeqno-pVg5ArA()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/ton/cell/CellBuilder;->storeUInt32-WZ4Q5Ns(I)Lorg/ton/cell/CellBuilder;

    .line 303
    invoke-virtual {p2}, Lorg/ton/block/ShardDescrNew;->getStartLt-s-VKNKU()J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lorg/ton/cell/CellBuilder;->storeUInt64-VKZWuLQ(J)Lorg/ton/cell/CellBuilder;

    .line 304
    invoke-virtual {p2}, Lorg/ton/block/ShardDescrNew;->getEndLt-s-VKNKU()J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lorg/ton/cell/CellBuilder;->storeUInt64-VKZWuLQ(J)Lorg/ton/cell/CellBuilder;

    .line 305
    invoke-virtual {p2}, Lorg/ton/block/ShardDescrNew;->getRootHash()Lorg/ton/bitstring/BitString;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/ton/cell/CellBuilder;->storeBits(Lorg/ton/bitstring/BitString;)Lorg/ton/cell/CellBuilder;

    .line 306
    invoke-virtual {p2}, Lorg/ton/block/ShardDescrNew;->getFileHash()Lorg/ton/bitstring/BitString;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/ton/cell/CellBuilder;->storeBits(Lorg/ton/bitstring/BitString;)Lorg/ton/cell/CellBuilder;

    .line 307
    invoke-virtual {p2}, Lorg/ton/block/ShardDescrNew;->getBeforeSplit()Z

    move-result v0

    invoke-interface {p1, v0}, Lorg/ton/cell/CellBuilder;->storeBit(Z)Lorg/ton/cell/CellBuilder;

    .line 308
    invoke-virtual {p2}, Lorg/ton/block/ShardDescrNew;->getBeforeMerge()Z

    move-result v0

    invoke-interface {p1, v0}, Lorg/ton/cell/CellBuilder;->storeBit(Z)Lorg/ton/cell/CellBuilder;

    .line 309
    invoke-virtual {p2}, Lorg/ton/block/ShardDescrNew;->getWantSplit()Z

    move-result v0

    invoke-interface {p1, v0}, Lorg/ton/cell/CellBuilder;->storeBit(Z)Lorg/ton/cell/CellBuilder;

    .line 310
    invoke-virtual {p2}, Lorg/ton/block/ShardDescrNew;->getWantMerge()Z

    move-result v0

    invoke-interface {p1, v0}, Lorg/ton/cell/CellBuilder;->storeBit(Z)Lorg/ton/cell/CellBuilder;

    .line 311
    invoke-virtual {p2}, Lorg/ton/block/ShardDescrNew;->getNxCcUpdated()Z

    move-result v0

    invoke-interface {p1, v0}, Lorg/ton/cell/CellBuilder;->storeBit(Z)Lorg/ton/cell/CellBuilder;

    .line 312
    invoke-virtual {p2}, Lorg/ton/block/ShardDescrNew;->getFlags()I

    move-result v0

    const/4 v1, 0x3

    invoke-interface {p1, v0, v1}, Lorg/ton/cell/CellBuilder;->storeInt(II)Lorg/ton/cell/CellBuilder;

    .line 313
    invoke-virtual {p2}, Lorg/ton/block/ShardDescrNew;->getNextCatchainSeqno-pVg5ArA()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/ton/cell/CellBuilder;->storeUInt32-WZ4Q5Ns(I)Lorg/ton/cell/CellBuilder;

    .line 314
    invoke-virtual {p2}, Lorg/ton/block/ShardDescrNew;->getNextValidatorShard-s-VKNKU()J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lorg/ton/cell/CellBuilder;->storeUInt64-VKZWuLQ(J)Lorg/ton/cell/CellBuilder;

    .line 315
    invoke-virtual {p2}, Lorg/ton/block/ShardDescrNew;->getMinRefMcSeqno-pVg5ArA()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/ton/cell/CellBuilder;->storeUInt32-WZ4Q5Ns(I)Lorg/ton/cell/CellBuilder;

    .line 316
    invoke-virtual {p2}, Lorg/ton/block/ShardDescrNew;->getGenUtime-pVg5ArA()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/ton/cell/CellBuilder;->storeUInt32-WZ4Q5Ns(I)Lorg/ton/cell/CellBuilder;

    .line 317
    sget-object v0, Lorg/ton/block/FutureSplitMerge;->Companion:Lorg/ton/block/FutureSplitMerge$Companion;

    invoke-virtual {p2}, Lorg/ton/block/ShardDescrNew;->getSplitMergeAt()Lorg/ton/block/FutureSplitMerge;

    move-result-object v1

    .line 60
    invoke-interface {v0, p1, v1}, Lorg/ton/tlb/TlbStorer;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    .line 318
    sget-object v0, Lorg/ton/block/ShardDescrAux;->Companion:Lorg/ton/block/ShardDescrAux$Companion;

    invoke-virtual {p2}, Lorg/ton/block/ShardDescrNew;->getR1()Lorg/ton/tlb/CellRef;

    move-result-object p2

    .line 106
    invoke-interface {p2, v0}, Lorg/ton/tlb/CellRef;->toCell(Lorg/ton/tlb/TlbCodec;)Lorg/ton/cell/Cell;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/ton/cell/CellBuilder;->storeRef(Lorg/ton/cell/Cell;)Lorg/ton/cell/CellBuilder;

    return-void
.end method
