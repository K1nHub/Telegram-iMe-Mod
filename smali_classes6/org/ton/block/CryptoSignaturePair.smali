.class public final Lorg/ton/block/CryptoSignaturePair;
.super Ljava/lang/Object;
.source "CryptoSignaturePair.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ton/block/CryptoSignaturePair$$serializer;,
        Lorg/ton/block/CryptoSignaturePair$Companion;
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

.field public static final Companion:Lorg/ton/block/CryptoSignaturePair$Companion;


# instance fields
.field private final node_id_short:Lorg/ton/bitstring/BitString;

.field private final sign:Lorg/ton/block/CryptoSignature;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lorg/ton/block/CryptoSignaturePair$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/ton/block/CryptoSignaturePair$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/ton/block/CryptoSignaturePair;->Companion:Lorg/ton/block/CryptoSignaturePair$Companion;

    const/4 v0, 0x2

    new-array v2, v0, [Lkotlinx/serialization/KSerializer;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    .line 20
    new-instance v1, Lkotlinx/serialization/SealedClassSerializer;

    const-class v4, Lorg/ton/block/CryptoSignature;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    new-array v7, v0, [Lkotlin/reflect/KClass;

    const-class v4, Lorg/ton/block/ChainedSignature;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    aput-object v4, v7, v3

    const-class v4, Lorg/ton/block/CryptoSignatureSimple;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    const/4 v10, 0x1

    aput-object v4, v7, v10

    new-array v8, v0, [Lkotlinx/serialization/KSerializer;

    sget-object v0, Lorg/ton/block/ChainedSignature$$serializer;->INSTANCE:Lorg/ton/block/ChainedSignature$$serializer;

    aput-object v0, v8, v3

    sget-object v0, Lorg/ton/block/CryptoSignatureSimple$$serializer;->INSTANCE:Lorg/ton/block/CryptoSignatureSimple$$serializer;

    aput-object v0, v8, v10

    new-array v9, v10, [Ljava/lang/annotation/Annotation;

    .line 9
    new-instance v0, Lorg/ton/block/CryptoSignaturePair$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0;

    const-string v4, "@type"

    invoke-direct {v0, v4}, Lorg/ton/block/CryptoSignaturePair$Companion$annotationImpl$kotlinx_serialization_json_JsonClassDiscriminator$0;-><init>(Ljava/lang/String;)V

    aput-object v0, v9, v3

    const-string v5, "org.ton.block.CryptoSignature"

    move-object v4, v1

    invoke-direct/range {v4 .. v9}, Lkotlinx/serialization/SealedClassSerializer;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;[Lkotlin/reflect/KClass;[Lkotlinx/serialization/KSerializer;[Ljava/lang/annotation/Annotation;)V

    aput-object v1, v2, v10

    .line 20
    sput-object v2, Lorg/ton/block/CryptoSignaturePair;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-void
.end method

.method public synthetic constructor <init>(ILorg/ton/bitstring/BitString;Lorg/ton/block/CryptoSignature;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1

    and-int/lit8 p4, p1, 0x3

    const/4 v0, 0x3

    if-eq v0, p4, :cond_0

    .line 14
    sget-object p4, Lorg/ton/block/CryptoSignaturePair$$serializer;->INSTANCE:Lorg/ton/block/CryptoSignaturePair$$serializer;

    invoke-virtual {p4}, Lorg/ton/block/CryptoSignaturePair$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p4

    invoke-static {p1, v0, p4}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/ton/block/CryptoSignaturePair;->node_id_short:Lorg/ton/bitstring/BitString;

    iput-object p3, p0, Lorg/ton/block/CryptoSignaturePair;->sign:Lorg/ton/block/CryptoSignature;

    return-void
.end method

.method public constructor <init>(Lorg/ton/bitstring/BitString;Lorg/ton/block/CryptoSignature;)V
    .locals 1

    const-string v0, "node_id_short"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sign"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lorg/ton/block/CryptoSignaturePair;->node_id_short:Lorg/ton/bitstring/BitString;

    .line 18
    iput-object p2, p0, Lorg/ton/block/CryptoSignaturePair;->sign:Lorg/ton/block/CryptoSignature;

    return-void
.end method

.method public static final synthetic access$get$childSerializers$cp()[Lkotlinx/serialization/KSerializer;
    .locals 1

    .line 14
    sget-object v0, Lorg/ton/block/CryptoSignaturePair;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-object v0
.end method

.method public static final synthetic write$Self(Lorg/ton/block/CryptoSignaturePair;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 4

    .line 14
    sget-object v0, Lorg/ton/block/CryptoSignaturePair;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    sget-object v1, Lorg/ton/bitstring/FiftHexBitStringSerializer;->INSTANCE:Lorg/ton/bitstring/FiftHexBitStringSerializer;

    iget-object v2, p0, Lorg/ton/block/CryptoSignaturePair;->node_id_short:Lorg/ton/bitstring/BitString;

    const/4 v3, 0x0

    invoke-interface {p1, p2, v3, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iget-object p0, p0, Lorg/ton/block/CryptoSignaturePair;->sign:Lorg/ton/block/CryptoSignature;

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
    instance-of v1, p1, Lorg/ton/block/CryptoSignaturePair;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/ton/block/CryptoSignaturePair;

    iget-object v1, p0, Lorg/ton/block/CryptoSignaturePair;->node_id_short:Lorg/ton/bitstring/BitString;

    iget-object v3, p1, Lorg/ton/block/CryptoSignaturePair;->node_id_short:Lorg/ton/bitstring/BitString;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lorg/ton/block/CryptoSignaturePair;->sign:Lorg/ton/block/CryptoSignature;

    iget-object p1, p1, Lorg/ton/block/CryptoSignaturePair;->sign:Lorg/ton/block/CryptoSignature;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getNode_id_short()Lorg/ton/bitstring/BitString;
    .locals 1

    .line 17
    iget-object v0, p0, Lorg/ton/block/CryptoSignaturePair;->node_id_short:Lorg/ton/bitstring/BitString;

    return-object v0
.end method

.method public final getSign()Lorg/ton/block/CryptoSignature;
    .locals 1

    .line 18
    iget-object v0, p0, Lorg/ton/block/CryptoSignaturePair;->sign:Lorg/ton/block/CryptoSignature;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lorg/ton/block/CryptoSignaturePair;->node_id_short:Lorg/ton/bitstring/BitString;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/ton/block/CryptoSignaturePair;->sign:Lorg/ton/block/CryptoSignature;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CryptoSignaturePair(node_id_short="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/ton/block/CryptoSignaturePair;->node_id_short:Lorg/ton/bitstring/BitString;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sign="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/ton/block/CryptoSignaturePair;->sign:Lorg/ton/block/CryptoSignature;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
