.class final Lorg/ton/block/CryptoSignaturePairTlbConstructor;
.super Lorg/ton/tlb/TlbConstructor;
.source "CryptoSignaturePair.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/ton/tlb/TlbConstructor<",
        "Lorg/ton/block/CryptoSignaturePair;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCryptoSignaturePair.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CryptoSignaturePair.kt\norg/ton/block/CryptoSignaturePairTlbConstructor\n+ 2 CellBuilder.kt\norg/ton/cell/CellBuilderKt\n+ 3 TlbCodec.kt\norg/ton/tlb/TlbCodecKt\n+ 4 CellSlice.kt\norg/ton/cell/CellSliceKt\n*L\n1#1,42:1\n131#2:43\n132#2:47\n59#3,3:44\n52#3:49\n86#4:48\n*S KotlinDebug\n*F\n+ 1 CryptoSignaturePair.kt\norg/ton/block/CryptoSignaturePairTlbConstructor\n*L\n29#1:43\n29#1:47\n31#1:44,3\n38#1:49\n36#1:48\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lorg/ton/block/CryptoSignaturePairTlbConstructor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/ton/block/CryptoSignaturePairTlbConstructor;

    invoke-direct {v0}, Lorg/ton/block/CryptoSignaturePairTlbConstructor;-><init>()V

    sput-object v0, Lorg/ton/block/CryptoSignaturePairTlbConstructor;->INSTANCE:Lorg/ton/block/CryptoSignaturePairTlbConstructor;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const-string v0, "sig_pair$_ node_id_short:bits256 sign:CryptoSignature = CryptoSignaturePair;  // 256+x ~ 772 bits\n"

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 23
    invoke-direct {p0, v0, v1, v2, v1}, Lorg/ton/tlb/TlbConstructor;-><init>(Ljava/lang/String;Lorg/ton/bitstring/BitString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lorg/ton/block/CryptoSignaturePairTlbConstructor;->loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/CryptoSignaturePair;

    move-result-object p1

    return-object p1
.end method

.method public loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/CryptoSignaturePair;
    .locals 2

    const-string v0, "cellSlice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x100

    .line 37
    invoke-interface {p1, v0}, Lorg/ton/cell/CellSlice;->loadBits(I)Lorg/ton/bitstring/BitString;

    move-result-object v0

    .line 38
    sget-object v1, Lorg/ton/block/CryptoSignature;->Companion:Lorg/ton/block/CryptoSignature$Companion;

    .line 52
    invoke-interface {v1, p1}, Lorg/ton/tlb/TlbLoader;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object p1

    .line 38
    check-cast p1, Lorg/ton/block/CryptoSignature;

    .line 39
    new-instance v1, Lorg/ton/block/CryptoSignaturePair;

    invoke-direct {v1, v0, p1}, Lorg/ton/block/CryptoSignaturePair;-><init>(Lorg/ton/bitstring/BitString;Lorg/ton/block/CryptoSignature;)V

    return-object v1
.end method

.method public bridge synthetic storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V
    .locals 0

    .line 23
    check-cast p2, Lorg/ton/block/CryptoSignaturePair;

    invoke-virtual {p0, p1, p2}, Lorg/ton/block/CryptoSignaturePairTlbConstructor;->storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/CryptoSignaturePair;)V

    return-void
.end method

.method public storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/CryptoSignaturePair;)V
    .locals 1

    const-string v0, "cellBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-virtual {p2}, Lorg/ton/block/CryptoSignaturePair;->getNode_id_short()Lorg/ton/bitstring/BitString;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/ton/cell/CellBuilder;->storeBits(Lorg/ton/bitstring/BitString;)Lorg/ton/cell/CellBuilder;

    .line 31
    sget-object v0, Lorg/ton/block/CryptoSignature;->Companion:Lorg/ton/block/CryptoSignature$Companion;

    invoke-virtual {p2}, Lorg/ton/block/CryptoSignaturePair;->getSign()Lorg/ton/block/CryptoSignature;

    move-result-object p2

    .line 60
    invoke-interface {v0, p1, p2}, Lorg/ton/tlb/TlbStorer;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    return-void
.end method
