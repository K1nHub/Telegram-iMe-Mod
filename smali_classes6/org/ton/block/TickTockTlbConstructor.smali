.class final Lorg/ton/block/TickTockTlbConstructor;
.super Lorg/ton/tlb/TlbConstructor;
.source "TickTock.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/ton/tlb/TlbConstructor<",
        "Lorg/ton/block/TickTock;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTickTock.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TickTock.kt\norg/ton/block/TickTockTlbConstructor\n+ 2 CellBuilder.kt\norg/ton/cell/CellBuilderKt\n+ 3 CellSlice.kt\norg/ton/cell/CellSliceKt\n*L\n1#1,54:1\n131#2,2:55\n86#3:57\n*S KotlinDebug\n*F\n+ 1 TickTock.kt\norg/ton/block/TickTockTlbConstructor\n*L\n41#1:55,2\n48#1:57\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lorg/ton/block/TickTockTlbConstructor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/ton/block/TickTockTlbConstructor;

    invoke-direct {v0}, Lorg/ton/block/TickTockTlbConstructor;-><init>()V

    sput-object v0, Lorg/ton/block/TickTockTlbConstructor;->INSTANCE:Lorg/ton/block/TickTockTlbConstructor;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const-string v0, "tick_tock$_ tick:Bool tock:Bool = TickTock;"

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 36
    invoke-direct {p0, v0, v1, v2, v1}, Lorg/ton/tlb/TlbConstructor;-><init>(Ljava/lang/String;Lorg/ton/bitstring/BitString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lorg/ton/block/TickTockTlbConstructor;->loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/TickTock;

    move-result-object p1

    return-object p1
.end method

.method public loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/TickTock;
    .locals 2

    const-string v0, "cellSlice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-interface {p1}, Lorg/ton/cell/CellSlice;->loadBit()Z

    move-result v0

    .line 50
    invoke-interface {p1}, Lorg/ton/cell/CellSlice;->loadBit()Z

    move-result p1

    .line 51
    new-instance v1, Lorg/ton/block/TickTock;

    invoke-direct {v1, v0, p1}, Lorg/ton/block/TickTock;-><init>(ZZ)V

    return-object v1
.end method

.method public bridge synthetic storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V
    .locals 0

    .line 36
    check-cast p2, Lorg/ton/block/TickTock;

    invoke-virtual {p0, p1, p2}, Lorg/ton/block/TickTockTlbConstructor;->storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/TickTock;)V

    return-void
.end method

.method public storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/TickTock;)V
    .locals 1

    const-string v0, "cellBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-virtual {p2}, Lorg/ton/block/TickTock;->getTick()Z

    move-result v0

    invoke-interface {p1, v0}, Lorg/ton/cell/CellBuilder;->storeBit(Z)Lorg/ton/cell/CellBuilder;

    .line 43
    invoke-virtual {p2}, Lorg/ton/block/TickTock;->getTock()Z

    move-result p2

    invoke-interface {p1, p2}, Lorg/ton/cell/CellBuilder;->storeBit(Z)Lorg/ton/cell/CellBuilder;

    return-void
.end method
