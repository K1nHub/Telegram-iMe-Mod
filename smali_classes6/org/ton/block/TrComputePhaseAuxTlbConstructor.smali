.class final Lorg/ton/block/TrComputePhaseAuxTlbConstructor;
.super Lorg/ton/tlb/TlbConstructor;
.source "TrPhaseComputeVm.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/ton/tlb/TlbConstructor<",
        "Lorg/ton/block/TrComputePhaseAux;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTrPhaseComputeVm.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TrPhaseComputeVm.kt\norg/ton/block/TrComputePhaseAuxTlbConstructor\n+ 2 TlbCodec.kt\norg/ton/tlb/TlbCodecKt\n+ 3 CellBuilder.kt\norg/ton/cell/CellBuilderKt\n*L\n1#1,140:1\n52#2:141\n52#2:142\n52#2:143\n52#2:144\n59#2,3:146\n59#2,3:149\n59#2,3:152\n59#2,3:155\n131#3:145\n132#3:158\n*S KotlinDebug\n*F\n+ 1 TrPhaseComputeVm.kt\norg/ton/block/TrComputePhaseAuxTlbConstructor\n*L\n114#1:141\n115#1:142\n116#1:143\n119#1:144\n128#1:146,3\n129#1:149,3\n130#1:152,3\n133#1:155,3\n127#1:145\n127#1:158\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lorg/ton/block/TrComputePhaseAuxTlbConstructor;

