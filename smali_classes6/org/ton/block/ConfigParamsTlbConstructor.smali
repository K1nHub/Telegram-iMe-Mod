.class final Lorg/ton/block/ConfigParamsTlbConstructor;
.super Lorg/ton/tlb/TlbConstructor;
.source "ConfigParams.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/ton/tlb/TlbConstructor<",
        "Lorg/ton/block/ConfigParams;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nConfigParams.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ConfigParams.kt\norg/ton/block/ConfigParamsTlbConstructor\n+ 2 CellBuilder.kt\norg/ton/cell/CellBuilderKt\n+ 3 CellRef.kt\norg/ton/tlb/CellRefKt\n+ 4 CellSlice.kt\norg/ton/cell/CellSliceKt\n*L\n1#1,55:1\n131#2:56\n132#2:59\n106#3,2:57\n110#3:61\n14#3:62\n86#4:60\n*S KotlinDebug\n*F\n+ 1 ConfigParams.kt\norg/ton/block/ConfigParamsTlbConstructor\n*L\n42#1:56\n42#1:59\n44#1:57,2\n51#1:61\n51#1:62\n49#1:60\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lorg/ton/block/ConfigParamsTlbConstructor;

.field private static final hashmap:Lorg/ton/tlb/TlbCodec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/ton/tlb/TlbCodec<",
            "Lorg/ton/hashmap/HmEdge<",
            "Lorg/ton/cell/Cell;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/ton/block/ConfigParamsTlbConstructor;

    invoke-direct {v0}, Lorg/ton/block/ConfigParamsTlbConstructor;-><init>()V

    sput-object v0, Lorg/ton/block/ConfigParamsTlbConstructor;->INSTANCE:Lorg/ton/block/ConfigParamsTlbConstructor;

    .line 37
    sget-object v0, Lorg/ton/hashmap/HmEdge;->Companion:Lorg/ton/hashmap/HmEdge$Companion;

    sget-object v1, Lorg/ton/cell/Cell;->Companion:Lorg/ton/cell/Cell$Companion;

    invoke-static {v1}, Lorg/ton/tlb/constructor/CellTlbConstructorKt;->tlbCodec(Lorg/ton/cell/Cell$Companion;)Lorg/ton/tlb/TlbCodec;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v0, v2, v1}, Lorg/ton/hashmap/HmEdge$Companion;->tlbCodec(ILorg/ton/tlb/TlbCodec;)Lorg/ton/tlb/TlbCodec;

    move-result-object v0

    sput-object v0, Lorg/ton/block/ConfigParamsTlbConstructor;->hashmap:Lorg/ton/tlb/TlbCodec;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const-string v0, "_ config_addr:bits256 config:^(Hashmap 32 ^Cell) = ConfigParams;"

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
    invoke-virtual {p0, p1}, Lorg/ton/block/ConfigParamsTlbConstructor;->loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/ConfigParams;

    move-result-object p1

    return-object p1
.end method

.method public loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/ConfigParams;
    .locals 3

    const-string v0, "cellSlice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x100

    .line 50
    invoke-interface {p1, v0}, Lorg/ton/cell/CellSlice;->loadBits(I)Lorg/ton/bitstring/BitString;

    move-result-object v0

    .line 51
    sget-object v1, Lorg/ton/block/ConfigParamsTlbConstructor;->hashmap:Lorg/ton/tlb/TlbCodec;

    .line 110
    invoke-interface {p1}, Lorg/ton/cell/CellSlice;->loadRef()Lorg/ton/cell/Cell;

    move-result-object p1

    .line 14
    sget-object v2, Lorg/ton/tlb/CellRef;->Companion:Lorg/ton/tlb/CellRef$Companion;

    invoke-virtual {v2, p1, v1}, Lorg/ton/tlb/CellRef$Companion;->valueOf(Lorg/ton/cell/Cell;Lorg/ton/tlb/TlbCodec;)Lorg/ton/tlb/CellRef;

    move-result-object p1

    .line 52
    new-instance v1, Lorg/ton/block/ConfigParams;

    invoke-direct {v1, v0, p1}, Lorg/ton/block/ConfigParams;-><init>(Lorg/ton/bitstring/BitString;Lorg/ton/tlb/CellRef;)V

    return-object v1
.end method

.method public bridge synthetic storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V
    .locals 0

    .line 34
    check-cast p2, Lorg/ton/block/ConfigParams;

    invoke-virtual {p0, p1, p2}, Lorg/ton/block/ConfigParamsTlbConstructor;->storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/ConfigParams;)V

    return-void
.end method

.method public storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/ConfigParams;)V
    .locals 1

    const-string v0, "cellBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-virtual {p2}, Lorg/ton/block/ConfigParams;->getConfigAddr()Lorg/ton/bitstring/BitString;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/ton/cell/CellBuilder;->storeBits(Lorg/ton/bitstring/BitString;)Lorg/ton/cell/CellBuilder;

    .line 44
    sget-object v0, Lorg/ton/block/ConfigParamsTlbConstructor;->hashmap:Lorg/ton/tlb/TlbCodec;

    invoke-virtual {p2}, Lorg/ton/block/ConfigParams;->getConfig()Lorg/ton/tlb/CellRef;

    move-result-object p2

    .line 106
    invoke-interface {p2, v0}, Lorg/ton/tlb/CellRef;->toCell(Lorg/ton/tlb/TlbCodec;)Lorg/ton/cell/Cell;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/ton/cell/CellBuilder;->storeRef(Lorg/ton/cell/Cell;)Lorg/ton/cell/CellBuilder;

    return-void
.end method
