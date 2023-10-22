.class final Lorg/ton/block/AnycastTlbConstructor;
.super Lorg/ton/tlb/TlbConstructor;
.source "Anycast.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/ton/tlb/TlbConstructor<",
        "Lorg/ton/block/Anycast;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAnycast.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Anycast.kt\norg/ton/block/AnycastTlbConstructor\n+ 2 CellBuilder.kt\norg/ton/cell/CellBuilderKt\n+ 3 CellSlice.kt\norg/ton/cell/CellSliceKt\n*L\n1#1,58:1\n131#2,2:59\n86#3:61\n*S KotlinDebug\n*F\n+ 1 Anycast.kt\norg/ton/block/AnycastTlbConstructor\n*L\n45#1:59,2\n52#1:61\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lorg/ton/block/AnycastTlbConstructor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/ton/block/AnycastTlbConstructor;

    invoke-direct {v0}, Lorg/ton/block/AnycastTlbConstructor;-><init>()V

    sput-object v0, Lorg/ton/block/AnycastTlbConstructor;->INSTANCE:Lorg/ton/block/AnycastTlbConstructor;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const-string v0, "anycast_info$_ depth:(#<= 30) { depth >= 1 } rewrite_pfx:(bits depth) = Anycast;"

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 40
    invoke-direct {p0, v0, v1, v2, v1}, Lorg/ton/tlb/TlbConstructor;-><init>(Ljava/lang/String;Lorg/ton/bitstring/BitString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lorg/ton/block/AnycastTlbConstructor;->loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/Anycast;

    move-result-object p1

    return-object p1
.end method

.method public loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/Anycast;
    .locals 2

    const-string v0, "cellSlice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x1e

    .line 53
    invoke-interface {p1, v0}, Lorg/ton/cell/CellSlice;->loadUIntLeq(I)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    .line 54
    invoke-interface {p1, v0}, Lorg/ton/cell/CellSlice;->loadBits(I)Lorg/ton/bitstring/BitString;

    move-result-object p1

    .line 55
    new-instance v1, Lorg/ton/block/Anycast;

    invoke-direct {v1, v0, p1}, Lorg/ton/block/Anycast;-><init>(ILorg/ton/bitstring/BitString;)V

    return-object v1
.end method

.method public bridge synthetic storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V
    .locals 0

    .line 40
    check-cast p2, Lorg/ton/block/Anycast;

    invoke-virtual {p0, p1, p2}, Lorg/ton/block/AnycastTlbConstructor;->storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/Anycast;)V

    return-void
.end method

.method public storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/Anycast;)V
    .locals 2

    const-string v0, "cellBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    invoke-virtual {p2}, Lorg/ton/block/Anycast;->getDepth()I

    move-result v0

    const/16 v1, 0x1e

    invoke-interface {p1, v0, v1}, Lorg/ton/cell/CellBuilder;->storeUIntLeq(II)Lorg/ton/cell/CellBuilder;

    .line 47
    invoke-virtual {p2}, Lorg/ton/block/Anycast;->getRewritePfx()Lorg/ton/bitstring/BitString;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/ton/cell/CellBuilder;->storeBits(Lorg/ton/bitstring/BitString;)Lorg/ton/cell/CellBuilder;

    return-void
.end method
