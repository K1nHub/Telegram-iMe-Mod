.class final Lorg/ton/block/SplitMergeInfoTlbConstructor;
.super Lorg/ton/tlb/TlbConstructor;
.source "SplitMergeInfo.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/ton/tlb/TlbConstructor<",
        "Lorg/ton/block/SplitMergeInfo;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSplitMergeInfo.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SplitMergeInfo.kt\norg/ton/block/SplitMergeInfoTlbConstructor\n+ 2 CellBuilder.kt\norg/ton/cell/CellBuilderKt\n+ 3 CellSlice.kt\norg/ton/cell/CellSliceKt\n*L\n1#1,66:1\n131#2,2:67\n86#3:69\n*S KotlinDebug\n*F\n+ 1 SplitMergeInfo.kt\norg/ton/block/SplitMergeInfoTlbConstructor\n*L\n49#1:67,2\n58#1:69\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lorg/ton/block/SplitMergeInfoTlbConstructor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/ton/block/SplitMergeInfoTlbConstructor;

    invoke-direct {v0}, Lorg/ton/block/SplitMergeInfoTlbConstructor;-><init>()V

    sput-object v0, Lorg/ton/block/SplitMergeInfoTlbConstructor;->INSTANCE:Lorg/ton/block/SplitMergeInfoTlbConstructor;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const-string v0, "split_merge_info$_ cur_shard_pfx_len:(## 6)\n  acc_split_depth:(## 6) this_addr:bits256 sibling_addr:bits256\n  = SplitMergeInfo;"

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 41
    invoke-direct {p0, v0, v1, v2, v1}, Lorg/ton/tlb/TlbConstructor;-><init>(Ljava/lang/String;Lorg/ton/bitstring/BitString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lorg/ton/block/SplitMergeInfoTlbConstructor;->loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/SplitMergeInfo;

    move-result-object p1

    return-object p1
.end method

.method public loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/SplitMergeInfo;
    .locals 4

    const-string v0, "cellSlice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x6

    .line 59
    invoke-interface {p1, v0}, Lorg/ton/cell/CellSlice;->loadUInt(I)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    .line 60
    invoke-interface {p1, v0}, Lorg/ton/cell/CellSlice;->loadUInt(I)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    const/16 v2, 0x100

    .line 61
    invoke-interface {p1, v2}, Lorg/ton/cell/CellSlice;->loadBits(I)Lorg/ton/bitstring/BitString;

    move-result-object v3

    .line 62
    invoke-interface {p1, v2}, Lorg/ton/cell/CellSlice;->loadBits(I)Lorg/ton/bitstring/BitString;

    move-result-object p1

    .line 63
    new-instance v2, Lorg/ton/block/SplitMergeInfo;

    invoke-direct {v2, v1, v0, v3, p1}, Lorg/ton/block/SplitMergeInfo;-><init>(IILorg/ton/bitstring/BitString;Lorg/ton/bitstring/BitString;)V

    return-object v2
.end method

.method public bridge synthetic storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V
    .locals 0

    .line 41
    check-cast p2, Lorg/ton/block/SplitMergeInfo;

    invoke-virtual {p0, p1, p2}, Lorg/ton/block/SplitMergeInfoTlbConstructor;->storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/SplitMergeInfo;)V

    return-void
.end method

.method public storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/SplitMergeInfo;)V
    .locals 2

    const-string v0, "cellBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Lorg/ton/block/SplitMergeInfo;->getCurShardPfxLen()I

    move-result v0

    const/4 v1, 0x6

    invoke-interface {p1, v0, v1}, Lorg/ton/cell/CellBuilder;->storeUInt(II)Lorg/ton/cell/CellBuilder;

    .line 51
    invoke-virtual {p2}, Lorg/ton/block/SplitMergeInfo;->getAccSplitDepth()I

    move-result v0

    invoke-interface {p1, v0, v1}, Lorg/ton/cell/CellBuilder;->storeUInt(II)Lorg/ton/cell/CellBuilder;

    .line 52
    invoke-virtual {p2}, Lorg/ton/block/SplitMergeInfo;->getThisAddr()Lorg/ton/bitstring/BitString;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/ton/cell/CellBuilder;->storeBits(Lorg/ton/bitstring/BitString;)Lorg/ton/cell/CellBuilder;

    .line 53
    invoke-virtual {p2}, Lorg/ton/block/SplitMergeInfo;->getSiblingAddr()Lorg/ton/bitstring/BitString;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/ton/cell/CellBuilder;->storeBits(Lorg/ton/bitstring/BitString;)Lorg/ton/cell/CellBuilder;

    return-void
.end method
