.class final Lorg/ton/block/SimpleLibTlbConstructor;
.super Lorg/ton/tlb/TlbConstructor;
.source "SimpleLib.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/ton/tlb/TlbConstructor<",
        "Lorg/ton/block/SimpleLib;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSimpleLib.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SimpleLib.kt\norg/ton/block/SimpleLibTlbConstructor\n+ 2 CellBuilder.kt\norg/ton/cell/CellBuilderKt\n+ 3 CellSlice.kt\norg/ton/cell/CellSliceKt\n*L\n1#1,52:1\n131#2,2:53\n86#3:55\n*S KotlinDebug\n*F\n+ 1 SimpleLib.kt\norg/ton/block/SimpleLibTlbConstructor\n*L\n39#1:53,2\n46#1:55\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lorg/ton/block/SimpleLibTlbConstructor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/ton/block/SimpleLibTlbConstructor;

    invoke-direct {v0}, Lorg/ton/block/SimpleLibTlbConstructor;-><init>()V

    sput-object v0, Lorg/ton/block/SimpleLibTlbConstructor;->INSTANCE:Lorg/ton/block/SimpleLibTlbConstructor;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const-string v0, "simple_lib$_ public:Bool root:^Cell = SimpleLib;"

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 34
    invoke-direct {p0, v0, v1, v2, v1}, Lorg/ton/tlb/TlbConstructor;-><init>(Ljava/lang/String;Lorg/ton/bitstring/BitString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;
    .locals 0

    .line 34
    invoke-virtual {p0, p1}, Lorg/ton/block/SimpleLibTlbConstructor;->loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/SimpleLib;

    move-result-object p1

    return-object p1
.end method

.method public loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/SimpleLib;
    .locals 2

    const-string v0, "cellSlice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-interface {p1}, Lorg/ton/cell/CellSlice;->loadBit()Z

    move-result v0

    .line 48
    invoke-interface {p1}, Lorg/ton/cell/CellSlice;->loadRef()Lorg/ton/cell/Cell;

    move-result-object p1

    .line 49
    new-instance v1, Lorg/ton/block/SimpleLib;

    invoke-direct {v1, v0, p1}, Lorg/ton/block/SimpleLib;-><init>(ZLorg/ton/cell/Cell;)V

    return-object v1
.end method

.method public bridge synthetic storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V
    .locals 0

    .line 34
    check-cast p2, Lorg/ton/block/SimpleLib;

    invoke-virtual {p0, p1, p2}, Lorg/ton/block/SimpleLibTlbConstructor;->storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/SimpleLib;)V

    return-void
.end method

.method public storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/SimpleLib;)V
    .locals 1

    const-string v0, "cellBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-virtual {p2}, Lorg/ton/block/SimpleLib;->getPublic()Z

    move-result v0

    invoke-interface {p1, v0}, Lorg/ton/cell/CellBuilder;->storeBit(Z)Lorg/ton/cell/CellBuilder;

    .line 41
    invoke-virtual {p2}, Lorg/ton/block/SimpleLib;->getRoot()Lorg/ton/cell/Cell;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/ton/cell/CellBuilder;->storeRef(Lorg/ton/cell/Cell;)Lorg/ton/cell/CellBuilder;

    return-void
.end method
