.class final Lorg/ton/block/GlobalVersionTlbConstructor;
.super Lorg/ton/tlb/TlbConstructor;
.source "GlobalVersion.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/ton/tlb/TlbConstructor<",
        "Lorg/ton/block/GlobalVersion;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGlobalVersion.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GlobalVersion.kt\norg/ton/block/GlobalVersionTlbConstructor\n+ 2 CellBuilder.kt\norg/ton/cell/CellBuilderKt\n+ 3 CellSlice.kt\norg/ton/cell/CellSliceKt\n*L\n1#1,46:1\n131#2,2:47\n86#3:49\n*S KotlinDebug\n*F\n+ 1 GlobalVersion.kt\norg/ton/block/GlobalVersionTlbConstructor\n*L\n33#1:47,2\n40#1:49\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lorg/ton/block/GlobalVersionTlbConstructor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/ton/block/GlobalVersionTlbConstructor;

    invoke-direct {v0}, Lorg/ton/block/GlobalVersionTlbConstructor;-><init>()V

    sput-object v0, Lorg/ton/block/GlobalVersionTlbConstructor;->INSTANCE:Lorg/ton/block/GlobalVersionTlbConstructor;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const-string v0, "capabilities#c4 version:uint32 capabilities:uint64 = GlobalVersion;"

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
    invoke-virtual {p0, p1}, Lorg/ton/block/GlobalVersionTlbConstructor;->loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/GlobalVersion;

    move-result-object p1

    return-object p1
.end method

.method public loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/GlobalVersion;
    .locals 4

    const-string v0, "cellSlice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x20

    .line 41
    invoke-interface {p1, v0}, Lorg/ton/cell/CellSlice;->loadUInt(I)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    invoke-static {v0}, Lkotlin/UInt;->constructor-impl(I)I

    move-result v0

    const/16 v1, 0x40

    .line 42
    invoke-interface {p1, v1}, Lorg/ton/cell/CellSlice;->loadUInt(I)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v1

    .line 43
    new-instance p1, Lorg/ton/block/GlobalVersion;

    const/4 v3, 0x0

    invoke-direct {p1, v0, v1, v2, v3}, Lorg/ton/block/GlobalVersion;-><init>(IJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p1
.end method

.method public bridge synthetic storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V
    .locals 0

    .line 27
    check-cast p2, Lorg/ton/block/GlobalVersion;

    invoke-virtual {p0, p1, p2}, Lorg/ton/block/GlobalVersionTlbConstructor;->storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/GlobalVersion;)V

    return-void
.end method

.method public storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/GlobalVersion;)V
    .locals 2

    const-string v0, "cellBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-virtual {p2}, Lorg/ton/block/GlobalVersion;->getVersion-pVg5ArA()I

    move-result v0

    const/16 v1, 0x20

    invoke-interface {p1, v0, v1}, Lorg/ton/cell/CellBuilder;->storeUInt(II)Lorg/ton/cell/CellBuilder;

    .line 35
    invoke-virtual {p2}, Lorg/ton/block/GlobalVersion;->getCapabilities-s-VKNKU()J

    move-result-wide v0

    const/16 p2, 0x40

    invoke-interface {p1, v0, v1, p2}, Lorg/ton/cell/CellBuilder;->storeUInt(JI)Lorg/ton/cell/CellBuilder;

    return-void
.end method
