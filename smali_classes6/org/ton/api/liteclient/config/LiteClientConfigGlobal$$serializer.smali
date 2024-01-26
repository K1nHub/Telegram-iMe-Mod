.class public final Lorg/ton/api/liteclient/config/LiteClientConfigGlobal$$serializer;
.super Ljava/lang/Object;
.source "LiteClientConfigGlobal.kt"

# interfaces
.implements Lkotlinx/serialization/internal/GeneratedSerializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ton/api/liteclient/config/LiteClientConfigGlobal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "$serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/serialization/internal/GeneratedSerializer<",
        "Lorg/ton/api/liteclient/config/LiteClientConfigGlobal;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lorg/ton/api/liteclient/config/LiteClientConfigGlobal$$serializer;

.field private static final synthetic descriptor:Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lorg/ton/api/liteclient/config/LiteClientConfigGlobal$$serializer;

    invoke-direct {v0}, Lorg/ton/api/liteclient/config/LiteClientConfigGlobal$$serializer;-><init>()V

    sput-object v0, Lorg/ton/api/liteclient/config/LiteClientConfigGlobal$$serializer;->INSTANCE:Lorg/ton/api/liteclient/config/LiteClientConfigGlobal$$serializer;

    .line 9
    new-instance v1, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    const-string v2, "liteclient.config.global"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;-><init>(Ljava/lang/String;Lkotlinx/serialization/internal/GeneratedSerializer;I)V

    const-string v0, "dht"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "liteservers"

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "validator"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    sput-object v1, Lorg/ton/api/liteclient/config/LiteClientConfigGlobal$$serializer;->descriptor:Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public childSerializers()[Lkotlinx/serialization/KSerializer;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lkotlinx/serialization/KSerializer<",
            "*>;"
        }
    .end annotation

    .line 9
    invoke-static {}, Lorg/ton/api/liteclient/config/LiteClientConfigGlobal;->access$get$childSerializers$cp()[Lkotlinx/serialization/KSerializer;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Lkotlinx/serialization/KSerializer;

    sget-object v2, Lorg/ton/api/dht/config/DhtConfigGlobal$$serializer;->INSTANCE:Lorg/ton/api/dht/config/DhtConfigGlobal$$serializer;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aget-object v0, v0, v2

    aput-object v0, v1, v2

    sget-object v0, Lorg/ton/api/validator/config/ValidatorConfigGlobal$$serializer;->INSTANCE:Lorg/ton/api/validator/config/ValidatorConfigGlobal$$serializer;

    const/4 v2, 0x2

    aput-object v0, v1, v2

    return-object v1
.end method

.method public bridge synthetic deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .locals 0

    .line 9
    invoke-virtual {p0, p1}, Lorg/ton/api/liteclient/config/LiteClientConfigGlobal$$serializer;->deserialize(Lkotlinx/serialization/encoding/Decoder;)Lorg/ton/api/liteclient/config/LiteClientConfigGlobal;

    move-result-object p1

    return-object p1
.end method

.method public deserialize(Lkotlinx/serialization/encoding/Decoder;)Lorg/ton/api/liteclient/config/LiteClientConfigGlobal;
    .locals 12

    const-string v0, "decoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0}, Lorg/ton/api/liteclient/config/LiteClientConfigGlobal$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlinx/serialization/encoding/Decoder;->beginStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/CompositeDecoder;

    move-result-object p1

    invoke-static {}, Lorg/ton/api/liteclient/config/LiteClientConfigGlobal;->access$get$childSerializers$cp()[Lkotlinx/serialization/KSerializer;

    move-result-object v1

    invoke-interface {p1}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSequentially()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v2, :cond_0

    sget-object v2, Lorg/ton/api/dht/config/DhtConfigGlobal$$serializer;->INSTANCE:Lorg/ton/api/dht/config/DhtConfigGlobal$$serializer;

    invoke-interface {p1, v0, v5, v2, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    aget-object v1, v1, v6

    invoke-interface {p1, v0, v6, v1, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v5, Lorg/ton/api/validator/config/ValidatorConfigGlobal$$serializer;->INSTANCE:Lorg/ton/api/validator/config/ValidatorConfigGlobal$$serializer;

    invoke-interface {p1, v0, v4, v5, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x7

    move v5, v4

    goto :goto_1

    :cond_0
    move-object v2, v3

    move-object v7, v2

    move v8, v5

    move v9, v6

    :goto_0
    if-eqz v9, :cond_5

    invoke-interface {p1, v0}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeElementIndex(Lkotlinx/serialization/descriptors/SerialDescriptor;)I

    move-result v10

    const/4 v11, -0x1

    if-eq v10, v11, :cond_4

    if-eqz v10, :cond_3

    if-eq v10, v6, :cond_2

    if-ne v10, v4, :cond_1

    sget-object v10, Lorg/ton/api/validator/config/ValidatorConfigGlobal$$serializer;->INSTANCE:Lorg/ton/api/validator/config/ValidatorConfigGlobal$$serializer;

    invoke-interface {p1, v0, v4, v10, v7}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    or-int/lit8 v8, v8, 0x4

    goto :goto_0

    :cond_1
    new-instance p1, Lkotlinx/serialization/UnknownFieldException;

    invoke-direct {p1, v10}, Lkotlinx/serialization/UnknownFieldException;-><init>(I)V

    throw p1

    :cond_2
    aget-object v10, v1, v6

    invoke-interface {p1, v0, v6, v10, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    or-int/lit8 v8, v8, 0x2

    goto :goto_0

    :cond_3
    sget-object v10, Lorg/ton/api/dht/config/DhtConfigGlobal$$serializer;->INSTANCE:Lorg/ton/api/dht/config/DhtConfigGlobal$$serializer;

    invoke-interface {p1, v0, v5, v10, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    or-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_4
    move v9, v5

    goto :goto_0

    :cond_5
    move-object v1, v2

    move-object v2, v3

    move-object v3, v7

    move v5, v8

    :goto_1
    invoke-interface {p1, v0}, Lkotlinx/serialization/encoding/CompositeDecoder;->endStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    new-instance p1, Lorg/ton/api/liteclient/config/LiteClientConfigGlobal;

    move-object v6, v2

    check-cast v6, Lorg/ton/api/dht/config/DhtConfigGlobal;

    move-object v7, v1

    check-cast v7, Ljava/util/Collection;

    move-object v8, v3

    check-cast v8, Lorg/ton/api/validator/config/ValidatorConfigGlobal;

    const/4 v9, 0x0

    move-object v4, p1

    invoke-direct/range {v4 .. v9}, Lorg/ton/api/liteclient/config/LiteClientConfigGlobal;-><init>(ILorg/ton/api/dht/config/DhtConfigGlobal;Ljava/util/Collection;Lorg/ton/api/validator/config/ValidatorConfigGlobal;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V

    return-object p1
.end method

.method public getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 1

    .line 9
    sget-object v0, Lorg/ton/api/liteclient/config/LiteClientConfigGlobal$$serializer;->descriptor:Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    return-object v0
.end method

.method public bridge synthetic serialize(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V
    .locals 0

    .line 9
    check-cast p2, Lorg/ton/api/liteclient/config/LiteClientConfigGlobal;

    invoke-virtual {p0, p1, p2}, Lorg/ton/api/liteclient/config/LiteClientConfigGlobal$$serializer;->serialize(Lkotlinx/serialization/encoding/Encoder;Lorg/ton/api/liteclient/config/LiteClientConfigGlobal;)V

    return-void
.end method

.method public serialize(Lkotlinx/serialization/encoding/Encoder;Lorg/ton/api/liteclient/config/LiteClientConfigGlobal;)V
    .locals 1

    const-string v0, "encoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0}, Lorg/ton/api/liteclient/config/LiteClientConfigGlobal$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlinx/serialization/encoding/Encoder;->beginStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/CompositeEncoder;

    move-result-object p1

    invoke-static {p2, p1, v0}, Lorg/ton/api/liteclient/config/LiteClientConfigGlobal;->write$Self(Lorg/ton/api/liteclient/config/LiteClientConfigGlobal;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    invoke-interface {p1, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->endStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    return-void
.end method

.method public typeParametersSerializers()[Lkotlinx/serialization/KSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lkotlinx/serialization/KSerializer<",
            "*>;"
        }
    .end annotation

    .line 9
    invoke-static {p0}, Lkotlinx/serialization/internal/GeneratedSerializer$DefaultImpls;->typeParametersSerializers(Lkotlinx/serialization/internal/GeneratedSerializer;)[Lkotlinx/serialization/KSerializer;

    move-result-object v0

    return-object v0
.end method
