.class public final Lorg/ton/api/liteclient/config/LiteClientConfigGlobal;
.super Ljava/lang/Object;
.source "LiteClientConfigGlobal.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ton/api/liteclient/config/LiteClientConfigGlobal$$serializer;,
        Lorg/ton/api/liteclient/config/LiteClientConfigGlobal$Companion;
    }
.end annotation

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field private static final $childSerializers:[Lkotlinx/serialization/KSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlinx/serialization/KSerializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lorg/ton/api/liteclient/config/LiteClientConfigGlobal$Companion;


# instance fields
.field private final dht:Lorg/ton/api/dht/config/DhtConfigGlobal;

.field private final liteServers:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lorg/ton/api/liteserver/LiteServerDesc;",
            ">;"
        }
    .end annotation
.end field

.field private final validator:Lorg/ton/api/validator/config/ValidatorConfigGlobal;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lorg/ton/api/liteclient/config/LiteClientConfigGlobal$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/ton/api/liteclient/config/LiteClientConfigGlobal$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/ton/api/liteclient/config/LiteClientConfigGlobal;->Companion:Lorg/ton/api/liteclient/config/LiteClientConfigGlobal$Companion;

    const/4 v0, 0x3

    new-array v0, v0, [Lkotlinx/serialization/KSerializer;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 9
    new-instance v2, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v3, Lorg/ton/api/liteserver/LiteServerDesc$$serializer;->INSTANCE:Lorg/ton/api/liteserver/LiteServerDesc$$serializer;

    invoke-direct {v2, v3}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    const/4 v3, 0x1

    aput-object v2, v0, v3

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lorg/ton/api/liteclient/config/LiteClientConfigGlobal;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-void
.end method

.method public synthetic constructor <init>(ILorg/ton/api/dht/config/DhtConfigGlobal;Ljava/util/Collection;Lorg/ton/api/validator/config/ValidatorConfigGlobal;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 6

    and-int/lit8 p5, p1, 0x2

    const/4 v0, 0x2

    if-eq v0, p5, :cond_0

    .line 9
    sget-object p5, Lorg/ton/api/liteclient/config/LiteClientConfigGlobal$$serializer;->INSTANCE:Lorg/ton/api/liteclient/config/LiteClientConfigGlobal$$serializer;

    invoke-virtual {p5}, Lorg/ton/api/liteclient/config/LiteClientConfigGlobal$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p5

    invoke-static {p1, v0, p5}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 p5, p1, 0x1

    if-nez p5, :cond_1

    .line 12
    new-instance p2, Lorg/ton/api/dht/config/DhtConfigGlobal;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    move-object v0, p2

    invoke-direct/range {v0 .. v5}, Lorg/ton/api/dht/config/DhtConfigGlobal;-><init>(Lorg/ton/api/dht/DhtNodes;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 9
    :cond_1
    iput-object p2, p0, Lorg/ton/api/liteclient/config/LiteClientConfigGlobal;->dht:Lorg/ton/api/dht/config/DhtConfigGlobal;

    iput-object p3, p0, Lorg/ton/api/liteclient/config/LiteClientConfigGlobal;->liteServers:Ljava/util/Collection;

    and-int/lit8 p1, p1, 0x4

    if-nez p1, :cond_2

    .line 15
    new-instance p1, Lorg/ton/api/validator/config/ValidatorConfigGlobal;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lorg/ton/api/validator/config/ValidatorConfigGlobal;-><init>(Lorg/ton/api/tonnode/TonNodeBlockIdExt;Lorg/ton/api/tonnode/TonNodeBlockIdExt;Ljava/util/Collection;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 9
    iput-object p1, p0, Lorg/ton/api/liteclient/config/LiteClientConfigGlobal;->validator:Lorg/ton/api/validator/config/ValidatorConfigGlobal;

    goto :goto_0

    :cond_2
    iput-object p4, p0, Lorg/ton/api/liteclient/config/LiteClientConfigGlobal;->validator:Lorg/ton/api/validator/config/ValidatorConfigGlobal;

    :goto_0
    return-void
.end method

.method public static final synthetic access$get$childSerializers$cp()[Lkotlinx/serialization/KSerializer;
    .locals 1

    .line 9
    sget-object v0, Lorg/ton/api/liteclient/config/LiteClientConfigGlobal;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-object v0
.end method

.method public static final synthetic write$Self(Lorg/ton/api/liteclient/config/LiteClientConfigGlobal;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 11

    .line 9
    sget-object v0, Lorg/ton/api/liteclient/config/LiteClientConfigGlobal;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    const/4 v1, 0x0

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    :goto_0
    move v2, v3

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lorg/ton/api/liteclient/config/LiteClientConfigGlobal;->dht:Lorg/ton/api/dht/config/DhtConfigGlobal;

    .line 12
    new-instance v10, Lorg/ton/api/dht/config/DhtConfigGlobal;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x7

    const/4 v9, 0x0

    move-object v4, v10

    invoke-direct/range {v4 .. v9}, Lorg/ton/api/dht/config/DhtConfigGlobal;-><init>(Lorg/ton/api/dht/DhtNodes;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v2, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_1
    if-eqz v2, :cond_2

    .line 9
    sget-object v2, Lorg/ton/api/dht/config/DhtConfigGlobal$$serializer;->INSTANCE:Lorg/ton/api/dht/config/DhtConfigGlobal$$serializer;

    iget-object v4, p0, Lorg/ton/api/liteclient/config/LiteClientConfigGlobal;->dht:Lorg/ton/api/dht/config/DhtConfigGlobal;

    invoke-interface {p1, p2, v1, v2, v4}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_2
    aget-object v0, v0, v3

    iget-object v2, p0, Lorg/ton/api/liteclient/config/LiteClientConfigGlobal;->liteServers:Ljava/util/Collection;

    invoke-interface {p1, p2, v3, v0, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    const/4 v0, 0x2

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    if-eqz v2, :cond_3

    :goto_2
    move v1, v3

    goto :goto_3

    :cond_3
    iget-object v2, p0, Lorg/ton/api/liteclient/config/LiteClientConfigGlobal;->validator:Lorg/ton/api/validator/config/ValidatorConfigGlobal;

    .line 15
    new-instance v10, Lorg/ton/api/validator/config/ValidatorConfigGlobal;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x7

    const/4 v9, 0x0

    move-object v4, v10

    invoke-direct/range {v4 .. v9}, Lorg/ton/api/validator/config/ValidatorConfigGlobal;-><init>(Lorg/ton/api/tonnode/TonNodeBlockIdExt;Lorg/ton/api/tonnode/TonNodeBlockIdExt;Ljava/util/Collection;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v2, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_2

    :cond_4
    :goto_3
    if-eqz v1, :cond_5

    .line 9
    sget-object v1, Lorg/ton/api/validator/config/ValidatorConfigGlobal$$serializer;->INSTANCE:Lorg/ton/api/validator/config/ValidatorConfigGlobal$$serializer;

    iget-object p0, p0, Lorg/ton/api/liteclient/config/LiteClientConfigGlobal;->validator:Lorg/ton/api/validator/config/ValidatorConfigGlobal;

    invoke-interface {p1, p2, v0, v1, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_5
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/ton/api/liteclient/config/LiteClientConfigGlobal;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/ton/api/liteclient/config/LiteClientConfigGlobal;

    iget-object v1, p0, Lorg/ton/api/liteclient/config/LiteClientConfigGlobal;->dht:Lorg/ton/api/dht/config/DhtConfigGlobal;

    iget-object v3, p1, Lorg/ton/api/liteclient/config/LiteClientConfigGlobal;->dht:Lorg/ton/api/dht/config/DhtConfigGlobal;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lorg/ton/api/liteclient/config/LiteClientConfigGlobal;->liteServers:Ljava/util/Collection;

    iget-object v3, p1, Lorg/ton/api/liteclient/config/LiteClientConfigGlobal;->liteServers:Ljava/util/Collection;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lorg/ton/api/liteclient/config/LiteClientConfigGlobal;->validator:Lorg/ton/api/validator/config/ValidatorConfigGlobal;

    iget-object p1, p1, Lorg/ton/api/liteclient/config/LiteClientConfigGlobal;->validator:Lorg/ton/api/validator/config/ValidatorConfigGlobal;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getLiteServers()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/ton/api/liteserver/LiteServerDesc;",
            ">;"
        }
    .end annotation

    .line 14
    iget-object v0, p0, Lorg/ton/api/liteclient/config/LiteClientConfigGlobal;->liteServers:Ljava/util/Collection;

    return-object v0
.end method

.method public final getValidator()Lorg/ton/api/validator/config/ValidatorConfigGlobal;
    .locals 1

    .line 15
    iget-object v0, p0, Lorg/ton/api/liteclient/config/LiteClientConfigGlobal;->validator:Lorg/ton/api/validator/config/ValidatorConfigGlobal;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lorg/ton/api/liteclient/config/LiteClientConfigGlobal;->dht:Lorg/ton/api/dht/config/DhtConfigGlobal;

    invoke-virtual {v0}, Lorg/ton/api/dht/config/DhtConfigGlobal;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/ton/api/liteclient/config/LiteClientConfigGlobal;->liteServers:Ljava/util/Collection;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/ton/api/liteclient/config/LiteClientConfigGlobal;->validator:Lorg/ton/api/validator/config/ValidatorConfigGlobal;

    invoke-virtual {v1}, Lorg/ton/api/validator/config/ValidatorConfigGlobal;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LiteClientConfigGlobal(dht="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/ton/api/liteclient/config/LiteClientConfigGlobal;->dht:Lorg/ton/api/dht/config/DhtConfigGlobal;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", liteServers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/ton/api/liteclient/config/LiteClientConfigGlobal;->liteServers:Ljava/util/Collection;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", validator="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/ton/api/liteclient/config/LiteClientConfigGlobal;->validator:Lorg/ton/api/validator/config/ValidatorConfigGlobal;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
