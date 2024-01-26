.class final Lorg/ton/block/BlockExtraTlbConstructor;
.super Lorg/ton/tlb/TlbConstructor;
.source "BlockExtra.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/ton/tlb/TlbConstructor<",
        "Lorg/ton/block/BlockExtra;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBlockExtra.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BlockExtra.kt\norg/ton/block/BlockExtraTlbConstructor\n+ 2 CellBuilder.kt\norg/ton/cell/CellBuilderKt\n+ 3 TlbCodec.kt\norg/ton/tlb/TlbCodecKt\n+ 4 CellSlice.kt\norg/ton/cell/CellSliceKt\n*L\n1#1,81:1\n131#2:82\n132#2:95\n59#3,3:83\n59#3,3:86\n59#3,3:89\n59#3,3:92\n52#3:97\n52#3:98\n52#3:99\n52#3:100\n86#4:96\n*S KotlinDebug\n*F\n+ 1 BlockExtra.kt\norg/ton/block/BlockExtraTlbConstructor\n*L\n60#1:82\n60#1:95\n61#1:83,3\n62#1:86,3\n63#1:89,3\n66#1:92,3\n72#1:97\n73#1:98\n74#1:99\n77#1:100\n71#1:96\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lorg/ton/block/BlockExtraTlbConstructor;

