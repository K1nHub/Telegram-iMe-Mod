.class final Lorg/ton/block/DepthBalanceInfoTlbConstructor;
.super Lorg/ton/tlb/TlbConstructor;
.source "DepthBalanceInfo.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/ton/tlb/TlbConstructor<",
        "Lorg/ton/block/DepthBalanceInfo;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDepthBalanceInfo.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DepthBalanceInfo.kt\norg/ton/block/DepthBalanceInfoTlbConstructor\n+ 2 CellBuilder.kt\norg/ton/cell/CellBuilderKt\n+ 3 TlbCodec.kt\norg/ton/tlb/TlbCodecKt\n+ 4 CellSlice.kt\norg/ton/cell/CellSliceKt\n*L\n1#1,53:1\n131#2:54\n132#2:58\n59#3,3:55\n52#3:60\n86#4:59\n*S KotlinDebug\n*F\n+ 1 DepthBalanceInfo.kt\norg/ton/block/DepthBalanceInfoTlbConstructor\n*L\n40#1:54\n40#1:58\n42#1:55,3\n49#1:60\n47#1:59\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lorg/ton/block/DepthBalanceInfoTlbConstructor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/ton/block/DepthBalanceInfoTlbConstructor;

    invoke-direct {v0}, Lorg/ton/block/DepthBalanceInfoTlbConstructor;-><init>()V

    sput-object v0, Lorg/ton/block/DepthBalanceInfoTlbConstructor;->INSTANCE:Lorg/ton/block/DepthBalanceInfoTlbConstructor;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const-string v0, "depth_balance$_ split_depth:(#<= 30) balance:CurrencyCollection = DepthBalanceInfo;"

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 33
    invoke-direct {p0, v0, v1, v2, v1}, Lorg/ton/tlb/TlbConstructor;-><init>(Ljava/lang/String;Lorg/ton/bitstring/BitString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;
    .locals 0

    .line 33
    invoke-virtual {p0, p1}, Lorg/ton/block/DepthBalanceInfoTlbConstructor;->loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/DepthBalanceInfo;

    move-result-object p1

    return-object p1
.end method

.method public loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/DepthBalanceInfo;
    .locals 2

    const-string v0, "cellSlice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x1e

    .line 48
    invoke-interface {p1, v0}, Lorg/ton/cell/CellSlice;->loadUIntLeq(I)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    .line 49
    sget-object v1, Lorg/ton/block/CurrencyCollection;->Companion:Lorg/ton/block/CurrencyCollection$Companion;

    .line 52
    invoke-interface {v1, p1}, Lorg/ton/tlb/TlbLoader;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object p1

    .line 49
    check-cast p1, Lorg/ton/block/CurrencyCollection;

    .line 50
    new-instance v1, Lorg/ton/block/DepthBalanceInfo;

    invoke-direct {v1, v0, p1}, Lorg/ton/block/DepthBalanceInfo;-><init>(ILorg/ton/block/CurrencyCollection;)V

    return-object v1
.end method

.method public bridge synthetic storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V
    .locals 0

    .line 33
    check-cast p2, Lorg/ton/block/DepthBalanceInfo;

    invoke-virtual {p0, p1, p2}, Lorg/ton/block/DepthBalanceInfoTlbConstructor;->storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/DepthBalanceInfo;)V

    return-void
.end method

.method public storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/DepthBalanceInfo;)V
    .locals 2

    const-string v0, "cellBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-virtual {p2}, Lorg/ton/block/DepthBalanceInfo;->getSplitDepth()I

    move-result v0

    const/16 v1, 0x1e

    invoke-interface {p1, v0, v1}, Lorg/ton/cell/CellBuilder;->storeUIntLeq(II)Lorg/ton/cell/CellBuilder;

    .line 42
    sget-object v0, Lorg/ton/block/CurrencyCollection;->Companion:Lorg/ton/block/CurrencyCollection$Companion;

    invoke-virtual {p2}, Lorg/ton/block/DepthBalanceInfo;->getBalance()Lorg/ton/block/CurrencyCollection;

    move-result-object p2

    .line 60
    invoke-interface {v0, p1, p2}, Lorg/ton/tlb/TlbStorer;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    return-void
.end method
