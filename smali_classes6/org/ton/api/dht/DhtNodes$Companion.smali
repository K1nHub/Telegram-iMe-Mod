.class public final Lorg/ton/api/dht/DhtNodes$Companion;
.super Lorg/ton/tl/TlConstructor;
.source "DhtNodes.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ton/api/dht/DhtNodes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/ton/tl/TlConstructor<",
        "Lorg/ton/api/dht/DhtNodes;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDhtNodes.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DhtNodes.kt\norg/ton/api/dht/DhtNodes$Companion\n+ 2 TlWriter.kt\norg/ton/tl/TlWriter\n+ 3 TlWriter.kt\norg/ton/tl/TlWriterKt\n*L\n1#1,34:1\n69#2,3:35\n73#2:40\n81#3,2:38\n*S KotlinDebug\n*F\n+ 1 DhtNodes.kt\norg/ton/api/dht/DhtNodes$Companion\n*L\n21#1:35,3\n21#1:40\n22#1:38,2\n*E\n"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 3

    const-string v0, "dht.nodes nodes:(vector dht.node) = dht.Nodes"

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 17
    invoke-direct {p0, v0, v1, v2, v1}, Lorg/ton/tl/TlConstructor;-><init>(Ljava/lang/String;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lorg/ton/api/dht/DhtNodes$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic decode(Lorg/ton/tl/TlReader;)Ljava/lang/Object;
    .locals 0

    .line 17
    invoke-virtual {p0, p1}, Lorg/ton/api/dht/DhtNodes$Companion;->decode(Lorg/ton/tl/TlReader;)Lorg/ton/api/dht/DhtNodes;

    move-result-object p1

    return-object p1
.end method

.method public decode(Lorg/ton/tl/TlReader;)Lorg/ton/api/dht/DhtNodes;
    .locals 1

    const-string v0, "reader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    sget-object v0, Lorg/ton/api/dht/DhtNodes$Companion$decode$nodes$1;->INSTANCE:Lorg/ton/api/dht/DhtNodes$Companion$decode$nodes$1;

    invoke-virtual {p1, v0}, Lorg/ton/tl/TlReader;->readVector(Lkotlin/jvm/functions/Function1;)Ljava/util/List;

    move-result-object p1

    .line 30
    new-instance v0, Lorg/ton/api/dht/DhtNodes;

    invoke-direct {v0, p1}, Lorg/ton/api/dht/DhtNodes;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public bridge synthetic encode(Lorg/ton/tl/TlWriter;Ljava/lang/Object;)V
    .locals 0

    .line 17
    check-cast p2, Lorg/ton/api/dht/DhtNodes;

    invoke-virtual {p0, p1, p2}, Lorg/ton/api/dht/DhtNodes$Companion;->encode(Lorg/ton/tl/TlWriter;Lorg/ton/api/dht/DhtNodes;)V

    return-void
.end method

.method public encode(Lorg/ton/tl/TlWriter;Lorg/ton/api/dht/DhtNodes;)V
    .locals 2

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-virtual {p2}, Lorg/ton/api/dht/DhtNodes;->getNodes()Ljava/util/Collection;

    move-result-object p2

    .line 69
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/ton/tl/TlWriter;->writeInt(I)V

    .line 70
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 71
    check-cast v0, Lorg/ton/api/dht/DhtNode;

    .line 22
    sget-object v1, Lorg/ton/api/dht/DhtNode;->Companion:Lorg/ton/api/dht/DhtNode$Companion;

    .line 81
    invoke-interface {v1, p1, v0}, Lorg/ton/tl/TlEncoder;->encode(Lorg/ton/tl/TlWriter;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final serializer()Lkotlinx/serialization/KSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/serialization/KSerializer<",
            "Lorg/ton/api/dht/DhtNodes;",
            ">;"
        }
    .end annotation

    .line 17
    sget-object v0, Lorg/ton/api/dht/DhtNodes$$serializer;->INSTANCE:Lorg/ton/api/dht/DhtNodes$$serializer;

    return-object v0
.end method