.field private static final inMsgDescr:Lorg/ton/tlb/TlbCodec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ton/tlb/TlbCodec<",
            "Lorg/ton/tlb/CellRef<",
            "Lorg/ton/hashmap/HashmapAugE<",
            "Lorg/ton/block/InMsg;",
            "Lorg/ton/block/ImportFees;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private static final maybeMcBlockExtra:Lorg/ton/tlb/TlbCodec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ton/tlb/TlbCodec<",
            "Lorg/ton/block/Maybe<",
            "Lorg/ton/tlb/CellRef<",
            "Lorg/ton/block/McBlockExtra;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private static final outMsgDescr:Lorg/ton/tlb/TlbCodec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ton/tlb/TlbCodec<",
            "Lorg/ton/tlb/CellRef<",
            "Lorg/ton/hashmap/HashmapAugE<",
            "Lorg/ton/block/OutMsg;",
            "Lorg/ton/block/CurrencyCollection;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private static final shardAccountBlock:Lorg/ton/tlb/TlbCodec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ton/tlb/TlbCodec<",
            "Lorg/ton/tlb/CellRef<",
            "Lorg/ton/hashmap/HashmapAugE<",
            "Lorg/ton/block/AccountBlock;",
            "Lorg/ton/block/CurrencyCollection;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lorg/ton/block/BlockExtraTlbConstructor;

    invoke-direct {v0}, Lorg/ton/block/BlockExtraTlbConstructor;-><init>()V

    sput-object v0, Lorg/ton/block/BlockExtraTlbConstructor;->INSTANCE:Lorg/ton/block/BlockExtraTlbConstructor;

    .line 46
    sget-object v0, Lorg/ton/tlb/CellRef;->Companion:Lorg/ton/tlb/CellRef$Companion;

    sget-object v1, Lorg/ton/hashmap/HashmapAugE;->Companion:Lorg/ton/hashmap/HashmapAugE$Companion;

    sget-object v2, Lorg/ton/block/InMsg;->Companion:Lorg/ton/block/InMsg$Companion;

    sget-object v3, Lorg/ton/block/ImportFees;->Companion:Lorg/ton/block/ImportFees$Companion;

    const/16 v4, 0x100

    invoke-virtual {v1, v4, v2, v3}, Lorg/ton/hashmap/HashmapAugE$Companion;->tlbCodec(ILorg/ton/tlb/TlbCodec;Lorg/ton/tlb/TlbCodec;)Lorg/ton/tlb/TlbCodec;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/ton/tlb/CellRef$Companion;->tlbCodec(Lorg/ton/tlb/TlbCodec;)Lorg/ton/tlb/TlbCodec;

    move-result-object v2

    sput-object v2, Lorg/ton/block/BlockExtraTlbConstructor;->inMsgDescr:Lorg/ton/tlb/TlbCodec;

    .line 47
    sget-object v2, Lorg/ton/block/OutMsg;->Companion:Lorg/ton/block/OutMsg$Companion;

    sget-object v3, Lorg/ton/block/CurrencyCollection;->Companion:Lorg/ton/block/CurrencyCollection$Companion;

    invoke-virtual {v1, v4, v2, v3}, Lorg/ton/hashmap/HashmapAugE$Companion;->tlbCodec(ILorg/ton/tlb/TlbCodec;Lorg/ton/tlb/TlbCodec;)Lorg/ton/tlb/TlbCodec;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/ton/tlb/CellRef$Companion;->tlbCodec(Lorg/ton/tlb/TlbCodec;)Lorg/ton/tlb/TlbCodec;

    move-result-object v2

    sput-object v2, Lorg/ton/block/BlockExtraTlbConstructor;->outMsgDescr:Lorg/ton/tlb/TlbCodec;

    .line 51
    sget-object v2, Lorg/ton/block/AccountBlock;->Companion:Lorg/ton/block/AccountBlock$Companion;

    .line 49
    invoke-virtual {v1, v4, v2, v3}, Lorg/ton/hashmap/HashmapAugE$Companion;->tlbCodec(ILorg/ton/tlb/TlbCodec;Lorg/ton/tlb/TlbCodec;)Lorg/ton/tlb/TlbCodec;

    move-result-object v1

    .line 48
    invoke-virtual {v0, v1}, Lorg/ton/tlb/CellRef$Companion;->tlbCodec(Lorg/ton/tlb/TlbCodec;)Lorg/ton/tlb/TlbCodec;

    move-result-object v1

    sput-object v1, Lorg/ton/block/BlockExtraTlbConstructor;->shardAccountBlock:Lorg/ton/tlb/TlbCodec;

    .line 55
    sget-object v1, Lorg/ton/block/Maybe;->Companion:Lorg/ton/block/Maybe$Companion;

    sget-object v2, Lorg/ton/block/McBlockExtra;->Companion:Lorg/ton/block/McBlockExtra$Companion;

    invoke-virtual {v0, v2}, Lorg/ton/tlb/CellRef$Companion;->tlbCodec(Lorg/ton/tlb/TlbCodec;)Lorg/ton/tlb/TlbCodec;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/ton/block/Maybe$Companion;->tlbCodec(Lorg/ton/tlb/TlbCodec;)Lorg/ton/tlb/TlbCodec;

    move-result-object v0

    sput-object v0, Lorg/ton/block/BlockExtraTlbConstructor;->maybeMcBlockExtra:Lorg/ton/tlb/TlbCodec;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const-string v0, "block_extra#4a33f6fd in_msg_descr:^InMsgDescr\n  out_msg_descr:^OutMsgDescr\n  account_blocks:^ShardAccountBlocks\n  rand_seed:bits256\n  created_by:bits256\n  custom:(Maybe ^McBlockExtra) = BlockExtra;"

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
    invoke-virtual {p0, p1}, Lorg/ton/block/BlockExtraTlbConstructor;->loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/BlockExtra;

    move-result-object p1

    return-object p1
.end method

