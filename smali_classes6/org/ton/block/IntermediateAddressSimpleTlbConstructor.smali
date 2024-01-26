.class final Lorg/ton/block/IntermediateAddressSimpleTlbConstructor;
.super Lorg/ton/tlb/TlbConstructor;
.source "IntermediateAddressSimple.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/ton/tlb/TlbConstructor<",
        "Lorg/ton/block/IntermediateAddressSimple;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nIntermediateAddressSimple.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IntermediateAddressSimple.kt\norg/ton/block/IntermediateAddressSimpleTlbConstructor\n+ 2 CellBuilder.kt\norg/ton/cell/CellBuilderKt\n+ 3 CellSlice.kt\norg/ton/cell/CellSliceKt\n*L\n1#1,45:1\n131#2,2:46\n86#3:48\n*S KotlinDebug\n*F\n+ 1 IntermediateAddressSimple.kt\norg/ton/block/IntermediateAddressSimpleTlbConstructor\n*L\n32#1:46,2\n39#1:48\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lorg/ton/block/IntermediateAddressSimpleTlbConstructor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/ton/block/IntermediateAddressSimpleTlbConstructor;

    invoke-direct {v0}, Lorg/ton/block/IntermediateAddressSimpleTlbConstructor;-><init>()V

    sput-object v0, Lorg/ton/block/IntermediateAddressSimpleTlbConstructor;->INSTANCE:Lorg/ton/block/IntermediateAddressSimpleTlbConstructor;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const-string v0, "interm_addr_simple$10 workchain_id:int8 addr_pfx:uint64 = IntermediateAddress;"

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
    invoke-virtual {p0, p1}, Lorg/ton/block/IntermediateAddressSimpleTlbConstructor;->loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/IntermediateAddressSimple;

    move-result-object p1

    return-object p1
.end method

.method public loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/IntermediateAddressSimple;
    .locals 4

    const-string v0, "cellSlice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x8

    .line 40
    invoke-interface {p1, v0}, Lorg/ton/cell/CellSlice;->loadInt(I)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    .line 41
    invoke-interface {p1}, Lorg/ton/cell/CellSlice;->loadUInt64-s-VKNKU()J

    move-result-wide v1

    .line 42
    new-instance p1, Lorg/ton/block/IntermediateAddressSimple;

    const/4 v3, 0x0

    invoke-direct {p1, v0, v1, v2, v3}, Lorg/ton/block/IntermediateAddressSimple;-><init>(IJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p1
.end method

.method public bridge synthetic storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V
    .locals 0

    .line 27
    check-cast p2, Lorg/ton/block/IntermediateAddressSimple;

    invoke-virtual {p0, p1, p2}, Lorg/ton/block/IntermediateAddressSimpleTlbConstructor;->storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/IntermediateAddressSimple;)V

    return-void
.end method

.method public storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/IntermediateAddressSimple;)V
    .locals 2

    const-string v0, "cellBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-virtual {p2}, Lorg/ton/block/IntermediateAddressSimple;->getWorkchainId()I

    move-result v0

    const/16 v1, 0x8

    invoke-interface {p1, v0, v1}, Lorg/ton/cell/CellBuilder;->storeInt(II)Lorg/ton/cell/CellBuilder;

    .line 34
    invoke-virtual {p2}, Lorg/ton/block/IntermediateAddressSimple;->getAddrPfx-s-VKNKU()J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lorg/ton/cell/CellBuilder;->storeUInt64-VKZWuLQ(J)Lorg/ton/cell/CellBuilder;

    return-void
.end method
