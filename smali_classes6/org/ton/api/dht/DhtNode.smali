.class public final Lorg/ton/api/dht/DhtNode;
.super Ljava/lang/Object;
.source "DhtNode.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ton/api/dht/DhtNode$$serializer;,
        Lorg/ton/api/dht/DhtNode$Companion;
    }
.end annotation

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation

.annotation runtime Lkotlinx/serialization/json/JsonClassDiscriminator;
    discriminator = "@type"
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

.field public static final Companion:Lorg/ton/api/dht/DhtNode$Companion;


# instance fields
.field private final addrList:Lorg/ton/api/adnl/AdnlAddressList;

.field private final id:Lorg/ton/api/pub/PublicKey;

.field private final signature:[B

.field private final version:I


# direct methods
.method static constructor <clinit>()V
    .locals 14

    new-instance v0, Lorg/ton/api/dht/DhtNode$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/ton/api/dht/DhtNode$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/ton/api/dht/DhtNode;->Companion:Lorg/ton/api/dht/DhtNode$Companion;

    const/4 v0, 0x4

    new-array v2, v0, [Lkotlinx/serialization/KSerializer;

    .line 54
    new-instance v9, Lkotlinx/serialization/SealedClassSerializer;

    const-class v3, Lorg/ton/api/pub/PublicKey;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    new-array v6, v0, [Lkotlin/reflect/KClass;

    const-class v3, Lorg/ton/api/pub/PublicKeyAes;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    const/4 v10, 0x0

    aput-object v3, v6, v10

    const-class v3, Lorg/ton/api/pub/PublicKeyEd25519;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    const/4 v11, 0x1

    aput-object v3, v6, v11

    const-class v3, Lorg/ton/api/pub/PublicKeyOverlay;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    const/4 v12, 0x2

    aput-object v3, v6, v12

    const-class v3, Lorg/ton/api/pub/PublicKeyUnencrypted;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    const/4 v13, 0x3

    aput-object v3, v6, v13

    new-array v7, v0, [Lkotlinx/serialization/KSerializer;

    sget-object v0, Lorg/ton/api/pub/PublicKeyAes$$serializer;->INSTANCE:Lorg/ton/api/pub/PublicKeyAes$$serializer;

    aput-object v0, v7, v10

    sget-object v0, Lorg/ton/api/pub/PublicKeyEd25519$$serializer;->INSTANCE:Lorg/ton/api/pub/PublicKeyEd25519$$serializer;

    aput-object v0, v7, v11

    sget-object v0, Lorg/ton/api/pub/PublicKeyOverlay$$serializer;->INSTANCE:Lorg/ton/api/pub/PublicKeyOverlay$$serializer;

    aput-object v0, v7, v12

    sget-object v0, Lorg/ton/api/pub/PublicKeyUnencrypted$$serializer;->INSTANCE:Lorg/ton/api/pub/PublicKeyUnencrypted$$serializer;

    aput-object v0, v7, v13

    new-array v8, v11, [Ljava/lang/annotation/Annotation;

    .line 11
    new-instance v0, Lorg/ton/api/dht/DhtNode$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0;

    const-string v3, "@type"

    invoke-direct {v0, v3}, Lorg/ton/api/dht/DhtNode$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0;-><init>(Ljava/lang/String;)V

    aput-object v0, v8, v10

    const-string v4, "org.ton.api.pub.PublicKey"

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lkotlinx/serialization/SealedClassSerializer;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;[Lkotlin/reflect/KClass;[Lkotlinx/serialization/KSerializer;[Ljava/lang/annotation/Annotation;)V

    aput-object v9, v2, v10

    aput-object v1, v2, v11

    aput-object v1, v2, v12

    aput-object v1, v2, v13

    .line 54
    sput-object v2, Lorg/ton/api/dht/DhtNode;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-void
.end method

.method public synthetic constructor <init>(ILorg/ton/api/pub/PublicKey;Lorg/ton/api/adnl/AdnlAddressList;I[BLkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1
    .param p5    # [B
        .annotation runtime Lkotlinx/serialization/Serializable;
            with = Lorg/ton/crypto/Base64ByteArraySerializer;
        .end annotation
    .end param

    and-int/lit8 p6, p1, 0x3

    const/4 v0, 0x3

    if-eq v0, p6, :cond_0

    .line 15
    sget-object p6, Lorg/ton/api/dht/DhtNode$$serializer;->INSTANCE:Lorg/ton/api/dht/DhtNode$$serializer;

    invoke-virtual {p6}, Lorg/ton/api/dht/DhtNode$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p6

    invoke-static {p1, v0, p6}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/ton/api/dht/DhtNode;->id:Lorg/ton/api/pub/PublicKey;

    iput-object p3, p0, Lorg/ton/api/dht/DhtNode;->addrList:Lorg/ton/api/adnl/AdnlAddressList;

    and-int/lit8 p2, p1, 0x4

    const/4 p3, 0x0

    if-nez p2, :cond_1

    iput p3, p0, Lorg/ton/api/dht/DhtNode;->version:I

    goto :goto_0

    :cond_1
    iput p4, p0, Lorg/ton/api/dht/DhtNode;->version:I

    :goto_0
    and-int/lit8 p1, p1, 0x8

    if-nez p1, :cond_2

    new-array p1, p3, [B

    iput-object p1, p0, Lorg/ton/api/dht/DhtNode;->signature:[B

    goto :goto_1

    :cond_2
    iput-object p5, p0, Lorg/ton/api/dht/DhtNode;->signature:[B

    :goto_1
    return-void
.end method

.method public constructor <init>(Lorg/ton/api/pub/PublicKey;Lorg/ton/api/adnl/AdnlAddressList;I[B)V
    .locals 1

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "addrList"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "signature"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lorg/ton/api/dht/DhtNode;->id:Lorg/ton/api/pub/PublicKey;

    .line 19
    iput-object p2, p0, Lorg/ton/api/dht/DhtNode;->addrList:Lorg/ton/api/adnl/AdnlAddressList;

    .line 21
    iput p3, p0, Lorg/ton/api/dht/DhtNode;->version:I

    .line 22
    iput-object p4, p0, Lorg/ton/api/dht/DhtNode;->signature:[B

    return-void
.end method

.method public static final synthetic access$get$childSerializers$cp()[Lkotlinx/serialization/KSerializer;
    .locals 1

    .line 15
    sget-object v0, Lorg/ton/api/dht/DhtNode;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-object v0
.end method

.method public static final synthetic write$Self(Lorg/ton/api/dht/DhtNode;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 5

    .line 15
    sget-object v0, Lorg/ton/api/dht/DhtNode;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v2, p0, Lorg/ton/api/dht/DhtNode;->id:Lorg/ton/api/pub/PublicKey;

    invoke-interface {p1, p2, v1, v0, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    sget-object v0, Lorg/ton/api/adnl/AdnlAddressList$$serializer;->INSTANCE:Lorg/ton/api/adnl/AdnlAddressList$$serializer;

    iget-object v2, p0, Lorg/ton/api/dht/DhtNode;->addrList:Lorg/ton/api/adnl/AdnlAddressList;

    const/4 v3, 0x1

    invoke-interface {p1, p2, v3, v0, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    const/4 v0, 0x2

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    move v2, v3

    goto :goto_1

    :cond_0
    iget v2, p0, Lorg/ton/api/dht/DhtNode;->version:I

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_1
    if-eqz v2, :cond_2

    iget v2, p0, Lorg/ton/api/dht/DhtNode;->version:I

    invoke-interface {p1, p2, v0, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;II)V

    :cond_2
    const/4 v0, 0x3

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    if-eqz v2, :cond_3

    :goto_2
    move v1, v3

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Lorg/ton/api/dht/DhtNode;->getSignature()[B

    move-result-object v2

    new-array v4, v1, [B

    .line 23
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_2

    :cond_4
    :goto_3
    if-eqz v1, :cond_5

    .line 15
    sget-object v1, Lorg/ton/crypto/Base64ByteArraySerializer;->INSTANCE:Lorg/ton/crypto/Base64ByteArraySerializer;

    invoke-virtual {p0}, Lorg/ton/api/dht/DhtNode;->getSignature()[B

    move-result-object p0

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

    .line 38
    :cond_0
    instance-of v1, p1, Lorg/ton/api/dht/DhtNode;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 39
    :cond_1
    iget-object v1, p0, Lorg/ton/api/dht/DhtNode;->id:Lorg/ton/api/pub/PublicKey;

    check-cast p1, Lorg/ton/api/dht/DhtNode;

    iget-object v3, p1, Lorg/ton/api/dht/DhtNode;->id:Lorg/ton/api/pub/PublicKey;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 40
    :cond_2
    iget-object v1, p0, Lorg/ton/api/dht/DhtNode;->addrList:Lorg/ton/api/adnl/AdnlAddressList;

    iget-object v3, p1, Lorg/ton/api/dht/DhtNode;->addrList:Lorg/ton/api/adnl/AdnlAddressList;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 41
    :cond_3
    iget v1, p0, Lorg/ton/api/dht/DhtNode;->version:I

    iget v3, p1, Lorg/ton/api/dht/DhtNode;->version:I

    if-eq v1, v3, :cond_4

    return v2

    .line 42
    :cond_4
    invoke-virtual {p0}, Lorg/ton/api/dht/DhtNode;->getSignature()[B

    move-result-object v1

    invoke-virtual {p1}, Lorg/ton/api/dht/DhtNode;->getSignature()[B

    move-result-object p1

    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-nez p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getAddrList()Lorg/ton/api/adnl/AdnlAddressList;
    .locals 1

    .line 20
    iget-object v0, p0, Lorg/ton/api/dht/DhtNode;->addrList:Lorg/ton/api/adnl/AdnlAddressList;

    return-object v0
.end method

.method public final getId()Lorg/ton/api/pub/PublicKey;
    .locals 1

    .line 18
    iget-object v0, p0, Lorg/ton/api/dht/DhtNode;->id:Lorg/ton/api/pub/PublicKey;

    return-object v0
.end method

.method public getSignature()[B
    .locals 1

    .line 23
    iget-object v0, p0, Lorg/ton/api/dht/DhtNode;->signature:[B

    return-object v0
.end method

.method public final getVersion()I
    .locals 1

    .line 21
    iget v0, p0, Lorg/ton/api/dht/DhtNode;->version:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 47
    iget-object v0, p0, Lorg/ton/api/dht/DhtNode;->id:Lorg/ton/api/pub/PublicKey;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 48
    iget-object v1, p0, Lorg/ton/api/dht/DhtNode;->addrList:Lorg/ton/api/adnl/AdnlAddressList;

    invoke-virtual {v1}, Lorg/ton/api/adnl/AdnlAddressList;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 49
    iget v1, p0, Lorg/ton/api/dht/DhtNode;->version:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 50
    invoke-virtual {p0}, Lorg/ton/api/dht/DhtNode;->getSignature()[B

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DhtNode(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/ton/api/dht/DhtNode;->id:Lorg/ton/api/pub/PublicKey;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", addrList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/ton/api/dht/DhtNode;->addrList:Lorg/ton/api/adnl/AdnlAddressList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/ton/api/dht/DhtNode;->version:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", signature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/ton/api/dht/DhtNode;->signature:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
