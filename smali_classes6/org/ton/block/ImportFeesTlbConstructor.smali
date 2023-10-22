.class final Lorg/ton/block/ImportFeesTlbConstructor;
.super Lorg/ton/tlb/TlbConstructor;
.source "ImportFees.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/ton/tlb/TlbConstructor<",
        "Lorg/ton/block/ImportFees;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nImportFees.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImportFees.kt\norg/ton/block/ImportFeesTlbConstructor\n+ 2 CellBuilder.kt\norg/ton/cell/CellBuilderKt\n+ 3 TlbCodec.kt\norg/ton/tlb/TlbCodecKt\n+ 4 CellSlice.kt\norg/ton/cell/CellSliceKt\n*L\n1#1,47:1\n131#2:48\n132#2:55\n59#3,3:49\n59#3,3:52\n52#3:57\n52#3:58\n86#4:56\n*S KotlinDebug\n*F\n+ 1 ImportFees.kt\norg/ton/block/ImportFeesTlbConstructor\n*L\n34#1:48\n34#1:55\n35#1:49,3\n36#1:52,3\n42#1:57\n43#1:58\n41#1:56\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lorg/ton/block/ImportFeesTlbConstructor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/ton/block/ImportFeesTlbConstructor;

    invoke-direct {v0}, Lorg/ton/block/ImportFeesTlbConstructor;-><init>()V

    sput-object v0, Lorg/ton/block/ImportFeesTlbConstructor;->INSTANCE:Lorg/ton/block/ImportFeesTlbConstructor;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const-string v0, "import_fees$_ fees_collected:Coins value_imported:CurrencyCollection = ImportFees;"

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 29
    invoke-direct {p0, v0, v1, v2, v1}, Lorg/ton/tlb/TlbConstructor;-><init>(Ljava/lang/String;Lorg/ton/bitstring/BitString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lorg/ton/block/ImportFeesTlbConstructor;->loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/ImportFees;

    move-result-object p1

    return-object p1
.end method

.method public loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/ImportFees;
    .locals 2

    const-string v0, "cellSlice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    sget-object v0, Lorg/ton/block/Coins;->Companion:Lorg/ton/block/Coins$Companion;

    .line 52
    invoke-interface {v0, p1}, Lorg/ton/tlb/TlbLoader;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object v0

    .line 42
    check-cast v0, Lorg/ton/block/Coins;

    .line 43
    sget-object v1, Lorg/ton/block/CurrencyCollection;->Companion:Lorg/ton/block/CurrencyCollection$Companion;

    .line 52
    invoke-interface {v1, p1}, Lorg/ton/tlb/TlbLoader;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object p1

    .line 43
    check-cast p1, Lorg/ton/block/CurrencyCollection;

    .line 44
    new-instance v1, Lorg/ton/block/ImportFees;

    invoke-direct {v1, v0, p1}, Lorg/ton/block/ImportFees;-><init>(Lorg/ton/block/Coins;Lorg/ton/block/CurrencyCollection;)V

    return-object v1
.end method

.method public bridge synthetic storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V
    .locals 0

    .line 29
    check-cast p2, Lorg/ton/block/ImportFees;

    invoke-virtual {p0, p1, p2}, Lorg/ton/block/ImportFeesTlbConstructor;->storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/ImportFees;)V

    return-void
.end method

.method public storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/ImportFees;)V
    .locals 2

    const-string v0, "cellBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    sget-object v0, Lorg/ton/block/Coins;->Companion:Lorg/ton/block/Coins$Companion;

    invoke-virtual {p2}, Lorg/ton/block/ImportFees;->getFeesCollected()Lorg/ton/block/Coins;

    move-result-object v1

    .line 60
    invoke-interface {v0, p1, v1}, Lorg/ton/tlb/TlbStorer;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    .line 36
    sget-object v0, Lorg/ton/block/CurrencyCollection;->Companion:Lorg/ton/block/CurrencyCollection$Companion;

    invoke-virtual {p2}, Lorg/ton/block/ImportFees;->getValueImported()Lorg/ton/block/CurrencyCollection;

    move-result-object p2

    .line 60
    invoke-interface {v0, p1, p2}, Lorg/ton/tlb/TlbStorer;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    return-void
.end method
