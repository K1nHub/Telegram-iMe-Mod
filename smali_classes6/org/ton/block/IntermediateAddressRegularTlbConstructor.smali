.class final Lorg/ton/block/IntermediateAddressRegularTlbConstructor;
.super Lorg/ton/tlb/TlbConstructor;
.source "IntermediateAddressRegular.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/ton/tlb/TlbConstructor<",
        "Lorg/ton/block/IntermediateAddressRegular;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nIntermediateAddressRegular.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IntermediateAddressRegular.kt\norg/ton/block/IntermediateAddressRegularTlbConstructor\n+ 2 CellBuilder.kt\norg/ton/cell/CellBuilderKt\n+ 3 CellSlice.kt\norg/ton/cell/CellSliceKt\n*L\n1#1,48:1\n131#2,2:49\n86#3:51\n*S KotlinDebug\n*F\n+ 1 IntermediateAddressRegular.kt\norg/ton/block/IntermediateAddressRegularTlbConstructor\n*L\n37#1:49,2\n43#1:51\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lorg/ton/block/IntermediateAddressRegularTlbConstructor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/ton/block/IntermediateAddressRegularTlbConstructor;

    invoke-direct {v0}, Lorg/ton/block/IntermediateAddressRegularTlbConstructor;-><init>()V

    sput-object v0, Lorg/ton/block/IntermediateAddressRegularTlbConstructor;->INSTANCE:Lorg/ton/block/IntermediateAddressRegularTlbConstructor;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const-string v0, "interm_addr_regular$0 use_dest_bits:(#<= 96) = IntermediateAddress;"

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 31
    invoke-direct {p0, v0, v1, v2, v1}, Lorg/ton/tlb/TlbConstructor;-><init>(Ljava/lang/String;Lorg/ton/bitstring/BitString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;
    .locals 0

    .line 31
    invoke-virtual {p0, p1}, Lorg/ton/block/IntermediateAddressRegularTlbConstructor;->loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/IntermediateAddressRegular;

    move-result-object p1

    return-object p1
.end method

.method public loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/IntermediateAddressRegular;
    .locals 1

    const-string v0, "cellSlice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x60

    .line 44
    invoke-interface {p1, v0}, Lorg/ton/cell/CellSlice;->loadUIntLeq(I)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result p1

    .line 45
    new-instance v0, Lorg/ton/block/IntermediateAddressRegular;

    invoke-direct {v0, p1}, Lorg/ton/block/IntermediateAddressRegular;-><init>(I)V

    return-object v0
.end method

.method public bridge synthetic storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V
    .locals 0

    .line 31
    check-cast p2, Lorg/ton/block/IntermediateAddressRegular;

    invoke-virtual {p0, p1, p2}, Lorg/ton/block/IntermediateAddressRegularTlbConstructor;->storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/IntermediateAddressRegular;)V

    return-void
.end method

.method public storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/IntermediateAddressRegular;)V
    .locals 1

    const-string v0, "cellBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-virtual {p2}, Lorg/ton/block/IntermediateAddressRegular;->getUseDestBits()I

    move-result p2

    const/16 v0, 0x60

    invoke-interface {p1, p2, v0}, Lorg/ton/cell/CellBuilder;->storeUIntLeq(II)Lorg/ton/cell/CellBuilder;

    return-void
.end method
