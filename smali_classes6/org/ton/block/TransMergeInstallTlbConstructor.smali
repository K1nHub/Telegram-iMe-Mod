.class final Lorg/ton/block/TransMergeInstallTlbConstructor;
.super Lorg/ton/tlb/TlbConstructor;
.source "TransMergeInstall.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/ton/tlb/TlbConstructor<",
        "Lorg/ton/block/TransMergeInstall;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTransMergeInstall.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TransMergeInstall.kt\norg/ton/block/TransMergeInstallTlbConstructor\n+ 2 CellBuilder.kt\norg/ton/cell/CellBuilderKt\n+ 3 TlbCodec.kt\norg/ton/tlb/TlbCodecKt\n+ 4 CellRef.kt\norg/ton/tlb/CellRefKt\n+ 5 CellSlice.kt\norg/ton/cell/CellSliceKt\n*L\n1#1,82:1\n131#2:83\n132#2:101\n59#3,3:84\n59#3,3:89\n59#3,3:92\n59#3,3:95\n59#3,3:98\n52#3:103\n52#3:106\n52#3:107\n52#3:108\n52#3:109\n106#4,2:87\n110#4:104\n14#4:105\n12#4:110\n86#5:102\n*S KotlinDebug\n*F\n+ 1 TransMergeInstall.kt\norg/ton/block/TransMergeInstallTlbConstructor\n*L\n57#1:83\n57#1:101\n58#1:84,3\n60#1:89,3\n61#1:92,3\n62#1:95,3\n63#1:98,3\n71#1:103\n73#1:106\n74#1:107\n75#1:108\n76#1:109\n59#1:87,2\n72#1:104\n72#1:105\n52#1:110\n70#1:102\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lorg/ton/block/TransMergeInstallTlbConstructor;

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

