.class final Lorg/ton/block/TransSplitInstallTlbConstructor;
.super Lorg/ton/tlb/TlbConstructor;
.source "TransSplitInstall.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/ton/tlb/TlbConstructor<",
        "Lorg/ton/block/TransSplitInstall;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTransSplitInstall.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TransSplitInstall.kt\norg/ton/block/TransSplitInstallTlbConstructor\n+ 2 CellBuilder.kt\norg/ton/cell/CellBuilderKt\n+ 3 TlbCodec.kt\norg/ton/tlb/TlbCodecKt\n+ 4 CellRef.kt\norg/ton/tlb/CellRefKt\n+ 5 CellSlice.kt\norg/ton/cell/CellSliceKt\n*L\n1#1,56:1\n131#2:57\n132#2:63\n59#3,3:58\n52#3:65\n106#4,2:61\n110#4:66\n14#4:67\n86#5:64\n*S KotlinDebug\n*F\n+ 1 TransSplitInstall.kt\norg/ton/block/TransSplitInstallTlbConstructor\n*L\n41#1:57\n41#1:63\n42#1:58,3\n50#1:65\n43#1:61,2\n51#1:66\n51#1:67\n49#1:64\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lorg/ton/block/TransSplitInstallTlbConstructor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/ton/block/TransSplitInstallTlbConstructor;

    invoke-direct {v0}, Lorg/ton/block/TransSplitInstallTlbConstructor;-><init>()V

    sput-object v0, Lorg/ton/block/TransSplitInstallTlbConstructor;->INSTANCE:Lorg/ton/block/TransSplitInstallTlbConstructor;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const-string v0, "trans_split_install$0101 split_info:SplitMergeInfo\n  prepare_transaction:^Transaction\n  installed:Bool = TransactionDescr;"

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
    invoke-virtual {p0, p1}, Lorg/ton/block/TransSplitInstallTlbConstructor;->loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/TransSplitInstall;

    move-result-object p1

    return-object p1
.end method

.method public loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/TransSplitInstall;
    .locals 4

    const-string v0, "cellSlice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    sget-object v0, Lorg/ton/block/SplitMergeInfo;->Companion:Lorg/ton/block/SplitMergeInfo$Companion;

    .line 52
    invoke-interface {v0, p1}, Lorg/ton/tlb/TlbLoader;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object v0

    .line 50
    check-cast v0, Lorg/ton/block/SplitMergeInfo;

    .line 51
    sget-object v1, Lorg/ton/block/Transaction;->Companion:Lorg/ton/block/Transaction$Companion;

    .line 110
    invoke-interface {p1}, Lorg/ton/cell/CellSlice;->loadRef()Lorg/ton/cell/Cell;

    move-result-object v2

    .line 14
    sget-object v3, Lorg/ton/tlb/CellRef;->Companion:Lorg/ton/tlb/CellRef$Companion;

    invoke-virtual {v3, v2, v1}, Lorg/ton/tlb/CellRef$Companion;->valueOf(Lorg/ton/cell/Cell;Lorg/ton/tlb/TlbCodec;)Lorg/ton/tlb/CellRef;

    move-result-object v1

    .line 52
    invoke-interface {p1}, Lorg/ton/cell/CellSlice;->loadBit()Z

    move-result p1

    .line 53
    new-instance v2, Lorg/ton/block/TransSplitInstall;

    invoke-direct {v2, v0, v1, p1}, Lorg/ton/block/TransSplitInstall;-><init>(Lorg/ton/block/SplitMergeInfo;Lorg/ton/tlb/CellRef;Z)V

    return-object v2
.end method

.method public bridge synthetic storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V
    .locals 0

    .line 33
    check-cast p2, Lorg/ton/block/TransSplitInstall;

    invoke-virtual {p0, p1, p2}, Lorg/ton/block/TransSplitInstallTlbConstructor;->storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/TransSplitInstall;)V

    return-void
.end method

.method public storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/TransSplitInstall;)V
    .locals 2

    const-string v0, "cellBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    sget-object v0, Lorg/ton/block/SplitMergeInfo;->Companion:Lorg/ton/block/SplitMergeInfo$Companion;

    invoke-virtual {p2}, Lorg/ton/block/TransSplitInstall;->getSplitInfo()Lorg/ton/block/SplitMergeInfo;

    move-result-object v1

    .line 60
    invoke-interface {v0, p1, v1}, Lorg/ton/tlb/TlbStorer;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    .line 43
    sget-object v0, Lorg/ton/block/Transaction;->Companion:Lorg/ton/block/Transaction$Companion;

    invoke-virtual {p2}, Lorg/ton/block/TransSplitInstall;->getPrepareTransaction()Lorg/ton/tlb/CellRef;

    move-result-object v1

    .line 106
    invoke-interface {v1, v0}, Lorg/ton/tlb/CellRef;->toCell(Lorg/ton/tlb/TlbCodec;)Lorg/ton/cell/Cell;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/ton/cell/CellBuilder;->storeRef(Lorg/ton/cell/Cell;)Lorg/ton/cell/CellBuilder;

    .line 44
    invoke-virtual {p2}, Lorg/ton/block/TransSplitInstall;->getInstalled()Z

    move-result p2

    invoke-interface {p1, p2}, Lorg/ton/cell/CellBuilder;->storeBit(Z)Lorg/ton/cell/CellBuilder;

    return-void
.end method
