.class public final Lorg/ton/block/ChainedSignature;
.super Ljava/lang/Object;
.source "ChainedSignature.kt"

# interfaces
.implements Lorg/ton/block/CryptoSignature;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ton/block/ChainedSignature$$serializer;,
        Lorg/ton/block/ChainedSignature$Companion;
    }
.end annotation

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final Companion:Lorg/ton/block/ChainedSignature$Companion;


# instance fields
.field private final signed_crt:Lorg/ton/block/SignedCertificate;

.field private final temp_key_signature:Lorg/ton/block/CryptoSignatureSimple;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/ton/block/ChainedSignature$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/ton/block/ChainedSignature$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/ton/block/ChainedSignature;->Companion:Lorg/ton/block/ChainedSignature$Companion;

    return-void
.end method

.method public synthetic constructor <init>(ILorg/ton/block/SignedCertificate;Lorg/ton/block/CryptoSignatureSimple;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1

    and-int/lit8 p4, p1, 0x3

    const/4 v0, 0x3

    if-eq v0, p4, :cond_0

    .line 11
    sget-object p4, Lorg/ton/block/ChainedSignature$$serializer;->INSTANCE:Lorg/ton/block/ChainedSignature$$serializer;

    invoke-virtual {p4}, Lorg/ton/block/ChainedSignature$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p4

    invoke-static {p1, v0, p4}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/ton/block/ChainedSignature;->signed_crt:Lorg/ton/block/SignedCertificate;

    iput-object p3, p0, Lorg/ton/block/ChainedSignature;->temp_key_signature:Lorg/ton/block/CryptoSignatureSimple;

    return-void
.end method

.method public constructor <init>(Lorg/ton/block/SignedCertificate;Lorg/ton/block/CryptoSignatureSimple;)V
    .locals 1

    const-string v0, "signed_crt"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "temp_key_signature"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lorg/ton/block/ChainedSignature;->signed_crt:Lorg/ton/block/SignedCertificate;

    .line 15
    iput-object p2, p0, Lorg/ton/block/ChainedSignature;->temp_key_signature:Lorg/ton/block/CryptoSignatureSimple;

    return-void
.end method

.method public static final synthetic write$Self(Lorg/ton/block/ChainedSignature;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 3

    .line 11
    sget-object v0, Lorg/ton/block/SignedCertificate$$serializer;->INSTANCE:Lorg/ton/block/SignedCertificate$$serializer;

    iget-object v1, p0, Lorg/ton/block/ChainedSignature;->signed_crt:Lorg/ton/block/SignedCertificate;

    const/4 v2, 0x0

    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    sget-object v0, Lorg/ton/block/CryptoSignatureSimple$$serializer;->INSTANCE:Lorg/ton/block/CryptoSignatureSimple$$serializer;

    iget-object p0, p0, Lorg/ton/block/ChainedSignature;->temp_key_signature:Lorg/ton/block/CryptoSignatureSimple;

    const/4 v1, 0x1

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
    instance-of v1, p1, Lorg/ton/block/ChainedSignature;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/ton/block/ChainedSignature;

    iget-object v1, p0, Lorg/ton/block/ChainedSignature;->signed_crt:Lorg/ton/block/SignedCertificate;

    iget-object v3, p1, Lorg/ton/block/ChainedSignature;->signed_crt:Lorg/ton/block/SignedCertificate;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lorg/ton/block/ChainedSignature;->temp_key_signature:Lorg/ton/block/CryptoSignatureSimple;

    iget-object p1, p1, Lorg/ton/block/ChainedSignature;->temp_key_signature:Lorg/ton/block/CryptoSignatureSimple;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getSigned_crt()Lorg/ton/block/SignedCertificate;
    .locals 1

    .line 14
    iget-object v0, p0, Lorg/ton/block/ChainedSignature;->signed_crt:Lorg/ton/block/SignedCertificate;

    return-object v0
.end method

.method public final getTemp_key_signature()Lorg/ton/block/CryptoSignatureSimple;
    .locals 1

    .line 15
    iget-object v0, p0, Lorg/ton/block/ChainedSignature;->temp_key_signature:Lorg/ton/block/CryptoSignatureSimple;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lorg/ton/block/ChainedSignature;->signed_crt:Lorg/ton/block/SignedCertificate;

    invoke-virtual {v0}, Lorg/ton/block/SignedCertificate;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/ton/block/ChainedSignature;->temp_key_signature:Lorg/ton/block/CryptoSignatureSimple;

    invoke-virtual {v1}, Lorg/ton/block/CryptoSignatureSimple;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ChainedSignature(signed_crt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/ton/block/ChainedSignature;->signed_crt:Lorg/ton/block/SignedCertificate;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", temp_key_signature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/ton/block/ChainedSignature;->temp_key_signature:Lorg/ton/block/CryptoSignatureSimple;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
