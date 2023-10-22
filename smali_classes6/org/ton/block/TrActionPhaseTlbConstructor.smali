.class final Lorg/ton/block/TrActionPhaseTlbConstructor;
.super Lorg/ton/tlb/TlbConstructor;
.source "TrActionPhase.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/ton/tlb/TlbConstructor<",
        "Lorg/ton/block/TrActionPhase;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTrActionPhase.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TrActionPhase.kt\norg/ton/block/TrActionPhaseTlbConstructor\n+ 2 CellBuilder.kt\norg/ton/cell/CellBuilderKt\n+ 3 TlbCodec.kt\norg/ton/tlb/TlbCodecKt\n+ 4 CellSlice.kt\norg/ton/cell/CellSliceKt\n*L\n1#1,130:1\n131#2:131\n132#2:147\n59#3,3:132\n59#3,3:135\n59#3,3:138\n59#3,3:141\n59#3,3:144\n52#3:149\n52#3:150\n52#3:151\n52#3:152\n52#3:153\n86#4:148\n*S KotlinDebug\n*F\n+ 1 TrActionPhase.kt\norg/ton/block/TrActionPhaseTlbConstructor\n*L\n78#1:131\n78#1:147\n82#1:132,3\n83#1:135,3\n84#1:138,3\n86#1:141,3\n92#1:144,3\n101#1:149\n102#1:150\n103#1:151\n105#1:152\n111#1:153\n97#1:148\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lorg/ton/block/TrActionPhaseTlbConstructor;

.field private static final maybeCoins:Lorg/ton/tlb/TlbCodec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ton/tlb/TlbCodec<",
            "Lorg/ton/block/Maybe<",
            "Lorg/ton/block/Coins;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final maybeInt32:Lorg/ton/tlb/TlbCodec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ton/tlb/TlbCodec<",
            "Lorg/ton/block/Maybe<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/ton/block/TrActionPhaseTlbConstructor;

    invoke-direct {v0}, Lorg/ton/block/TrActionPhaseTlbConstructor;-><init>()V

    sput-object v0, Lorg/ton/block/TrActionPhaseTlbConstructor;->INSTANCE:Lorg/ton/block/TrActionPhaseTlbConstructor;

    .line 72
    sget-object v0, Lorg/ton/block/Maybe;->Companion:Lorg/ton/block/Maybe$Companion;

    sget-object v1, Lorg/ton/block/Coins;->Companion:Lorg/ton/block/Coins$Companion;

    invoke-virtual {v0, v1}, Lorg/ton/block/Maybe$Companion;->tlbCodec(Lorg/ton/tlb/TlbCodec;)Lorg/ton/tlb/TlbCodec;

    move-result-object v1

    sput-object v1, Lorg/ton/block/TrActionPhaseTlbConstructor;->maybeCoins:Lorg/ton/tlb/TlbCodec;

    .line 73
    sget-object v1, Lorg/ton/tlb/constructor/IntTlbConstructor;->Companion:Lorg/ton/tlb/constructor/IntTlbConstructor$Companion;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Lorg/ton/tlb/constructor/IntTlbConstructor$Companion;->int(I)Lorg/ton/tlb/TlbConstructor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/ton/block/Maybe$Companion;->tlbCodec(Lorg/ton/tlb/TlbCodec;)Lorg/ton/tlb/TlbCodec;

    move-result-object v0

    sput-object v0, Lorg/ton/block/TrActionPhaseTlbConstructor;->maybeInt32:Lorg/ton/tlb/TlbCodec;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const-string v0, "tr_phase_action$_ success:Bool valid:Bool no_funds:Bool status_change:AccStatusChange total_fwd_fees:(Maybe Coins) total_action_fees:(Maybe Coins) result_code:int32 result_arg:(Maybe int32) tot_actions:uint16 spec_actions:uint16 skipped_actions:uint16 msgs_created:uint16 action_list_hash:bits256 tot_msg_size:StorageUsedShort = TrActionPhase;"

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
    invoke-virtual {p0, p1}, Lorg/ton/block/TrActionPhaseTlbConstructor;->loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/TrActionPhase;

    move-result-object p1

    return-object p1
.end method

