.class final Lorg/ton/block/AddrExternTlbConstructor;
.super Lorg/ton/tlb/TlbConstructor;
.source "AddrExtern.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/ton/tlb/TlbConstructor<",
        "Lorg/ton/block/AddrExtern;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAddrExtern.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AddrExtern.kt\norg/ton/block/AddrExternTlbConstructor\n+ 2 CellBuilder.kt\norg/ton/cell/CellBuilderKt\n+ 3 CellSlice.kt\norg/ton/cell/CellSliceKt\n*L\n1#1,62:1\n131#2,2:63\n86#3:65\n*S KotlinDebug\n*F\n+ 1 AddrExtern.kt\norg/ton/block/AddrExternTlbConstructor\n*L\n49#1:63,2\n56#1:65\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lorg/ton/block/AddrExternTlbConstructor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/ton/block/AddrExternTlbConstructor;

    invoke-direct {v0}, Lorg/ton/block/AddrExternTlbConstructor;-><init>()V

    sput-object v0, Lorg/ton/block/AddrExternTlbConstructor;->INSTANCE:Lorg/ton/block/AddrExternTlbConstructor;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const-string v0, "addr_extern$01 len:(## 9) external_address:(bits len) = MsgAddressExt;"

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 44
    invoke-direct {p0, v0, v1, v2, v1}, Lorg/ton/tlb/TlbConstructor;-><init>(Ljava/lang/String;Lorg/ton/bitstring/BitString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;
    .locals 0

    .line 44
    invoke-virtual {p0, p1}, Lorg/ton/block/AddrExternTlbConstructor;->loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/AddrExtern;

    move-result-object p1

    return-object p1
.end method

.method public loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/AddrExtern;
    .locals 2

    const-string v0, "cellSlice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x9

    .line 57
    invoke-interface {p1, v0}, Lorg/ton/cell/CellSlice;->loadUInt(I)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    .line 58
    invoke-interface {p1, v0}, Lorg/ton/cell/CellSlice;->loadBits(I)Lorg/ton/bitstring/BitString;

    move-result-object p1

    .line 59
    new-instance v1, Lorg/ton/block/AddrExtern;

    invoke-direct {v1, v0, p1}, Lorg/ton/block/AddrExtern;-><init>(ILorg/ton/bitstring/BitString;)V

    return-object v1
.end method

.method public bridge synthetic storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V
    .locals 0

    .line 44
    check-cast p2, Lorg/ton/block/AddrExtern;

    invoke-virtual {p0, p1, p2}, Lorg/ton/block/AddrExternTlbConstructor;->storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/AddrExtern;)V

    return-void
.end method

.method public storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/AddrExtern;)V
    .locals 2

    const-string v0, "cellBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Lorg/ton/block/AddrExtern;->getLen()I

    move-result v0

    const/16 v1, 0x9

    invoke-interface {p1, v0, v1}, Lorg/ton/cell/CellBuilder;->storeUInt(II)Lorg/ton/cell/CellBuilder;

    .line 51
    invoke-virtual {p2}, Lorg/ton/block/AddrExtern;->externalAddress()Lorg/ton/bitstring/BitString;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/ton/cell/CellBuilder;->storeBits(Lorg/ton/bitstring/BitString;)Lorg/ton/cell/CellBuilder;

    return-void
.end method
