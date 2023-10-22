.class public final Lorg/ton/api/adnl/AdnlAddressUdp6$Companion;
.super Lorg/ton/tl/TlConstructor;
.source "AdnlAddress.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ton/api/adnl/AdnlAddressUdp6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/ton/tl/TlConstructor<",
        "Lorg/ton/api/adnl/AdnlAddressUdp6;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 3

    const-string v0, "adnl.address.udp6 ip:int128 port:int = adnl.Address"

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 70
    invoke-direct {p0, v0, v1, v2, v1}, Lorg/ton/tl/TlConstructor;-><init>(Ljava/lang/String;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lorg/ton/api/adnl/AdnlAddressUdp6$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic decode(Lorg/ton/tl/TlReader;)Ljava/lang/Object;
    .locals 0

    .line 70
    invoke-virtual {p0, p1}, Lorg/ton/api/adnl/AdnlAddressUdp6$Companion;->decode(Lorg/ton/tl/TlReader;)Lorg/ton/api/adnl/AdnlAddressUdp6;

    move-result-object p1

    return-object p1
.end method

.method public decode(Lorg/ton/tl/TlReader;)Lorg/ton/api/adnl/AdnlAddressUdp6;
    .locals 2

    const-string v0, "reader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x10

    .line 74
    invoke-virtual {p1, v0}, Lorg/ton/tl/TlReader;->readRaw(I)[B

    move-result-object v0

    .line 75
    invoke-virtual {p1}, Lorg/ton/tl/TlReader;->readInt()I

    move-result p1

    .line 76
    new-instance v1, Lorg/ton/api/adnl/AdnlAddressUdp6;

    invoke-direct {v1, v0, p1}, Lorg/ton/api/adnl/AdnlAddressUdp6;-><init>([BI)V

    return-object v1
.end method

.method public bridge synthetic encode(Lorg/ton/tl/TlWriter;Ljava/lang/Object;)V
    .locals 0

    .line 70
    check-cast p2, Lorg/ton/api/adnl/AdnlAddressUdp6;

    invoke-virtual {p0, p1, p2}, Lorg/ton/api/adnl/AdnlAddressUdp6$Companion;->encode(Lorg/ton/tl/TlWriter;Lorg/ton/api/adnl/AdnlAddressUdp6;)V

    return-void
.end method

.method public encode(Lorg/ton/tl/TlWriter;Lorg/ton/api/adnl/AdnlAddressUdp6;)V
    .locals 1

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    invoke-virtual {p2}, Lorg/ton/api/adnl/AdnlAddressUdp6;->getIp()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/ton/tl/TlWriter;->writeRaw([B)V

    .line 81
    invoke-virtual {p2}, Lorg/ton/api/adnl/AdnlAddressUdp6;->getPort()I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/ton/tl/TlWriter;->writeInt(I)V

    return-void
.end method

.method public final serializer()Lkotlinx/serialization/KSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/serialization/KSerializer<",
            "Lorg/ton/api/adnl/AdnlAddressUdp6;",
            ">;"
        }
    .end annotation

    .line 70
    sget-object v0, Lorg/ton/api/adnl/AdnlAddressUdp6$$serializer;->INSTANCE:Lorg/ton/api/adnl/AdnlAddressUdp6$$serializer;

    return-object v0
.end method
