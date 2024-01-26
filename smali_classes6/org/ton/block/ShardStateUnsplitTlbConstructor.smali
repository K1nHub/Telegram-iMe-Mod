.class final Lorg/ton/block/ShardStateUnsplitTlbConstructor;
.super Lorg/ton/tlb/TlbConstructor;
.source "ShardStateUnsplit.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/ton/tlb/TlbConstructor<",
        "Lorg/ton/block/ShardStateUnsplit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nShardStateUnsplit.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShardStateUnsplit.kt\norg/ton/block/ShardStateUnsplitTlbConstructor\n+ 2 CellBuilder.kt\norg/ton/cell/CellBuilderKt\n+ 3 TlbCodec.kt\norg/ton/tlb/TlbCodecKt\n+ 4 CellRef.kt\norg/ton/tlb/CellRefKt\n+ 5 CellSlice.kt\norg/ton/cell/CellSliceKt\n*L\n1#1,185:1\n131#2:186\n132#2:199\n59#3,3:187\n59#3,3:196\n52#3:201\n52#3:208\n106#4,2:190\n106#4,2:192\n106#4,2:194\n110#4:202\n14#4:203\n110#4:204\n14#4:205\n110#4:206\n14#4:207\n86#5:200\n*S KotlinDebug\n*F\n+ 1 ShardStateUnsplit.kt\norg/ton/block/ShardStateUnsplitTlbConstructor\n*L\n101#1:186\n101#1:199\n103#1:187,3\n113#1:196,3\n120#1:201\n130#1:208\n109#1:190,2\n111#1:192,2\n112#1:194,2\n126#1:202\n126#1:203\n128#1:204\n128#1:205\n129#1:206\n129#1:207\n118#1:200\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lorg/ton/block/ShardStateUnsplitTlbConstructor;

