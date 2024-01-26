.class final Lorg/ton/block/ShardFeeCreatedTlbConstructor;
.super Lorg/ton/tlb/TlbConstructor;
.source "ShardFeeCreated.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/ton/tlb/TlbConstructor<",
        "Lorg/ton/block/ShardFeeCreated;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nShardFeeCreated.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShardFeeCreated.kt\norg/ton/block/ShardFeeCreatedTlbConstructor\n+ 2 CellBuilder.kt\norg/ton/cell/CellBuilderKt\n+ 3 TlbCodec.kt\norg/ton/tlb/TlbCodecKt\n+ 4 CellSlice.kt\norg/ton/cell/CellSliceKt\n*L\n1#1,47:1\n131#2:48\n132#2:55\n59#3,3:49\n59#3,3:52\n52#3:57\n52#3:58\n86#4:56\n*S KotlinDebug\n*F\n+ 1 ShardFeeCreated.kt\norg/ton/block/ShardFeeCreatedTlbConstructor\n*L\n34#1:48\n34#1:55\n35#1:49,3\n36#1:52,3\n42#1:57\n43#1:58\n41#1:56\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lorg/ton/block/ShardFeeCreatedTlbConstructor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/ton/block/ShardFeeCreatedTlbConstructor;

    invoke-direct {v0}, Lorg/ton/block/ShardFeeCreatedTlbConstructor;-><init>()V

    sput-object v0, Lorg/ton/block/ShardFeeCreatedTlbConstructor;->INSTANCE:Lorg/ton/block/ShardFeeCreatedTlbConstructor;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const-string v0, "_ fees:CurrencyCollection create:CurrencyCollection = ShardFeeCreated;\n"

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 27
    invoke-direct {p0, v0, v1, v2, v1}, Lorg/ton/tlb/TlbConstructor;-><init>(Ljava/lang/String;Lorg/ton/bitstring/BitString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lorg/ton/block/ShardFeeCreatedTlbConstructor;->loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/ShardFeeCreated;

    move-result-object p1

    return-object p1
.end method

.method public loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/ShardFeeCreated;
    .locals 2

    const-string v0, "cellSlice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    sget-object v0, Lorg/ton/block/CurrencyCollection;->Companion:Lorg/ton/block/CurrencyCollection$Companion;

    .line 52
    invoke-interface {v0, p1}, Lorg/ton/tlb/TlbLoader;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object v1

    .line 42
    check-cast v1, Lorg/ton/block/CurrencyCollection;

    .line 52
    invoke-interface {v0, p1}, Lorg/ton/tlb/TlbLoader;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object p1

    .line 43
    check-cast p1, Lorg/ton/block/CurrencyCollection;

    .line 44
    new-instance v0, Lorg/ton/block/ShardFeeCreated;

    invoke-direct {v0, v1, p1}, Lorg/ton/block/ShardFeeCreated;-><init>(Lorg/ton/block/CurrencyCollection;Lorg/ton/block/CurrencyCollection;)V

    return-object v0
.end method

.method public bridge synthetic storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V
    .locals 0

    .line 27
    check-cast p2, Lorg/ton/block/ShardFeeCreated;

    invoke-virtual {p0, p1, p2}, Lorg/ton/block/ShardFeeCreatedTlbConstructor;->storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/ShardFeeCreated;)V

    return-void
.end method

.method public storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/ShardFeeCreated;)V
    .locals 2

    const-string v0, "cellBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    sget-object v0, Lorg/ton/block/CurrencyCollection;->Companion:Lorg/ton/block/CurrencyCollection$Companion;

    invoke-virtual {p2}, Lorg/ton/block/ShardFeeCreated;->getFees()Lorg/ton/block/CurrencyCollection;

    move-result-object v1

    .line 60
    invoke-interface {v0, p1, v1}, Lorg/ton/tlb/TlbStorer;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    .line 36
    invoke-virtual {p2}, Lorg/ton/block/ShardFeeCreated;->getCreate()Lorg/ton/block/CurrencyCollection;

    move-result-object p2

    .line 60
    invoke-interface {v0, p1, p2}, Lorg/ton/tlb/TlbStorer;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    return-void
.end method
