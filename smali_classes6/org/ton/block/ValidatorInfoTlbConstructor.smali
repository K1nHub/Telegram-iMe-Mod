.class final Lorg/ton/block/ValidatorInfoTlbConstructor;
.super Lorg/ton/tlb/TlbConstructor;
.source "ValidatorInfo.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/ton/tlb/TlbConstructor<",
        "Lorg/ton/block/ValidatorInfo;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nValidatorInfo.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ValidatorInfo.kt\norg/ton/block/ValidatorInfoTlbConstructor\n+ 2 CellBuilder.kt\norg/ton/cell/CellBuilderKt\n+ 3 CellSlice.kt\norg/ton/cell/CellSliceKt\n*L\n1#1,56:1\n131#2,2:57\n86#3:59\n*S KotlinDebug\n*F\n+ 1 ValidatorInfo.kt\norg/ton/block/ValidatorInfoTlbConstructor\n*L\n41#1:57,2\n49#1:59\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lorg/ton/block/ValidatorInfoTlbConstructor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/ton/block/ValidatorInfoTlbConstructor;

    invoke-direct {v0}, Lorg/ton/block/ValidatorInfoTlbConstructor;-><init>()V

    sput-object v0, Lorg/ton/block/ValidatorInfoTlbConstructor;->INSTANCE:Lorg/ton/block/ValidatorInfoTlbConstructor;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const-string v0, "validator_info$_   validator_list_hash_short:uint32   catchain_seqno:uint32   nx_cc_updated:Bool = ValidatorInfo;"

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
    invoke-virtual {p0, p1}, Lorg/ton/block/ValidatorInfoTlbConstructor;->loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/ValidatorInfo;

    move-result-object p1

    return-object p1
.end method

.method public loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/ValidatorInfo;
    .locals 4

    const-string v0, "cellSlice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-interface {p1}, Lorg/ton/cell/CellSlice;->loadUInt32-pVg5ArA()I

    move-result v0

    .line 51
    invoke-interface {p1}, Lorg/ton/cell/CellSlice;->loadUInt32-pVg5ArA()I

    move-result v1

    .line 52
    invoke-interface {p1}, Lorg/ton/cell/CellSlice;->loadBit()Z

    move-result p1

    .line 53
    new-instance v2, Lorg/ton/block/ValidatorInfo;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, p1, v3}, Lorg/ton/block/ValidatorInfo;-><init>(IIZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v2
.end method

.method public bridge synthetic storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V
    .locals 0

    .line 31
    check-cast p2, Lorg/ton/block/ValidatorInfo;

    invoke-virtual {p0, p1, p2}, Lorg/ton/block/ValidatorInfoTlbConstructor;->storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/ValidatorInfo;)V

    return-void
.end method

.method public storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/ValidatorInfo;)V
    .locals 1

    const-string v0, "cellBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-virtual {p2}, Lorg/ton/block/ValidatorInfo;->getValidatorListHashShort-pVg5ArA()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/ton/cell/CellBuilder;->storeUInt32-WZ4Q5Ns(I)Lorg/ton/cell/CellBuilder;

    .line 43
    invoke-virtual {p2}, Lorg/ton/block/ValidatorInfo;->getCatchainSeqno-pVg5ArA()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/ton/cell/CellBuilder;->storeUInt32-WZ4Q5Ns(I)Lorg/ton/cell/CellBuilder;

    .line 44
    invoke-virtual {p2}, Lorg/ton/block/ValidatorInfo;->getNxCcUpdated()Z

    move-result p2

    invoke-interface {p1, p2}, Lorg/ton/cell/CellBuilder;->storeBit(Z)Lorg/ton/cell/CellBuilder;

    return-void
.end method
