.class public final Lorg/ton/api/adnl/AdnlAddressTunnel$Companion;
.super Lorg/ton/tl/TlConstructor;
.source "AdnlAddress.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ton/api/adnl/AdnlAddressTunnel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/ton/tl/TlConstructor<",
        "Lorg/ton/api/adnl/AdnlAddressTunnel;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAdnlAddress.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AdnlAddress.kt\norg/ton/api/adnl/AdnlAddressTunnel$Companion\n+ 2 TlWriter.kt\norg/ton/tl/TlWriterKt\n+ 3 TlReader.kt\norg/ton/tl/TlReaderKt\n*L\n1#1,110:1\n81#2,2:111\n65#3:113\n*S KotlinDebug\n*F\n+ 1 AdnlAddress.kt\norg/ton/api/adnl/AdnlAddressTunnel$Companion\n*L\n100#1:111,2\n105#1:113\n*E\n"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 3

    const-string v0, "adnl.address.tunnel to:int256 pubkey:PublicKey = adnl.Address"

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 95
    invoke-direct {p0, v0, v1, v2, v1}, Lorg/ton/tl/TlConstructor;-><init>(Ljava/lang/String;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lorg/ton/api/adnl/AdnlAddressTunnel$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic decode(Lorg/ton/tl/TlReader;)Ljava/lang/Object;
    .locals 0

    .line 95
    invoke-virtual {p0, p1}, Lorg/ton/api/adnl/AdnlAddressTunnel$Companion;->decode(Lorg/ton/tl/TlReader;)Lorg/ton/api/adnl/AdnlAddressTunnel;

    move-result-object p1

    return-object p1
.end method

.method public decode(Lorg/ton/tl/TlReader;)Lorg/ton/api/adnl/AdnlAddressTunnel;
    .locals 2

    const-string v0, "reader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x20

    .line 104
    invoke-virtual {p1, v0}, Lorg/ton/tl/TlReader;->readRaw(I)[B

    move-result-object v0

    .line 105
    sget-object v1, Lorg/ton/api/pub/PublicKey;->Companion:Lorg/ton/api/pub/PublicKey$Companion;

    .line 65
    invoke-interface {v1, p1}, Lorg/ton/tl/TlDecoder;->decode(Lorg/ton/tl/TlReader;)Ljava/lang/Object;

    move-result-object p1

    .line 105
    check-cast p1, Lorg/ton/api/pub/PublicKey;

    .line 106
    new-instance v1, Lorg/ton/api/adnl/AdnlAddressTunnel;

    invoke-direct {v1, v0, p1}, Lorg/ton/api/adnl/AdnlAddressTunnel;-><init>([BLorg/ton/api/pub/PublicKey;)V

    return-object v1
.end method

.method public bridge synthetic encode(Lorg/ton/tl/TlWriter;Ljava/lang/Object;)V
    .locals 0

    .line 95
    check-cast p2, Lorg/ton/api/adnl/AdnlAddressTunnel;

    invoke-virtual {p0, p1, p2}, Lorg/ton/api/adnl/AdnlAddressTunnel$Companion;->encode(Lorg/ton/tl/TlWriter;Lorg/ton/api/adnl/AdnlAddressTunnel;)V

    return-void
.end method

.method public encode(Lorg/ton/tl/TlWriter;Lorg/ton/api/adnl/AdnlAddressTunnel;)V
    .locals 1

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    invoke-virtual {p2}, Lorg/ton/api/adnl/AdnlAddressTunnel;->getTo()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/ton/tl/TlWriter;->writeRaw([B)V

    .line 100
    sget-object v0, Lorg/ton/api/pub/PublicKey;->Companion:Lorg/ton/api/pub/PublicKey$Companion;

    invoke-virtual {p2}, Lorg/ton/api/adnl/AdnlAddressTunnel;->getPubkey()Lorg/ton/api/pub/PublicKey;

    move-result-object p2

    .line 81
    invoke-interface {v0, p1, p2}, Lorg/ton/tl/TlEncoder;->encode(Lorg/ton/tl/TlWriter;Ljava/lang/Object;)V

    return-void
.end method

.method public final serializer()Lkotlinx/serialization/KSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/serialization/KSerializer<",
            "Lorg/ton/api/adnl/AdnlAddressTunnel;",
            ">;"
        }
    .end annotation

    .line 95
    sget-object v0, Lorg/ton/api/adnl/AdnlAddressTunnel$$serializer;->INSTANCE:Lorg/ton/api/adnl/AdnlAddressTunnel$$serializer;

    return-object v0
.end method
