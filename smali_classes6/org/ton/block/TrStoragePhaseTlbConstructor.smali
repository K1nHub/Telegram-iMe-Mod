.class final Lorg/ton/block/TrStoragePhaseTlbConstructor;
.super Lorg/ton/tlb/TlbConstructor;
.source "TrStoragePhase.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/ton/tlb/TlbConstructor<",
        "Lorg/ton/block/TrStoragePhase;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTrStoragePhase.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TrStoragePhase.kt\norg/ton/block/TrStoragePhaseTlbConstructor\n+ 2 CellBuilder.kt\norg/ton/cell/CellBuilderKt\n+ 3 TlbCodec.kt\norg/ton/tlb/TlbCodecKt\n+ 4 CellSlice.kt\norg/ton/cell/CellSliceKt\n*L\n1#1,57:1\n131#2:58\n132#2:68\n59#3,3:59\n59#3,3:62\n59#3,3:65\n52#3:70\n52#3:71\n52#3:72\n86#4:69\n*S KotlinDebug\n*F\n+ 1 TrStoragePhase.kt\norg/ton/block/TrStoragePhaseTlbConstructor\n*L\n42#1:58\n42#1:68\n43#1:59,3\n44#1:62,3\n45#1:65,3\n51#1:70\n52#1:71\n53#1:72\n50#1:69\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lorg/ton/block/TrStoragePhaseTlbConstructor;

.field private static final maybeCoins:Lorg/ton/tlb/TlbCodec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ton/tlb/TlbCodec<",
            "Lorg/ton/block/Maybe<",
            "Lorg/ton/block/Coins;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/ton/block/TrStoragePhaseTlbConstructor;

    invoke-direct {v0}, Lorg/ton/block/TrStoragePhaseTlbConstructor;-><init>()V

    sput-object v0, Lorg/ton/block/TrStoragePhaseTlbConstructor;->INSTANCE:Lorg/ton/block/TrStoragePhaseTlbConstructor;

    .line 37
    sget-object v0, Lorg/ton/block/Maybe;->Companion:Lorg/ton/block/Maybe$Companion;

    sget-object v1, Lorg/ton/block/Coins;->Companion:Lorg/ton/block/Coins$Companion;

    invoke-virtual {v0, v1}, Lorg/ton/block/Maybe$Companion;->tlbCodec(Lorg/ton/tlb/TlbCodec;)Lorg/ton/tlb/TlbCodec;

    move-result-object v0

    sput-object v0, Lorg/ton/block/TrStoragePhaseTlbConstructor;->maybeCoins:Lorg/ton/tlb/TlbCodec;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const-string v0, "tr_phase_storage$_ storage_fees_collected:Coins storage_fees_due:(Maybe Coins) status_change:AccStatusChange = TrStoragePhase;"

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 31
    invoke-direct {p0, v0, v1, v2, v1}, Lorg/ton/tlb/TlbConstructor;-><init>(Ljava/lang/String;Lorg/ton/bitstring/BitString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;
    .locals 0

    .line 31
    invoke-virtual {p0, p1}, Lorg/ton/block/TrStoragePhaseTlbConstructor;->loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/TrStoragePhase;

    move-result-object p1

    return-object p1
.end method

.method public loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/TrStoragePhase;
    .locals 3

    const-string v0, "cellSlice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    sget-object v0, Lorg/ton/block/Coins;->Companion:Lorg/ton/block/Coins$Companion;

    .line 52
    invoke-interface {v0, p1}, Lorg/ton/tlb/TlbLoader;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object v0

    .line 51
    check-cast v0, Lorg/ton/block/Coins;

    .line 52
    sget-object v1, Lorg/ton/block/TrStoragePhaseTlbConstructor;->maybeCoins:Lorg/ton/tlb/TlbCodec;

    .line 52
    invoke-interface {v1, p1}, Lorg/ton/tlb/TlbLoader;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object v1

    .line 52
    check-cast v1, Lorg/ton/block/Maybe;

    .line 53
    sget-object v2, Lorg/ton/block/AccStatusChange;->Companion:Lorg/ton/block/AccStatusChange$Companion;

    .line 52
    invoke-interface {v2, p1}, Lorg/ton/tlb/TlbLoader;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object p1

    .line 53
    check-cast p1, Lorg/ton/block/AccStatusChange;

    .line 54
    new-instance v2, Lorg/ton/block/TrStoragePhase;

    invoke-direct {v2, v0, v1, p1}, Lorg/ton/block/TrStoragePhase;-><init>(Lorg/ton/block/Coins;Lorg/ton/block/Maybe;Lorg/ton/block/AccStatusChange;)V

    return-object v2
.end method

.method public bridge synthetic storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V
    .locals 0

    .line 31
    check-cast p2, Lorg/ton/block/TrStoragePhase;

    invoke-virtual {p0, p1, p2}, Lorg/ton/block/TrStoragePhaseTlbConstructor;->storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/TrStoragePhase;)V

    return-void
.end method

.method public storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/TrStoragePhase;)V
    .locals 2

    const-string v0, "cellBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    sget-object v0, Lorg/ton/block/Coins;->Companion:Lorg/ton/block/Coins$Companion;

    invoke-virtual {p2}, Lorg/ton/block/TrStoragePhase;->getStorageFeesCollected()Lorg/ton/block/Coins;

    move-result-object v1

    .line 60
    invoke-interface {v0, p1, v1}, Lorg/ton/tlb/TlbStorer;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    .line 44
    sget-object v0, Lorg/ton/block/TrStoragePhaseTlbConstructor;->maybeCoins:Lorg/ton/tlb/TlbCodec;

    invoke-virtual {p2}, Lorg/ton/block/TrStoragePhase;->getStorageFeesDue()Lorg/ton/block/Maybe;

    move-result-object v1

    .line 60
    invoke-interface {v0, p1, v1}, Lorg/ton/tlb/TlbStorer;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    .line 45
    sget-object v0, Lorg/ton/block/AccStatusChange;->Companion:Lorg/ton/block/AccStatusChange$Companion;

    invoke-virtual {p2}, Lorg/ton/block/TrStoragePhase;->getStatusChange()Lorg/ton/block/AccStatusChange;

    move-result-object p2

    .line 60
    invoke-interface {v0, p1, p2}, Lorg/ton/tlb/TlbStorer;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    return-void
.end method
