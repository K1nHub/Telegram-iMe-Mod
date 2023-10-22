.class public final Lorg/ton/block/TrPhaseComputeVmTlbConstructor;
.super Lorg/ton/tlb/TlbConstructor;
.source "TrPhaseComputeVm.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/ton/tlb/TlbConstructor<",
        "Lorg/ton/block/TrPhaseComputeVm;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTrPhaseComputeVm.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TrPhaseComputeVm.kt\norg/ton/block/TrPhaseComputeVmTlbConstructor\n+ 2 CellBuilder.kt\norg/ton/cell/CellBuilderKt\n+ 3 TlbCodec.kt\norg/ton/tlb/TlbCodecKt\n+ 4 CellRef.kt\norg/ton/tlb/CellRefKt\n+ 5 CellSlice.kt\norg/ton/cell/CellSliceKt\n*L\n1#1,140:1\n131#2:141\n132#2:149\n59#3,3:142\n59#3,3:146\n52#3:151\n52#3:153\n12#4:145\n12#4:152\n86#5:150\n*S KotlinDebug\n*F\n+ 1 TrPhaseComputeVm.kt\norg/ton/block/TrPhaseComputeVmTlbConstructor\n*L\n43#1:141\n43#1:149\n47#1:142,3\n48#1:146,3\n57#1:151\n58#1:153\n48#1:145\n58#1:152\n53#1:150\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lorg/ton/block/TrPhaseComputeVmTlbConstructor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/ton/block/TrPhaseComputeVmTlbConstructor;

    invoke-direct {v0}, Lorg/ton/block/TrPhaseComputeVmTlbConstructor;-><init>()V

    sput-object v0, Lorg/ton/block/TrPhaseComputeVmTlbConstructor;->INSTANCE:Lorg/ton/block/TrPhaseComputeVmTlbConstructor;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const-string v0, "tr_phase_compute_vm$1 success:Bool msg_state_used:Bool account_activated:Bool gas_fees:Coins  ^[$_ gas_used:(VarUInteger 7) gas_limit:(VarUInteger 7) gas_credit:(Maybe (VarUInteger 3)) mode:int8 exit_code:int32 exit_arg:(Maybe int32) vm_steps:uint32 vm_init_state_hash:bits256 vm_final_state_hash:bits256 ] = TrPhaseComputeVm;"

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
    invoke-virtual {p0, p1}, Lorg/ton/block/TrPhaseComputeVmTlbConstructor;->loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/TrPhaseComputeVm;

    move-result-object p1

    return-object p1
.end method

.method public loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/TrPhaseComputeVm;
    .locals 7

    const-string v0, "cellSlice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-interface {p1}, Lorg/ton/cell/CellSlice;->loadBit()Z

    move-result v2

    .line 55
    invoke-interface {p1}, Lorg/ton/cell/CellSlice;->loadBit()Z

    move-result v3

    .line 56
    invoke-interface {p1}, Lorg/ton/cell/CellSlice;->loadBit()Z

    move-result v4

    .line 57
    sget-object v0, Lorg/ton/block/Coins;->Companion:Lorg/ton/block/Coins$Companion;

    .line 52
    invoke-interface {v0, p1}, Lorg/ton/tlb/TlbLoader;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object v0

    .line 57
    move-object v5, v0

    check-cast v5, Lorg/ton/block/Coins;

    .line 58
    sget-object v0, Lorg/ton/block/TrComputePhaseAux;->Companion:Lorg/ton/block/TrComputePhaseAux$Companion;

    .line 12
    sget-object v1, Lorg/ton/tlb/CellRef;->Companion:Lorg/ton/tlb/CellRef$Companion;

    invoke-virtual {v1, v0}, Lorg/ton/tlb/CellRef$Companion;->tlbCodec(Lorg/ton/tlb/TlbCodec;)Lorg/ton/tlb/TlbCodec;

    move-result-object v0

    .line 52
    invoke-interface {v0, p1}, Lorg/ton/tlb/TlbLoader;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object p1

    .line 58
    move-object v6, p1

    check-cast v6, Lorg/ton/tlb/CellRef;

    .line 59
    new-instance p1, Lorg/ton/block/TrPhaseComputeVm;

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lorg/ton/block/TrPhaseComputeVm;-><init>(ZZZLorg/ton/block/Coins;Lorg/ton/tlb/CellRef;)V

    return-object p1
.end method

.method public bridge synthetic storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V
    .locals 0

    .line 37
    check-cast p2, Lorg/ton/block/TrPhaseComputeVm;

    invoke-virtual {p0, p1, p2}, Lorg/ton/block/TrPhaseComputeVmTlbConstructor;->storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/TrPhaseComputeVm;)V

    return-void
.end method

.method public storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/TrPhaseComputeVm;)V
    .locals 2

    const-string v0, "cellBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-virtual {p2}, Lorg/ton/block/TrPhaseComputeVm;->getSuccess()Z

    move-result v0

    invoke-interface {p1, v0}, Lorg/ton/cell/CellBuilder;->storeBit(Z)Lorg/ton/cell/CellBuilder;

    .line 45
    invoke-virtual {p2}, Lorg/ton/block/TrPhaseComputeVm;->getMsgStateUsed()Z

    move-result v0

    invoke-interface {p1, v0}, Lorg/ton/cell/CellBuilder;->storeBit(Z)Lorg/ton/cell/CellBuilder;

    .line 46
    invoke-virtual {p2}, Lorg/ton/block/TrPhaseComputeVm;->getAccountActivated()Z

    move-result v0

    invoke-interface {p1, v0}, Lorg/ton/cell/CellBuilder;->storeBit(Z)Lorg/ton/cell/CellBuilder;

    .line 47
    sget-object v0, Lorg/ton/block/Coins;->Companion:Lorg/ton/block/Coins$Companion;

    invoke-virtual {p2}, Lorg/ton/block/TrPhaseComputeVm;->getGasFees()Lorg/ton/block/Coins;

    move-result-object v1

    .line 60
    invoke-interface {v0, p1, v1}, Lorg/ton/tlb/TlbStorer;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    .line 48
    sget-object v0, Lorg/ton/block/TrComputePhaseAux;->Companion:Lorg/ton/block/TrComputePhaseAux$Companion;

    .line 12
    sget-object v1, Lorg/ton/tlb/CellRef;->Companion:Lorg/ton/tlb/CellRef$Companion;

    invoke-virtual {v1, v0}, Lorg/ton/tlb/CellRef$Companion;->tlbCodec(Lorg/ton/tlb/TlbCodec;)Lorg/ton/tlb/TlbCodec;

    move-result-object v0

    .line 48
    invoke-virtual {p2}, Lorg/ton/block/TrPhaseComputeVm;->getR1()Lorg/ton/tlb/CellRef;

    move-result-object p2

    .line 60
    invoke-interface {v0, p1, p2}, Lorg/ton/tlb/TlbStorer;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    return-void
.end method
