.class public final Lorg/ton/api/pk/PrivateKeyAes;
.super Ljava/lang/Object;
.source "aes.kt"

# interfaces
.implements Lorg/ton/api/pk/PrivateKey;
.implements Lorg/ton/crypto/Decryptor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ton/api/pk/PrivateKeyAes$$serializer;,
        Lorg/ton/api/pk/PrivateKeyAes$Companion;
    }
.end annotation

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation

.annotation runtime Lkotlinx/serialization/json/JsonClassDiscriminator;
    discriminator = "@type"
.end annotation


# static fields
.field public static final Companion:Lorg/ton/api/pk/PrivateKeyAes$Companion;


# instance fields
.field private final key:Lorg/ton/tl/ByteString;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/ton/api/pk/PrivateKeyAes$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/ton/api/pk/PrivateKeyAes$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/ton/api/pk/PrivateKeyAes;->Companion:Lorg/ton/api/pk/PrivateKeyAes$Companion;

    return-void
.end method

.method public synthetic constructor <init>(ILorg/ton/tl/ByteString;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1

    and-int/lit8 p3, p1, 0x1

    const/4 v0, 0x1

    if-eq v0, p3, :cond_0

    .line 15
    sget-object p3, Lorg/ton/api/pk/PrivateKeyAes$$serializer;->INSTANCE:Lorg/ton/api/pk/PrivateKeyAes$$serializer;

    invoke-virtual {p3}, Lorg/ton/api/pk/PrivateKeyAes$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p3

    invoke-static {p1, v0, p3}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/ton/api/pk/PrivateKeyAes;->key:Lorg/ton/tl/ByteString;

    .line 20
    new-instance p1, Lorg/ton/crypto/DecryptorAes;

    invoke-virtual {p2}, Lorg/ton/tl/ByteString;->toByteArray()[B

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/ton/crypto/DecryptorAes;-><init>([B)V

    return-void
.end method

.method public constructor <init>(Lorg/ton/tl/ByteString;)V
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lorg/ton/api/pk/PrivateKeyAes;->key:Lorg/ton/tl/ByteString;

    .line 20
    new-instance v0, Lorg/ton/crypto/DecryptorAes;

    invoke-virtual {p1}, Lorg/ton/tl/ByteString;->toByteArray()[B

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/ton/crypto/DecryptorAes;-><init>([B)V

    return-void
.end method

.method public static final synthetic write$Self(Lorg/ton/api/pk/PrivateKeyAes;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 2

    .line 15
    sget-object v0, Lorg/ton/tl/ByteStringSerializer;->INSTANCE:Lorg/ton/tl/ByteStringSerializer;

    iget-object p0, p0, Lorg/ton/api/pk/PrivateKeyAes;->key:Lorg/ton/tl/ByteString;

    const/4 v1, 0x0

    invoke-interface {p1, p2, v1, v0, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/ton/api/pk/PrivateKeyAes;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/ton/api/pk/PrivateKeyAes;

    iget-object v1, p0, Lorg/ton/api/pk/PrivateKeyAes;->key:Lorg/ton/tl/ByteString;

    iget-object p1, p1, Lorg/ton/api/pk/PrivateKeyAes;->key:Lorg/ton/tl/ByteString;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getKey()Lorg/ton/tl/ByteString;
    .locals 1

    .line 19
    iget-object v0, p0, Lorg/ton/api/pk/PrivateKeyAes;->key:Lorg/ton/tl/ByteString;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lorg/ton/api/pk/PrivateKeyAes;->key:Lorg/ton/tl/ByteString;

    invoke-virtual {v0}, Lorg/ton/tl/ByteString;->hashCode()I

    move-result v0

    return v0
.end method

.method public bridge synthetic publicKey()Lorg/ton/api/pub/PublicKey;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lorg/ton/api/pk/PrivateKeyAes;->publicKey()Lorg/ton/api/pub/PublicKeyAes;

    move-result-object v0

    return-object v0
.end method

.method public publicKey()Lorg/ton/api/pub/PublicKeyAes;
    .locals 2

    .line 23
    new-instance v0, Lorg/ton/api/pub/PublicKeyAes;

    iget-object v1, p0, Lorg/ton/api/pk/PrivateKeyAes;->key:Lorg/ton/tl/ByteString;

    invoke-direct {v0, v1}, Lorg/ton/api/pub/PublicKeyAes;-><init>(Lorg/ton/tl/ByteString;)V

    return-object v0
.end method

.method public toAdnlIdShort()Lorg/ton/api/adnl/AdnlIdShort;
    .locals 1

    .line 15
    invoke-static {p0}, Lorg/ton/api/pk/PrivateKey$DefaultImpls;->toAdnlIdShort(Lorg/ton/api/pk/PrivateKey;)Lorg/ton/api/adnl/AdnlIdShort;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 25
    invoke-virtual {p0}, Lorg/ton/api/pk/PrivateKeyAes;->toAdnlIdShort()Lorg/ton/api/adnl/AdnlIdShort;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
