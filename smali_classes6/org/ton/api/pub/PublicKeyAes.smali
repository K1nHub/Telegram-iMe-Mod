.class public final Lorg/ton/api/pub/PublicKeyAes;
.super Ljava/lang/Object;
.source "pub.kt"

# interfaces
.implements Lorg/ton/api/pub/PublicKey;
.implements Lorg/ton/crypto/Encryptor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ton/api/pub/PublicKeyAes$$serializer;,
        Lorg/ton/api/pub/PublicKeyAes$Companion;
    }
.end annotation

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final Companion:Lorg/ton/api/pub/PublicKeyAes$Companion;


# instance fields
.field private final synthetic $$delegate_0:Lorg/ton/crypto/EncryptorAes;

.field private final _adnlIdShort$delegate:Lkotlin/Lazy;

.field private final key:Lorg/ton/tl/ByteString;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/ton/api/pub/PublicKeyAes$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/ton/api/pub/PublicKeyAes$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/ton/api/pub/PublicKeyAes;->Companion:Lorg/ton/api/pub/PublicKeyAes$Companion;

    return-void
.end method

.method public synthetic constructor <init>(ILorg/ton/tl/ByteString;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1

    and-int/lit8 p3, p1, 0x1

    const/4 v0, 0x1

    if-eq v0, p3, :cond_0

    .line 70
    sget-object p3, Lorg/ton/api/pub/PublicKeyAes$$serializer;->INSTANCE:Lorg/ton/api/pub/PublicKeyAes$$serializer;

    invoke-virtual {p3}, Lorg/ton/api/pub/PublicKeyAes$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p3

    invoke-static {p1, v0, p3}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/ton/api/pub/PublicKeyAes;->key:Lorg/ton/tl/ByteString;

    .line 75
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    new-instance p3, Lorg/ton/api/pub/PublicKeyAes$1;

    invoke-direct {p3, p0}, Lorg/ton/api/pub/PublicKeyAes$1;-><init>(Lorg/ton/api/pub/PublicKeyAes;)V

    invoke-static {p1, p3}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    .line 70
    iput-object p1, p0, Lorg/ton/api/pub/PublicKeyAes;->_adnlIdShort$delegate:Lkotlin/Lazy;

    .line 74
    new-instance p1, Lorg/ton/crypto/EncryptorAes;

    invoke-virtual {p2}, Lorg/ton/tl/ByteString;->toByteArray()[B

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/ton/crypto/EncryptorAes;-><init>([B)V

    .line 70
    iput-object p1, p0, Lorg/ton/api/pub/PublicKeyAes;->$$delegate_0:Lorg/ton/crypto/EncryptorAes;

    return-void
.end method

.method public constructor <init>(Lorg/ton/tl/ByteString;)V
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lorg/ton/api/pub/PublicKeyAes;->key:Lorg/ton/tl/ByteString;

    .line 74
    new-instance v0, Lorg/ton/crypto/EncryptorAes;

    invoke-virtual {p1}, Lorg/ton/tl/ByteString;->toByteArray()[B

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/ton/crypto/EncryptorAes;-><init>([B)V

    iput-object v0, p0, Lorg/ton/api/pub/PublicKeyAes;->$$delegate_0:Lorg/ton/crypto/EncryptorAes;

    .line 75
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    new-instance v0, Lorg/ton/api/pub/PublicKeyAes$_adnlIdShort$2;

    invoke-direct {v0, p0}, Lorg/ton/api/pub/PublicKeyAes$_adnlIdShort$2;-><init>(Lorg/ton/api/pub/PublicKeyAes;)V

    invoke-static {p1, v0}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lorg/ton/api/pub/PublicKeyAes;->_adnlIdShort$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private final get_adnlIdShort()Lorg/ton/api/adnl/AdnlIdShort;
    .locals 1

    .line 75
    iget-object v0, p0, Lorg/ton/api/pub/PublicKeyAes;->_adnlIdShort$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/ton/api/adnl/AdnlIdShort;

    return-object v0
.end method

.method public static final synthetic write$Self(Lorg/ton/api/pub/PublicKeyAes;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 2

    .line 70
    sget-object v0, Lorg/ton/tl/ByteStringSerializer;->INSTANCE:Lorg/ton/tl/ByteStringSerializer;

    iget-object p0, p0, Lorg/ton/api/pub/PublicKeyAes;->key:Lorg/ton/tl/ByteString;

    const/4 v1, 0x0

    invoke-interface {p1, p2, v1, v0, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public encrypt([B)[B
    .locals 1

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/ton/api/pub/PublicKeyAes;->$$delegate_0:Lorg/ton/crypto/EncryptorAes;

    invoke-virtual {v0, p1}, Lorg/ton/crypto/EncryptorAes;->encrypt([B)[B

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/ton/api/pub/PublicKeyAes;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/ton/api/pub/PublicKeyAes;

    iget-object v1, p0, Lorg/ton/api/pub/PublicKeyAes;->key:Lorg/ton/tl/ByteString;

    iget-object p1, p1, Lorg/ton/api/pub/PublicKeyAes;->key:Lorg/ton/tl/ByteString;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getKey()Lorg/ton/tl/ByteString;
    .locals 1

    .line 73
    iget-object v0, p0, Lorg/ton/api/pub/PublicKeyAes;->key:Lorg/ton/tl/ByteString;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lorg/ton/api/pub/PublicKeyAes;->key:Lorg/ton/tl/ByteString;

    invoke-virtual {v0}, Lorg/ton/tl/ByteString;->hashCode()I

    move-result v0

    return v0
.end method

.method public toAdnlIdShort()Lorg/ton/api/adnl/AdnlIdShort;
    .locals 1

    .line 79
    invoke-direct {p0}, Lorg/ton/api/pub/PublicKeyAes;->get_adnlIdShort()Lorg/ton/api/adnl/AdnlIdShort;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PublicKeyAes(key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/ton/api/pub/PublicKeyAes;->key:Lorg/ton/tl/ByteString;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
