.class final Lorg/ton/api/dht/DhtNodeTlConstructor;
.super Lorg/ton/tl/TlConstructor;
.source "DhtNode.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/ton/tl/TlConstructor<",
        "Lorg/ton/api/dht/DhtNode;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDhtNode.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DhtNode.kt\norg/ton/api/dht/DhtNodeTlConstructor\n+ 2 TlWriter.kt\norg/ton/tl/TlWriterKt\n+ 3 TlReader.kt\norg/ton/tl/TlReaderKt\n*L\n1#1,75:1\n81#2,2:76\n81#2,2:78\n65#3:80\n65#3:81\n*S KotlinDebug\n*F\n+ 1 DhtNode.kt\norg/ton/api/dht/DhtNodeTlConstructor\n*L\n61#1:76,2\n62#1:78,2\n68#1:80\n69#1:81\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lorg/ton/api/dht/DhtNodeTlConstructor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/ton/api/dht/DhtNodeTlConstructor;

    invoke-direct {v0}, Lorg/ton/api/dht/DhtNodeTlConstructor;-><init>()V

    sput-object v0, Lorg/ton/api/dht/DhtNodeTlConstructor;->INSTANCE:Lorg/ton/api/dht/DhtNodeTlConstructor;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const-string v0, "dht.node id:PublicKey addr_list:adnl.addressList version:int signature:bytes = dht.Node"

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 57
    invoke-direct {p0, v0, v1, v2, v1}, Lorg/ton/tl/TlConstructor;-><init>(Ljava/lang/String;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic decode(Lorg/ton/tl/TlReader;)Ljava/lang/Object;
    .locals 0

    .line 57
    invoke-virtual {p0, p1}, Lorg/ton/api/dht/DhtNodeTlConstructor;->decode(Lorg/ton/tl/TlReader;)Lorg/ton/api/dht/DhtNode;

    move-result-object p1

    return-object p1
.end method

.method public decode(Lorg/ton/tl/TlReader;)Lorg/ton/api/dht/DhtNode;
    .locals 4

    const-string v0, "reader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    sget-object v0, Lorg/ton/api/pub/PublicKey;->Companion:Lorg/ton/api/pub/PublicKey$Companion;

    .line 65
    invoke-interface {v0, p1}, Lorg/ton/tl/TlDecoder;->decode(Lorg/ton/tl/TlReader;)Ljava/lang/Object;

    move-result-object v0

    .line 68
    check-cast v0, Lorg/ton/api/pub/PublicKey;

    .line 69
    sget-object v1, Lorg/ton/api/adnl/AdnlAddressList;->Companion:Lorg/ton/api/adnl/AdnlAddressList$Companion;

    .line 65
    invoke-interface {v1, p1}, Lorg/ton/tl/TlDecoder;->decode(Lorg/ton/tl/TlReader;)Ljava/lang/Object;

    move-result-object v1

    .line 69
    check-cast v1, Lorg/ton/api/adnl/AdnlAddressList;

    .line 70
    invoke-virtual {p1}, Lorg/ton/tl/TlReader;->readInt()I

    move-result v2

    .line 71
    invoke-virtual {p1}, Lorg/ton/tl/TlReader;->readBytes()[B

    move-result-object p1

    .line 72
    new-instance v3, Lorg/ton/api/dht/DhtNode;

    invoke-direct {v3, v0, v1, v2, p1}, Lorg/ton/api/dht/DhtNode;-><init>(Lorg/ton/api/pub/PublicKey;Lorg/ton/api/adnl/AdnlAddressList;I[B)V

    return-object v3
.end method

.method public bridge synthetic encode(Lorg/ton/tl/TlWriter;Ljava/lang/Object;)V
    .locals 0

    .line 57
    check-cast p2, Lorg/ton/api/dht/DhtNode;

    invoke-virtual {p0, p1, p2}, Lorg/ton/api/dht/DhtNodeTlConstructor;->encode(Lorg/ton/tl/TlWriter;Lorg/ton/api/dht/DhtNode;)V

    return-void
.end method

.method public encode(Lorg/ton/tl/TlWriter;Lorg/ton/api/dht/DhtNode;)V
    .locals 7

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    sget-object v0, Lorg/ton/api/pub/PublicKey;->Companion:Lorg/ton/api/pub/PublicKey$Companion;

    invoke-virtual {p2}, Lorg/ton/api/dht/DhtNode;->getId()Lorg/ton/api/pub/PublicKey;

    move-result-object v1

    .line 81
    invoke-interface {v0, p1, v1}, Lorg/ton/tl/TlEncoder;->encode(Lorg/ton/tl/TlWriter;Ljava/lang/Object;)V

    .line 62
    sget-object v0, Lorg/ton/api/adnl/AdnlAddressList;->Companion:Lorg/ton/api/adnl/AdnlAddressList$Companion;

    invoke-virtual {p2}, Lorg/ton/api/dht/DhtNode;->getAddrList()Lorg/ton/api/adnl/AdnlAddressList;

    move-result-object v1

    .line 81
    invoke-interface {v0, p1, v1}, Lorg/ton/tl/TlEncoder;->encode(Lorg/ton/tl/TlWriter;Ljava/lang/Object;)V

    .line 63
    invoke-virtual {p2}, Lorg/ton/api/dht/DhtNode;->getVersion()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/ton/tl/TlWriter;->writeInt(I)V

    .line 64
    invoke-virtual {p2}, Lorg/ton/api/dht/DhtNode;->getSignature()[B

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lorg/ton/tl/TlWriter;->writeBytes$default(Lorg/ton/tl/TlWriter;[BIIILjava/lang/Object;)V

    return-void
.end method
