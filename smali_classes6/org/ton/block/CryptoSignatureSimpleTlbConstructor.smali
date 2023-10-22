.class final Lorg/ton/block/CryptoSignatureSimpleTlbConstructor;
.super Lorg/ton/tlb/TlbConstructor;
.source "CryptoSignatureSimple.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/ton/tlb/TlbConstructor<",
        "Lorg/ton/block/CryptoSignatureSimple;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCryptoSignatureSimple.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CryptoSignatureSimple.kt\norg/ton/block/CryptoSignatureSimpleTlbConstructor\n+ 2 CellBuilder.kt\norg/ton/cell/CellBuilderKt\n+ 3 CellSlice.kt\norg/ton/cell/CellSliceKt\n*L\n1#1,40:1\n131#2,2:41\n86#3:43\n*S KotlinDebug\n*F\n+ 1 CryptoSignatureSimple.kt\norg/ton/block/CryptoSignatureSimpleTlbConstructor\n*L\n27#1:41,2\n34#1:43\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lorg/ton/block/CryptoSignatureSimpleTlbConstructor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/ton/block/CryptoSignatureSimpleTlbConstructor;

    invoke-direct {v0}, Lorg/ton/block/CryptoSignatureSimpleTlbConstructor;-><init>()V

    sput-object v0, Lorg/ton/block/CryptoSignatureSimpleTlbConstructor;->INSTANCE:Lorg/ton/block/CryptoSignatureSimpleTlbConstructor;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const-string v0, "ed25519_signature#5 R:bits256 s:bits256 = CryptoSignatureSimple;"

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 21
    invoke-direct {p0, v0, v1, v2, v1}, Lorg/ton/tlb/TlbConstructor;-><init>(Ljava/lang/String;Lorg/ton/bitstring/BitString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;
    .locals 0

    .line 21
    invoke-virtual {p0, p1}, Lorg/ton/block/CryptoSignatureSimpleTlbConstructor;->loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/CryptoSignatureSimple;

    move-result-object p1

    return-object p1
.end method

.method public loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/CryptoSignatureSimple;
    .locals 2

    const-string v0, "cellSlice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x100

    .line 35
    invoke-interface {p1, v0}, Lorg/ton/cell/CellSlice;->loadBits(I)Lorg/ton/bitstring/BitString;

    move-result-object v1

    .line 36
    invoke-interface {p1, v0}, Lorg/ton/cell/CellSlice;->loadBits(I)Lorg/ton/bitstring/BitString;

    move-result-object p1

    .line 37
    new-instance v0, Lorg/ton/block/CryptoSignatureSimple;

    invoke-direct {v0, v1, p1}, Lorg/ton/block/CryptoSignatureSimple;-><init>(Lorg/ton/bitstring/BitString;Lorg/ton/bitstring/BitString;)V

    return-object v0
.end method

.method public bridge synthetic storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V
    .locals 0

    .line 21
    check-cast p2, Lorg/ton/block/CryptoSignatureSimple;

    invoke-virtual {p0, p1, p2}, Lorg/ton/block/CryptoSignatureSimpleTlbConstructor;->storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/CryptoSignatureSimple;)V

    return-void
.end method

.method public storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/CryptoSignatureSimple;)V
    .locals 1

    const-string v0, "cellBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-virtual {p2}, Lorg/ton/block/CryptoSignatureSimple;->getR()Lorg/ton/bitstring/BitString;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/ton/cell/CellBuilder;->storeBits(Lorg/ton/bitstring/BitString;)Lorg/ton/cell/CellBuilder;

    .line 29
    invoke-virtual {p2}, Lorg/ton/block/CryptoSignatureSimple;->getS()Lorg/ton/bitstring/BitString;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/ton/cell/CellBuilder;->storeBits(Lorg/ton/bitstring/BitString;)Lorg/ton/cell/CellBuilder;

    return-void
.end method
