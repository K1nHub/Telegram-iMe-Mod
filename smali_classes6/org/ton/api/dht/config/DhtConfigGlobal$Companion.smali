.class public final Lorg/ton/api/dht/config/DhtConfigGlobal$Companion;
.super Lorg/ton/tl/TlConstructor;
.source "DhtConfigGlobal.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ton/api/dht/config/DhtConfigGlobal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/ton/tl/TlConstructor<",
        "Lorg/ton/api/dht/config/DhtConfigGlobal;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDhtConfigGlobal.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DhtConfigGlobal.kt\norg/ton/api/dht/config/DhtConfigGlobal$Companion\n+ 2 TlWriter.kt\norg/ton/tl/TlWriterKt\n+ 3 TlReader.kt\norg/ton/tl/TlReaderKt\n*L\n1#1,46:1\n81#2,2:47\n65#3:49\n*S KotlinDebug\n*F\n+ 1 DhtConfigGlobal.kt\norg/ton/api/dht/config/DhtConfigGlobal$Companion\n*L\n33#1:47,2\n39#1:49\n*E\n"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 3

    const-string v0, "dht.config.global static_nodes:dht.nodes k:int a:int = dht.config.Global"

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 29
    invoke-direct {p0, v0, v1, v2, v1}, Lorg/ton/tl/TlConstructor;-><init>(Ljava/lang/String;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lorg/ton/api/dht/config/DhtConfigGlobal$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic decode(Lorg/ton/tl/TlReader;)Ljava/lang/Object;
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lorg/ton/api/dht/config/DhtConfigGlobal$Companion;->decode(Lorg/ton/tl/TlReader;)Lorg/ton/api/dht/config/DhtConfigGlobal;

    move-result-object p1

    return-object p1
.end method

.method public decode(Lorg/ton/tl/TlReader;)Lorg/ton/api/dht/config/DhtConfigGlobal;
    .locals 3

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    sget-object v0, Lorg/ton/api/dht/DhtNodes;->Companion:Lorg/ton/api/dht/DhtNodes$Companion;

    .line 65
    invoke-interface {v0, p1}, Lorg/ton/tl/TlDecoder;->decode(Lorg/ton/tl/TlReader;)Ljava/lang/Object;

    move-result-object v0

    .line 39
    check-cast v0, Lorg/ton/api/dht/DhtNodes;

    .line 40
    invoke-virtual {p1}, Lorg/ton/tl/TlReader;->readInt()I

    move-result v1

    .line 41
    invoke-virtual {p1}, Lorg/ton/tl/TlReader;->readInt()I

    move-result p1

    .line 42
    new-instance v2, Lorg/ton/api/dht/config/DhtConfigGlobal;

    invoke-direct {v2, v0, v1, p1}, Lorg/ton/api/dht/config/DhtConfigGlobal;-><init>(Lorg/ton/api/dht/DhtNodes;II)V

    return-object v2
.end method

.method public bridge synthetic encode(Lorg/ton/tl/TlWriter;Ljava/lang/Object;)V
    .locals 0

    .line 29
    check-cast p2, Lorg/ton/api/dht/config/DhtConfigGlobal;

    invoke-virtual {p0, p1, p2}, Lorg/ton/api/dht/config/DhtConfigGlobal$Companion;->encode(Lorg/ton/tl/TlWriter;Lorg/ton/api/dht/config/DhtConfigGlobal;)V

    return-void
.end method

.method public encode(Lorg/ton/tl/TlWriter;Lorg/ton/api/dht/config/DhtConfigGlobal;)V
    .locals 2

    const-string v0, "output"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    sget-object v0, Lorg/ton/api/dht/DhtNodes;->Companion:Lorg/ton/api/dht/DhtNodes$Companion;

    invoke-virtual {p2}, Lorg/ton/api/dht/config/DhtConfigGlobal;->getStaticNodes()Lorg/ton/api/dht/DhtNodes;

    move-result-object v1

    .line 81
    invoke-interface {v0, p1, v1}, Lorg/ton/tl/TlEncoder;->encode(Lorg/ton/tl/TlWriter;Ljava/lang/Object;)V

    .line 34
    invoke-virtual {p2}, Lorg/ton/api/dht/config/DhtConfigGlobal;->getK()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/ton/tl/TlWriter;->writeInt(I)V

    .line 35
    invoke-virtual {p2}, Lorg/ton/api/dht/config/DhtConfigGlobal;->getA()I

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
            "Lorg/ton/api/dht/config/DhtConfigGlobal;",
            ">;"
        }
    .end annotation

    .line 29
    sget-object v0, Lorg/ton/api/dht/config/DhtConfigGlobal$$serializer;->INSTANCE:Lorg/ton/api/dht/config/DhtConfigGlobal$$serializer;

    return-object v0
.end method