.field private static final maybeTrCreditPhase:Lorg/ton/tlb/TlbCodec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ton/tlb/TlbCodec<",
            "Lorg/ton/block/Maybe<",
            "Lorg/ton/block/TrCreditPhase;",
            ">;>;"
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

    new-instance v0, Lorg/ton/block/TransMergeInstallTlbConstructor;

    invoke-direct {v0}, Lorg/ton/block/TransMergeInstallTlbConstructor;-><init>()V

    sput-object v0, Lorg/ton/block/TransMergeInstallTlbConstructor;->INSTANCE:Lorg/ton/block/TransMergeInstallTlbConstructor;

    .line 50
    sget-object v0, Lorg/ton/block/Maybe;->Companion:Lorg/ton/block/Maybe$Companion;

    sget-object v1, Lorg/ton/block/TrStoragePhase;->Companion:Lorg/ton/block/TrStoragePhase$Companion;

    invoke-virtual {v0, v1}, Lorg/ton/block/Maybe$Companion;->tlbCodec(Lorg/ton/tlb/TlbCodec;)Lorg/ton/tlb/TlbCodec;

    move-result-object v1

    sput-object v1, Lorg/ton/block/TransMergeInstallTlbConstructor;->maybeTrStoragePhase:Lorg/ton/tlb/TlbCodec;

    .line 51
    sget-object v1, Lorg/ton/block/TrCreditPhase;->Companion:Lorg/ton/block/TrCreditPhase$Companion;

    invoke-virtual {v0, v1}, Lorg/ton/block/Maybe$Companion;->tlbCodec(Lorg/ton/tlb/TlbCodec;)Lorg/ton/tlb/TlbCodec;

    move-result-object v1

    sput-object v1, Lorg/ton/block/TransMergeInstallTlbConstructor;->maybeTrCreditPhase:Lorg/ton/tlb/TlbCodec;

    .line 52
    sget-object v1, Lorg/ton/block/TrActionPhase;->Companion:Lorg/ton/block/TrActionPhase$Companion;

    .line 12
    sget-object v2, Lorg/ton/tlb/CellRef;->Companion:Lorg/ton/tlb/CellRef$Companion;

    invoke-virtual {v2, v1}, Lorg/ton/tlb/CellRef$Companion;->tlbCodec(Lorg/ton/tlb/TlbCodec;)Lorg/ton/tlb/TlbCodec;

    move-result-object v1

    .line 52
    invoke-virtual {v0, v1}, Lorg/ton/block/Maybe$Companion;->tlbCodec(Lorg/ton/tlb/TlbCodec;)Lorg/ton/tlb/TlbCodec;

    move-result-object v0

    sput-object v0, Lorg/ton/block/TransMergeInstallTlbConstructor;->maybeTrActionPhase:Lorg/ton/tlb/TlbCodec;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const-string v0, "trans_merge_install$0111 split_info:SplitMergeInfo\n  prepare_transaction:^Transaction\n  storage_ph:(Maybe TrStoragePhase)\n  credit_ph:(Maybe TrCreditPhase)\n  compute_ph:TrComputePhase action:(Maybe ^TrActionPhase)\n  aborted:Bool destroyed:Bool\n  = TransactionDescr;"

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 41
    invoke-direct {p0, v0, v1, v2, v1}, Lorg/ton/tlb/TlbConstructor;-><init>(Ljava/lang/String;Lorg/ton/bitstring/BitString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lorg/ton/block/TransMergeInstallTlbConstructor;->loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/TransMergeInstall;

    move-result-object p1

    return-object p1
.end method

.method public loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/TransMergeInstall;
    .locals 10

    const-string v0, "cellSlice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    sget-object v0, Lorg/ton/block/SplitMergeInfo;->Companion:Lorg/ton/block/SplitMergeInfo$Companion;

    .line 52
    invoke-interface {v0, p1}, Lorg/ton/tlb/TlbLoader;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object v0

    .line 71
    move-object v2, v0

    check-cast v2, Lorg/ton/block/SplitMergeInfo;

    .line 72
    sget-object v0, Lorg/ton/block/Transaction;->Companion:Lorg/ton/block/Transaction$Companion;

    .line 110
    invoke-interface {p1}, Lorg/ton/cell/CellSlice;->loadRef()Lorg/ton/cell/Cell;

    move-result-object v1

    .line 14
    sget-object v3, Lorg/ton/tlb/CellRef;->Companion:Lorg/ton/tlb/CellRef$Companion;

    invoke-virtual {v3, v1, v0}, Lorg/ton/tlb/CellRef$Companion;->valueOf(Lorg/ton/cell/Cell;Lorg/ton/tlb/TlbCodec;)Lorg/ton/tlb/CellRef;

    move-result-object v3

    .line 73
    sget-object v0, Lorg/ton/block/TransMergeInstallTlbConstructor;->maybeTrStoragePhase:Lorg/ton/tlb/TlbCodec;

    .line 52
    invoke-interface {v0, p1}, Lorg/ton/tlb/TlbLoader;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object v0

    .line 73
    move-object v4, v0

    check-cast v4, Lorg/ton/block/Maybe;

    .line 74
    sget-object v0, Lorg/ton/block/TransMergeInstallTlbConstructor;->maybeTrCreditPhase:Lorg/ton/tlb/TlbCodec;

    .line 52
    invoke-interface {v0, p1}, Lorg/ton/tlb/TlbLoader;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object v0

    .line 74
    move-object v5, v0

    check-cast v5, Lorg/ton/block/Maybe;

    .line 75
    sget-object v0, Lorg/ton/block/TrComputePhase;->Companion:Lorg/ton/block/TrComputePhase$Companion;

    .line 52
    invoke-interface {v0, p1}, Lorg/ton/tlb/TlbLoader;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object v0

    .line 75
    move-object v6, v0

    check-cast v6, Lorg/ton/block/TrComputePhase;

    .line 76
    sget-object v0, Lorg/ton/block/TransMergeInstallTlbConstructor;->maybeTrActionPhase:Lorg/ton/tlb/TlbCodec;

    .line 52
    invoke-interface {v0, p1}, Lorg/ton/tlb/TlbLoader;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object v0

    .line 76
    move-object v7, v0

    check-cast v7, Lorg/ton/block/Maybe;

    .line 77
    invoke-interface {p1}, Lorg/ton/cell/CellSlice;->loadBit()Z

    move-result v8

    .line 78
    invoke-interface {p1}, Lorg/ton/cell/CellSlice;->loadBit()Z

    move-result v9

    .line 79
    new-instance p1, Lorg/ton/block/TransMergeInstall;

    move-object v1, p1

    invoke-direct/range {v1 .. v9}, Lorg/ton/block/TransMergeInstall;-><init>(Lorg/ton/block/SplitMergeInfo;Lorg/ton/tlb/CellRef;Lorg/ton/block/Maybe;Lorg/ton/block/Maybe;Lorg/ton/block/TrComputePhase;Lorg/ton/block/Maybe;ZZ)V

    return-object p1
.end method

.method public bridge synthetic storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V
    .locals 0

    .line 41
    check-cast p2, Lorg/ton/block/TransMergeInstall;

    invoke-virtual {p0, p1, p2}, Lorg/ton/block/TransMergeInstallTlbConstructor;->storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/TransMergeInstall;)V

    return-void
