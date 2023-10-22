.class final Lorg/ton/block/SignedCertificatedTlbConstructor;
.super Lorg/ton/tlb/TlbConstructor;
.source "SignedCertificate.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/ton/tlb/TlbConstructor<",
        "Lorg/ton/block/SignedCertificate;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSignedCertificate.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SignedCertificate.kt\norg/ton/block/SignedCertificatedTlbConstructor\n+ 2 CellBuilder.kt\norg/ton/cell/CellBuilderKt\n+ 3 TlbCodec.kt\norg/ton/tlb/TlbCodecKt\n+ 4 CellSlice.kt\norg/ton/cell/CellSliceKt\n*L\n1#1,43:1\n131#2:44\n132#2:51\n59#3,3:45\n59#3,3:48\n52#3:53\n52#3:54\n86#4:52\n*S KotlinDebug\n*F\n+ 1 SignedCertificate.kt\norg/ton/block/SignedCertificatedTlbConstructor\n*L\n30#1:44\n30#1:51\n31#1:45,3\n32#1:48,3\n38#1:53\n39#1:54\n37#1:52\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lorg/ton/block/SignedCertificatedTlbConstructor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/ton/block/SignedCertificatedTlbConstructor;

    invoke-direct {v0}, Lorg/ton/block/SignedCertificatedTlbConstructor;-><init>()V

    sput-object v0, Lorg/ton/block/SignedCertificatedTlbConstructor;->INSTANCE:Lorg/ton/block/SignedCertificatedTlbConstructor;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const-string v0, "signed_certificate$_ certificate:Certificate certificate_signature:CryptoSignature\n  = SignedCertificate;"

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 22
    invoke-direct {p0, v0, v1, v2, v1}, Lorg/ton/tlb/TlbConstructor;-><init>(Ljava/lang/String;Lorg/ton/bitstring/BitString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;
    .locals 0

    .line 22
    invoke-virtual {p0, p1}, Lorg/ton/block/SignedCertificatedTlbConstructor;->loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/SignedCertificate;

    move-result-object p1

    return-object p1
.end method

.method public loadTlb(Lorg/ton/cell/CellSlice;)Lorg/ton/block/SignedCertificate;
    .locals 2

    const-string v0, "cellSlice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    sget-object v0, Lorg/ton/block/Certificate;->Companion:Lorg/ton/block/Certificate$Companion;

    .line 52
    invoke-interface {v0, p1}, Lorg/ton/tlb/TlbLoader;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object v0

    .line 38
    check-cast v0, Lorg/ton/block/Certificate;

    .line 39
    sget-object v1, Lorg/ton/block/CryptoSignature;->Companion:Lorg/ton/block/CryptoSignature$Companion;

    .line 52
    invoke-interface {v1, p1}, Lorg/ton/tlb/TlbLoader;->loadTlb(Lorg/ton/cell/CellSlice;)Ljava/lang/Object;

    move-result-object p1

    .line 39
    check-cast p1, Lorg/ton/block/CryptoSignature;

    .line 40
    new-instance v1, Lorg/ton/block/SignedCertificate;

    invoke-direct {v1, v0, p1}, Lorg/ton/block/SignedCertificate;-><init>(Lorg/ton/block/Certificate;Lorg/ton/block/CryptoSignature;)V

    return-object v1
.end method

.method public bridge synthetic storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V
    .locals 0

    .line 22
    check-cast p2, Lorg/ton/block/SignedCertificate;

    invoke-virtual {p0, p1, p2}, Lorg/ton/block/SignedCertificatedTlbConstructor;->storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/SignedCertificate;)V

    return-void
.end method

.method public storeTlb(Lorg/ton/cell/CellBuilder;Lorg/ton/block/SignedCertificate;)V
    .locals 2

    const-string v0, "cellBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    sget-object v0, Lorg/ton/block/Certificate;->Companion:Lorg/ton/block/Certificate$Companion;

    invoke-virtual {p2}, Lorg/ton/block/SignedCertificate;->getCertificate()Lorg/ton/block/Certificate;

    move-result-object v1

    .line 60
    invoke-interface {v0, p1, v1}, Lorg/ton/tlb/TlbStorer;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    .line 32
    sget-object v0, Lorg/ton/block/CryptoSignature;->Companion:Lorg/ton/block/CryptoSignature$Companion;

    invoke-virtual {p2}, Lorg/ton/block/SignedCertificate;->getCertificate_signature()Lorg/ton/block/CryptoSignature;

    move-result-object p2

    .line 60
    invoke-interface {v0, p1, p2}, Lorg/ton/tlb/TlbStorer;->storeTlb(Lorg/ton/cell/CellBuilder;Ljava/lang/Object;)V

    return-void
.end method
