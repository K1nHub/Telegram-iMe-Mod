.class public final Lorg/ton/api/dht/config/DhtConfigGlobal;
.super Ljava/lang/Object;
.source "DhtConfigGlobal.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ton/api/dht/config/DhtConfigGlobal$$serializer;,
        Lorg/ton/api/dht/config/DhtConfigGlobal$Companion;
    }
.end annotation

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation

.annotation runtime Lkotlinx/serialization/json/JsonClassDiscriminator;
    discriminator = "@type"
.end annotation


# static fields
.field public static final Companion:Lorg/ton/api/dht/config/DhtConfigGlobal$Companion;


# instance fields
.field private final a:I

.field private final k:I

.field private final staticNodes:Lorg/ton/api/dht/DhtNodes;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/ton/api/dht/config/DhtConfigGlobal$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/ton/api/dht/config/DhtConfigGlobal$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/ton/api/dht/config/DhtConfigGlobal;->Companion:Lorg/ton/api/dht/config/DhtConfigGlobal$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/ton/api/dht/config/DhtConfigGlobal;-><init>(Lorg/ton/api/dht/DhtNodes;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(ILorg/ton/api/dht/DhtNodes;IILkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 2

    and-int/lit8 p5, p1, 0x0

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    .line 12
    sget-object p5, Lorg/ton/api/dht/config/DhtConfigGlobal$$serializer;->INSTANCE:Lorg/ton/api/dht/config/DhtConfigGlobal$$serializer;

    invoke-virtual {p5}, Lorg/ton/api/dht/config/DhtConfigGlobal$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p5

    invoke-static {p1, v0, p5}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 p5, p1, 0x1

    if-nez p5, :cond_1

    .line 17
    new-instance p2, Lorg/ton/api/dht/DhtNodes;

    const/4 p5, 0x0

    const/4 v1, 0x1

    invoke-direct {p2, p5, v1, p5}, Lorg/ton/api/dht/DhtNodes;-><init>(Ljava/util/Collection;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 12
    :cond_1
    iput-object p2, p0, Lorg/ton/api/dht/config/DhtConfigGlobal;->staticNodes:Lorg/ton/api/dht/DhtNodes;

    and-int/lit8 p2, p1, 0x2

    if-nez p2, :cond_2

    iput v0, p0, Lorg/ton/api/dht/config/DhtConfigGlobal;->k:I

    goto :goto_0

    :cond_2
    iput p3, p0, Lorg/ton/api/dht/config/DhtConfigGlobal;->k:I

    :goto_0
    and-int/lit8 p1, p1, 0x4

    if-nez p1, :cond_3

    iput v0, p0, Lorg/ton/api/dht/config/DhtConfigGlobal;->a:I

    goto :goto_1

    :cond_3
    iput p4, p0, Lorg/ton/api/dht/config/DhtConfigGlobal;->a:I

    :goto_1
    return-void
.end method

.method public constructor <init>(Lorg/ton/api/dht/DhtNodes;II)V
    .locals 1

    const-string v0, "staticNodes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lorg/ton/api/dht/config/DhtConfigGlobal;->staticNodes:Lorg/ton/api/dht/DhtNodes;

    .line 18
    iput p2, p0, Lorg/ton/api/dht/config/DhtConfigGlobal;->k:I

    .line 19
    iput p3, p0, Lorg/ton/api/dht/config/DhtConfigGlobal;->a:I

    return-void
.end method

.method public synthetic constructor <init>(Lorg/ton/api/dht/DhtNodes;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    .line 17
    new-instance p1, Lorg/ton/api/dht/DhtNodes;

    const/4 p5, 0x0

    const/4 v0, 0x1

    invoke-direct {p1, p5, v0, p5}, Lorg/ton/api/dht/DhtNodes;-><init>(Ljava/util/Collection;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :cond_0
    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_1

    move p2, v0

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    move p3, v0

    .line 15
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lorg/ton/api/dht/config/DhtConfigGlobal;-><init>(Lorg/ton/api/dht/DhtNodes;II)V

    return-void
.end method

.method public static final synthetic write$Self(Lorg/ton/api/dht/config/DhtConfigGlobal;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 5

    const/4 v0, 0x0

    .line 12
    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    :goto_0
    move v1, v2

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lorg/ton/api/dht/config/DhtConfigGlobal;->staticNodes:Lorg/ton/api/dht/DhtNodes;

    .line 17
    new-instance v3, Lorg/ton/api/dht/DhtNodes;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v2, v4}, Lorg/ton/api/dht/DhtNodes;-><init>(Ljava/util/Collection;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_1
    if-eqz v1, :cond_2

    .line 12
    sget-object v1, Lorg/ton/api/dht/DhtNodes$$serializer;->INSTANCE:Lorg/ton/api/dht/DhtNodes$$serializer;

    iget-object v3, p0, Lorg/ton/api/dht/config/DhtConfigGlobal;->staticNodes:Lorg/ton/api/dht/DhtNodes;

    invoke-interface {p1, p2, v0, v1, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_2
    invoke-interface {p1, p2, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_3

    :goto_2
    move v1, v2

    goto :goto_3

    :cond_3
    iget v1, p0, Lorg/ton/api/dht/config/DhtConfigGlobal;->k:I

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    move v1, v0

    :goto_3
    if-eqz v1, :cond_5

    iget v1, p0, Lorg/ton/api/dht/config/DhtConfigGlobal;->k:I

    invoke-interface {p1, p2, v2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;II)V

    :cond_5
    const/4 v1, 0x2

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v3

    if-eqz v3, :cond_6

    :goto_4
    move v0, v2

    goto :goto_5

    :cond_6
    iget v3, p0, Lorg/ton/api/dht/config/DhtConfigGlobal;->a:I

    if-eqz v3, :cond_7

    goto :goto_4

    :cond_7
    :goto_5
    if-eqz v0, :cond_8

    iget p0, p0, Lorg/ton/api/dht/config/DhtConfigGlobal;->a:I

    invoke-interface {p1, p2, v1, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;II)V

    :cond_8
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/ton/api/dht/config/DhtConfigGlobal;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/ton/api/dht/config/DhtConfigGlobal;

    iget-object v1, p0, Lorg/ton/api/dht/config/DhtConfigGlobal;->staticNodes:Lorg/ton/api/dht/DhtNodes;

    iget-object v3, p1, Lorg/ton/api/dht/config/DhtConfigGlobal;->staticNodes:Lorg/ton/api/dht/DhtNodes;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lorg/ton/api/dht/config/DhtConfigGlobal;->k:I

    iget v3, p1, Lorg/ton/api/dht/config/DhtConfigGlobal;->k:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lorg/ton/api/dht/config/DhtConfigGlobal;->a:I

    iget p1, p1, Lorg/ton/api/dht/config/DhtConfigGlobal;->a:I

    if-eq v1, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getA()I
    .locals 1

    .line 19
    iget v0, p0, Lorg/ton/api/dht/config/DhtConfigGlobal;->a:I

    return v0
.end method

.method public final getK()I
    .locals 1

    .line 18
    iget v0, p0, Lorg/ton/api/dht/config/DhtConfigGlobal;->k:I

    return v0
.end method

.method public final getStaticNodes()Lorg/ton/api/dht/DhtNodes;
    .locals 1

    .line 17
    iget-object v0, p0, Lorg/ton/api/dht/config/DhtConfigGlobal;->staticNodes:Lorg/ton/api/dht/DhtNodes;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lorg/ton/api/dht/config/DhtConfigGlobal;->staticNodes:Lorg/ton/api/dht/DhtNodes;

    invoke-virtual {v0}, Lorg/ton/api/dht/DhtNodes;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/ton/api/dht/config/DhtConfigGlobal;->k:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/ton/api/dht/config/DhtConfigGlobal;->a:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DhtConfigGlobal(staticNodes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/ton/api/dht/config/DhtConfigGlobal;->staticNodes:Lorg/ton/api/dht/DhtNodes;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", k="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/ton/api/dht/config/DhtConfigGlobal;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", a="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/ton/api/dht/config/DhtConfigGlobal;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
