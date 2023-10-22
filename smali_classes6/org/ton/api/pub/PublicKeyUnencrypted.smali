.class public final Lorg/ton/api/pub/PublicKeyUnencrypted;
.super Ljava/lang/Object;
.source "pub.kt"

# interfaces
.implements Lorg/ton/api/pub/PublicKey;
.implements Lorg/ton/crypto/Encryptor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ton/api/pub/PublicKeyUnencrypted$$serializer;,
        Lorg/ton/api/pub/PublicKeyUnencrypted$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\npub.kt\nKotlin\n*S Kotlin\n*F\n+ 1 pub.kt\norg/ton/api/pub/PublicKeyUnencrypted\n+ 2 AdnlIdShort.kt\norg/ton/api/adnl/AdnlIdShortKt\n+ 3 base64.kt\norg/ton/crypto/Base64Kt\n*L\n1#1,139:1\n12#2:140\n12#3:141\n*S KotlinDebug\n*F\n+ 1 pub.kt\norg/ton/api/pub/PublicKeyUnencrypted\n*L\n37#1:140\n52#1:141\n*E\n"
.end annotation

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final Companion:Lorg/ton/api/pub/PublicKeyUnencrypted$Companion;


# instance fields
.field private final synthetic $$delegate_0:Lorg/ton/crypto/EncryptorNone;

.field private final data:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/ton/api/pub/PublicKeyUnencrypted$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/ton/api/pub/PublicKeyUnencrypted$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/ton/api/pub/PublicKeyUnencrypted;->Companion:Lorg/ton/api/pub/PublicKeyUnencrypted$Companion;

    return-void
.end method

.method public synthetic constructor <init>(I[BLkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1
    .param p2    # [B
        .annotation runtime Lkotlinx/serialization/Serializable;
            with = Lorg/ton/crypto/Base64ByteArraySerializer;
        .end annotation
    .end param

    and-int/lit8 p3, p1, 0x1

    const/4 v0, 0x1

    if-eq v0, p3, :cond_0

    .line 30
    sget-object p3, Lorg/ton/api/pub/PublicKeyUnencrypted$$serializer;->INSTANCE:Lorg/ton/api/pub/PublicKeyUnencrypted$$serializer;

    invoke-virtual {p3}, Lorg/ton/api/pub/PublicKeyUnencrypted$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p3

    invoke-static {p1, v0, p3}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/ton/api/pub/PublicKeyUnencrypted;->data:[B

    .line 35
    sget-object p1, Lorg/ton/crypto/EncryptorNone;->INSTANCE:Lorg/ton/crypto/EncryptorNone;

    .line 30
    iput-object p1, p0, Lorg/ton/api/pub/PublicKeyUnencrypted;->$$delegate_0:Lorg/ton/crypto/EncryptorNone;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lorg/ton/api/pub/PublicKeyUnencrypted;->data:[B

    .line 35
    sget-object p1, Lorg/ton/crypto/EncryptorNone;->INSTANCE:Lorg/ton/crypto/EncryptorNone;

    iput-object p1, p0, Lorg/ton/api/pub/PublicKeyUnencrypted;->$$delegate_0:Lorg/ton/crypto/EncryptorNone;

    return-void
.end method

.method public static final synthetic write$Self(Lorg/ton/api/pub/PublicKeyUnencrypted;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 2

    .line 30
    sget-object v0, Lorg/ton/crypto/Base64ByteArraySerializer;->INSTANCE:Lorg/ton/crypto/Base64ByteArraySerializer;

    iget-object p0, p0, Lorg/ton/api/pub/PublicKeyUnencrypted;->data:[B

    const/4 v1, 0x0

    invoke-interface {p1, p2, v1, v0, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public encrypt([B)[B
    .locals 1

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/ton/api/pub/PublicKeyUnencrypted;->$$delegate_0:Lorg/ton/crypto/EncryptorNone;

    invoke-virtual {v0, p1}, Lorg/ton/crypto/EncryptorNone;->encrypt([B)[B

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 41
    :cond_0
    instance-of v1, p1, Lorg/ton/api/pub/PublicKeyUnencrypted;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 42
    :cond_1
    iget-object v1, p0, Lorg/ton/api/pub/PublicKeyUnencrypted;->data:[B

    check-cast p1, Lorg/ton/api/pub/PublicKeyUnencrypted;

    iget-object p1, p1, Lorg/ton/api/pub/PublicKeyUnencrypted;->data:[B

    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getData()[B
    .locals 1

    .line 34
    iget-object v0, p0, Lorg/ton/api/pub/PublicKeyUnencrypted;->data:[B

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 47
    iget-object v0, p0, Lorg/ton/api/pub/PublicKeyUnencrypted;->data:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method

.method public toAdnlIdShort()Lorg/ton/api/adnl/AdnlIdShort;
    .locals 2

    .line 37
    sget-object v0, Lorg/ton/api/pub/PublicKeyUnencrypted;->Companion:Lorg/ton/api/pub/PublicKeyUnencrypted$Companion;

    invoke-virtual {v0, p0}, Lorg/ton/tl/TlConstructor;->hash(Ljava/lang/Object;)[B

    move-result-object v0

    .line 12
    sget-object v1, Lorg/ton/api/adnl/AdnlIdShort;->Companion:Lorg/ton/api/adnl/AdnlIdShort$Companion;

    invoke-virtual {v1, v0}, Lorg/ton/api/adnl/AdnlIdShort$Companion;->of([B)Lorg/ton/api/adnl/AdnlIdShort;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PublicKeyUnencrypted(data="

    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    iget-object v3, p0, Lorg/ton/api/pub/PublicKeyUnencrypted;->data:[B

    .line 12
    sget-object v2, Lkotlin/io/encoding/Base64;->Default:Lkotlin/io/encoding/Base64$Default;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlin/io/encoding/Base64;->encode$default(Lkotlin/io/encoding/Base64;[BIIILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StringBuilder().apply(builderAction).toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
