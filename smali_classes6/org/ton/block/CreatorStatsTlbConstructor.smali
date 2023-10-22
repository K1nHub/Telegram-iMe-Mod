.class final Lorg/ton/block/CreatorStatsTlbConstructor;
.super Lorg/ton/tlb/TlbConstructor;
.source "CreatorStats.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/ton/tlb/TlbConstructor<",
        "Lorg/ton/block/CreatorStats;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCreatorStats.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CreatorStats.kt\norg/ton/block/CreatorStatsTlbConstructor\n+ 2 CellBuilder.kt\norg/ton/cell/CellBuilderKt\n+ 3 TlbCodec.kt\norg/ton/tlb/TlbCodecKt\n+ 4 CellSlice.kt\norg/ton/cell/CellSliceKt\n*L\n1#1,44:1\n131#2:45\n132#2:52\n59#3,3:46\n59#3,3:49\n52#3:54\n52#3:55\n86#4:53\n*S KotlinDebug\n*F\n+ 1 CreatorStats.kt\norg/ton/block/CreatorStatsTlbConstructor\n*L\n33#1:45\n33#1:52\n34#1:46,3\n35#1:49,3\n39#1:54\n40#1:55\n38#1:53\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lorg/ton/block/CreatorStatsTlbConstructor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/ton/block/CreatorStatsTlbConstructor;

    invoke-direct {v0}, Lorg/ton/block/CreatorStatsTlbConstructor;-><init>()V

    sput-object v0, Lorg/ton/block/CreatorStatsTlbConstructor;->INSTANCE:Lorg/ton/block/CreatorStatsTlbConstructor;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const-string v0, "creator_info#4 mc_blocks:Counters shard_blocks:Counters = CreatorStats;\n"

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 27
    invoke-direct {p0, v0, v1, v2, v1}, Lorg/ton/tlb/TlbConstructor;-><init>(Ljava/lang/String;Lorg/ton/bitstring/BitString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lorg/ton/block/CreatorStatsTlbConstructor;->loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/CreatorStats;

    move-result-object p1

    return-object p1
.end method

.method public loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/CreatorStats;
    .locals 2

    const-string v0, "cellSlice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    sget-object v0, Lorg/ton/block/Counters;->Companion:Lorg/ton/block/Counters$Companion;

    .line 52
    invoke-interface {v0, p1}, Lorg/ton/tlb/TlbLoader;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object v1

    .line 39
    check-cast v1, Lorg/ton/block/Counters;

    .line 52
    invoke-interface {v0, p1}, Lorg/ton/tlb/TlbLoader;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object p1

    .line 40
    check-cast p1, Lorg/ton/block/Counters;

    .line 41
    new-instance v0, Lorg/ton/block/CreatorStats;

    invoke-direct {v0, v1, p1}, Lorg/ton/block/CreatorStats;-><init>(Lorg/ton/block/Counters;Lorg/ton/block/Counters;)V

    return-object v0
.end method

.method public bridge synthetic storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V
    .locals 0

    .line 27
    check-cast p2, Lorg/ton/block/CreatorStats;

    invoke-virtual {p0, p1, p2}, Lorg/ton/block/CreatorStatsTlbConstructor;->storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/CreatorStats;)V

    return-void
.end method

.method public storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/CreatorStats;)V
    .locals 2

    const-string v0, "cellBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    sget-object v0, Lorg/ton/block/Counters;->Companion:Lorg/ton/block/Counters$Companion;

    invoke-virtual {p2}, Lorg/ton/block/CreatorStats;->getMcBlocks()Lorg/ton/block/Counters;

    move-result-object v1

    .line 60
    invoke-interface {v0, p1, v1}, Lorg/ton/tlb/TlbStorer;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    .line 35
    invoke-virtual {p2}, Lorg/ton/block/CreatorStats;->getShardBlocks()Lorg/ton/block/Counters;

    move-result-object p2

    .line 60
    invoke-interface {v0, p1, p2}, Lorg/ton/tlb/TlbStorer;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    return-void
.end method
