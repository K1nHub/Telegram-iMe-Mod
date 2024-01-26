.class final Lorg/ton/block/TransTickTockTlbConstructor;
.super Lorg/ton/tlb/TlbConstructor;
.source "TransTickTock.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/ton/tlb/TlbConstructor<",
        "Lorg/ton/block/TransTickTock;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTransTickTock.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TransTickTock.kt\norg/ton/block/TransTickTockTlbConstructor\n+ 2 CellBuilder.kt\norg/ton/cell/CellBuilderKt\n+ 3 TlbCodec.kt\norg/ton/tlb/TlbCodecKt\n+ 4 CellSlice.kt\norg/ton/cell/CellSliceKt\n*L\n1#1,68:1\n131#2:69\n132#2:79\n59#3,3:70\n59#3,3:73\n59#3,3:76\n52#3:81\n52#3:82\n52#3:83\n86#4:80\n*S KotlinDebug\n*F\n+ 1 TransTickTock.kt\norg/ton/block/TransTickTockTlbConstructor\n*L\n47#1:69\n47#1:79\n49#1:70,3\n50#1:73,3\n51#1:76,3\n60#1:81\n61#1:82\n62#1:83\n58#1:80\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lorg/ton/block/TransTickTockTlbConstructor;

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


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/ton/block/TransTickTockTlbConstructor;

    invoke-direct {v0}, Lorg/ton/block/TransTickTockTlbConstructor;-><init>()V

    sput-object v0, Lorg/ton/block/TransTickTockTlbConstructor;->INSTANCE:Lorg/ton/block/TransTickTockTlbConstructor;

    .line 42
    sget-object v0, Lorg/ton/block/Maybe;->Companion:Lorg/ton/block/Maybe$Companion;

    sget-object v1, Lorg/ton/tlb/CellRef;->Companion:Lorg/ton/tlb/CellRef$Companion;

    sget-object v2, Lorg/ton/block/TrActionPhase;->Companion:Lorg/ton/block/TrActionPhase$Companion;

    invoke-virtual {v1, v2}, Lorg/ton/tlb/CellRef$Companion;->tlbCodec(Lorg/ton/tlb/TlbCodec;)Lorg/ton/tlb/TlbCodec;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/ton/block/Maybe$Companion;->tlbCodec(Lorg/ton/tlb/TlbCodec;)Lorg/ton/tlb/TlbCodec;

    move-result-object v0

    sput-object v0, Lorg/ton/block/TransTickTockTlbConstructor;->maybeTrActionPhase:Lorg/ton/tlb/TlbCodec;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const-string v0, "trans_tick_tock$001 is_tock:Bool storage_ph:TrStoragePhase\n  compute_ph:TrComputePhase action:(Maybe ^TrActionPhase)\n  aborted:Bool destroyed:Bool = TransactionDescr;"

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
    invoke-virtual {p0, p1}, Lorg/ton/block/TransTickTockTlbConstructor;->loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/TransTickTock;

    move-result-object p1

    return-object p1
.end method

.method public loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/TransTickTock;
    .locals 8

    const-string v0, "cellSlice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    invoke-interface {p1}, Lorg/ton/cell/CellSlice;->loadBit()Z

    move-result v2

    .line 60
    sget-object v0, Lorg/ton/block/TrStoragePhase;->Companion:Lorg/ton/block/TrStoragePhase$Companion;

    .line 52
    invoke-interface {v0, p1}, Lorg/ton/tlb/TlbLoader;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object v0

    .line 60
    move-object v3, v0

    check-cast v3, Lorg/ton/block/TrStoragePhase;

    .line 61
    sget-object v0, Lorg/ton/block/TrComputePhase;->Companion:Lorg/ton/block/TrComputePhase$Companion;

    .line 52
    invoke-interface {v0, p1}, Lorg/ton/tlb/TlbLoader;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object v0

    .line 61
    move-object v4, v0

    check-cast v4, Lorg/ton/block/TrComputePhase;

    .line 62
    sget-object v0, Lorg/ton/block/TransTickTockTlbConstructor;->maybeTrActionPhase:Lorg/ton/tlb/TlbCodec;

    .line 52
    invoke-interface {v0, p1}, Lorg/ton/tlb/TlbLoader;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object v0

    .line 62
    move-object v5, v0

    check-cast v5, Lorg/ton/block/Maybe;

    .line 63
    invoke-interface {p1}, Lorg/ton/cell/CellSlice;->loadBit()Z

    move-result v6

    .line 64
    invoke-interface {p1}, Lorg/ton/cell/CellSlice;->loadBit()Z

    move-result v7

    .line 65
    new-instance p1, Lorg/ton/block/TransTickTock;

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Lorg/ton/block/TransTickTock;-><init>(ZLorg/ton/block/TrStoragePhase;Lorg/ton/block/TrComputePhase;Lorg/ton/block/Maybe;ZZ)V

    return-object p1
.end method

.method public bridge synthetic storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V
    .locals 0

    .line 37
    check-cast p2, Lorg/ton/block/TransTickTock;

    invoke-virtual {p0, p1, p2}, Lorg/ton/block/TransTickTockTlbConstructor;->storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/TransTickTock;)V

    return-void
.end method

.method public storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/TransTickTock;)V
    .locals 2

    const-string v0, "cellBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-virtual {p2}, Lorg/ton/block/TransTickTock;->isTock()Z

    move-result v0

    invoke-interface {p1, v0}, Lorg/ton/cell/CellBuilder;->storeBit(Z)Lorg/ton/cell/CellBuilder;

    .line 49
    sget-object v0, Lorg/ton/block/TrStoragePhase;->Companion:Lorg/ton/block/TrStoragePhase$Companion;

    invoke-virtual {p2}, Lorg/ton/block/TransTickTock;->getStoragePh()Lorg/ton/block/TrStoragePhase;

    move-result-object v1

    .line 60
    invoke-interface {v0, p1, v1}, Lorg/ton/tlb/TlbStorer;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    .line 50
    sget-object v0, Lorg/ton/block/TrComputePhase;->Companion:Lorg/ton/block/TrComputePhase$Companion;

    invoke-virtual {p2}, Lorg/ton/block/TransTickTock;->getComputePh()Lorg/ton/block/TrComputePhase;

    move-result-object v1

    .line 60
    invoke-interface {v0, p1, v1}, Lorg/ton/tlb/TlbStorer;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    .line 51
    sget-object v0, Lorg/ton/block/TransTickTockTlbConstructor;->maybeTrActionPhase:Lorg/ton/tlb/TlbCodec;

    invoke-virtual {p2}, Lorg/ton/block/TransTickTock;->getAction()Lorg/ton/block/Maybe;

    move-result-object v1

    .line 60
    invoke-interface {v0, p1, v1}, Lorg/ton/tlb/TlbStorer;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    .line 52
    invoke-virtual {p2}, Lorg/ton/block/TransTickTock;->getAborted()Z

    move-result v0

    invoke-interface {p1, v0}, Lorg/ton/cell/CellBuilder;->storeBit(Z)Lorg/ton/cell/CellBuilder;

    .line 53
    invoke-virtual {p2}, Lorg/ton/block/TransTickTock;->getDestroyed()Z

    move-result p2

    invoke-interface {p1, p2}, Lorg/ton/cell/CellBuilder;->storeBit(Z)Lorg/ton/cell/CellBuilder;

    return-void
.end method
