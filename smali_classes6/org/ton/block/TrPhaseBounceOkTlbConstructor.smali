.class final Lorg/ton/block/TrPhaseBounceOkTlbConstructor;
.super Lorg/ton/tlb/TlbConstructor;
.source "TrPhaseBounceOk.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/ton/tlb/TlbConstructor<",
        "Lorg/ton/block/TrPhaseBounceOk;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTrPhaseBounceOk.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TrPhaseBounceOk.kt\norg/ton/block/TrPhaseBounceOkTlbConstructor\n+ 2 CellBuilder.kt\norg/ton/cell/CellBuilderKt\n+ 3 TlbCodec.kt\norg/ton/tlb/TlbCodecKt\n+ 4 CellSlice.kt\norg/ton/cell/CellSliceKt\n*L\n1#1,56:1\n131#2:57\n132#2:67\n59#3,3:58\n59#3,3:61\n59#3,3:64\n52#3:69\n52#3:70\n52#3:71\n86#4:68\n*S KotlinDebug\n*F\n+ 1 TrPhaseBounceOk.kt\norg/ton/block/TrPhaseBounceOkTlbConstructor\n*L\n41#1:57\n41#1:67\n42#1:58,3\n43#1:61,3\n44#1:64,3\n50#1:69\n51#1:70\n52#1:71\n49#1:68\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lorg/ton/block/TrPhaseBounceOkTlbConstructor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/ton/block/TrPhaseBounceOkTlbConstructor;

    invoke-direct {v0}, Lorg/ton/block/TrPhaseBounceOkTlbConstructor;-><init>()V

    sput-object v0, Lorg/ton/block/TrPhaseBounceOkTlbConstructor;->INSTANCE:Lorg/ton/block/TrPhaseBounceOkTlbConstructor;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const-string v0, "tr_phase_bounce_ok$1 msg_size:StorageUsedShort msg_fees:Coins fwd_fees:Coins = TrBouncePhase;"

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
    invoke-virtual {p0, p1}, Lorg/ton/block/TrPhaseBounceOkTlbConstructor;->loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/TrPhaseBounceOk;

    move-result-object p1

    return-object p1
.end method

.method public loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/TrPhaseBounceOk;
    .locals 3

    const-string v0, "cellSlice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    sget-object v0, Lorg/ton/block/StorageUsedShort;->Companion:Lorg/ton/block/StorageUsedShort$Companion;

    .line 52
    invoke-interface {v0, p1}, Lorg/ton/tlb/TlbLoader;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object v0

    .line 50
    check-cast v0, Lorg/ton/block/StorageUsedShort;

    .line 51
    sget-object v1, Lorg/ton/block/Coins;->Companion:Lorg/ton/block/Coins$Companion;

    .line 52
    invoke-interface {v1, p1}, Lorg/ton/tlb/TlbLoader;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object v2

    .line 51
    check-cast v2, Lorg/ton/block/Coins;

    .line 52
    invoke-interface {v1, p1}, Lorg/ton/tlb/TlbLoader;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object p1

    .line 52
    check-cast p1, Lorg/ton/block/Coins;

    .line 53
    new-instance v1, Lorg/ton/block/TrPhaseBounceOk;

    invoke-direct {v1, v0, v2, p1}, Lorg/ton/block/TrPhaseBounceOk;-><init>(Lorg/ton/block/StorageUsedShort;Lorg/ton/block/Coins;Lorg/ton/block/Coins;)V

    return-object v1
.end method

.method public bridge synthetic storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V
    .locals 0

    .line 34
    check-cast p2, Lorg/ton/block/TrPhaseBounceOk;

    invoke-virtual {p0, p1, p2}, Lorg/ton/block/TrPhaseBounceOkTlbConstructor;->storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/TrPhaseBounceOk;)V

    return-void
.end method

.method public storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/TrPhaseBounceOk;)V
    .locals 2

    const-string v0, "cellBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    sget-object v0, Lorg/ton/block/StorageUsedShort;->Companion:Lorg/ton/block/StorageUsedShort$Companion;

    invoke-virtual {p2}, Lorg/ton/block/TrPhaseBounceOk;->getMsgSize()Lorg/ton/block/StorageUsedShort;

    move-result-object v1

    .line 60
    invoke-interface {v0, p1, v1}, Lorg/ton/tlb/TlbStorer;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    .line 43
    sget-object v0, Lorg/ton/block/Coins;->Companion:Lorg/ton/block/Coins$Companion;

    invoke-virtual {p2}, Lorg/ton/block/TrPhaseBounceOk;->getMsgFees()Lorg/ton/block/Coins;

    move-result-object v1

    .line 60
    invoke-interface {v0, p1, v1}, Lorg/ton/tlb/TlbStorer;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    .line 44
    invoke-virtual {p2}, Lorg/ton/block/TrPhaseBounceOk;->getFwdFees()Lorg/ton/block/Coins;

    move-result-object p2

    .line 60
    invoke-interface {v0, p1, p2}, Lorg/ton/tlb/TlbStorer;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    return-void
.end method
