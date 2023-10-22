.class final Lorg/ton/block/TrPhaseBounceNegFundsTlbConstructor;
.super Lorg/ton/tlb/TlbConstructor;
.source "TrPhaseBounceNegFunds.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/ton/tlb/TlbConstructor<",
        "Lorg/ton/block/TrPhaseBounceNegFunds;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lorg/ton/block/TrPhaseBounceNegFundsTlbConstructor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/ton/block/TrPhaseBounceNegFundsTlbConstructor;

    invoke-direct {v0}, Lorg/ton/block/TrPhaseBounceNegFundsTlbConstructor;-><init>()V

    sput-object v0, Lorg/ton/block/TrPhaseBounceNegFundsTlbConstructor;->INSTANCE:Lorg/ton/block/TrPhaseBounceNegFundsTlbConstructor;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const-string v0, "tr_phase_bounce_negfunds$00 = TrBouncePhase;"

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 23
    invoke-direct {p0, v0, v1, v2, v1}, Lorg/ton/tlb/TlbConstructor;-><init>(Ljava/lang/String;Lorg/ton/bitstring/BitString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lorg/ton/block/TrPhaseBounceNegFundsTlbConstructor;->loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/TrPhaseBounceNegFunds;

    move-result-object p1

    return-object p1
.end method

.method public loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/TrPhaseBounceNegFunds;
    .locals 1

    const-string v0, "cellSlice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    sget-object p1, Lorg/ton/block/TrPhaseBounceNegFunds;->INSTANCE:Lorg/ton/block/TrPhaseBounceNegFunds;

    return-object p1
.end method

.method public bridge synthetic storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V
    .locals 0

    .line 23
    check-cast p2, Lorg/ton/block/TrPhaseBounceNegFunds;

    invoke-virtual {p0, p1, p2}, Lorg/ton/block/TrPhaseBounceNegFundsTlbConstructor;->storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/TrPhaseBounceNegFunds;)V

    return-void
.end method

.method public storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/TrPhaseBounceNegFunds;)V
    .locals 1

    const-string v0, "cellBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "value"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
