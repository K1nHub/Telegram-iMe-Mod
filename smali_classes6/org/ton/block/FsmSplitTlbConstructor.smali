.class final Lorg/ton/block/FsmSplitTlbConstructor;
.super Lorg/ton/tlb/TlbConstructor;
.source "FutureSplitMerge.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/ton/tlb/TlbConstructor<",
        "Lorg/ton/block/FutureSplitMerge$FsmSplit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFutureSplitMerge.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FutureSplitMerge.kt\norg/ton/block/FsmSplitTlbConstructor\n+ 2 CellBuilder.kt\norg/ton/cell/CellBuilderKt\n+ 3 CellSlice.kt\norg/ton/cell/CellSliceKt\n*L\n1#1,123:1\n131#2,2:124\n86#3:126\n*S KotlinDebug\n*F\n+ 1 FutureSplitMerge.kt\norg/ton/block/FsmSplitTlbConstructor\n*L\n89#1:124,2\n96#1:126\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lorg/ton/block/FsmSplitTlbConstructor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/ton/block/FsmSplitTlbConstructor;

    invoke-direct {v0}, Lorg/ton/block/FsmSplitTlbConstructor;-><init>()V

    sput-object v0, Lorg/ton/block/FsmSplitTlbConstructor;->INSTANCE:Lorg/ton/block/FsmSplitTlbConstructor;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const-string v0, "fsm_split$10 split_utime:uint32 interval:uint32 = FutureSplitMerge;"

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 83
    invoke-direct {p0, v0, v1, v2, v1}, Lorg/ton/tlb/TlbConstructor;-><init>(Ljava/lang/String;Lorg/ton/bitstring/BitString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;
    .locals 0

    .line 83
    invoke-virtual {p0, p1}, Lorg/ton/block/FsmSplitTlbConstructor;->loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/FutureSplitMerge$FsmSplit;

    move-result-object p1

    return-object p1
.end method

.method public loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/FutureSplitMerge$FsmSplit;
    .locals 3

    const-string v0, "cellSlice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    invoke-interface {p1}, Lorg/ton/cell/CellSlice;->loadUInt32-pVg5ArA()I

    move-result v0

    .line 98
    invoke-interface {p1}, Lorg/ton/cell/CellSlice;->loadUInt32-pVg5ArA()I

    move-result p1

    .line 99
    new-instance v1, Lorg/ton/block/FutureSplitMerge$FsmSplit;

    const/4 v2, 0x0

    invoke-direct {v1, v0, p1, v2}, Lorg/ton/block/FutureSplitMerge$FsmSplit;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1
.end method

.method public bridge synthetic storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V
    .locals 0

    .line 83
    check-cast p2, Lorg/ton/block/FutureSplitMerge$FsmSplit;

    invoke-virtual {p0, p1, p2}, Lorg/ton/block/FsmSplitTlbConstructor;->storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/FutureSplitMerge$FsmSplit;)V

    return-void
.end method

.method public storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/FutureSplitMerge$FsmSplit;)V
    .locals 1

    const-string v0, "cellBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    invoke-virtual {p2}, Lorg/ton/block/FutureSplitMerge$FsmSplit;->getSplitUtime-pVg5ArA()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/ton/cell/CellBuilder;->storeUInt32-WZ4Q5Ns(I)Lorg/ton/cell/CellBuilder;

    .line 91
    invoke-virtual {p2}, Lorg/ton/block/FutureSplitMerge$FsmSplit;->getInterval-pVg5ArA()I

    move-result p2

    invoke-interface {p1, p2}, Lorg/ton/cell/CellBuilder;->storeUInt32-WZ4Q5Ns(I)Lorg/ton/cell/CellBuilder;

    return-void
.end method