.field private static final MaybeInt32:Lorg/ton/tlb/TlbCodec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ton/tlb/TlbCodec<",
            "Lorg/ton/block/Maybe<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final MaybeVarUInteger3:Lorg/ton/tlb/TlbCodec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ton/tlb/TlbCodec<",
            "Lorg/ton/block/Maybe<",
            "Lorg/ton/block/VarUInteger;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final VarUInteger7:Lorg/ton/tlb/TlbCodec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ton/tlb/TlbCodec<",
            "Lorg/ton/block/VarUInteger;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/ton/block/TrComputePhaseAuxTlbConstructor;

    invoke-direct {v0}, Lorg/ton/block/TrComputePhaseAuxTlbConstructor;-><init>()V

    sput-object v0, Lorg/ton/block/TrComputePhaseAuxTlbConstructor;->INSTANCE:Lorg/ton/block/TrComputePhaseAuxTlbConstructor;

    .line 108
    sget-object v0, Lorg/ton/block/VarUInteger;->Companion:Lorg/ton/block/VarUInteger$Companion;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lorg/ton/block/VarUInteger$Companion;->tlbCodec(I)Lorg/ton/tlb/TlbCodec;

    move-result-object v1

    sput-object v1, Lorg/ton/block/TrComputePhaseAuxTlbConstructor;->VarUInteger7:Lorg/ton/tlb/TlbCodec;

    .line 109
    sget-object v1, Lorg/ton/block/Maybe;->Companion:Lorg/ton/block/Maybe$Companion;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lorg/ton/block/VarUInteger$Companion;->tlbCodec(I)Lorg/ton/tlb/TlbCodec;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/ton/block/Maybe$Companion;->tlbCodec(Lorg/ton/tlb/TlbCodec;)Lorg/ton/tlb/TlbCodec;

    move-result-object v0

    sput-object v0, Lorg/ton/block/TrComputePhaseAuxTlbConstructor;->MaybeVarUInteger3:Lorg/ton/tlb/TlbCodec;

    .line 110
    sget-object v0, Lorg/ton/tlb/constructor/IntTlbConstructor;->Companion:Lorg/ton/tlb/constructor/IntTlbConstructor$Companion;

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Lorg/ton/tlb/constructor/IntTlbConstructor$Companion;->int(I)Lorg/ton/tlb/TlbConstructor;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/ton/block/Maybe$Companion;->tlbCodec(Lorg/ton/tlb/TlbCodec;)Lorg/ton/tlb/TlbCodec;

    move-result-object v0

    sput-object v0, Lorg/ton/block/TrComputePhaseAuxTlbConstructor;->MaybeInt32:Lorg/ton/tlb/TlbCodec;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const-string v0, "$_ gas_used:(VarUInteger 7) gas_limit:(VarUInteger 7) gas_credit:(Maybe (VarUInteger 3)) mode:int8 exit_code:int32 exit_arg:(Maybe int32) vm_steps:uint32 vm_init_state_hash:bits256 vm_final_state_hash:bits256"

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 96
    invoke-direct {p0, v0, v1, v2, v1}, Lorg/ton/tlb/TlbConstructor;-><init>(Ljava/lang/String;Lorg/ton/bitstring/BitString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;
    .locals 0

    .line 96
    invoke-virtual {p0, p1}, Lorg/ton/block/TrComputePhaseAuxTlbConstructor;->loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/TrComputePhaseAux;

    move-result-object p1

    return-object p1
.end method

.method public loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/TrComputePhaseAux;
    .locals 12

    const-string v0, "cellSlice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    new-instance v0, Lorg/ton/block/TrComputePhaseAux;

    .line 114
    sget-object v1, Lorg/ton/block/TrComputePhaseAuxTlbConstructor;->VarUInteger7:Lorg/ton/tlb/TlbCodec;

    .line 52
    invoke-interface {v1, p1}, Lorg/ton/tlb/TlbLoader;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/ton/block/VarUInteger;

    .line 52
    invoke-interface {v1, p1}, Lorg/ton/tlb/TlbLoader;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lorg/ton/block/VarUInteger;

    .line 116
    sget-object v1, Lorg/ton/block/TrComputePhaseAuxTlbConstructor;->MaybeVarUInteger3:Lorg/ton/tlb/TlbCodec;

    .line 52
    invoke-interface {v1, p1}, Lorg/ton/tlb/TlbLoader;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lorg/ton/block/Maybe;

    const/16 v1, 0x8

    .line 117
    invoke-interface {p1, v1}, Lorg/ton/cell/CellSlice;->loadInt(I)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v5

    const/16 v1, 0x20

    .line 118
    invoke-interface {p1, v1}, Lorg/ton/cell/CellSlice;->loadInt(I)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v6

    .line 119
    sget-object v1, Lorg/ton/block/TrComputePhaseAuxTlbConstructor;->MaybeInt32:Lorg/ton/tlb/TlbCodec;

    .line 52
    invoke-interface {v1, p1}, Lorg/ton/tlb/TlbLoader;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lorg/ton/block/Maybe;

    .line 120
    invoke-interface {p1}, Lorg/ton/cell/CellSlice;->loadUInt32-pVg5ArA()I

    move-result v8

    const/16 v1, 0x100

    .line 121
    invoke-interface {p1, v1}, Lorg/ton/cell/CellSlice;->loadBits(I)Lorg/ton/bitstring/BitString;

    move-result-object v9

    .line 122
    invoke-interface {p1, v1}, Lorg/ton/cell/CellSlice;->loadBits(I)Lorg/ton/bitstring/BitString;

    move-result-object v10

    const/4 v11, 0x0

    move-object v1, v0

    .line 113
    invoke-direct/range {v1 .. v11}, Lorg/ton/block/TrComputePhaseAux;-><init>(Lorg/ton/block/VarUInteger;Lorg/ton/block/VarUInteger;Lorg/ton/block/Maybe;IILorg/ton/block/Maybe;ILorg/ton/bitstring/BitString;Lorg/ton/bitstring/BitString;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public bridge synthetic storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V
    .locals 0

    .line 96
    check-cast p2, Lorg/ton/block/TrComputePhaseAux;

    invoke-virtual {p0, p1, p2}, Lorg/ton/block/TrComputePhaseAuxTlbConstructor;->storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/TrComputePhaseAux;)V

    return-void
.end method

.method public storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/TrComputePhaseAux;)V
    .locals 2

    const-string v0, "cellBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    sget-object v0, Lorg/ton/block/TrComputePhaseAuxTlbConstructor;->VarUInteger7:Lorg/ton/tlb/TlbCodec;

    invoke-virtual {p2}, Lorg/ton/block/TrComputePhaseAux;->getGasUsed()Lorg/ton/block/VarUInteger;

    move-result-object v1

    .line 60
    invoke-interface {v0, p1, v1}, Lorg/ton/tlb/TlbStorer;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    .line 129
    invoke-virtual {p2}, Lorg/ton/block/TrComputePhaseAux;->getGasLimit()Lorg/ton/block/VarUInteger;

    move-result-object v1

    .line 60
    invoke-interface {v0, p1, v1}, Lorg/ton/tlb/TlbStorer;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    .line 130
    sget-object v0, Lorg/ton/block/TrComputePhaseAuxTlbConstructor;->MaybeVarUInteger3:Lorg/ton/tlb/TlbCodec;

    invoke-virtual {p2}, Lorg/ton/block/TrComputePhaseAux;->getGasCredit()Lorg/ton/block/Maybe;

    move-result-object v1

    .line 60
    invoke-interface {v0, p1, v1}, Lorg/ton/tlb/TlbStorer;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    .line 131
    invoke-virtual {p2}, Lorg/ton/block/TrComputePhaseAux;->getMode()I

    move-result v0

    const/16 v1, 0x8

    invoke-interface {p1, v0, v1}, Lorg/ton/cell/CellBuilder;->storeInt(II)Lorg/ton/cell/CellBuilder;

    .line 132
    invoke-virtual {p2}, Lorg/ton/block/TrComputePhaseAux;->getExitCode()I

    move-result v0

    const/16 v1, 0x20

    invoke-interface {p1, v0, v1}, Lorg/ton/cell/CellBuilder;->storeInt(II)Lorg/ton/cell/CellBuilder;

    .line 133
    sget-object v0, Lorg/ton/block/TrComputePhaseAuxTlbConstructor;->MaybeInt32:Lorg/ton/tlb/TlbCodec;

    invoke-virtual {p2}, Lorg/ton/block/TrComputePhaseAux;->getExitArg()Lorg/ton/block/Maybe;

    move-result-object v1

    .line 60
    invoke-interface {v0, p1, v1}, Lorg/ton/tlb/TlbStorer;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    .line 134
    invoke-virtual {p2}, Lorg/ton/block/TrComputePhaseAux;->getVmSteps-pVg5ArA()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/ton/cell/CellBuilder;->storeUInt32-WZ4Q5Ns(I)Lorg/ton/cell/CellBuilder;

    .line 135
    invoke-virtual {p2}, Lorg/ton/block/TrComputePhaseAux;->getVmInitStateHash()Lorg/ton/bitstring/BitString;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/ton/cell/CellBuilder;->storeBits(Lorg/ton/bitstring/BitString;)Lorg/ton/cell/CellBuilder;

    .line 136
    invoke-virtual {p2}, Lorg/ton/block/TrComputePhaseAux;->getVmFinalStateHash()Lorg/ton/bitstring/BitString;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/ton/cell/CellBuilder;->storeBits(Lorg/ton/bitstring/BitString;)Lorg/ton/cell/CellBuilder;

    return-void
.end method
