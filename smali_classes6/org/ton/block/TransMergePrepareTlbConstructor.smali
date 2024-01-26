.class final Lorg/ton/block/TransMergePrepareTlbConstructor;
.super Lorg/ton/tlb/TlbConstructor;
.source "TransMergePrepare.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/ton/tlb/TlbConstructor<",
        "Lorg/ton/block/TransMergePrepare;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTransMergePrepare.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TransMergePrepare.kt\norg/ton/block/TransMergePrepareTlbConstructor\n+ 2 CellBuilder.kt\norg/ton/cell/CellBuilderKt\n+ 3 TlbCodec.kt\norg/ton/tlb/TlbCodecKt\n+ 4 CellSlice.kt\norg/ton/cell/CellSliceKt\n*L\n1#1,57:1\n131#2:58\n132#2:65\n59#3,3:59\n59#3,3:62\n52#3:67\n52#3:68\n86#4:66\n*S KotlinDebug\n*F\n+ 1 TransMergePrepare.kt\norg/ton/block/TransMergePrepareTlbConstructor\n*L\n42#1:58\n42#1:65\n43#1:59,3\n44#1:62,3\n51#1:67\n52#1:68\n50#1:66\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lorg/ton/block/TransMergePrepareTlbConstructor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/ton/block/TransMergePrepareTlbConstructor;

    invoke-direct {v0}, Lorg/ton/block/TransMergePrepareTlbConstructor;-><init>()V

    sput-object v0, Lorg/ton/block/TransMergePrepareTlbConstructor;->INSTANCE:Lorg/ton/block/TransMergePrepareTlbConstructor;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const-string v0, "trans_merge_prepare$0110 split_info:SplitMergeInfo\n  storage_ph:TrStoragePhase aborted:Bool\n  = TransactionDescr;"

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 34
    invoke-direct {p0, v0, v1, v2, v1}, Lorg/ton/tlb/TlbConstructor;-><init>(Ljava/lang/String;Lorg/ton/bitstring/BitString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;
    .locals 0

    .line 34
    invoke-virtual {p0, p1}, Lorg/ton/block/TransMergePrepareTlbConstructor;->loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/TransMergePrepare;

    move-result-object p1

    return-object p1
.end method

.method public loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/TransMergePrepare;
    .locals 3

    const-string v0, "cellSlice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    sget-object v0, Lorg/ton/block/SplitMergeInfo;->Companion:Lorg/ton/block/SplitMergeInfo$Companion;

    .line 52
    invoke-interface {v0, p1}, Lorg/ton/tlb/TlbLoader;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object v0

    .line 51
    check-cast v0, Lorg/ton/block/SplitMergeInfo;

    .line 52
    sget-object v1, Lorg/ton/block/TrStoragePhase;->Companion:Lorg/ton/block/TrStoragePhase$Companion;

    .line 52
    invoke-interface {v1, p1}, Lorg/ton/tlb/TlbLoader;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object v1

    .line 52
    check-cast v1, Lorg/ton/block/TrStoragePhase;

    .line 53
    invoke-interface {p1}, Lorg/ton/cell/CellSlice;->loadBit()Z

    move-result p1

    .line 54
    new-instance v2, Lorg/ton/block/TransMergePrepare;

    invoke-direct {v2, v0, v1, p1}, Lorg/ton/block/TransMergePrepare;-><init>(Lorg/ton/block/SplitMergeInfo;Lorg/ton/block/TrStoragePhase;Z)V

    return-object v2
.end method

.method public bridge synthetic storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V
    .locals 0

    .line 34
    check-cast p2, Lorg/ton/block/TransMergePrepare;

    invoke-virtual {p0, p1, p2}, Lorg/ton/block/TransMergePrepareTlbConstructor;->storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/TransMergePrepare;)V

    return-void
.end method

.method public storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/TransMergePrepare;)V
    .locals 2

    const-string v0, "cellBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    sget-object v0, Lorg/ton/block/SplitMergeInfo;->Companion:Lorg/ton/block/SplitMergeInfo$Companion;

    invoke-virtual {p2}, Lorg/ton/block/TransMergePrepare;->getSplitInfo()Lorg/ton/block/SplitMergeInfo;

    move-result-object v1

    .line 60
    invoke-interface {v0, p1, v1}, Lorg/ton/tlb/TlbStorer;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    .line 44
    sget-object v0, Lorg/ton/block/TrStoragePhase;->Companion:Lorg/ton/block/TrStoragePhase$Companion;

    invoke-virtual {p2}, Lorg/ton/block/TransMergePrepare;->getStoragePh()Lorg/ton/block/TrStoragePhase;

    move-result-object v1

    .line 60
    invoke-interface {v0, p1, v1}, Lorg/ton/tlb/TlbStorer;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    .line 45
    invoke-virtual {p2}, Lorg/ton/block/TransMergePrepare;->getAborted()Z

    move-result p2

    invoke-interface {p1, p2}, Lorg/ton/cell/CellBuilder;->storeBit(Z)Lorg/ton/cell/CellBuilder;

    return-void
.end method
