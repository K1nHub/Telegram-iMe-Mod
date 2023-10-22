.class public final Lorg/ton/api/liteserver/LiteServerDesc;
.super Ljava/lang/Object;
.source "LiteServerDesc.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ton/api/liteserver/LiteServerDesc$$serializer;,
        Lorg/ton/api/liteserver/LiteServerDesc$Companion;
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

.field public static final Companion:Lorg/ton/api/liteserver/LiteServerDesc$Companion;


# instance fields
.field private final id:Lorg/ton/api/pub/PublicKey;

.field private final ip:I

.field private final port:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v0, Lorg/ton/api/liteserver/LiteServerDesc$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/ton/api/liteserver/LiteServerDesc$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/ton/api/liteserver/LiteServerDesc;->Companion:Lorg/ton/api/liteserver/LiteServerDesc$Companion;

    const/4 v0, 0x3

    new-array v2, v0, [Lkotlinx/serialization/KSerializer;

    .line 7
    new-instance v9, Lkotlinx/serialization/SealedClassSerializer;

    const-class v3, Lorg/ton/api/pub/PublicKey;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    const/4 v3, 0x4

    new-array v6, v3, [Lkotlin/reflect/KClass;

    const-class v4, Lorg/ton/api/pub/PublicKeyAes;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    const/4 v10, 0x0

    aput-object v4, v6, v10

    const-class v4, Lorg/ton/api/pub/PublicKeyEd25519;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    const/4 v11, 0x1

    aput-object v4, v6, v11

    const-class v4, Lorg/ton/api/pub/PublicKeyOverlay;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    const/4 v12, 0x2

    aput-object v4, v6, v12

    const-class v4, Lorg/ton/api/pub/PublicKeyUnencrypted;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    aput-object v4, v6, v0

    new-array v7, v3, [Lkotlinx/serialization/KSerializer;

    sget-object v3, Lorg/ton/api/pub/PublicKeyAes$$serializer;->INSTANCE:Lorg/ton/api/pub/PublicKeyAes$$serializer;

    aput-object v3, v7, v10

    sget-object v3, Lorg/ton/api/pub/PublicKeyEd25519$$serializer;->INSTANCE:Lorg/ton/api/pub/PublicKeyEd25519$$serializer;

    aput-object v3, v7, v11

    sget-object v3, Lorg/ton/api/pub/PublicKeyOverlay$$serializer;->INSTANCE:Lorg/ton/api/pub/PublicKeyOverlay$$serializer;

    aput-object v3, v7, v12

    sget-object v3, Lorg/ton/api/pub/PublicKeyUnencrypted$$serializer;->INSTANCE:Lorg/ton/api/pub/PublicKeyUnencrypted$$serializer;

    aput-object v3, v7, v0

    new-array v8, v11, [Ljava/lang/annotation/Annotation;

    .line 16
    new-instance v0, Lorg/ton/api/liteserver/LiteServerDesc$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0;

    const-string v3, "@type"

    invoke-direct {v0, v3}, Lorg/ton/api/liteserver/LiteServerDesc$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0;-><init>(Ljava/lang/String;)V

    aput-object v0, v8, v10

    const-string v4, "org.ton.api.pub.PublicKey"

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lkotlinx/serialization/SealedClassSerializer;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;[Lkotlin/reflect/KClass;[Lkotlinx/serialization/KSerializer;[Ljava/lang/annotation/Annotation;)V

    aput-object v9, v2, v10

    aput-object v1, v2, v11

    aput-object v1, v2, v12

    .line 7
    sput-object v2, Lorg/ton/api/liteserver/LiteServerDesc;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-void
.end method

.method public synthetic constructor <init>(ILorg/ton/api/pub/PublicKey;IILkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1

    and-int/lit8 p5, p1, 0x7

    const/4 v0, 0x7

    if-eq v0, p5, :cond_0

    .line 7
    sget-object p5, Lorg/ton/api/liteserver/LiteServerDesc$$serializer;->INSTANCE:Lorg/ton/api/liteserver/LiteServerDesc$$serializer;

    invoke-virtual {p5}, Lorg/ton/api/liteserver/LiteServerDesc$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p5

    invoke-static {p1, v0, p5}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/ton/api/liteserver/LiteServerDesc;->id:Lorg/ton/api/pub/PublicKey;

    iput p3, p0, Lorg/ton/api/liteserver/LiteServerDesc;->ip:I

    iput p4, p0, Lorg/ton/api/liteserver/LiteServerDesc;->port:I

    return-void
.end method

.method public static final synthetic access$get$childSerializers$cp()[Lkotlinx/serialization/KSerializer;
    .locals 1

    .line 7
    sget-object v0, Lorg/ton/api/liteserver/LiteServerDesc;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-object v0
.end method

.method public static final synthetic write$Self(Lorg/ton/api/liteserver/LiteServerDesc;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 3

    .line 7
    sget-object v0, Lorg/ton/api/liteserver/LiteServerDesc;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v2, p0, Lorg/ton/api/liteserver/LiteServerDesc;->id:Lorg/ton/api/pub/PublicKey;

    invoke-interface {p1, p2, v1, v0, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    iget v0, p0, Lorg/ton/api/liteserver/LiteServerDesc;->ip:I

    const/4 v1, 0x1

    invoke-interface {p1, p2, v1, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;II)V

    iget p0, p0, Lorg/ton/api/liteserver/LiteServerDesc;->port:I

    const/4 v0, 0x2

    invoke-interface {p1, p2, v0, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;II)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/ton/api/liteserver/LiteServerDesc;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/ton/api/liteserver/LiteServerDesc;

    iget-object v1, p0, Lorg/ton/api/liteserver/LiteServerDesc;->id:Lorg/ton/api/pub/PublicKey;

    iget-object v3, p1, Lorg/ton/api/liteserver/LiteServerDesc;->id:Lorg/ton/api/pub/PublicKey;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lorg/ton/api/liteserver/LiteServerDesc;->ip:I

    iget v3, p1, Lorg/ton/api/liteserver/LiteServerDesc;->ip:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lorg/ton/api/liteserver/LiteServerDesc;->port:I

    iget p1, p1, Lorg/ton/api/liteserver/LiteServerDesc;->port:I

    if-eq v1, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getId()Lorg/ton/api/pub/PublicKey;
    .locals 1

    .line 10
    iget-object v0, p0, Lorg/ton/api/liteserver/LiteServerDesc;->id:Lorg/ton/api/pub/PublicKey;

    return-object v0
.end method

.method public final getIp()I
    .locals 1

    .line 11
    iget v0, p0, Lorg/ton/api/liteserver/LiteServerDesc;->ip:I

    return v0
.end method

.method public final getPort()I
    .locals 1

    .line 12
    iget v0, p0, Lorg/ton/api/liteserver/LiteServerDesc;->port:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lorg/ton/api/liteserver/LiteServerDesc;->id:Lorg/ton/api/pub/PublicKey;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/ton/api/liteserver/LiteServerDesc;->ip:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/ton/api/liteserver/LiteServerDesc;->port:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lorg/ton/api/liteserver/LiteServerDesc;->ip:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/ton/api/liteserver/LiteServerDesc;->port:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/ton/api/liteserver/LiteServerDesc;->id:Lorg/ton/api/pub/PublicKey;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
