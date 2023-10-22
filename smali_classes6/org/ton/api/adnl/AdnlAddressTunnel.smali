.class public final Lorg/ton/api/adnl/AdnlAddressTunnel;
.super Ljava/lang/Object;
.source "AdnlAddress.kt"

# interfaces
.implements Lorg/ton/api/adnl/AdnlAddress;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ton/api/adnl/AdnlAddressTunnel$$serializer;,
        Lorg/ton/api/adnl/AdnlAddressTunnel$Companion;
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

.field public static final Companion:Lorg/ton/api/adnl/AdnlAddressTunnel$Companion;


# instance fields
.field private final pubkey:Lorg/ton/api/pub/PublicKey;

.field private final to:[B


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lorg/ton/api/adnl/AdnlAddressTunnel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/ton/api/adnl/AdnlAddressTunnel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/ton/api/adnl/AdnlAddressTunnel;->Companion:Lorg/ton/api/adnl/AdnlAddressTunnel$Companion;

    const/4 v0, 0x2

    new-array v2, v0, [Lkotlinx/serialization/KSerializer;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    .line 95
    new-instance v1, Lkotlinx/serialization/SealedClassSerializer;

    const-class v4, Lorg/ton/api/pub/PublicKey;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    const/4 v4, 0x4

    new-array v7, v4, [Lkotlin/reflect/KClass;

    const-class v5, Lorg/ton/api/pub/PublicKeyAes;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    aput-object v5, v7, v3

    const-class v5, Lorg/ton/api/pub/PublicKeyEd25519;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    const/4 v10, 0x1

    aput-object v5, v7, v10

    const-class v5, Lorg/ton/api/pub/PublicKeyOverlay;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    aput-object v5, v7, v0

    const-class v5, Lorg/ton/api/pub/PublicKeyUnencrypted;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    const/4 v8, 0x3

    aput-object v5, v7, v8

    new-array v9, v4, [Lkotlinx/serialization/KSerializer;

    sget-object v4, Lorg/ton/api/pub/PublicKeyAes$$serializer;->INSTANCE:Lorg/ton/api/pub/PublicKeyAes$$serializer;

    aput-object v4, v9, v3

    sget-object v4, Lorg/ton/api/pub/PublicKeyEd25519$$serializer;->INSTANCE:Lorg/ton/api/pub/PublicKeyEd25519$$serializer;

    aput-object v4, v9, v10

    sget-object v4, Lorg/ton/api/pub/PublicKeyOverlay$$serializer;->INSTANCE:Lorg/ton/api/pub/PublicKeyOverlay$$serializer;

    aput-object v4, v9, v0

    sget-object v0, Lorg/ton/api/pub/PublicKeyUnencrypted$$serializer;->INSTANCE:Lorg/ton/api/pub/PublicKeyUnencrypted$$serializer;

    aput-object v0, v9, v8

    new-array v0, v10, [Ljava/lang/annotation/Annotation;

    .line 12
    new-instance v4, Lorg/ton/api/adnl/AdnlAddress$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0;

    const-string v5, "@type"

    invoke-direct {v4, v5}, Lorg/ton/api/adnl/AdnlAddress$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0;-><init>(Ljava/lang/String;)V

    aput-object v4, v0, v3

    const-string v5, "org.ton.api.pub.PublicKey"

    move-object v4, v1

    move-object v8, v9

    move-object v9, v0

    invoke-direct/range {v4 .. v9}, Lkotlinx/serialization/SealedClassSerializer;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;[Lkotlin/reflect/KClass;[Lkotlinx/serialization/KSerializer;[Ljava/lang/annotation/Annotation;)V

    aput-object v1, v2, v10

    .line 95
    sput-object v2, Lorg/ton/api/adnl/AdnlAddressTunnel;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-void
.end method

.method public synthetic constructor <init>(I[BLorg/ton/api/pub/PublicKey;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1

    and-int/lit8 p4, p1, 0x3

    const/4 v0, 0x3

    if-eq v0, p4, :cond_0

    .line 86
    sget-object p4, Lorg/ton/api/adnl/AdnlAddressTunnel$$serializer;->INSTANCE:Lorg/ton/api/adnl/AdnlAddressTunnel$$serializer;

    invoke-virtual {p4}, Lorg/ton/api/adnl/AdnlAddressTunnel$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p4

    invoke-static {p1, v0, p4}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/ton/api/adnl/AdnlAddressTunnel;->to:[B

    iput-object p3, p0, Lorg/ton/api/adnl/AdnlAddressTunnel;->pubkey:Lorg/ton/api/pub/PublicKey;

    return-void
.end method

.method public constructor <init>([BLorg/ton/api/pub/PublicKey;)V
    .locals 1

    const-string v0, "to"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pubkey"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p1, p0, Lorg/ton/api/adnl/AdnlAddressTunnel;->to:[B

    .line 91
    iput-object p2, p0, Lorg/ton/api/adnl/AdnlAddressTunnel;->pubkey:Lorg/ton/api/pub/PublicKey;

    return-void
.end method

.method public static final synthetic access$get$childSerializers$cp()[Lkotlinx/serialization/KSerializer;
    .locals 1

    .line 86
    sget-object v0, Lorg/ton/api/adnl/AdnlAddressTunnel;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-object v0
.end method

.method public static final synthetic write$Self(Lorg/ton/api/adnl/AdnlAddressTunnel;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 4

    .line 86
    sget-object v0, Lorg/ton/api/adnl/AdnlAddressTunnel;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    sget-object v1, Lkotlinx/serialization/internal/ByteArraySerializer;->INSTANCE:Lkotlinx/serialization/internal/ByteArraySerializer;

    iget-object v2, p0, Lorg/ton/api/adnl/AdnlAddressTunnel;->to:[B

    const/4 v3, 0x0

    invoke-interface {p1, p2, v3, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iget-object p0, p0, Lorg/ton/api/adnl/AdnlAddressTunnel;->pubkey:Lorg/ton/api/pub/PublicKey;

    invoke-interface {p1, p2, v1, v0, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/ton/api/adnl/AdnlAddressTunnel;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/ton/api/adnl/AdnlAddressTunnel;

    iget-object v1, p0, Lorg/ton/api/adnl/AdnlAddressTunnel;->to:[B

    iget-object v3, p1, Lorg/ton/api/adnl/AdnlAddressTunnel;->to:[B

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lorg/ton/api/adnl/AdnlAddressTunnel;->pubkey:Lorg/ton/api/pub/PublicKey;

    iget-object p1, p1, Lorg/ton/api/adnl/AdnlAddressTunnel;->pubkey:Lorg/ton/api/pub/PublicKey;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getPubkey()Lorg/ton/api/pub/PublicKey;
    .locals 1

    .line 91
    iget-object v0, p0, Lorg/ton/api/adnl/AdnlAddressTunnel;->pubkey:Lorg/ton/api/pub/PublicKey;

    return-object v0
.end method

.method public final getTo()[B
    .locals 1

    .line 90
    iget-object v0, p0, Lorg/ton/api/adnl/AdnlAddressTunnel;->to:[B

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lorg/ton/api/adnl/AdnlAddressTunnel;->to:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/ton/api/adnl/AdnlAddressTunnel;->pubkey:Lorg/ton/api/pub/PublicKey;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AdnlAddressTunnel(to="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/ton/api/adnl/AdnlAddressTunnel;->to:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", pubkey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/ton/api/adnl/AdnlAddressTunnel;->pubkey:Lorg/ton/api/pub/PublicKey;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
