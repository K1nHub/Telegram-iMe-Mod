.class public final Lorg/ton/api/adnl/AdnlAddressUdp$Companion;
.super Lorg/ton/tl/TlConstructor;
.source "AdnlAddress.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ton/api/adnl/AdnlAddressUdp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/ton/tl/TlConstructor<",
        "Lorg/ton/api/adnl/AdnlAddressUdp;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 3

    const-string v0, "adnl.address.udp ip:int port:int = adnl.Address"

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 44
    invoke-direct {p0, v0, v1, v2, v1}, Lorg/ton/tl/TlConstructor;-><init>(Ljava/lang/String;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lorg/ton/api/adnl/AdnlAddressUdp$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic decode(Lorg/ton/tl/TlReader;)Ljava/lang/Object;
    .locals 0

    .line 44
    invoke-virtual {p0, p1}, Lorg/ton/api/adnl/AdnlAddressUdp$Companion;->decode(Lorg/ton/tl/TlReader;)Lorg/ton/api/adnl/AdnlAddressUdp;

    move-result-object p1

    return-object p1
.end method

.method public decode(Lorg/ton/tl/TlReader;)Lorg/ton/api/adnl/AdnlAddressUdp;
    .locals 2

    const-string v0, "reader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-virtual {p1}, Lorg/ton/tl/TlReader;->readInt()I

    move-result v0

    .line 54
    invoke-virtual {p1}, Lorg/ton/tl/TlReader;->readInt()I

    move-result p1

    .line 55
    new-instance v1, Lorg/ton/api/adnl/AdnlAddressUdp;

    invoke-direct {v1, v0, p1}, Lorg/ton/api/adnl/AdnlAddressUdp;-><init>(II)V

    return-object v1
.end method

.method public bridge synthetic encode(Lorg/ton/tl/TlWriter;Ljava/lang/Object;)V
    .locals 0

    .line 44
    check-cast p2, Lorg/ton/api/adnl/AdnlAddressUdp;

    invoke-virtual {p0, p1, p2}, Lorg/ton/api/adnl/AdnlAddressUdp$Companion;->encode(Lorg/ton/tl/TlWriter;Lorg/ton/api/adnl/AdnlAddressUdp;)V

    return-void
.end method

.method public encode(Lorg/ton/tl/TlWriter;Lorg/ton/api/adnl/AdnlAddressUdp;)V
    .locals 1

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-virtual {p2}, Lorg/ton/api/adnl/AdnlAddressUdp;->getIp()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/ton/tl/TlWriter;->writeInt(I)V

    .line 49
    invoke-virtual {p2}, Lorg/ton/api/adnl/AdnlAddressUdp;->getPort()I

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
            "Lorg/ton/api/adnl/AdnlAddressUdp;",
            ">;"
        }
    .end annotation

    .line 44
    sget-object v0, Lorg/ton/api/adnl/AdnlAddressUdp$$serializer;->INSTANCE:Lorg/ton/api/adnl/AdnlAddressUdp$$serializer;

    return-object v0
.end method
