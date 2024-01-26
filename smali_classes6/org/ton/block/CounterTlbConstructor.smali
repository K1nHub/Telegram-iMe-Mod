.class final Lorg/ton/block/CounterTlbConstructor;
.super Lorg/ton/tlb/TlbConstructor;
.source "Counters.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/ton/tlb/TlbConstructor<",
        "Lorg/ton/block/Counters;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCounters.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Counters.kt\norg/ton/block/CounterTlbConstructor\n+ 2 CellBuilder.kt\norg/ton/cell/CellBuilderKt\n+ 3 CellSlice.kt\norg/ton/cell/CellSliceKt\n*L\n1#1,58:1\n131#2,2:59\n86#3:61\n*S KotlinDebug\n*F\n+ 1 Counters.kt\norg/ton/block/CounterTlbConstructor\n*L\n41#1:59,2\n50#1:61\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lorg/ton/block/CounterTlbConstructor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/ton/block/CounterTlbConstructor;

    invoke-direct {v0}, Lorg/ton/block/CounterTlbConstructor;-><init>()V

    sput-object v0, Lorg/ton/block/CounterTlbConstructor;->INSTANCE:Lorg/ton/block/CounterTlbConstructor;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const-string v0, "counters#_ last_updated:uint32 total:uint64 cnt2048:uint64 cnt65536:uint64 = Counters;\n"

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 35
    invoke-direct {p0, v0, v1, v2, v1}, Lorg/ton/tlb/TlbConstructor;-><init>(Ljava/lang/String;Lorg/ton/bitstring/BitString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;
    .locals 0

    .line 35
    invoke-virtual {p0, p1}, Lorg/ton/block/CounterTlbConstructor;->loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/Counters;

    move-result-object p1

    return-object p1
.end method

.method public loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/Counters;
    .locals 10

    const-string v0, "cellSlice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    invoke-interface {p1}, Lorg/ton/cell/CellSlice;->loadUInt32-pVg5ArA()I

    move-result v2

    .line 52
    invoke-interface {p1}, Lorg/ton/cell/CellSlice;->loadUInt64-s-VKNKU()J

    move-result-wide v3

    .line 53
    invoke-interface {p1}, Lorg/ton/cell/CellSlice;->loadUInt64-s-VKNKU()J

    move-result-wide v5

    .line 54
    invoke-interface {p1}, Lorg/ton/cell/CellSlice;->loadUInt64-s-VKNKU()J

    move-result-wide v7

    .line 55
    new-instance p1, Lorg/ton/block/Counters;

    const/4 v9, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v9}, Lorg/ton/block/Counters;-><init>(IJJJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p1
.end method

.method public bridge synthetic storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V
    .locals 0

    .line 35
    check-cast p2, Lorg/ton/block/Counters;

    invoke-virtual {p0, p1, p2}, Lorg/ton/block/CounterTlbConstructor;->storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/Counters;)V

    return-void
.end method

.method public storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/Counters;)V
    .locals 2

    const-string v0, "cellBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-virtual {p2}, Lorg/ton/block/Counters;->getLastUpdated-pVg5ArA()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/ton/cell/CellBuilder;->storeUInt32-WZ4Q5Ns(I)Lorg/ton/cell/CellBuilder;

    .line 43
    invoke-virtual {p2}, Lorg/ton/block/Counters;->getTotal-s-VKNKU()J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lorg/ton/cell/CellBuilder;->storeUInt64-VKZWuLQ(J)Lorg/ton/cell/CellBuilder;

    .line 44
    invoke-virtual {p2}, Lorg/ton/block/Counters;->getCnt2048-s-VKNKU()J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lorg/ton/cell/CellBuilder;->storeUInt64-VKZWuLQ(J)Lorg/ton/cell/CellBuilder;

    .line 45
    invoke-virtual {p2}, Lorg/ton/block/Counters;->getCnt65536-s-VKNKU()J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lorg/ton/cell/CellBuilder;->storeUInt64-VKZWuLQ(J)Lorg/ton/cell/CellBuilder;

    return-void
.end method
