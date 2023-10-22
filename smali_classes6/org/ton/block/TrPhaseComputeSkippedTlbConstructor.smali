.class final Lorg/ton/block/TrPhaseComputeSkippedTlbConstructor;
.super Lorg/ton/tlb/TlbConstructor;
.source "TrPhaseComputeSkipped.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/ton/tlb/TlbConstructor<",
        "Lorg/ton/block/TrPhaseComputeSkipped;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTrPhaseComputeSkipped.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TrPhaseComputeSkipped.kt\norg/ton/block/TrPhaseComputeSkippedTlbConstructor\n+ 2 CellBuilder.kt\norg/ton/cell/CellBuilderKt\n+ 3 TlbCodec.kt\norg/ton/tlb/TlbCodecKt\n+ 4 CellSlice.kt\norg/ton/cell/CellSliceKt\n*L\n1#1,47:1\n131#2:48\n132#2:52\n59#3,3:49\n52#3:54\n86#4:53\n*S KotlinDebug\n*F\n+ 1 TrPhaseComputeSkipped.kt\norg/ton/block/TrPhaseComputeSkippedTlbConstructor\n*L\n36#1:48\n36#1:52\n37#1:49,3\n43#1:54\n42#1:53\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lorg/ton/block/TrPhaseComputeSkippedTlbConstructor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/ton/block/TrPhaseComputeSkippedTlbConstructor;

    invoke-direct {v0}, Lorg/ton/block/TrPhaseComputeSkippedTlbConstructor;-><init>()V

    sput-object v0, Lorg/ton/block/TrPhaseComputeSkippedTlbConstructor;->INSTANCE:Lorg/ton/block/TrPhaseComputeSkippedTlbConstructor;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const-string v0, "tr_phase_compute_skipped$0 reason:ComputeSkipReason = TrComputePhase;"

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 30
    invoke-direct {p0, v0, v1, v2, v1}, Lorg/ton/tlb/TlbConstructor;-><init>(Ljava/lang/String;Lorg/ton/bitstring/BitString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lorg/ton/block/TrPhaseComputeSkippedTlbConstructor;->loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/TrPhaseComputeSkipped;

    move-result-object p1

    return-object p1
.end method

.method public loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/TrPhaseComputeSkipped;
    .locals 1

    const-string v0, "cellSlice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    sget-object v0, Lorg/ton/block/ComputeSkipReason;->Companion:Lorg/ton/block/ComputeSkipReason$Companion;

    .line 52
    invoke-interface {v0, p1}, Lorg/ton/tlb/TlbLoader;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object p1

    .line 43
    check-cast p1, Lorg/ton/block/ComputeSkipReason;

    .line 44
    new-instance v0, Lorg/ton/block/TrPhaseComputeSkipped;

    invoke-direct {v0, p1}, Lorg/ton/block/TrPhaseComputeSkipped;-><init>(Lorg/ton/block/ComputeSkipReason;)V

    return-object v0
.end method

.method public bridge synthetic storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V
    .locals 0

    .line 30
    check-cast p2, Lorg/ton/block/TrPhaseComputeSkipped;

    invoke-virtual {p0, p1, p2}, Lorg/ton/block/TrPhaseComputeSkippedTlbConstructor;->storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/TrPhaseComputeSkipped;)V

    return-void
.end method

.method public storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/TrPhaseComputeSkipped;)V
    .locals 1

    const-string v0, "cellBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    sget-object v0, Lorg/ton/block/ComputeSkipReason;->Companion:Lorg/ton/block/ComputeSkipReason$Companion;

    invoke-virtual {p2}, Lorg/ton/block/TrPhaseComputeSkipped;->getReason()Lorg/ton/block/ComputeSkipReason;

    move-result-object p2

    .line 60
    invoke-interface {v0, p1, p2}, Lorg/ton/tlb/TlbStorer;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    return-void
.end method
