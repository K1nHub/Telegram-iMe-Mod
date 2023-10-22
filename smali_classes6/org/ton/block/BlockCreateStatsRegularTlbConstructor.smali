.class final Lorg/ton/block/BlockCreateStatsRegularTlbConstructor;
.super Lorg/ton/tlb/TlbConstructor;
.source "BlockCreateStatsRegular.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/ton/tlb/TlbConstructor<",
        "Lorg/ton/block/BlockCreateStatsRegular;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBlockCreateStatsRegular.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BlockCreateStatsRegular.kt\norg/ton/block/BlockCreateStatsRegularTlbConstructor\n+ 2 CellBuilder.kt\norg/ton/cell/CellBuilderKt\n+ 3 TlbCodec.kt\norg/ton/tlb/TlbCodecKt\n+ 4 CellSlice.kt\norg/ton/cell/CellSliceKt\n*L\n1#1,48:1\n131#2:49\n132#2:53\n59#3,3:50\n52#3:55\n86#4:54\n*S KotlinDebug\n*F\n+ 1 BlockCreateStatsRegular.kt\norg/ton/block/BlockCreateStatsRegularTlbConstructor\n*L\n37#1:49\n37#1:53\n38#1:50,3\n44#1:55\n43#1:54\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lorg/ton/block/BlockCreateStatsRegularTlbConstructor;

.field private static final hashmapE:Lorg/ton/tlb/TlbCodec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ton/tlb/TlbCodec<",
            "Lorg/ton/hashmap/HashMapE<",
            "Lorg/ton/block/CreatorStats;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/ton/block/BlockCreateStatsRegularTlbConstructor;

    invoke-direct {v0}, Lorg/ton/block/BlockCreateStatsRegularTlbConstructor;-><init>()V

    sput-object v0, Lorg/ton/block/BlockCreateStatsRegularTlbConstructor;->INSTANCE:Lorg/ton/block/BlockCreateStatsRegularTlbConstructor;

    .line 32
    sget-object v0, Lorg/ton/hashmap/HashMapE;->Companion:Lorg/ton/hashmap/HashMapE$Companion;

    sget-object v1, Lorg/ton/block/CreatorStats;->Companion:Lorg/ton/block/CreatorStats$Companion;

    const/16 v2, 0x100

    invoke-virtual {v0, v2, v1}, Lorg/ton/hashmap/HashMapE$Companion;->tlbCodec(ILorg/ton/tlb/TlbCodec;)Lorg/ton/tlb/TlbCodec;

    move-result-object v0

    sput-object v0, Lorg/ton/block/BlockCreateStatsRegularTlbConstructor;->hashmapE:Lorg/ton/tlb/TlbCodec;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const-string v0, "block_create_stats#17 counters:(HashmapE 256 CreatorStats) = BlockCreateStats;"

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 29
    invoke-direct {p0, v0, v1, v2, v1}, Lorg/ton/tlb/TlbConstructor;-><init>(Ljava/lang/String;Lorg/ton/bitstring/BitString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lorg/ton/block/BlockCreateStatsRegularTlbConstructor;->loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/BlockCreateStatsRegular;

    move-result-object p1

    return-object p1
.end method

.method public loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/BlockCreateStatsRegular;
    .locals 1

    const-string v0, "cellSlice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    sget-object v0, Lorg/ton/block/BlockCreateStatsRegularTlbConstructor;->hashmapE:Lorg/ton/tlb/TlbCodec;

    .line 52
    invoke-interface {v0, p1}, Lorg/ton/tlb/TlbLoader;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object p1

    .line 44
    check-cast p1, Lorg/ton/hashmap/HashMapE;

    .line 45
    new-instance v0, Lorg/ton/block/BlockCreateStatsRegular;

    invoke-direct {v0, p1}, Lorg/ton/block/BlockCreateStatsRegular;-><init>(Lorg/ton/hashmap/HashMapE;)V

    return-object v0
.end method

.method public bridge synthetic storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V
    .locals 0

    .line 29
    check-cast p2, Lorg/ton/block/BlockCreateStatsRegular;

    invoke-virtual {p0, p1, p2}, Lorg/ton/block/BlockCreateStatsRegularTlbConstructor;->storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/BlockCreateStatsRegular;)V

    return-void
.end method

.method public storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/BlockCreateStatsRegular;)V
    .locals 1

    const-string v0, "cellBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    sget-object v0, Lorg/ton/block/BlockCreateStatsRegularTlbConstructor;->hashmapE:Lorg/ton/tlb/TlbCodec;

    invoke-virtual {p2}, Lorg/ton/block/BlockCreateStatsRegular;->getCounters()Lorg/ton/hashmap/HashMapE;

    move-result-object p2

    .line 60
    invoke-interface {v0, p1, p2}, Lorg/ton/tlb/TlbStorer;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    return-void
.end method
