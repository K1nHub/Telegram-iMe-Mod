.class final Lorg/ton/block/TransSplitPrepareTlbConstructor;
.super Lorg/ton/tlb/TlbConstructor;
.source "TransSplitPrepare.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/ton/tlb/TlbConstructor<",
        "Lorg/ton/block/TransSplitPrepare;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTransSplitPrepare.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TransSplitPrepare.kt\norg/ton/block/TransSplitPrepareTlbConstructor\n+ 2 CellBuilder.kt\norg/ton/cell/CellBuilderKt\n+ 3 TlbCodec.kt\norg/ton/tlb/TlbCodecKt\n+ 4 CellSlice.kt\norg/ton/cell/CellSliceKt\n+ 5 Maybe.kt\norg/ton/block/Maybe$Companion\n+ 6 CellRef.kt\norg/ton/tlb/CellRefKt\n*L\n1#1,73:1\n131#2:74\n132#2:87\n59#3,3:75\n59#3,3:78\n59#3,3:81\n59#3,3:84\n52#3:89\n52#3:90\n52#3:91\n52#3:92\n86#4:88\n33#5:93\n33#5:95\n12#6:94\n*S KotlinDebug\n*F\n+ 1 TransSplitPrepare.kt\norg/ton/block/TransSplitPrepareTlbConstructor\n*L\n52#1:74\n52#1:87\n53#1:75,3\n54#1:78,3\n55#1:81,3\n56#1:84,3\n64#1:89\n65#1:90\n66#1:91\n67#1:92\n63#1:88\n46#1:93\n47#1:95\n47#1:94\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lorg/ton/block/TransSplitPrepareTlbConstructor;

.field private static final maybeTrActionPhase:Lorg/ton/tlb/TlbCodec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ton/tlb/TlbCodec<",
            "Lorg/ton/block/Maybe<",
            "Lorg/ton/tlb/CellRef<",
            "Lorg/ton/block/TrActionPhase;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private static final maybeTrStoragePhase:Lorg/ton/tlb/TlbCodec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ton/tlb/TlbCodec<",
            "Lorg/ton/block/Maybe<",
            "Lorg/ton/block/TrStoragePhase;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/ton/block/TransSplitPrepareTlbConstructor;

    invoke-direct {v0}, Lorg/ton/block/TransSplitPrepareTlbConstructor;-><init>()V

    sput-object v0, Lorg/ton/block/TransSplitPrepareTlbConstructor;->INSTANCE:Lorg/ton/block/TransSplitPrepareTlbConstructor;

    .line 46
    sget-object v0, Lorg/ton/block/Maybe;->Companion:Lorg/ton/block/Maybe$Companion;

    sget-object v1, Lorg/ton/block/TrStoragePhase;->Companion:Lorg/ton/block/TrStoragePhase$Companion;

    .line 33
    invoke-virtual {v0, v1}, Lorg/ton/block/Maybe$Companion;->tlbCodec(Lorg/ton/tlb/TlbCodec;)Lorg/ton/tlb/TlbCodec;

    move-result-object v1

    .line 46
    sput-object v1, Lorg/ton/block/TransSplitPrepareTlbConstructor;->maybeTrStoragePhase:Lorg/ton/tlb/TlbCodec;

    .line 47
    sget-object v1, Lorg/ton/block/TrActionPhase;->Companion:Lorg/ton/block/TrActionPhase$Companion;

    .line 12
    sget-object v2, Lorg/ton/tlb/CellRef;->Companion:Lorg/ton/tlb/CellRef$Companion;

    invoke-virtual {v2, v1}, Lorg/ton/tlb/CellRef$Companion;->tlbCodec(Lorg/ton/tlb/TlbCodec;)Lorg/ton/tlb/TlbCodec;

    move-result-object v1

    .line 33
    invoke-virtual {v0, v1}, Lorg/ton/block/Maybe$Companion;->tlbCodec(Lorg/ton/tlb/TlbCodec;)Lorg/ton/tlb/TlbCodec;

    move-result-object v0

    .line 47
    sput-object v0, Lorg/ton/block/TransSplitPrepareTlbConstructor;->maybeTrActionPhase:Lorg/ton/tlb/TlbCodec;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const-string v0, "trans_split_prepare$0100   split_info:SplitMergeInfo\n  storage_ph:(Maybe TrStoragePhase)\n  compute_ph:TrComputePhase   action:(Maybe ^TrActionPhase)\n  aborted:Bool destroyed:Bool\n  = TransactionDescr;"

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 37
    invoke-direct {p0, v0, v1, v2, v1}, Lorg/ton/tlb/TlbConstructor;-><init>(Ljava/lang/String;Lorg/ton/bitstring/BitString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;
    .locals 0

    .line 37
    invoke-virtual {p0, p1}, Lorg/ton/block/TransSplitPrepareTlbConstructor;->loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/TransSplitPrepare;

    move-result-object p1

    return-object p1
.end method

.method public loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/TransSplitPrepare;
    .locals 8

    const-string v0, "cellSlice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    sget-object v0, Lorg/ton/block/SplitMergeInfo;->Companion:Lorg/ton/block/SplitMergeInfo$Companion;

    .line 52
    invoke-interface {v0, p1}, Lorg/ton/tlb/TlbLoader;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object v0

    .line 64
    move-object v2, v0

    check-cast v2, Lorg/ton/block/SplitMergeInfo;

    .line 65
    sget-object v0, Lorg/ton/block/TransSplitPrepareTlbConstructor;->maybeTrStoragePhase:Lorg/ton/tlb/TlbCodec;

    .line 52
    invoke-interface {v0, p1}, Lorg/ton/tlb/TlbLoader;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object v0

    .line 65
    move-object v3, v0

    check-cast v3, Lorg/ton/block/Maybe;

    .line 66
    sget-object v0, Lorg/ton/block/TrComputePhase;->Companion:Lorg/ton/block/TrComputePhase$Companion;

    .line 52
    invoke-interface {v0, p1}, Lorg/ton/tlb/TlbLoader;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object v0

    .line 66
    move-object v4, v0

    check-cast v4, Lorg/ton/block/TrComputePhase;

    .line 67
    sget-object v0, Lorg/ton/block/TransSplitPrepareTlbConstructor;->maybeTrActionPhase:Lorg/ton/tlb/TlbCodec;

    .line 52
    invoke-interface {v0, p1}, Lorg/ton/tlb/TlbLoader;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object v0

    .line 67
    move-object v5, v0

    check-cast v5, Lorg/ton/block/Maybe;

    .line 68
    invoke-interface {p1}, Lorg/ton/cell/CellSlice;->loadBit()Z

    move-result v6

    .line 69
    invoke-interface {p1}, Lorg/ton/cell/CellSlice;->loadBit()Z

    move-result v7

    .line 70
    new-instance p1, Lorg/ton/block/TransSplitPrepare;

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Lorg/ton/block/TransSplitPrepare;-><init>(Lorg/ton/block/SplitMergeInfo;Lorg/ton/block/Maybe;Lorg/ton/block/TrComputePhase;Lorg/ton/block/Maybe;ZZ)V

    return-object p1
.end method

.method public bridge synthetic storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V
    .locals 0

    .line 37
    check-cast p2, Lorg/ton/block/TransSplitPrepare;

    invoke-virtual {p0, p1, p2}, Lorg/ton/block/TransSplitPrepareTlbConstructor;->storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/TransSplitPrepare;)V

    return-void
