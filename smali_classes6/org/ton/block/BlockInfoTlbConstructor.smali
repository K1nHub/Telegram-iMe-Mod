.class final Lorg/ton/block/BlockInfoTlbConstructor;
.super Lorg/ton/tlb/TlbConstructor;
.source "BlockInfo.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/ton/tlb/TlbConstructor<",
        "Lorg/ton/block/BlockInfo;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBlockInfo.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BlockInfo.kt\norg/ton/block/BlockInfoTlbConstructor\n+ 2 CellBuilder.kt\norg/ton/cell/CellBuilderKt\n+ 3 TlbCodec.kt\norg/ton/tlb/TlbCodecKt\n+ 4 CellSlice.kt\norg/ton/cell/CellSliceKt\n*L\n1#1,188:1\n131#2:189\n132#2:205\n59#3,3:190\n59#3,3:193\n59#3,3:196\n59#3,3:199\n59#3,3:202\n52#3:207\n52#3:208\n52#3:209\n52#3:210\n52#3:211\n86#4:206\n*S KotlinDebug\n*F\n+ 1 BlockInfo.kt\norg/ton/block/BlockInfoTlbConstructor\n*L\n100#1:189\n100#1:205\n113#1:190,3\n122#1:193,3\n125#1:196,3\n127#1:199,3\n129#1:202,3\n148#1:207\n156#1:208\n157#1:209\n158#1:210\n159#1:211\n135#1:206\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lorg/ton/block/BlockInfoTlbConstructor;