.end method

.method public storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/TransMergeInstall;)V
    .locals 2

    const-string v0, "cellBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    sget-object v0, Lorg/ton/block/SplitMergeInfo;->Companion:Lorg/ton/block/SplitMergeInfo$Companion;

    invoke-virtual {p2}, Lorg/ton/block/TransMergeInstall;->getSplitInfo()Lorg/ton/block/SplitMergeInfo;

    move-result-object v1

    .line 60
    invoke-interface {v0, p1, v1}, Lorg/ton/tlb/TlbStorer;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    .line 59
    sget-object v0, Lorg/ton/block/Transaction;->Companion:Lorg/ton/block/Transaction$Companion;

    invoke-virtual {p2}, Lorg/ton/block/TransMergeInstall;->getPrepareTransaction()Lorg/ton/tlb/CellRef;

    move-result-object v1

    .line 106
    invoke-interface {v1, v0}, Lorg/ton/tlb/CellRef;->toCell(Lorg/ton/tlb/TlbCodec;)Lorg/ton/cell/Cell;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/ton/cell/CellBuilder;->storeRef(Lorg/ton/cell/Cell;)Lorg/ton/cell/CellBuilder;

    .line 60
    sget-object v0, Lorg/ton/block/TransMergeInstallTlbConstructor;->maybeTrStoragePhase:Lorg/ton/tlb/TlbCodec;

    invoke-virtual {p2}, Lorg/ton/block/TransMergeInstall;->getStoragePh()Lorg/ton/block/Maybe;

    move-result-object v1

    .line 60
    invoke-interface {v0, p1, v1}, Lorg/ton/tlb/TlbStorer;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    .line 61
    sget-object v0, Lorg/ton/block/TransMergeInstallTlbConstructor;->maybeTrCreditPhase:Lorg/ton/tlb/TlbCodec;

    invoke-virtual {p2}, Lorg/ton/block/TransMergeInstall;->getCreditPh()Lorg/ton/block/Maybe;

    move-result-object v1

    .line 60
    invoke-interface {v0, p1, v1}, Lorg/ton/tlb/TlbStorer;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    .line 62
    sget-object v0, Lorg/ton/block/TrComputePhase;->Companion:Lorg/ton/block/TrComputePhase$Companion;

    invoke-virtual {p2}, Lorg/ton/block/TransMergeInstall;->getComputePh()Lorg/ton/block/TrComputePhase;

    move-result-object v1

    .line 60
    invoke-interface {v0, p1, v1}, Lorg/ton/tlb/TlbStorer;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    .line 63
    sget-object v0, Lorg/ton/block/TransMergeInstallTlbConstructor;->maybeTrActionPhase:Lorg/ton/tlb/TlbCodec;

    invoke-virtual {p2}, Lorg/ton/block/TransMergeInstall;->getAction()Lorg/ton/block/Maybe;

    move-result-object v1

    .line 60
    invoke-interface {v0, p1, v1}, Lorg/ton/tlb/TlbStorer;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    .line 64
    invoke-virtual {p2}, Lorg/ton/block/TransMergeInstall;->getAborted()Z

    move-result v0

    invoke-interface {p1, v0}, Lorg/ton/cell/CellBuilder;->storeBit(Z)Lorg/ton/cell/CellBuilder;

    .line 65
    invoke-virtual {p2}, Lorg/ton/block/TransMergeInstall;->getDestroyed()Z

    move-result p2

    invoke-interface {p1, p2}, Lorg/ton/cell/CellBuilder;->storeBit(Z)Lorg/ton/cell/CellBuilder;

    return-void
.end method