.field private static final maybeMcExtra:Lorg/ton/tlb/TlbCodec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ton/tlb/TlbCodec<",
            "Lorg/ton/block/Maybe<",
            "Lorg/ton/tlb/CellRef<",
            "Lorg/ton/block/McStateExtra;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/ton/block/ShardStateUnsplitTlbConstructor;

    invoke-direct {v0}, Lorg/ton/block/ShardStateUnsplitTlbConstructor;-><init>()V

    sput-object v0, Lorg/ton/block/ShardStateUnsplitTlbConstructor;->INSTANCE:Lorg/ton/block/ShardStateUnsplitTlbConstructor;

    .line 96
    sget-object v0, Lorg/ton/block/Maybe;->Companion:Lorg/ton/block/Maybe$Companion;

    sget-object v1, Lorg/ton/tlb/CellRef;->Companion:Lorg/ton/tlb/CellRef$Companion;

    sget-object v2, Lorg/ton/block/McStateExtra;->Companion:Lorg/ton/block/McStateExtra$Companion;

    invoke-virtual {v1, v2}, Lorg/ton/tlb/CellRef$Companion;->tlbCodec(Lorg/ton/tlb/TlbCodec;)Lorg/ton/tlb/TlbCodec;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/ton/block/Maybe$Companion;->tlbCodec(Lorg/ton/tlb/TlbCodec;)Lorg/ton/tlb/TlbCodec;

    move-result-object v0

    sput-object v0, Lorg/ton/block/ShardStateUnsplitTlbConstructor;->maybeMcExtra:Lorg/ton/tlb/TlbCodec;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const-string v0, "shard_state#9023afe2 global_id:int32 shard_id:ShardIdent seq_no:uint32 vert_seq_no:# gen_utime:uint32 gen_lt:uint64 min_ref_mc_seqno:uint32 out_msg_queue_info:^OutMsgQueueInfo before_split:(## 1) accounts:^ShardAccounts ^[ overload_history:uint64 underload_history:uint64 total_balance:CurrencyCollection total_validator_fees:CurrencyCollection libraries:(HashmapE 256 LibDescr) master_ref:(Maybe BlkMasterInfo) ] custom:(Maybe ^McStateExtra) = ShardStateUnsplit;"

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 75
    invoke-direct {p0, v0, v1, v2, v1}, Lorg/ton/tlb/TlbConstructor;-><init>(Ljava/lang/String;Lorg/ton/bitstring/BitString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;
    .locals 0

    .line 75
    invoke-virtual {p0, p1}, Lorg/ton/block/ShardStateUnsplitTlbConstructor;->loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/ShardStateUnsplit;

    move-result-object p1

    return-object p1
.end method

.method public loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/ShardStateUnsplit;
    .locals 18

    move-object/from16 v0, p1

    const-string v1, "cellSlice"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x20

    .line 119
    invoke-interface {v0, v1}, Lorg/ton/cell/CellSlice;->loadInt(I)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v4

    .line 120
    sget-object v2, Lorg/ton/block/ShardIdent;->Companion:Lorg/ton/block/ShardIdent$Companion;

    .line 52
    invoke-interface {v2, v0}, Lorg/ton/tlb/TlbLoader;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object v2

    .line 120
    move-object v5, v2

    check-cast v5, Lorg/ton/block/ShardIdent;

    .line 121
    invoke-interface {v0, v1}, Lorg/ton/cell/CellSlice;->loadUInt(I)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    invoke-static {v2}, Lkotlin/UInt;->constructor-impl(I)I

    move-result v6

    .line 122
    invoke-interface {v0, v1}, Lorg/ton/cell/CellSlice;->loadInt(I)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v7

    .line 123
    invoke-interface {v0, v1}, Lorg/ton/cell/CellSlice;->loadUInt(I)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    invoke-static {v2}, Lkotlin/UInt;->constructor-impl(I)I

    move-result v8

    const/16 v2, 0x40

    .line 124
    invoke-interface {v0, v2}, Lorg/ton/cell/CellSlice;->loadUInt(I)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v9

    .line 125
    invoke-interface {v0, v1}, Lorg/ton/cell/CellSlice;->loadUInt(I)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    invoke-static {v1}, Lkotlin/UInt;->constructor-impl(I)I

    move-result v11

    .line 126
    sget-object v1, Lorg/ton/block/OutMsgQueueInfo;->Companion:Lorg/ton/block/OutMsgQueueInfo$Companion;

    .line 110
    invoke-interface/range {p1 .. p1}, Lorg/ton/cell/CellSlice;->loadRef()Lorg/ton/cell/Cell;

    move-result-object v2

    .line 14
    sget-object v3, Lorg/ton/tlb/CellRef;->Companion:Lorg/ton/tlb/CellRef$Companion;

    invoke-virtual {v3, v2, v1}, Lorg/ton/tlb/CellRef$Companion;->valueOf(Lorg/ton/cell/Cell;Lorg/ton/tlb/TlbCodec;)Lorg/ton/tlb/CellRef;

    move-result-object v12

    .line 127
    invoke-interface/range {p1 .. p1}, Lorg/ton/cell/CellSlice;->loadBit()Z

    move-result v13

    .line 128
    sget-object v1, Lorg/ton/block/ShardAccounts;->Companion:Lorg/ton/block/ShardAccounts$Companion;

    .line 110
    invoke-interface/range {p1 .. p1}, Lorg/ton/cell/CellSlice;->loadRef()Lorg/ton/cell/Cell;

    move-result-object v2

    .line 14
    invoke-virtual {v3, v2, v1}, Lorg/ton/tlb/CellRef$Companion;->valueOf(Lorg/ton/cell/Cell;Lorg/ton/tlb/TlbCodec;)Lorg/ton/tlb/CellRef;

    move-result-object v14

    .line 129
    sget-object v1, Lorg/ton/block/ShardStateUnsplitAux;->Companion:Lorg/ton/block/ShardStateUnsplitAux$Companion;

    .line 110
    invoke-interface/range {p1 .. p1}, Lorg/ton/cell/CellSlice;->loadRef()Lorg/ton/cell/Cell;

    move-result-object v2

    .line 14
    invoke-virtual {v3, v2, v1}, Lorg/ton/tlb/CellRef$Companion;->valueOf(Lorg/ton/cell/Cell;Lorg/ton/tlb/TlbCodec;)Lorg/ton/tlb/CellRef;

    move-result-object v15

    .line 130
    sget-object v1, Lorg/ton/block/ShardStateUnsplitTlbConstructor;->maybeMcExtra:Lorg/ton/tlb/TlbCodec;

    .line 52
    invoke-interface {v1, v0}, Lorg/ton/tlb/TlbLoader;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object v0

    .line 130
    move-object/from16 v16, v0

    check-cast v16, Lorg/ton/block/Maybe;

    .line 131
    new-instance v0, Lorg/ton/block/ShardStateUnsplit;

    const/16 v17, 0x0

    move-object v3, v0

    invoke-direct/range {v3 .. v17}, Lorg/ton/block/ShardStateUnsplit;-><init>(ILorg/ton/block/ShardIdent;IIIJILorg/ton/tlb/CellRef;ZLorg/ton/tlb/CellRef;Lorg/ton/tlb/CellRef;Lorg/ton/block/Maybe;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public bridge synthetic storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V
    .locals 0

    .line 75
    check-cast p2, Lorg/ton/block/ShardStateUnsplit;

    invoke-virtual {p0, p1, p2}, Lorg/ton/block/ShardStateUnsplitTlbConstructor;->storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/ShardStateUnsplit;)V

    return-void
.end method

.method public storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/ShardStateUnsplit;)V
    .locals 4

    const-string v0, "cellBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    invoke-virtual {p2}, Lorg/ton/block/ShardStateUnsplit;->getGlobalId()I

    move-result v0

    const/16 v1, 0x20

    invoke-interface {p1, v0, v1}, Lorg/ton/cell/CellBuilder;->storeInt(II)Lorg/ton/cell/CellBuilder;

    .line 103
    sget-object v0, Lorg/ton/block/ShardIdent;->Companion:Lorg/ton/block/ShardIdent$Companion;

    invoke-virtual {p2}, Lorg/ton/block/ShardStateUnsplit;->getShardId()Lorg/ton/block/ShardIdent;

    move-result-object v2

    .line 60
    invoke-interface {v0, p1, v2}, Lorg/ton/tlb/TlbStorer;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    .line 104
    invoke-virtual {p2}, Lorg/ton/block/ShardStateUnsplit;->getSeqNo-pVg5ArA()I

    move-result v0

    invoke-interface {p1, v0, v1}, Lorg/ton/cell/CellBuilder;->storeUInt(II)Lorg/ton/cell/CellBuilder;

    .line 105
    invoke-virtual {p2}, Lorg/ton/block/ShardStateUnsplit;->getVertSeqNo()I

    move-result v0

    invoke-interface {p1, v0, v1}, Lorg/ton/cell/CellBuilder;->storeInt(II)Lorg/ton/cell/CellBuilder;

    .line 106
    invoke-virtual {p2}, Lorg/ton/block/ShardStateUnsplit;->getGenUtime-pVg5ArA()I

    move-result v0

    invoke-interface {p1, v0, v1}, Lorg/ton/cell/CellBuilder;->storeUInt(II)Lorg/ton/cell/CellBuilder;

    .line 107
    invoke-virtual {p2}, Lorg/ton/block/ShardStateUnsplit;->getGenLt-s-VKNKU()J

    move-result-wide v2

    const/16 v0, 0x40

    invoke-interface {p1, v2, v3, v0}, Lorg/ton/cell/CellBuilder;->storeUInt(JI)Lorg/ton/cell/CellBuilder;

    .line 108
    invoke-virtual {p2}, Lorg/ton/block/ShardStateUnsplit;->getMinRefMcSeqno-pVg5ArA()I

    move-result v0

    invoke-interface {p1, v0, v1}, Lorg/ton/cell/CellBuilder;->storeUInt(II)Lorg/ton/cell/CellBuilder;

    .line 109
    sget-object v0, Lorg/ton/block/OutMsgQueueInfo;->Companion:Lorg/ton/block/OutMsgQueueInfo$Companion;

    invoke-virtual {p2}, Lorg/ton/block/ShardStateUnsplit;->getOutMsgQueueInfo()Lorg/ton/tlb/CellRef;

    move-result-object v1

    .line 106
    invoke-interface {v1, v0}, Lorg/ton/tlb/CellRef;->toCell(Lorg/ton/tlb/TlbCodec;)Lorg/ton/cell/Cell;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/ton/cell/CellBuilder;->storeRef(Lorg/ton/cell/Cell;)Lorg/ton/cell/CellBuilder;

    .line 110
    invoke-virtual {p2}, Lorg/ton/block/ShardStateUnsplit;->getBeforeSplit()Z

    move-result v0

    invoke-interface {p1, v0}, Lorg/ton/cell/CellBuilder;->storeBit(Z)Lorg/ton/cell/CellBuilder;

    .line 111
    sget-object v0, Lorg/ton/block/ShardAccounts;->Companion:Lorg/ton/block/ShardAccounts$Companion;

    invoke-virtual {p2}, Lorg/ton/block/ShardStateUnsplit;->getAccounts()Lorg/ton/tlb/CellRef;

    move-result-object v1

    .line 106
    invoke-interface {v1, v0}, Lorg/ton/tlb/CellRef;->toCell(Lorg/ton/tlb/TlbCodec;)Lorg/ton/cell/Cell;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/ton/cell/CellBuilder;->storeRef(Lorg/ton/cell/Cell;)Lorg/ton/cell/CellBuilder;

    .line 112
    sget-object v0, Lorg/ton/block/ShardStateUnsplitAux;->Companion:Lorg/ton/block/ShardStateUnsplitAux$Companion;

    invoke-virtual {p2}, Lorg/ton/block/ShardStateUnsplit;->getR1()Lorg/ton/tlb/CellRef;

    move-result-object v1

    .line 106
    invoke-interface {v1, v0}, Lorg/ton/tlb/CellRef;->toCell(Lorg/ton/tlb/TlbCodec;)Lorg/ton/cell/Cell;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/ton/cell/CellBuilder;->storeRef(Lorg/ton/cell/Cell;)Lorg/ton/cell/CellBuilder;

    .line 113
    sget-object v0, Lorg/ton/block/ShardStateUnsplitTlbConstructor;->maybeMcExtra:Lorg/ton/tlb/TlbCodec;

    invoke-virtual {p2}, Lorg/ton/block/ShardStateUnsplit;->getCustom()Lorg/ton/block/Maybe;

    move-result-object p2

    .line 60
    invoke-interface {v0, p1, p2}, Lorg/ton/tlb/TlbStorer;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    return-void
.end method
