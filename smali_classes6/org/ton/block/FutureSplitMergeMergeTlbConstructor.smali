.class final Lorg/ton/block/FutureSplitMergeMergeTlbConstructor;
.super Lorg/ton/tlb/TlbConstructor;
.source "FutureSplitMerge.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/ton/tlb/TlbConstructor<",
        "Lorg/ton/block/FutureSplitMerge$FsmMerge;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFutureSplitMerge.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FutureSplitMerge.kt\norg/ton/block/FutureSplitMergeMergeTlbConstructor\n+ 2 CellBuilder.kt\norg/ton/cell/CellBuilderKt\n+ 3 CellSlice.kt\norg/ton/cell/CellSliceKt\n*L\n1#1,123:1\n131#2,2:124\n86#3:126\n*S KotlinDebug\n*F\n+ 1 FutureSplitMerge.kt\norg/ton/block/FutureSplitMergeMergeTlbConstructor\n*L\n110#1:124,2\n117#1:126\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lorg/ton/block/FutureSplitMergeMergeTlbConstructor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/ton/block/FutureSplitMergeMergeTlbConstructor;

    invoke-direct {v0}, Lorg/ton/block/FutureSplitMergeMergeTlbConstructor;-><init>()V

    sput-object v0, Lorg/ton/block/FutureSplitMergeMergeTlbConstructor;->INSTANCE:Lorg/ton/block/FutureSplitMergeMergeTlbConstructor;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const-string v0, "fsm_merge$11 merge_utime:uint32 interval:uint32 = FutureSplitMerge;"

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 104
    invoke-direct {p0, v0, v1, v2, v1}, Lorg/ton/tlb/TlbConstructor;-><init>(Ljava/lang/String;Lorg/ton/bitstring/BitString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;
    .locals 0

    .line 104
    invoke-virtual {p0, p1}, Lorg/ton/block/FutureSplitMergeMergeTlbConstructor;->loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/FutureSplitMerge$FsmMerge;

    move-result-object p1

    return-object p1
.end method

.method public loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/FutureSplitMerge$FsmMerge;
    .locals 3

    const-string v0, "cellSlice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    invoke-interface {p1}, Lorg/ton/cell/CellSlice;->loadUInt32-pVg5ArA()I

    move-result v0

    .line 119
    invoke-interface {p1}, Lorg/ton/cell/CellSlice;->loadUInt32-pVg5ArA()I

    move-result p1

    .line 120
    new-instance v1, Lorg/ton/block/FutureSplitMerge$FsmMerge;

    const/4 v2, 0x0

    invoke-direct {v1, v0, p1, v2}, Lorg/ton/block/FutureSplitMerge$FsmMerge;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1
.end method

.method public bridge synthetic storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V
    .locals 0

    .line 104
    check-cast p2, Lorg/ton/block/FutureSplitMerge$FsmMerge;

    invoke-virtual {p0, p1, p2}, Lorg/ton/block/FutureSplitMergeMergeTlbConstructor;->storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/FutureSplitMerge$FsmMerge;)V

    return-void
.end method

.method public storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/FutureSplitMerge$FsmMerge;)V
    .locals 1

    const-string v0, "cellBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    invoke-virtual {p2}, Lorg/ton/block/FutureSplitMerge$FsmMerge;->getMergeUtime-pVg5ArA()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/ton/cell/CellBuilder;->storeUInt32-WZ4Q5Ns(I)Lorg/ton/cell/CellBuilder;

    .line 112
    invoke-virtual {p2}, Lorg/ton/block/FutureSplitMerge$FsmMerge;->getInterval-pVg5ArA()I

    move-result p2

    invoke-interface {p1, p2}, Lorg/ton/cell/CellBuilder;->storeUInt32-WZ4Q5Ns(I)Lorg/ton/cell/CellBuilder;

    return-void
.end method