.method public loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/TrActionPhase;
    .locals 17

    move-object/from16 v0, p1

    const-string v1, "cellSlice"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    invoke-interface/range {p1 .. p1}, Lorg/ton/cell/CellSlice;->loadBit()Z

    move-result v3

    .line 99
    invoke-interface/range {p1 .. p1}, Lorg/ton/cell/CellSlice;->loadBit()Z

    move-result v4

    .line 100
    invoke-interface/range {p1 .. p1}, Lorg/ton/cell/CellSlice;->loadBit()Z

    move-result v5

    .line 101
    sget-object v1, Lorg/ton/block/AccStatusChange;->Companion:Lorg/ton/block/AccStatusChange$Companion;

    .line 52
    invoke-interface {v1, v0}, Lorg/ton/tlb/TlbLoader;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object v1

    .line 101
    move-object v6, v1

    check-cast v6, Lorg/ton/block/AccStatusChange;

    .line 102
    sget-object v1, Lorg/ton/block/TrActionPhaseTlbConstructor;->maybeCoins:Lorg/ton/tlb/TlbCodec;

    .line 52
    invoke-interface {v1, v0}, Lorg/ton/tlb/TlbLoader;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object v2

    .line 102
    move-object v7, v2

    check-cast v7, Lorg/ton/block/Maybe;

    .line 52
    invoke-interface {v1, v0}, Lorg/ton/tlb/TlbLoader;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object v1

    .line 103
    move-object v8, v1

    check-cast v8, Lorg/ton/block/Maybe;

    const/16 v1, 0x20

    .line 104
    invoke-interface {v0, v1}, Lorg/ton/cell/CellSlice;->loadInt(I)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v9

    .line 105
    sget-object v1, Lorg/ton/block/TrActionPhaseTlbConstructor;->maybeInt32:Lorg/ton/tlb/TlbCodec;

    .line 52
    invoke-interface {v1, v0}, Lorg/ton/tlb/TlbLoader;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object v1

    .line 105
    move-object v10, v1

    check-cast v10, Lorg/ton/block/Maybe;

    const/16 v1, 0x10

    .line 106
    invoke-interface {v0, v1}, Lorg/ton/cell/CellSlice;->loadUInt(I)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v11

    .line 107
    invoke-interface {v0, v1}, Lorg/ton/cell/CellSlice;->loadUInt(I)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v12

    .line 108
    invoke-interface {v0, v1}, Lorg/ton/cell/CellSlice;->loadUInt(I)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v13

    .line 109
    invoke-interface {v0, v1}, Lorg/ton/cell/CellSlice;->loadUInt(I)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v14

    const/16 v1, 0x100

    .line 110
    invoke-interface {v0, v1}, Lorg/ton/cell/CellSlice;->loadBits(I)Lorg/ton/bitstring/BitString;

    move-result-object v15

    .line 111
    sget-object v1, Lorg/ton/block/StorageUsedShort;->Companion:Lorg/ton/block/StorageUsedShort$Companion;

    .line 52
    invoke-interface {v1, v0}, Lorg/ton/tlb/TlbLoader;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object v0

    .line 111
    move-object/from16 v16, v0

    check-cast v16, Lorg/ton/block/StorageUsedShort;

    .line 112
    new-instance v0, Lorg/ton/block/TrActionPhase;

    move-object v2, v0

    invoke-direct/range {v2 .. v16}, Lorg/ton/block/TrActionPhase;-><init>(ZZZLorg/ton/block/AccStatusChange;Lorg/ton/block/Maybe;Lorg/ton/block/Maybe;ILorg/ton/block/Maybe;IIIILorg/ton/bitstring/BitString;Lorg/ton/block/StorageUsedShort;)V

    return-object v0
.end method

.method public bridge synthetic storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V
    .locals 0

    .line 63
    check-cast p2, Lorg/ton/block/TrActionPhase;

    invoke-virtual {p0, p1, p2}, Lorg/ton/block/TrActionPhaseTlbConstructor;->storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/TrActionPhase;)V

    return-void
.end method

