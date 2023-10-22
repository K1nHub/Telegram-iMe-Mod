.class final Lorg/ton/block/ComputeSkipReasonNoStateTlbConstructor;
.super Lorg/ton/tlb/TlbConstructor;
.source "ComputeSkipReason.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/ton/tlb/TlbConstructor<",
        "Lorg/ton/block/ComputeSkipReason;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lorg/ton/block/ComputeSkipReasonNoStateTlbConstructor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/ton/block/ComputeSkipReasonNoStateTlbConstructor;

    invoke-direct {v0}, Lorg/ton/block/ComputeSkipReasonNoStateTlbConstructor;-><init>()V

    sput-object v0, Lorg/ton/block/ComputeSkipReasonNoStateTlbConstructor;->INSTANCE:Lorg/ton/block/ComputeSkipReasonNoStateTlbConstructor;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const-string v0, "cskip_no_state$00 = ComputeSkipReason;"

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 52
    invoke-direct {p0, v0, v1, v2, v1}, Lorg/ton/tlb/TlbConstructor;-><init>(Ljava/lang/String;Lorg/ton/bitstring/BitString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;
    .locals 0

    .line 52
    invoke-virtual {p0, p1}, Lorg/ton/block/ComputeSkipReasonNoStateTlbConstructor;->loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/ComputeSkipReason;

    move-result-object p1

    return-object p1
.end method

.method public loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/ComputeSkipReason;
    .locals 1

    const-string v0, "cellSlice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    sget-object p1, Lorg/ton/block/ComputeSkipReason;->NO_STATE:Lorg/ton/block/ComputeSkipReason;

    return-object p1
.end method

.method public bridge synthetic storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V
    .locals 0

    .line 52
    check-cast p2, Lorg/ton/block/ComputeSkipReason;

    invoke-virtual {p0, p1, p2}, Lorg/ton/block/ComputeSkipReasonNoStateTlbConstructor;->storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/ComputeSkipReason;)V

    return-void
.end method

.method public storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/ComputeSkipReason;)V
    .locals 1

    const-string v0, "cellBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "value"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
