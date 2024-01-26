.class final Lorg/ton/block/CurrencyCollectionTlbConstructor;
.super Lorg/ton/tlb/TlbConstructor;
.source "CurrencyCollection.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/ton/tlb/TlbConstructor<",
        "Lorg/ton/block/CurrencyCollection;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCurrencyCollection.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CurrencyCollection.kt\norg/ton/block/CurrencyCollectionTlbConstructor\n+ 2 CellBuilder.kt\norg/ton/cell/CellBuilderKt\n+ 3 TlbCodec.kt\norg/ton/tlb/TlbCodecKt\n+ 4 CellSlice.kt\norg/ton/cell/CellSliceKt\n*L\n1#1,49:1\n131#2:50\n132#2:57\n59#3,3:51\n59#3,3:54\n52#3:59\n52#3:60\n86#4:58\n*S KotlinDebug\n*F\n+ 1 CurrencyCollection.kt\norg/ton/block/CurrencyCollectionTlbConstructor\n*L\n36#1:50\n36#1:57\n37#1:51,3\n38#1:54,3\n44#1:59\n45#1:60\n43#1:58\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lorg/ton/block/CurrencyCollectionTlbConstructor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/ton/block/CurrencyCollectionTlbConstructor;

    invoke-direct {v0}, Lorg/ton/block/CurrencyCollectionTlbConstructor;-><init>()V

    sput-object v0, Lorg/ton/block/CurrencyCollectionTlbConstructor;->INSTANCE:Lorg/ton/block/CurrencyCollectionTlbConstructor;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const-string v0, "currencies$_ coins:Coins other:ExtraCurrencyCollection = CurrencyCollection;"

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
    invoke-virtual {p0, p1}, Lorg/ton/block/CurrencyCollectionTlbConstructor;->loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/CurrencyCollection;

    move-result-object p1

    return-object p1
.end method

.method public loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/CurrencyCollection;
    .locals 2

    const-string v0, "cellSlice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    sget-object v0, Lorg/ton/block/Coins;->Companion:Lorg/ton/block/Coins$Companion;

    .line 52
    invoke-interface {v0, p1}, Lorg/ton/tlb/TlbLoader;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object v0

    .line 44
    check-cast v0, Lorg/ton/block/Coins;

    .line 45
    sget-object v1, Lorg/ton/block/ExtraCurrencyCollection;->Companion:Lorg/ton/block/ExtraCurrencyCollection$Companion;

    .line 52
    invoke-interface {v1, p1}, Lorg/ton/tlb/TlbLoader;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object p1

    .line 45
    check-cast p1, Lorg/ton/block/ExtraCurrencyCollection;

    .line 46
    new-instance v1, Lorg/ton/block/CurrencyCollection;

    invoke-direct {v1, v0, p1}, Lorg/ton/block/CurrencyCollection;-><init>(Lorg/ton/block/Coins;Lorg/ton/block/ExtraCurrencyCollection;)V

    return-object v1
.end method

.method public bridge synthetic storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V
    .locals 0

    .line 31
    check-cast p2, Lorg/ton/block/CurrencyCollection;

    invoke-virtual {p0, p1, p2}, Lorg/ton/block/CurrencyCollectionTlbConstructor;->storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/CurrencyCollection;)V

    return-void
.end method

.method public storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/CurrencyCollection;)V
    .locals 2

    const-string v0, "cellBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    sget-object v0, Lorg/ton/block/Coins;->Companion:Lorg/ton/block/Coins$Companion;

    invoke-virtual {p2}, Lorg/ton/block/CurrencyCollection;->coins()Lorg/ton/block/Coins;

    move-result-object v1

    .line 60
    invoke-interface {v0, p1, v1}, Lorg/ton/tlb/TlbStorer;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    .line 38
    sget-object v0, Lorg/ton/block/ExtraCurrencyCollection;->Companion:Lorg/ton/block/ExtraCurrencyCollection$Companion;

    invoke-virtual {p2}, Lorg/ton/block/CurrencyCollection;->other()Lorg/ton/block/ExtraCurrencyCollection;

    move-result-object p2

    .line 60
    invoke-interface {v0, p1, p2}, Lorg/ton/tlb/TlbStorer;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    return-void
.end method