.field private static final blkMasterInfo:Lorg/ton/tlb/TlbCodec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ton/tlb/TlbCodec<",
            "Lorg/ton/tlb/CellRef<",
            "Lorg/ton/block/BlkMasterInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final blkPrevInfoVert:Lorg/ton/tlb/TlbCodec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ton/tlb/TlbCodec<",
            "Lorg/ton/tlb/CellRef<",
            "Lorg/ton/block/BlkPrevInfo;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/ton/block/BlockInfoTlbConstructor;

    invoke-direct {v0}, Lorg/ton/block/BlockInfoTlbConstructor;-><init>()V

    sput-object v0, Lorg/ton/block/BlockInfoTlbConstructor;->INSTANCE:Lorg/ton/block/BlockInfoTlbConstructor;

    .line 94
    sget-object v0, Lorg/ton/tlb/CellRef;->Companion:Lorg/ton/tlb/CellRef$Companion;

    sget-object v1, Lorg/ton/block/BlkMasterInfo;->Companion:Lorg/ton/block/BlkMasterInfo$Companion;

    invoke-virtual {v0, v1}, Lorg/ton/tlb/CellRef$Companion;->tlbCodec(Lorg/ton/tlb/TlbCodec;)Lorg/ton/tlb/TlbCodec;

    move-result-object v1

    sput-object v1, Lorg/ton/block/BlockInfoTlbConstructor;->blkMasterInfo:Lorg/ton/tlb/TlbCodec;

    .line 95
    sget-object v1, Lorg/ton/block/BlkPrevInfo;->Companion:Lorg/ton/block/BlkPrevInfo$Companion;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/ton/block/BlkPrevInfo$Companion;->tlbCodec(I)Lorg/ton/tlb/TlbCodec;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/ton/tlb/CellRef$Companion;->tlbCodec(Lorg/ton/tlb/TlbCodec;)Lorg/ton/tlb/TlbCodec;

    move-result-object v0

    sput-object v0, Lorg/ton/block/BlockInfoTlbConstructor;->blkPrevInfoVert:Lorg/ton/tlb/TlbCodec;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const-string v0, "block_info#9bc7a987 version:uint32 not_master:(## 1) after_merge:(## 1) before_split:(## 1) after_split:(## 1) want_split:Bool want_merge:Bool key_block:Bool vert_seqno_incr:(## 1) flags:(## 8) { flags <= 1 } seq_no:# vert_seq_no:# { vert_seq_no >= vert_seqno_incr } { prev_seq_no:# } { ~prev_seq_no + 1 = seq_no } shard:ShardIdent gen_utime:uint32 start_lt:uint64 end_lt:uint64 gen_validator_list_hash_short:uint32 gen_catchain_seqno:uint32 min_ref_mc_seqno:uint32 prev_key_block_seqno:uint32 gen_software:flags . 0?GlobalVersion master_ref:not_master?^BlkMasterInfo prev_ref:^(BlkPrevInfo after_merge) prev_vert_ref:vert_seqno_incr?^(BlkPrevInfo 0) = BlockInfo;"

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 72
    invoke-direct {p0, v0, v1, v2, v1}, Lorg/ton/tlb/TlbConstructor;-><init>(Ljava/lang/String;Lorg/ton/bitstring/BitString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;
    .locals 0

    .line 72
    invoke-virtual {p0, p1}, Lorg/ton/block/BlockInfoTlbConstructor;->loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/BlockInfo;

    move-result-object p1

    return-object p1
.end method

.method public loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/BlockInfo;
    .locals 30

    move-object/from16 v0, p1

    const-string v1, "cellSlice"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    invoke-interface/range {p1 .. p1}, Lorg/ton/cell/CellSlice;->loadUInt32-pVg5ArA()I

    move-result v3

    .line 137
    invoke-interface/range {p1 .. p1}, Lorg/ton/cell/CellSlice;->loadBit()Z

    move-result v4

    .line 138
    invoke-interface/range {p1 .. p1}, Lorg/ton/cell/CellSlice;->loadBit()Z

    move-result v5

    .line 139
    invoke-interface/range {p1 .. p1}, Lorg/ton/cell/CellSlice;->loadBit()Z

    move-result v6

    .line 140
    invoke-interface/range {p1 .. p1}, Lorg/ton/cell/CellSlice;->loadBit()Z

    move-result v7

    .line 141
    invoke-interface/range {p1 .. p1}, Lorg/ton/cell/CellSlice;->loadBit()Z

    move-result v8

    .line 142
    invoke-interface/range {p1 .. p1}, Lorg/ton/cell/CellSlice;->loadBit()Z

    move-result v9

    .line 143
    invoke-interface/range {p1 .. p1}, Lorg/ton/cell/CellSlice;->loadBit()Z

    move-result v10

    .line 144
    invoke-interface/range {p1 .. p1}, Lorg/ton/cell/CellSlice;->loadBit()Z

    move-result v11

    const/16 v1, 0x8

    .line 145
    invoke-interface {v0, v1}, Lorg/ton/cell/CellSlice;->loadInt(I)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v12

    .line 146
    invoke-interface/range {p1 .. p1}, Lorg/ton/cell/CellSlice;->loadUInt32-pVg5ArA()I

    move-result v13

    .line 147
    invoke-interface/range {p1 .. p1}, Lorg/ton/cell/CellSlice;->loadUInt32-pVg5ArA()I

    move-result v14

    .line 148
    sget-object v1, Lorg/ton/block/ShardIdent;->Companion:Lorg/ton/block/ShardIdent$Companion;

    .line 52
    invoke-interface {v1, v0}, Lorg/ton/tlb/TlbLoader;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object v1

    .line 148
    move-object v15, v1

    check-cast v15, Lorg/ton/block/ShardIdent;

    .line 149
    invoke-interface/range {p1 .. p1}, Lorg/ton/cell/CellSlice;->loadUInt32-pVg5ArA()I

    move-result v16

    .line 150
    invoke-interface/range {p1 .. p1}, Lorg/ton/cell/CellSlice;->loadUInt64-s-VKNKU()J

    move-result-wide v17

    .line 151
    invoke-interface/range {p1 .. p1}, Lorg/ton/cell/CellSlice;->loadUInt64-s-VKNKU()J

    move-result-wide v19

    .line 152
    invoke-interface/range {p1 .. p1}, Lorg/ton/cell/CellSlice;->loadUInt32-pVg5ArA()I

    move-result v21

    .line 153
    invoke-interface/range {p1 .. p1}, Lorg/ton/cell/CellSlice;->loadUInt32-pVg5ArA()I

    move-result v22

    .line 154
    invoke-interface/range {p1 .. p1}, Lorg/ton/cell/CellSlice;->loadUInt32-pVg5ArA()I

    move-result v23

    .line 155
    invoke-interface/range {p1 .. p1}, Lorg/ton/cell/CellSlice;->loadUInt32-pVg5ArA()I

    move-result v24

    and-int/lit8 v1, v12, 0x1

    if-eqz v1, :cond_0

    .line 156
    sget-object v1, Lorg/ton/block/GlobalVersion;->Companion:Lorg/ton/block/GlobalVersion$Companion;

    .line 52
    invoke-interface {v1, v0}, Lorg/ton/tlb/TlbLoader;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/ton/block/GlobalVersion;

    move-object/from16 v25, v1

    goto :goto_0

    :cond_0
    const/16 v25, 0x0

    :goto_0
    if-eqz v4, :cond_1

    .line 157
    sget-object v1, Lorg/ton/block/BlockInfoTlbConstructor;->blkMasterInfo:Lorg/ton/tlb/TlbCodec;

    .line 52
    invoke-interface {v1, v0}, Lorg/ton/tlb/TlbLoader;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/ton/tlb/CellRef;

    move-object/from16 v26, v1

    goto :goto_1

    :cond_1
    const/16 v26, 0x0

    .line 158
    :goto_1
    sget-object v1, Lorg/ton/tlb/CellRef;->Companion:Lorg/ton/tlb/CellRef$Companion;

    sget-object v2, Lorg/ton/block/BlkPrevInfo;->Companion:Lorg/ton/block/BlkPrevInfo$Companion;

    invoke-virtual {v2, v5}, Lorg/ton/block/BlkPrevInfo$Companion;->tlbCodec(Z)Lorg/ton/tlb/TlbCodec;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/ton/tlb/CellRef$Companion;->tlbCodec(Lorg/ton/tlb/TlbCodec;)Lorg/ton/tlb/TlbCodec;

    move-result-object v1

    .line 52
    invoke-interface {v1, v0}, Lorg/ton/tlb/TlbLoader;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object v1

    .line 158
    check-cast v1, Lorg/ton/tlb/CellRef;

    if-eqz v11, :cond_2

    .line 159
    sget-object v2, Lorg/ton/block/BlockInfoTlbConstructor;->blkPrevInfoVert:Lorg/ton/tlb/TlbCodec;

    .line 52
    invoke-interface {v2, v0}, Lorg/ton/tlb/TlbLoader;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/ton/tlb/CellRef;

    move-object/from16 v28, v0

    goto :goto_2

    :cond_2
    const/16 v28, 0x0

    .line 160
    :goto_2
    new-instance v0, Lorg/ton/block/BlockInfo;

    move-object v2, v0

    const/16 v29, 0x0

    move-object/from16 v27, v1

    invoke-direct/range {v2 .. v29}, Lorg/ton/block/BlockInfo;-><init>(IZZZZZZZZIIILorg/ton/block/ShardIdent;IJJIIIILorg/ton/block/GlobalVersion;Lorg/ton/tlb/CellRef;Lorg/ton/tlb/CellRef;Lorg/ton/tlb/CellRef;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public bridge synthetic storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V
    .locals 0

    .line 72
    check-cast p2, Lorg/ton/block/BlockInfo;

    invoke-virtual {p0, p1, p2}, Lorg/ton/block/BlockInfoTlbConstructor;->storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/BlockInfo;)V

    return-void
.end method

.method public storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/BlockInfo;)V
    .locals 3

    const-string v0, "cellBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    invoke-virtual {p2}, Lorg/ton/block/BlockInfo;->getVersion-pVg5ArA()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/ton/cell/CellBuilder;->storeUInt32-WZ4Q5Ns(I)Lorg/ton/cell/CellBuilder;

    .line 102
    invoke-virtual {p2}, Lorg/ton/block/BlockInfo;->getNotMaster()Z

    move-result v0

    invoke-interface {p1, v0}, Lorg/ton/cell/CellBuilder;->storeBit(Z)Lorg/ton/cell/CellBuilder;

    .line 103
    invoke-virtual {p2}, Lorg/ton/block/BlockInfo;->getAfterMerge()Z

    move-result v0

    invoke-interface {p1, v0}, Lorg/ton/cell/CellBuilder;->storeBit(Z)Lorg/ton/cell/CellBuilder;

    .line 104
    invoke-virtual {p2}, Lorg/ton/block/BlockInfo;->getBeforeSplit()Z

    move-result v0

    invoke-interface {p1, v0}, Lorg/ton/cell/CellBuilder;->storeBit(Z)Lorg/ton/cell/CellBuilder;

    .line 105
    invoke-virtual {p2}, Lorg/ton/block/BlockInfo;->getAfterSplit()Z

    move-result v0

    invoke-interface {p1, v0}, Lorg/ton/cell/CellBuilder;->storeBit(Z)Lorg/ton/cell/CellBuilder;

    .line 106
    invoke-virtual {p2}, Lorg/ton/block/BlockInfo;->getWantSplit()Z

    move-result v0

    invoke-interface {p1, v0}, Lorg/ton/cell/CellBuilder;->storeBit(Z)Lorg/ton/cell/CellBuilder;

    .line 107
    invoke-virtual {p2}, Lorg/ton/block/BlockInfo;->getWantMerge()Z

    move-result v0

    invoke-interface {p1, v0}, Lorg/ton/cell/CellBuilder;->storeBit(Z)Lorg/ton/cell/CellBuilder;

    .line 108
    invoke-virtual {p2}, Lorg/ton/block/BlockInfo;->getKeyBlock()Z

    move-result v0

    invoke-interface {p1, v0}, Lorg/ton/cell/CellBuilder;->storeBit(Z)Lorg/ton/cell/CellBuilder;

    .line 109
    invoke-virtual {p2}, Lorg/ton/block/BlockInfo;->getVertSeqnoIncr()Z

    move-result v0

    invoke-interface {p1, v0}, Lorg/ton/cell/CellBuilder;->storeBit(Z)Lorg/ton/cell/CellBuilder;

    .line 110
    invoke-virtual {p2}, Lorg/ton/block/BlockInfo;->getFlags()I

    move-result v0

    const/16 v1, 0x8

    invoke-interface {p1, v0, v1}, Lorg/ton/cell/CellBuilder;->storeInt(II)Lorg/ton/cell/CellBuilder;

    .line 111
    invoke-virtual {p2}, Lorg/ton/block/BlockInfo;->getSeqNo()I

    move-result v0

    const/16 v1, 0x20

    invoke-interface {p1, v0, v1}, Lorg/ton/cell/CellBuilder;->storeInt(II)Lorg/ton/cell/CellBuilder;

    .line 112
    invoke-virtual {p2}, Lorg/ton/block/BlockInfo;->getVertSeqNo()I

    move-result v0

    invoke-interface {p1, v0, v1}, Lorg/ton/cell/CellBuilder;->storeInt(II)Lorg/ton/cell/CellBuilder;

    .line 113
    sget-object v0, Lorg/ton/block/ShardIdent;->Companion:Lorg/ton/block/ShardIdent$Companion;

    invoke-virtual {p2}, Lorg/ton/block/BlockInfo;->getShard()Lorg/ton/block/ShardIdent;

    move-result-object v1

    .line 60
    invoke-interface {v0, p1, v1}, Lorg/ton/tlb/TlbStorer;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    .line 114
    invoke-virtual {p2}, Lorg/ton/block/BlockInfo;->getGenUtime-pVg5ArA()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/ton/cell/CellBuilder;->storeUInt32-WZ4Q5Ns(I)Lorg/ton/cell/CellBuilder;

    .line 115
    invoke-virtual {p2}, Lorg/ton/block/BlockInfo;->getStartLt-s-VKNKU()J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lorg/ton/cell/CellBuilder;->storeUInt64-VKZWuLQ(J)Lorg/ton/cell/CellBuilder;

    .line 116
    invoke-virtual {p2}, Lorg/ton/block/BlockInfo;->getEndLt-s-VKNKU()J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lorg/ton/cell/CellBuilder;->storeUInt64-VKZWuLQ(J)Lorg/ton/cell/CellBuilder;

    .line 117
    invoke-virtual {p2}, Lorg/ton/block/BlockInfo;->getGenValidatorListHashShort-pVg5ArA()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/ton/cell/CellBuilder;->storeUInt32-WZ4Q5Ns(I)Lorg/ton/cell/CellBuilder;

    .line 118
    invoke-virtual {p2}, Lorg/ton/block/BlockInfo;->getGenCatchainSeqno-pVg5ArA()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/ton/cell/CellBuilder;->storeUInt32-WZ4Q5Ns(I)Lorg/ton/cell/CellBuilder;

    .line 119
    invoke-virtual {p2}, Lorg/ton/block/BlockInfo;->getMinRefMcSeqno-pVg5ArA()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/ton/cell/CellBuilder;->storeUInt32-WZ4Q5Ns(I)Lorg/ton/cell/CellBuilder;

    .line 120
    invoke-virtual {p2}, Lorg/ton/block/BlockInfo;->getPrevKeyBlockSeqno-pVg5ArA()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/ton/cell/CellBuilder;->storeUInt32-WZ4Q5Ns(I)Lorg/ton/cell/CellBuilder;

    .line 121
    invoke-virtual {p2}, Lorg/ton/block/BlockInfo;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lorg/ton/block/BlockInfo;->getGenSoftware()Lorg/ton/block/GlobalVersion;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 122
    sget-object v0, Lorg/ton/block/GlobalVersion;->Companion:Lorg/ton/block/GlobalVersion$Companion;

    invoke-virtual {p2}, Lorg/ton/block/BlockInfo;->getGenSoftware()Lorg/ton/block/GlobalVersion;

    move-result-object v1

    .line 60
    invoke-interface {v0, p1, v1}, Lorg/ton/tlb/TlbStorer;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    .line 124
    :cond_0
    invoke-virtual {p2}, Lorg/ton/block/BlockInfo;->getNotMaster()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lorg/ton/block/BlockInfo;->getMasterRef()Lorg/ton/tlb/CellRef;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 125
    sget-object v0, Lorg/ton/block/BlockInfoTlbConstructor;->blkMasterInfo:Lorg/ton/tlb/TlbCodec;

    invoke-virtual {p2}, Lorg/ton/block/BlockInfo;->getMasterRef()Lorg/ton/tlb/CellRef;

    move-result-object v1

    .line 60
    invoke-interface {v0, p1, v1}, Lorg/ton/tlb/TlbStorer;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    .line 127
    :cond_1
    sget-object v0, Lorg/ton/tlb/CellRef;->Companion:Lorg/ton/tlb/CellRef$Companion;

    sget-object v1, Lorg/ton/block/BlkPrevInfo;->Companion:Lorg/ton/block/BlkPrevInfo$Companion;

    invoke-virtual {p2}, Lorg/ton/block/BlockInfo;->getAfterMerge()Z

    move-result v2

    invoke-virtual {v1, v2}, Lorg/ton/block/BlkPrevInfo$Companion;->tlbCodec(Z)Lorg/ton/tlb/TlbCodec;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/ton/tlb/CellRef$Companion;->tlbCodec(Lorg/ton/tlb/TlbCodec;)Lorg/ton/tlb/TlbCodec;

    move-result-object v0

    invoke-virtual {p2}, Lorg/ton/block/BlockInfo;->getPrevRef()Lorg/ton/tlb/CellRef;

    move-result-object v1

    .line 60
    invoke-interface {v0, p1, v1}, Lorg/ton/tlb/TlbStorer;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    .line 128
    invoke-virtual {p2}, Lorg/ton/block/BlockInfo;->getVertSeqnoIncr()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lorg/ton/block/BlockInfo;->getPrevVertRef()Lorg/ton/tlb/CellRef;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 129
    sget-object v0, Lorg/ton/block/BlockInfoTlbConstructor;->blkPrevInfoVert:Lorg/ton/tlb/TlbCodec;

    invoke-virtual {p2}, Lorg/ton/block/BlockInfo;->getPrevVertRef()Lorg/ton/tlb/CellRef;

    move-result-object p2

    .line 60
    invoke-interface {v0, p1, p2}, Lorg/ton/tlb/TlbStorer;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    :cond_2
    return-void
.end method
