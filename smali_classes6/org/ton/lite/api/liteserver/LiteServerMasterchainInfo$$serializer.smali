.class public final Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfo$$serializer;
.super Ljava/lang/Object;
.source "LiteServerMasterchainInfo.kt"

# interfaces
.implements Lkotlinx/serialization/internal/GeneratedSerializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "$serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/serialization/internal/GeneratedSerializer<",
        "Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfo;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfo$$serializer;

.field private static final synthetic descriptor:Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfo$$serializer;

    invoke-direct {v0}, Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfo$$serializer;-><init>()V

    sput-object v0, Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfo$$serializer;->INSTANCE:Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfo$$serializer;

    .line 14
    new-instance v1, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    const-string v2, "liteServer.masterchainInfo"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;-><init>(Ljava/lang/String;Lkotlinx/serialization/internal/GeneratedSerializer;I)V

    const-string v0, "last"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "stateRootHash"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "init"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    sput-object v1, Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfo$$serializer;->descriptor:Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public childSerializers()[Lkotlinx/serialization/KSerializer;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lkotlinx/serialization/KSerializer<",
            "*>;"
        }
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [Lkotlinx/serialization/KSerializer;

    .line 14
    sget-object v1, Lorg/ton/api/tonnode/TonNodeBlockIdExt$$serializer;->INSTANCE:Lorg/ton/api/tonnode/TonNodeBlockIdExt$$serializer;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/ton/crypto/HexByteArraySerializer;->INSTANCE:Lorg/ton/crypto/HexByteArraySerializer;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lorg/ton/api/tonnode/TonNodeZeroStateIdExt$$serializer;->INSTANCE:Lorg/ton/api/tonnode/TonNodeZeroStateIdExt$$serializer;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method public bridge synthetic deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .locals 0

    .line 14
    invoke-virtual {p0, p1}, Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfo$$serializer;->deserialize(Lkotlinx/serialization/encoding/Decoder;)Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfo;

    move-result-object p1

    return-object p1
.end method

.method public deserialize(Lkotlinx/serialization/encoding/Decoder;)Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfo;
    .locals 12

    const-string v0, "decoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-virtual {p0}, Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfo$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlinx/serialization/encoding/Decoder;->beginStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/CompositeDecoder;

    move-result-object p1

    invoke-interface {p1}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSequentially()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v1, :cond_0

    sget-object v1, Lorg/ton/api/tonnode/TonNodeBlockIdExt$$serializer;->INSTANCE:Lorg/ton/api/tonnode/TonNodeBlockIdExt$$serializer;

    invoke-interface {p1, v0, v4, v1, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lorg/ton/crypto/HexByteArraySerializer;->INSTANCE:Lorg/ton/crypto/HexByteArraySerializer;

    invoke-interface {p1, v0, v5, v4, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Lorg/ton/api/tonnode/TonNodeZeroStateIdExt$$serializer;->INSTANCE:Lorg/ton/api/tonnode/TonNodeZeroStateIdExt$$serializer;

    invoke-interface {p1, v0, v3, v5, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x7

    move-object v11, v4

    move v4, v3

    move-object v3, v11

    goto :goto_1

    :cond_0
    move-object v1, v2

    move-object v6, v1

    move v7, v4

    move v8, v5

    :goto_0
    if-eqz v8, :cond_5

    invoke-interface {p1, v0}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeElementIndex(Lkotlinx/serialization/descriptors/SerialDescriptor;)I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_4

    if-eqz v9, :cond_3

    if-eq v9, v5, :cond_2

    if-ne v9, v3, :cond_1

    sget-object v9, Lorg/ton/api/tonnode/TonNodeZeroStateIdExt$$serializer;->INSTANCE:Lorg/ton/api/tonnode/TonNodeZeroStateIdExt$$serializer;

    invoke-interface {p1, v0, v3, v9, v6}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    or-int/lit8 v7, v7, 0x4

    goto :goto_0

    :cond_1
    new-instance p1, Lkotlinx/serialization/UnknownFieldException;

    invoke-direct {p1, v9}, Lkotlinx/serialization/UnknownFieldException;-><init>(I)V

    throw p1

    :cond_2
    sget-object v9, Lorg/ton/crypto/HexByteArraySerializer;->INSTANCE:Lorg/ton/crypto/HexByteArraySerializer;

    invoke-interface {p1, v0, v5, v9, v1}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    or-int/lit8 v7, v7, 0x2

    goto :goto_0

    :cond_3
    sget-object v9, Lorg/ton/api/tonnode/TonNodeBlockIdExt$$serializer;->INSTANCE:Lorg/ton/api/tonnode/TonNodeBlockIdExt$$serializer;

    invoke-interface {p1, v0, v4, v9, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    or-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_4
    move v8, v4

    goto :goto_0

    :cond_5
    move-object v3, v1

    move-object v1, v2

    move-object v2, v6

    move v4, v7

    :goto_1
    invoke-interface {p1, v0}, Lkotlinx/serialization/encoding/CompositeDecoder;->endStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    new-instance p1, Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfo;

    move-object v5, v1

    check-cast v5, Lorg/ton/api/tonnode/TonNodeBlockIdExt;

    move-object v6, v3

    check-cast v6, [B

    move-object v7, v2

    check-cast v7, Lorg/ton/api/tonnode/TonNodeZeroStateIdExt;

    const/4 v8, 0x0

    move-object v3, p1

    invoke-direct/range {v3 .. v8}, Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfo;-><init>(ILorg/ton/api/tonnode/TonNodeBlockIdExt;[BLorg/ton/api/tonnode/TonNodeZeroStateIdExt;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V

    return-object p1
.end method

.method public getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 1

    .line 14
    sget-object v0, Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfo$$serializer;->descriptor:Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    return-object v0
.end method

.method public bridge synthetic serialize(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V
    .locals 0

    .line 14
    check-cast p2, Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfo;

    invoke-virtual {p0, p1, p2}, Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfo$$serializer;->serialize(Lkotlinx/serialization/encoding/Encoder;Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfo;)V

    return-void
.end method

.method public serialize(Lkotlinx/serialization/encoding/Encoder;Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfo;)V
    .locals 1

    const-string v0, "encoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-virtual {p0}, Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfo$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlinx/serialization/encoding/Encoder;->beginStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/CompositeEncoder;

    move-result-object p1

    invoke-static {p2, p1, v0}, Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfo;->write$Self(Lorg/ton/lite/api/liteserver/LiteServerMasterchainInfo;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V

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

    .line 14
    invoke-static {p0}, Lkotlinx/serialization/internal/GeneratedSerializer$DefaultImpls;->typeParametersSerializers(Lkotlinx/serialization/internal/GeneratedSerializer;)[Lkotlinx/serialization/KSerializer;

    move-result-object v0

    return-object v0
.end method
