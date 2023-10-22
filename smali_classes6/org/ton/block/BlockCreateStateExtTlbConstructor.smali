.class final Lorg/ton/block/BlockCreateStateExtTlbConstructor;
.super Lorg/ton/tlb/TlbConstructor;
.source "BlockCreateStatsExt.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/ton/tlb/TlbConstructor<",
        "Lorg/ton/block/BlockCreateStatsExt;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBlockCreateStatsExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BlockCreateStatsExt.kt\norg/ton/block/BlockCreateStateExtTlbConstructor\n+ 2 CellBuilder.kt\norg/ton/cell/CellBuilderKt\n+ 3 TlbCodec.kt\norg/ton/tlb/TlbCodecKt\n+ 4 CellSlice.kt\norg/ton/cell/CellSliceKt\n*L\n1#1,49:1\n131#2:50\n132#2:54\n59#3,3:51\n52#3:56\n86#4:55\n*S KotlinDebug\n*F\n+ 1 BlockCreateStatsExt.kt\norg/ton/block/BlockCreateStateExtTlbConstructor\n*L\n38#1:50\n38#1:54\n39#1:51,3\n45#1:56\n44#1:55\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lorg/ton/block/BlockCreateStateExtTlbConstructor;

.field private static final counters:Lorg/ton/tlb/TlbCodec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ton/tlb/TlbCodec<",
            "Lorg/ton/hashmap/HashmapAugE<",
            "Lorg/ton/block/CreatorStats;",
            "Lkotlin/UInt;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lorg/ton/block/BlockCreateStateExtTlbConstructor;

    invoke-direct {v0}, Lorg/ton/block/BlockCreateStateExtTlbConstructor;-><init>()V

    sput-object v0, Lorg/ton/block/BlockCreateStateExtTlbConstructor;->INSTANCE:Lorg/ton/block/BlockCreateStateExtTlbConstructor;

    .line 33
    sget-object v0, Lorg/ton/hashmap/HashmapAugE;->Companion:Lorg/ton/hashmap/HashmapAugE$Companion;

    sget-object v1, Lorg/ton/block/CreatorStats;->Companion:Lorg/ton/block/CreatorStats$Companion;

    sget-object v2, Lkotlin/UInt;->Companion:Lkotlin/UInt$Companion;

    invoke-static {v2}, Lorg/ton/tlb/constructor/UIntTlbConstructorKt;->tlbConstructor(Lkotlin/UInt$Companion;)Lorg/ton/tlb/TlbConstructor;

    move-result-object v2

    const/16 v3, 0x100

    invoke-virtual {v0, v3, v1, v2}, Lorg/ton/hashmap/HashmapAugE$Companion;->tlbCodec(ILorg/ton/tlb/TlbCodec;Lorg/ton/tlb/TlbCodec;)Lorg/ton/tlb/TlbCodec;

    move-result-object v0

    sput-object v0, Lorg/ton/block/BlockCreateStateExtTlbConstructor;->counters:Lorg/ton/tlb/TlbCodec;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const-string v0, "block_create_stats_ext#34 counters:(HashmapAugE 256 CreatorStats uint32) = BlockCreateStats;"

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 30
    invoke-direct {p0, v0, v1, v2, v1}, Lorg/ton/tlb/TlbConstructor;-><init>(Ljava/lang/String;Lorg/ton/bitstring/BitString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lorg/ton/block/BlockCreateStateExtTlbConstructor;->loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/BlockCreateStatsExt;

    move-result-object p1

    return-object p1
.end method

.method public loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/BlockCreateStatsExt;
    .locals 1

    const-string v0, "cellSlice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    sget-object v0, Lorg/ton/block/BlockCreateStateExtTlbConstructor;->counters:Lorg/ton/tlb/TlbCodec;

    .line 52
    invoke-interface {v0, p1}, Lorg/ton/tlb/TlbLoader;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object p1

    .line 45
    check-cast p1, Lorg/ton/hashmap/HashmapAugE;

    .line 46
    new-instance v0, Lorg/ton/block/BlockCreateStatsExt;

    invoke-direct {v0, p1}, Lorg/ton/block/BlockCreateStatsExt;-><init>(Lorg/ton/hashmap/HashmapAugE;)V

    return-object v0
.end method

.method public bridge synthetic storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V
    .locals 0

    .line 30
    check-cast p2, Lorg/ton/block/BlockCreateStatsExt;

    invoke-virtual {p0, p1, p2}, Lorg/ton/block/BlockCreateStateExtTlbConstructor;->storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/BlockCreateStatsExt;)V

    return-void
.end method

.method public storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/BlockCreateStatsExt;)V
    .locals 1

    const-string v0, "cellBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    sget-object v0, Lorg/ton/block/BlockCreateStateExtTlbConstructor;->counters:Lorg/ton/tlb/TlbCodec;

    invoke-virtual {p2}, Lorg/ton/block/BlockCreateStatsExt;->getCounters()Lorg/ton/hashmap/HashmapAugE;

    move-result-object p2

    .line 60
    invoke-interface {v0, p1, p2}, Lorg/ton/tlb/TlbStorer;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    return-void
.end method
