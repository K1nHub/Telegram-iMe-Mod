.class final Lorg/ton/block/ShardDescrAuxTlbConstructor;
.super Lorg/ton/tlb/TlbConstructor;
.source "ShardDescr.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/ton/tlb/TlbConstructor<",
        "Lorg/ton/block/ShardDescrAux;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nShardDescr.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShardDescr.kt\norg/ton/block/ShardDescrAuxTlbConstructor\n+ 2 TlbCodec.kt\norg/ton/tlb/TlbCodecKt\n*L\n1#1,321:1\n52#2:322\n52#2:323\n59#2,3:324\n59#2,3:327\n*S KotlinDebug\n*F\n+ 1 ShardDescr.kt\norg/ton/block/ShardDescrAuxTlbConstructor\n*L\n235#1:322\n236#1:323\n241#1:324,3\n242#1:327,3\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lorg/ton/block/ShardDescrAuxTlbConstructor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/ton/block/ShardDescrAuxTlbConstructor;

    invoke-direct {v0}, Lorg/ton/block/ShardDescrAuxTlbConstructor;-><init>()V

    sput-object v0, Lorg/ton/block/ShardDescrAuxTlbConstructor;->INSTANCE:Lorg/ton/block/ShardDescrAuxTlbConstructor;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const-string v0, ""

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 231
    invoke-direct {p0, v0, v1, v2, v1}, Lorg/ton/tlb/TlbConstructor;-><init>(Ljava/lang/String;Lorg/ton/bitstring/BitString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;
    .locals 0

    .line 231
    invoke-virtual {p0, p1}, Lorg/ton/block/ShardDescrAuxTlbConstructor;->loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/ShardDescrAux;

    move-result-object p1

    return-object p1
.end method

.method public loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/ShardDescrAux;
    .locals 2

    const-string v0, "cellSlice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 235
    sget-object v0, Lorg/ton/block/CurrencyCollection;->Companion:Lorg/ton/block/CurrencyCollection$Companion;

    .line 52
    invoke-interface {v0, p1}, Lorg/ton/tlb/TlbLoader;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object v1

    .line 235
    check-cast v1, Lorg/ton/block/CurrencyCollection;

    .line 52
    invoke-interface {v0, p1}, Lorg/ton/tlb/TlbLoader;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object p1

    .line 236
    check-cast p1, Lorg/ton/block/CurrencyCollection;

    .line 237
    new-instance v0, Lorg/ton/block/ShardDescrAux;

    invoke-direct {v0, v1, p1}, Lorg/ton/block/ShardDescrAux;-><init>(Lorg/ton/block/CurrencyCollection;Lorg/ton/block/CurrencyCollection;)V

    return-object v0
.end method

.method public bridge synthetic storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V
    .locals 0

    .line 231
    check-cast p2, Lorg/ton/block/ShardDescrAux;

    invoke-virtual {p0, p1, p2}, Lorg/ton/block/ShardDescrAuxTlbConstructor;->storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/ShardDescrAux;)V

    return-void
.end method

.method public storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/ShardDescrAux;)V
    .locals 2

    const-string v0, "cellBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 241
    sget-object v0, Lorg/ton/block/CurrencyCollection;->Companion:Lorg/ton/block/CurrencyCollection$Companion;

    invoke-virtual {p2}, Lorg/ton/block/ShardDescrAux;->getFeesCollected()Lorg/ton/block/CurrencyCollection;

    move-result-object v1

    .line 60
    invoke-interface {v0, p1, v1}, Lorg/ton/tlb/TlbStorer;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    .line 242
    invoke-virtual {p2}, Lorg/ton/block/ShardDescrAux;->getFundsCreated()Lorg/ton/block/CurrencyCollection;

    move-result-object p2

    .line 60
    invoke-interface {v0, p1, p2}, Lorg/ton/tlb/TlbStorer;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    return-void
.end method
