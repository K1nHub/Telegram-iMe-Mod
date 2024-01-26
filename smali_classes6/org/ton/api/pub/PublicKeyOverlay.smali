.class public final Lorg/ton/api/pub/PublicKeyOverlay;
.super Ljava/lang/Object;
.source "pub.kt"

# interfaces
.implements Lorg/ton/api/pub/PublicKey;
.implements Lorg/ton/crypto/Encryptor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ton/api/pub/PublicKeyOverlay$$serializer;,
        Lorg/ton/api/pub/PublicKeyOverlay$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\npub.kt\nKotlin\n*S Kotlin\n*F\n+ 1 pub.kt\norg/ton/api/pub/PublicKeyOverlay\n+ 2 AdnlIdShort.kt\norg/ton/api/adnl/AdnlIdShortKt\n*L\n1#1,139:1\n12#2:140\n*S KotlinDebug\n*F\n+ 1 pub.kt\norg/ton/api/pub/PublicKeyOverlay\n*L\n101#1:140\n*E\n"
.end annotation

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final Companion:Lorg/ton/api/pub/PublicKeyOverlay$Companion;


# instance fields
.field private final synthetic $$delegate_0:Lorg/ton/crypto/EncryptorFail;

.field private final name:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/ton/api/pub/PublicKeyOverlay$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/ton/api/pub/PublicKeyOverlay$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/ton/api/pub/PublicKeyOverlay;->Companion:Lorg/ton/api/pub/PublicKeyOverlay$Companion;

    return-void
.end method

.method public synthetic constructor <init>(I[BLkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1

    and-int/lit8 p3, p1, 0x1

    const/4 v0, 0x1

    if-eq v0, p3, :cond_0

    .line 95
    sget-object p3, Lorg/ton/api/pub/PublicKeyOverlay$$serializer;->INSTANCE:Lorg/ton/api/pub/PublicKeyOverlay$$serializer;

    invoke-virtual {p3}, Lorg/ton/api/pub/PublicKeyOverlay$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p3

    invoke-static {p1, v0, p3}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/ton/api/pub/PublicKeyOverlay;->name:[B

    .line 99
    sget-object p1, Lorg/ton/crypto/EncryptorFail;->INSTANCE:Lorg/ton/crypto/EncryptorFail;

    .line 95
    iput-object p1, p0, Lorg/ton/api/pub/PublicKeyOverlay;->$$delegate_0:Lorg/ton/crypto/EncryptorFail;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-object p1, p0, Lorg/ton/api/pub/PublicKeyOverlay;->name:[B

    .line 99
    sget-object p1, Lorg/ton/crypto/EncryptorFail;->INSTANCE:Lorg/ton/crypto/EncryptorFail;

    iput-object p1, p0, Lorg/ton/api/pub/PublicKeyOverlay;->$$delegate_0:Lorg/ton/crypto/EncryptorFail;

    return-void
.end method

.method public static final synthetic write$Self(Lorg/ton/api/pub/PublicKeyOverlay;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 2

    .line 95
    sget-object v0, Lkotlinx/serialization/internal/ByteArraySerializer;->INSTANCE:Lkotlinx/serialization/internal/ByteArraySerializer;

    iget-object p0, p0, Lorg/ton/api/pub/PublicKeyOverlay;->name:[B

    const/4 v1, 0x0

    invoke-interface {p1, p2, v1, v0, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public encrypt([B)[B
    .locals 1

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/ton/api/pub/PublicKeyOverlay;->$$delegate_0:Lorg/ton/crypto/EncryptorFail;

    invoke-virtual {v0, p1}, Lorg/ton/crypto/EncryptorFail;->encrypt([B)[B

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 119
    :cond_0
    instance-of v1, p1, Lorg/ton/api/pub/PublicKeyOverlay;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 120
    :cond_1
    iget-object v1, p0, Lorg/ton/api/pub/PublicKeyOverlay;->name:[B

    check-cast p1, Lorg/ton/api/pub/PublicKeyOverlay;

    iget-object p1, p1, Lorg/ton/api/pub/PublicKeyOverlay;->name:[B

    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getName()[B
    .locals 1

    .line 98
    iget-object v0, p0, Lorg/ton/api/pub/PublicKeyOverlay;->name:[B

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 124
    iget-object v0, p0, Lorg/ton/api/pub/PublicKeyOverlay;->name:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method

.method public toAdnlIdShort()Lorg/ton/api/adnl/AdnlIdShort;
    .locals 2

    .line 102
    sget-object v0, Lorg/ton/api/pub/PublicKeyOverlay;->Companion:Lorg/ton/api/pub/PublicKeyOverlay$Companion;

    invoke-virtual {v0, p0}, Lorg/ton/tl/TlConstructor;->hash(Ljava/lang/Object;)[B

    move-result-object v0

    .line 12
    sget-object v1, Lorg/ton/api/adnl/AdnlIdShort;->Companion:Lorg/ton/api/adnl/AdnlIdShort$Companion;

    invoke-virtual {v1, v0}, Lorg/ton/api/adnl/AdnlIdShort$Companion;->of([B)Lorg/ton/api/adnl/AdnlIdShort;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PublicKeyOverlay(name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/ton/api/pub/PublicKeyOverlay;->name:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