.method public loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/BlockExtra;
    .locals 8

    const-string v0, "cellSlice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    sget-object v0, Lorg/ton/block/BlockExtraTlbConstructor;->inMsgDescr:Lorg/ton/tlb/TlbCodec;

    .line 52
    invoke-interface {v0, p1}, Lorg/ton/tlb/TlbLoader;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object v0

    .line 72
    move-object v2, v0

    check-cast v2, Lorg/ton/tlb/CellRef;

    .line 73
    sget-object v0, Lorg/ton/block/BlockExtraTlbConstructor;->outMsgDescr:Lorg/ton/tlb/TlbCodec;

    .line 52
    invoke-interface {v0, p1}, Lorg/ton/tlb/TlbLoader;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object v0

    .line 73
    move-object v3, v0

    check-cast v3, Lorg/ton/tlb/CellRef;

    .line 74
    sget-object v0, Lorg/ton/block/BlockExtraTlbConstructor;->shardAccountBlock:Lorg/ton/tlb/TlbCodec;

    .line 52
    invoke-interface {v0, p1}, Lorg/ton/tlb/TlbLoader;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object v0

    .line 74
    move-object v4, v0

    check-cast v4, Lorg/ton/tlb/CellRef;

    const/16 v0, 0x100

    .line 75
    invoke-interface {p1, v0}, Lorg/ton/cell/CellSlice;->loadBits(I)Lorg/ton/bitstring/BitString;

    move-result-object v5

    .line 76
    invoke-interface {p1, v0}, Lorg/ton/cell/CellSlice;->loadBits(I)Lorg/ton/bitstring/BitString;

    move-result-object v6

    .line 77
    sget-object v0, Lorg/ton/block/BlockExtraTlbConstructor;->maybeMcBlockExtra:Lorg/ton/tlb/TlbCodec;

    .line 52
    invoke-interface {v0, p1}, Lorg/ton/tlb/TlbLoader;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object p1

    .line 77
    move-object v7, p1

    check-cast v7, Lorg/ton/block/Maybe;

    .line 78
    new-instance p1, Lorg/ton/block/BlockExtra;

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Lorg/ton/block/BlockExtra;-><init>(Lorg/ton/tlb/CellRef;Lorg/ton/tlb/CellRef;Lorg/ton/tlb/CellRef;Lorg/ton/bitstring/BitString;Lorg/ton/bitstring/BitString;Lorg/ton/block/Maybe;)V

    return-object p1
.end method

.method public bridge synthetic storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V
    .locals 0

    .line 38
    check-cast p2, Lorg/ton/block/BlockExtra;

    invoke-virtual {p0, p1, p2}, Lorg/ton/block/BlockExtraTlbConstructor;->storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/BlockExtra;)V

    return-void
.end method

.method public storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/BlockExtra;)V
    .locals 2

    const-string v0, "cellBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    sget-object v0, Lorg/ton/block/BlockExtraTlbConstructor;->inMsgDescr:Lorg/ton/tlb/TlbCodec;

    invoke-virtual {p2}, Lorg/ton/block/BlockExtra;->getInMsgDescr()Lorg/ton/tlb/CellRef;

    move-result-object v1

    .line 60
    invoke-interface {v0, p1, v1}, Lorg/ton/tlb/TlbStorer;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    .line 62
    sget-object v0, Lorg/ton/block/BlockExtraTlbConstructor;->outMsgDescr:Lorg/ton/tlb/TlbCodec;

    invoke-virtual {p2}, Lorg/ton/block/BlockExtra;->getOutMsgDescr()Lorg/ton/tlb/CellRef;

    move-result-object v1

    .line 60
    invoke-interface {v0, p1, v1}, Lorg/ton/tlb/TlbStorer;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    .line 63
    sget-object v0, Lorg/ton/block/BlockExtraTlbConstructor;->shardAccountBlock:Lorg/ton/tlb/TlbCodec;

    invoke-virtual {p2}, Lorg/ton/block/BlockExtra;->getAccountBlocks()Lorg/ton/tlb/CellRef;

    move-result-object v1

    .line 60
    invoke-interface {v0, p1, v1}, Lorg/ton/tlb/TlbStorer;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    .line 64
    invoke-virtual {p2}, Lorg/ton/block/BlockExtra;->getRandSeed()Lorg/ton/bitstring/BitString;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/ton/cell/CellBuilder;->storeBits(Lorg/ton/bitstring/BitString;)Lorg/ton/cell/CellBuilder;

    .line 65
    invoke-virtual {p2}, Lorg/ton/block/BlockExtra;->getCreatedBy()Lorg/ton/bitstring/BitString;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/ton/cell/CellBuilder;->storeBits(Lorg/ton/bitstring/BitString;)Lorg/ton/cell/CellBuilder;

    .line 66
    sget-object v0, Lorg/ton/block/BlockExtraTlbConstructor;->maybeMcBlockExtra:Lorg/ton/tlb/TlbCodec;

    invoke-virtual {p2}, Lorg/ton/block/BlockExtra;->getCustom()Lorg/ton/block/Maybe;

    move-result-object p2

    .line 60
    invoke-interface {v0, p1, p2}, Lorg/ton/tlb/TlbStorer;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    return-void
.end method