.method public storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/TrActionPhase;)V
    .locals 2

    const-string v0, "cellBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    invoke-virtual {p2}, Lorg/ton/block/TrActionPhase;->getSuccess()Z

    move-result v0

    invoke-interface {p1, v0}, Lorg/ton/cell/CellBuilder;->storeBit(Z)Lorg/ton/cell/CellBuilder;

    .line 80
    invoke-virtual {p2}, Lorg/ton/block/TrActionPhase;->getValid()Z

    move-result v0

    invoke-interface {p1, v0}, Lorg/ton/cell/CellBuilder;->storeBit(Z)Lorg/ton/cell/CellBuilder;

    .line 81
    invoke-virtual {p2}, Lorg/ton/block/TrActionPhase;->getNoFunds()Z

    move-result v0

    invoke-interface {p1, v0}, Lorg/ton/cell/CellBuilder;->storeBit(Z)Lorg/ton/cell/CellBuilder;

    .line 82
    sget-object v0, Lorg/ton/block/AccStatusChange;->Companion:Lorg/ton/block/AccStatusChange$Companion;

    invoke-virtual {p2}, Lorg/ton/block/TrActionPhase;->getStatusChange()Lorg/ton/block/AccStatusChange;

    move-result-object v1

    .line 60
    invoke-interface {v0, p1, v1}, Lorg/ton/tlb/TlbStorer;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    .line 83
    sget-object v0, Lorg/ton/block/TrActionPhaseTlbConstructor;->maybeCoins:Lorg/ton/tlb/TlbCodec;

    invoke-virtual {p2}, Lorg/ton/block/TrActionPhase;->getTotalFwdFees()Lorg/ton/block/Maybe;

    move-result-object v1

    .line 60
    invoke-interface {v0, p1, v1}, Lorg/ton/tlb/TlbStorer;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    .line 84
    invoke-virtual {p2}, Lorg/ton/block/TrActionPhase;->getTotalActionFees()Lorg/ton/block/Maybe;

    move-result-object v1

    .line 60
    invoke-interface {v0, p1, v1}, Lorg/ton/tlb/TlbStorer;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    .line 85
    invoke-virtual {p2}, Lorg/ton/block/TrActionPhase;->getResultCode()I

    move-result v0

    const/16 v1, 0x20

    invoke-interface {p1, v0, v1}, Lorg/ton/cell/CellBuilder;->storeInt(II)Lorg/ton/cell/CellBuilder;

    .line 86
    sget-object v0, Lorg/ton/block/TrActionPhaseTlbConstructor;->maybeInt32:Lorg/ton/tlb/TlbCodec;

    invoke-virtual {p2}, Lorg/ton/block/TrActionPhase;->getResultArg()Lorg/ton/block/Maybe;

    move-result-object v1

    .line 60
    invoke-interface {v0, p1, v1}, Lorg/ton/tlb/TlbStorer;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    .line 87
    invoke-virtual {p2}, Lorg/ton/block/TrActionPhase;->getTotActions()I

    move-result v0

    const/16 v1, 0x10

    invoke-interface {p1, v0, v1}, Lorg/ton/cell/CellBuilder;->storeUInt(II)Lorg/ton/cell/CellBuilder;

    .line 88
    invoke-virtual {p2}, Lorg/ton/block/TrActionPhase;->getSpecActions()I

    move-result v0

    invoke-interface {p1, v0, v1}, Lorg/ton/cell/CellBuilder;->storeUInt(II)Lorg/ton/cell/CellBuilder;

    .line 89
    invoke-virtual {p2}, Lorg/ton/block/TrActionPhase;->getSkippedActions()I

    move-result v0

    invoke-interface {p1, v0, v1}, Lorg/ton/cell/CellBuilder;->storeUInt(II)Lorg/ton/cell/CellBuilder;

    .line 90
    invoke-virtual {p2}, Lorg/ton/block/TrActionPhase;->getMsgsCreated()I

    move-result v0

    invoke-interface {p1, v0, v1}, Lorg/ton/cell/CellBuilder;->storeUInt(II)Lorg/ton/cell/CellBuilder;

    .line 91
    invoke-virtual {p2}, Lorg/ton/block/TrActionPhase;->getActionListHash()Lorg/ton/bitstring/BitString;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/ton/cell/CellBuilder;->storeBits(Lorg/ton/bitstring/BitString;)Lorg/ton/cell/CellBuilder;

    .line 92
    sget-object v0, Lorg/ton/block/StorageUsedShort;->Companion:Lorg/ton/block/StorageUsedShort$Companion;

    invoke-virtual {p2}, Lorg/ton/block/TrActionPhase;->getTotMsgSize()Lorg/ton/block/StorageUsedShort;

    move-result-object p2

    .line 60
    invoke-interface {v0, p1, p2}, Lorg/ton/tlb/TlbStorer;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    return-void
.end method
