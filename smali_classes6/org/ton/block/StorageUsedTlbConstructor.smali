.class final Lorg/ton/block/StorageUsedTlbConstructor;
.super Lorg/ton/tlb/TlbConstructor;
.source "StorageUsed.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/ton/tlb/TlbConstructor<",
        "Lorg/ton/block/StorageUsed;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStorageUsed.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StorageUsed.kt\norg/ton/block/StorageUsedTlbConstructor\n+ 2 CellBuilder.kt\norg/ton/cell/CellBuilderKt\n+ 3 TlbCodec.kt\norg/ton/tlb/TlbCodecKt\n+ 4 CellSlice.kt\norg/ton/cell/CellSliceKt\n*L\n1#1,53:1\n131#2:54\n132#2:64\n59#3,3:55\n59#3,3:58\n59#3,3:61\n52#3:66\n52#3:67\n52#3:68\n86#4:65\n*S KotlinDebug\n*F\n+ 1 StorageUsed.kt\norg/ton/block/StorageUsedTlbConstructor\n*L\n38#1:54\n38#1:64\n39#1:55,3\n40#1:58,3\n41#1:61,3\n47#1:66\n48#1:67\n49#1:68\n46#1:65\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lorg/ton/block/StorageUsedTlbConstructor;

.field private static final varUInteger7:Lorg/ton/tlb/TlbCodec;
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
    .locals 2

    new-instance v0, Lorg/ton/block/StorageUsedTlbConstructor;

    invoke-direct {v0}, Lorg/ton/block/StorageUsedTlbConstructor;-><init>()V

    sput-object v0, Lorg/ton/block/StorageUsedTlbConstructor;->INSTANCE:Lorg/ton/block/StorageUsedTlbConstructor;

    .line 34
    sget-object v0, Lorg/ton/block/VarUInteger;->Companion:Lorg/ton/block/VarUInteger$Companion;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lorg/ton/block/VarUInteger$Companion;->tlbCodec(I)Lorg/ton/tlb/TlbCodec;

    move-result-object v0

    sput-object v0, Lorg/ton/block/StorageUsedTlbConstructor;->varUInteger7:Lorg/ton/tlb/TlbCodec;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const-string v0, "storage_used$_ cells:(VarUInteger 7) bits:(VarUInteger 7) public_cells:(VarUInteger 7) = StorageUsed;"

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
    invoke-virtual {p0, p1}, Lorg/ton/block/StorageUsedTlbConstructor;->loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/StorageUsed;

    move-result-object p1

    return-object p1
.end method

.method public loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/StorageUsed;
    .locals 3

    const-string v0, "cellSlice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    sget-object v0, Lorg/ton/block/StorageUsedTlbConstructor;->varUInteger7:Lorg/ton/tlb/TlbCodec;

    .line 52
    invoke-interface {v0, p1}, Lorg/ton/tlb/TlbLoader;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object v1

    .line 47
    check-cast v1, Lorg/ton/block/VarUInteger;

    .line 52
    invoke-interface {v0, p1}, Lorg/ton/tlb/TlbLoader;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object v2

    .line 48
    check-cast v2, Lorg/ton/block/VarUInteger;

    .line 52
    invoke-interface {v0, p1}, Lorg/ton/tlb/TlbLoader;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object p1

    .line 49
    check-cast p1, Lorg/ton/block/VarUInteger;

    .line 50
    new-instance v0, Lorg/ton/block/StorageUsed;

    invoke-direct {v0, v1, v2, p1}, Lorg/ton/block/StorageUsed;-><init>(Lorg/ton/block/VarUInteger;Lorg/ton/block/VarUInteger;Lorg/ton/block/VarUInteger;)V

    return-object v0
.end method

.method public bridge synthetic storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V
    .locals 0

    .line 31
    check-cast p2, Lorg/ton/block/StorageUsed;

    invoke-virtual {p0, p1, p2}, Lorg/ton/block/StorageUsedTlbConstructor;->storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/StorageUsed;)V

    return-void
.end method

.method public storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/StorageUsed;)V
    .locals 2

    const-string v0, "cellBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    sget-object v0, Lorg/ton/block/StorageUsedTlbConstructor;->varUInteger7:Lorg/ton/tlb/TlbCodec;

    invoke-virtual {p2}, Lorg/ton/block/StorageUsed;->getCells()Lorg/ton/block/VarUInteger;

    move-result-object v1

    .line 60
    invoke-interface {v0, p1, v1}, Lorg/ton/tlb/TlbStorer;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    .line 40
    invoke-virtual {p2}, Lorg/ton/block/StorageUsed;->getBits()Lorg/ton/block/VarUInteger;

    move-result-object v1

    .line 60
    invoke-interface {v0, p1, v1}, Lorg/ton/tlb/TlbStorer;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    .line 41
    invoke-virtual {p2}, Lorg/ton/block/StorageUsed;->getPublicCells()Lorg/ton/block/VarUInteger;

    move-result-object p2

    .line 60
    invoke-interface {v0, p1, p2}, Lorg/ton/tlb/TlbStorer;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    return-void
.end method
