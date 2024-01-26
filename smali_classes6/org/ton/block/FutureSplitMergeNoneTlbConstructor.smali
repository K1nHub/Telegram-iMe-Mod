.class final Lorg/ton/block/FutureSplitMergeNoneTlbConstructor;
.super Lorg/ton/tlb/TlbConstructor;
.source "FutureSplitMerge.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/ton/tlb/TlbConstructor<",
        "Lorg/ton/block/FutureSplitMerge$FsmNone;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lorg/ton/block/FutureSplitMergeNoneTlbConstructor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/ton/block/FutureSplitMergeNoneTlbConstructor;

    invoke-direct {v0}, Lorg/ton/block/FutureSplitMergeNoneTlbConstructor;-><init>()V

    sput-object v0, Lorg/ton/block/FutureSplitMergeNoneTlbConstructor;->INSTANCE:Lorg/ton/block/FutureSplitMergeNoneTlbConstructor;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const-string v0, "fsm_none$0 = FutureSplitMerge;"

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 76
    invoke-direct {p0, v0, v1, v2, v1}, Lorg/ton/tlb/TlbConstructor;-><init>(Ljava/lang/String;Lorg/ton/bitstring/BitString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;
    .locals 0

    .line 76
    invoke-virtual {p0, p1}, Lorg/ton/block/FutureSplitMergeNoneTlbConstructor;->loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/FutureSplitMerge$FsmNone;

    move-result-object p1

    return-object p1
.end method

.method public loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/FutureSplitMerge$FsmNone;
    .locals 1

    const-string v0, "cellSlice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    sget-object p1, Lorg/ton/block/FutureSplitMerge$FsmNone;->INSTANCE:Lorg/ton/block/FutureSplitMerge$FsmNone;

    return-object p1
.end method

.method public bridge synthetic storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V
    .locals 0

    .line 76
    check-cast p2, Lorg/ton/block/FutureSplitMerge$FsmNone;

    invoke-virtual {p0, p1, p2}, Lorg/ton/block/FutureSplitMergeNoneTlbConstructor;->storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/FutureSplitMerge$FsmNone;)V

    return-void
.end method

.method public storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/FutureSplitMerge$FsmNone;)V
    .locals 1

    const-string v0, "cellBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "value"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
