.class final Lorg/ton/block/ShardStateUnsplitAuxTlbConstructor;
.super Lorg/ton/tlb/TlbConstructor;
.source "ShardStateUnsplit.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/ton/tlb/TlbConstructor<",
        "Lorg/ton/block/ShardStateUnsplitAux;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nShardStateUnsplit.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShardStateUnsplit.kt\norg/ton/block/ShardStateUnsplitAuxTlbConstructor\n+ 2 TlbCodec.kt\norg/ton/tlb/TlbCodecKt\n*L\n1#1,185:1\n59#2,3:186\n59#2,3:189\n59#2,3:192\n59#2,3:195\n52#2:198\n52#2:199\n52#2:200\n52#2:201\n*S KotlinDebug\n*F\n+ 1 ShardStateUnsplit.kt\norg/ton/block/ShardStateUnsplitAuxTlbConstructor\n*L\n162#1:186,3\n163#1:189,3\n164#1:192,3\n165#1:195,3\n171#1:198\n172#1:199\n173#1:200\n174#1:201\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lorg/ton/block/ShardStateUnsplitAuxTlbConstructor;

.field private static final hashMapELibDesc:Lorg/ton/tlb/TlbCodec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ton/tlb/TlbCodec<",
            "Lorg/ton/hashmap/HashMapE<",
            "Lorg/ton/block/LibDescr;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final maybeBlkMasterInfo:Lorg/ton/tlb/TlbCodec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ton/tlb/TlbCodec<",
            "Lorg/ton/block/Maybe<",
            "Lorg/ton/block/BlkMasterInfo;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/ton/block/ShardStateUnsplitAuxTlbConstructor;

    invoke-direct {v0}, Lorg/ton/block/ShardStateUnsplitAuxTlbConstructor;-><init>()V

    sput-object v0, Lorg/ton/block/ShardStateUnsplitAuxTlbConstructor;->INSTANCE:Lorg/ton/block/ShardStateUnsplitAuxTlbConstructor;

    .line 156
    sget-object v0, Lorg/ton/hashmap/HashMapE;->Companion:Lorg/ton/hashmap/HashMapE$Companion;

    sget-object v1, Lorg/ton/block/LibDescr;->Companion:Lorg/ton/block/LibDescr$Companion;

    const/16 v2, 0x100

    invoke-virtual {v0, v2, v1}, Lorg/ton/hashmap/HashMapE$Companion;->tlbCodec(ILorg/ton/tlb/TlbCodec;)Lorg/ton/tlb/TlbCodec;

    move-result-object v0

    sput-object v0, Lorg/ton/block/ShardStateUnsplitAuxTlbConstructor;->hashMapELibDesc:Lorg/ton/tlb/TlbCodec;

    .line 157
    sget-object v0, Lorg/ton/block/Maybe;->Companion:Lorg/ton/block/Maybe$Companion;

    sget-object v1, Lorg/ton/block/BlkMasterInfo;->Companion:Lorg/ton/block/BlkMasterInfo$Companion;

    invoke-virtual {v0, v1}, Lorg/ton/block/Maybe$Companion;->tlbCodec(Lorg/ton/tlb/TlbCodec;)Lorg/ton/tlb/TlbCodec;

    move-result-object v0

    sput-object v0, Lorg/ton/block/ShardStateUnsplitAuxTlbConstructor;->maybeBlkMasterInfo:Lorg/ton/tlb/TlbCodec;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const-string v0, "[$_ overload_history:uint64 underload_history:uint64 total_balance:CurrencyCollection total_validator_fees:CurrencyCollection libraries:(HashmapE 256 LibDescr) master_ref:(Maybe BlkMasterInfo) ]"

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 148
    invoke-direct {p0, v0, v1, v2, v1}, Lorg/ton/tlb/TlbConstructor;-><init>(Ljava/lang/String;Lorg/ton/bitstring/BitString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;
    .locals 0

    .line 148
    invoke-virtual {p0, p1}, Lorg/ton/block/ShardStateUnsplitAuxTlbConstructor;->loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/ShardStateUnsplitAux;

    move-result-object p1

    return-object p1
.end method

.method public loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/ShardStateUnsplitAux;
    .locals 13

    const-string v0, "cellSlice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x40

    .line 169
    invoke-interface {p1, v0}, Lorg/ton/cell/CellSlice;->loadUInt(I)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v4

    .line 170
    invoke-interface {p1, v0}, Lorg/ton/cell/CellSlice;->loadUInt(I)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v6

    .line 171
    sget-object v0, Lorg/ton/block/CurrencyCollection;->Companion:Lorg/ton/block/CurrencyCollection$Companion;

    .line 52
    invoke-interface {v0, p1}, Lorg/ton/tlb/TlbLoader;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object v1

    .line 171
    move-object v8, v1

    check-cast v8, Lorg/ton/block/CurrencyCollection;

    .line 52
    invoke-interface {v0, p1}, Lorg/ton/tlb/TlbLoader;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object v0

    .line 172
    move-object v9, v0

    check-cast v9, Lorg/ton/block/CurrencyCollection;

    .line 173
    sget-object v0, Lorg/ton/block/ShardStateUnsplitAuxTlbConstructor;->hashMapELibDesc:Lorg/ton/tlb/TlbCodec;

    .line 52
    invoke-interface {v0, p1}, Lorg/ton/tlb/TlbLoader;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object v0

    .line 173
    move-object v10, v0

    check-cast v10, Lorg/ton/hashmap/HashMapE;

    .line 174
    sget-object v0, Lorg/ton/block/ShardStateUnsplitAuxTlbConstructor;->maybeBlkMasterInfo:Lorg/ton/tlb/TlbCodec;

    .line 52
    invoke-interface {v0, p1}, Lorg/ton/tlb/TlbLoader;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object p1

    .line 174
    move-object v11, p1

    check-cast v11, Lorg/ton/block/Maybe;

    .line 175
    new-instance p1, Lorg/ton/block/ShardStateUnsplitAux;

    const/4 v12, 0x0

    move-object v3, p1

    invoke-direct/range {v3 .. v12}, Lorg/ton/block/ShardStateUnsplitAux;-><init>(JJLorg/ton/block/CurrencyCollection;Lorg/ton/block/CurrencyCollection;Lorg/ton/hashmap/HashMapE;Lorg/ton/block/Maybe;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p1
.end method

.method public bridge synthetic storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V
    .locals 0

    .line 148
    check-cast p2, Lorg/ton/block/ShardStateUnsplitAux;

    invoke-virtual {p0, p1, p2}, Lorg/ton/block/ShardStateUnsplitAuxTlbConstructor;->storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/ShardStateUnsplitAux;)V

    return-void
.end method

.method public storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/ShardStateUnsplitAux;)V
    .locals 3

    const-string v0, "cellBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    invoke-virtual {p2}, Lorg/ton/block/ShardStateUnsplitAux;->getOverloadHistory-s-VKNKU()J

    move-result-wide v0

    const/16 v2, 0x40

    invoke-interface {p1, v0, v1, v2}, Lorg/ton/cell/CellBuilder;->storeUInt(JI)Lorg/ton/cell/CellBuilder;

    .line 161
    invoke-virtual {p2}, Lorg/ton/block/ShardStateUnsplitAux;->getUnderloadHistory-s-VKNKU()J

    move-result-wide v0

    invoke-interface {p1, v0, v1, v2}, Lorg/ton/cell/CellBuilder;->storeUInt(JI)Lorg/ton/cell/CellBuilder;

    .line 162
    sget-object v0, Lorg/ton/block/CurrencyCollection;->Companion:Lorg/ton/block/CurrencyCollection$Companion;

    invoke-virtual {p2}, Lorg/ton/block/ShardStateUnsplitAux;->getTotalBalance()Lorg/ton/block/CurrencyCollection;

    move-result-object v1

    .line 60
    invoke-interface {v0, p1, v1}, Lorg/ton/tlb/TlbStorer;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    .line 163
    invoke-virtual {p2}, Lorg/ton/block/ShardStateUnsplitAux;->getTotalValidatorFees()Lorg/ton/block/CurrencyCollection;

    move-result-object v1

    .line 60
    invoke-interface {v0, p1, v1}, Lorg/ton/tlb/TlbStorer;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    .line 164
    sget-object v0, Lorg/ton/block/ShardStateUnsplitAuxTlbConstructor;->hashMapELibDesc:Lorg/ton/tlb/TlbCodec;

    invoke-virtual {p2}, Lorg/ton/block/ShardStateUnsplitAux;->getLibraries()Lorg/ton/hashmap/HashMapE;

    move-result-object v1

    .line 60
    invoke-interface {v0, p1, v1}, Lorg/ton/tlb/TlbStorer;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    .line 165
    sget-object v0, Lorg/ton/block/ShardStateUnsplitAuxTlbConstructor;->maybeBlkMasterInfo:Lorg/ton/tlb/TlbCodec;

    invoke-virtual {p2}, Lorg/ton/block/ShardStateUnsplitAux;->getMasterRef()Lorg/ton/block/Maybe;

    move-result-object p2

    .line 60
    invoke-interface {v0, p1, p2}, Lorg/ton/tlb/TlbStorer;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    return-void
.end method