.end method

.method public storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/TransSplitPrepare;)V
    .locals 2

    const-string v0, "cellBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    sget-object v0, Lorg/ton/block/SplitMergeInfo;->Companion:Lorg/ton/block/SplitMergeInfo$Companion;

    invoke-virtual {p2}, Lorg/ton/block/TransSplitPrepare;->getSplitInfo()Lorg/ton/block/SplitMergeInfo;

    move-result-object v1

    .line 60
    invoke-interface {v0, p1, v1}, Lorg/ton/tlb/TlbStorer;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    .line 54
    sget-object v0, Lorg/ton/block/TransSplitPrepareTlbConstructor;->maybeTrStoragePhase:Lorg/ton/tlb/TlbCodec;

    invoke-virtual {p2}, Lorg/ton/block/TransSplitPrepare;->getStoragePh()Lorg/ton/block/Maybe;

    move-result-object v1

    .line 60
    invoke-interface {v0, p1, v1}, Lorg/ton/tlb/TlbStorer;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    .line 55
    sget-object v0, Lorg/ton/block/TrComputePhase;->Companion:Lorg/ton/block/TrComputePhase$Companion;

    invoke-virtual {p2}, Lorg/ton/block/TransSplitPrepare;->getComputePh()Lorg/ton/block/TrComputePhase;

    move-result-object v1

    .line 60
    invoke-interface {v0, p1, v1}, Lorg/ton/tlb/TlbStorer;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    .line 56
    sget-object v0, Lorg/ton/block/TransSplitPrepareTlbConstructor;->maybeTrActionPhase:Lorg/ton/tlb/TlbCodec;

    invoke-virtual {p2}, Lorg/ton/block/TransSplitPrepare;->getAction()Lorg/ton/block/Maybe;

    move-result-object v1

    .line 60
    invoke-interface {v0, p1, v1}, Lorg/ton/tlb/TlbStorer;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    .line 57
    invoke-virtual {p2}, Lorg/ton/block/TransSplitPrepare;->getAborted()Z

    move-result v0

    invoke-interface {p1, v0}, Lorg/ton/cell/CellBuilder;->storeBit(Z)Lorg/ton/cell/CellBuilder;

    .line 58
    invoke-virtual {p2}, Lorg/ton/block/TransSplitPrepare;->getDestroyed()Z

    move-result p2

    invoke-interface {p1, p2}, Lorg/ton/cell/CellBuilder;->storeBit(Z)Lorg/ton/cell/CellBuilder;

    return-void
.end method
