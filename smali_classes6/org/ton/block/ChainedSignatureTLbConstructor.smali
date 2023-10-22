.class final Lorg/ton/block/ChainedSignatureTLbConstructor;
.super Lorg/ton/tlb/TlbConstructor;
.source "ChainedSignature.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/ton/tlb/TlbConstructor<",
        "Lorg/ton/block/ChainedSignature;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChainedSignature.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChainedSignature.kt\norg/ton/block/ChainedSignatureTLbConstructor\n+ 2 CellBuilder.kt\norg/ton/cell/CellBuilderKt\n+ 3 TlbCodec.kt\norg/ton/tlb/TlbCodecKt\n+ 4 CellSlice.kt\norg/ton/cell/CellSliceKt\n*L\n1#1,44:1\n131#2:45\n139#2,3:46\n142#2,3:52\n132#2:58\n59#3,3:49\n59#3,3:55\n52#3:61\n52#3:62\n86#4:59\n89#4:60\n*S KotlinDebug\n*F\n+ 1 ChainedSignature.kt\norg/ton/block/ChainedSignatureTLbConstructor\n*L\n27#1:45\n28#1:46,3\n28#1:52,3\n27#1:58\n29#1:49,3\n31#1:55,3\n38#1:61\n40#1:62\n36#1:59\n37#1:60\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lorg/ton/block/ChainedSignatureTLbConstructor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/ton/block/ChainedSignatureTLbConstructor;

    invoke-direct {v0}, Lorg/ton/block/ChainedSignatureTLbConstructor;-><init>()V

    sput-object v0, Lorg/ton/block/ChainedSignatureTLbConstructor;->INSTANCE:Lorg/ton/block/ChainedSignatureTLbConstructor;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const-string v0, "chained_signature#f signed_cert:^SignedCertificate temp_key_signature:CryptoSignatureSimple = CryptoSignature;"

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 20
    invoke-direct {p0, v0, v1, v2, v1}, Lorg/ton/tlb/TlbConstructor;-><init>(Ljava/lang/String;Lorg/ton/bitstring/BitString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;
    .locals 0

    .line 20
    invoke-virtual {p0, p1}, Lorg/ton/block/ChainedSignatureTLbConstructor;->loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/ChainedSignature;

    move-result-object p1

    return-object p1
.end method

.method public loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/ChainedSignature;
    .locals 2

    const-string v0, "cellSlice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    invoke-interface {p1}, Lorg/ton/cell/CellSlice;->loadRef()Lorg/ton/cell/Cell;

    move-result-object v0

    invoke-interface {v0}, Lorg/ton/cell/Cell;->beginParse()Lorg/ton/cell/CellSlice;

    move-result-object v0

    .line 38
    sget-object v1, Lorg/ton/block/SignedCertificate;->Companion:Lorg/ton/block/SignedCertificate$Companion;

    .line 52
    invoke-interface {v1, v0}, Lorg/ton/tlb/TlbLoader;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/ton/block/SignedCertificate;

    .line 40
    sget-object v1, Lorg/ton/block/CryptoSignatureSimple;->Companion:Lorg/ton/block/CryptoSignatureSimple$Companion;

    .line 52
    invoke-interface {v1, p1}, Lorg/ton/tlb/TlbLoader;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object p1

    .line 40
    check-cast p1, Lorg/ton/block/CryptoSignatureSimple;

    .line 41
    new-instance v1, Lorg/ton/block/ChainedSignature;

    invoke-direct {v1, v0, p1}, Lorg/ton/block/ChainedSignature;-><init>(Lorg/ton/block/SignedCertificate;Lorg/ton/block/CryptoSignatureSimple;)V

    return-object v1
.end method

.method public bridge synthetic storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V
    .locals 0

    .line 20
    check-cast p2, Lorg/ton/block/ChainedSignature;

    invoke-virtual {p0, p1, p2}, Lorg/ton/block/ChainedSignatureTLbConstructor;->storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/ChainedSignature;)V

    return-void
.end method

.method public storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/ChainedSignature;)V
    .locals 3

    const-string v0, "cellBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    sget-object v0, Lorg/ton/cell/CellBuilder;->Companion:Lorg/ton/cell/CellBuilder$Companion;

    invoke-virtual {v0}, Lorg/ton/cell/CellBuilder$Companion;->beginCell()Lorg/ton/cell/CellBuilder;

    move-result-object v0

    .line 29
    sget-object v1, Lorg/ton/block/SignedCertificate;->Companion:Lorg/ton/block/SignedCertificate$Companion;

    invoke-virtual {p2}, Lorg/ton/block/ChainedSignature;->getSigned_crt()Lorg/ton/block/SignedCertificate;

    move-result-object v2

    .line 60
    invoke-interface {v1, v0, v2}, Lorg/ton/tlb/TlbStorer;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    .line 142
    invoke-interface {v0}, Lorg/ton/cell/CellBuilder;->endCell()Lorg/ton/cell/Cell;

    move-result-object v0

    .line 143
    invoke-interface {p1, v0}, Lorg/ton/cell/CellBuilder;->storeRef(Lorg/ton/cell/Cell;)Lorg/ton/cell/CellBuilder;

    .line 31
    sget-object v0, Lorg/ton/block/CryptoSignatureSimple;->Companion:Lorg/ton/block/CryptoSignatureSimple$Companion;

    invoke-virtual {p2}, Lorg/ton/block/ChainedSignature;->getTemp_key_signature()Lorg/ton/block/CryptoSignatureSimple;

    move-result-object p2

    .line 60
    invoke-interface {v0, p1, p2}, Lorg/ton/tlb/TlbStorer;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    return-void
.end method
