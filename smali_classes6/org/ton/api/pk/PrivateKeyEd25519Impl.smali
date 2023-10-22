.class final Lorg/ton/api/pk/PrivateKeyEd25519Impl;
.super Ljava/lang/Object;
.source "ed25519.kt"

# interfaces
.implements Lorg/ton/api/pk/PrivateKeyEd25519;
.implements Lorg/ton/crypto/Decryptor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ton/api/pk/PrivateKeyEd25519Impl$$serializer;,
        Lorg/ton/api/pk/PrivateKeyEd25519Impl$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\ned25519.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ed25519.kt\norg/ton/api/pk/PrivateKeyEd25519Impl\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,87:1\n1#2:88\n*E\n"
.end annotation

.annotation runtime Lkotlinx/serialization/Polymorphic;
.end annotation

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation

.annotation runtime Lkotlinx/serialization/json/JsonClassDiscriminator;
    discriminator = "@type"
.end annotation


# static fields
.field public static final Companion:Lorg/ton/api/pk/PrivateKeyEd25519Impl$Companion;


# instance fields
.field private final synthetic $$delegate_0:Lorg/ton/crypto/DecryptorEd25519;

.field private final _publicKey$delegate:Lkotlin/Lazy;

.field private final key:Lorg/ton/tl/ByteString;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/ton/api/pk/PrivateKeyEd25519Impl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/ton/api/pk/PrivateKeyEd25519Impl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/ton/api/pk/PrivateKeyEd25519Impl;->Companion:Lorg/ton/api/pk/PrivateKeyEd25519Impl$Companion;

    return-void
.end method

.method public synthetic constructor <init>(ILorg/ton/tl/ByteString;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1

    and-int/lit8 p3, p1, 0x1

    const/4 v0, 0x1

    if-eq v0, p3, :cond_0

    .line 50
    sget-object p3, Lorg/ton/api/pk/PrivateKeyEd25519Impl$$serializer;->INSTANCE:Lorg/ton/api/pk/PrivateKeyEd25519Impl$$serializer;

    invoke-virtual {p3}, Lorg/ton/api/pk/PrivateKeyEd25519Impl$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p3

    invoke-static {p1, v0, p3}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/ton/api/pk/PrivateKeyEd25519Impl;->key:Lorg/ton/tl/ByteString;

    .line 60
    invoke-virtual {p0}, Lorg/ton/api/pk/PrivateKeyEd25519Impl;->getKey()Lorg/ton/tl/ByteString;

    move-result-object p1

    invoke-virtual {p1}, Lorg/ton/tl/ByteString;->getSize()I

    move-result p1

    const/16 p2, 0x20

    if-ne p1, p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 63
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    new-instance p2, Lorg/ton/api/pk/PrivateKeyEd25519Impl$3;

    invoke-direct {p2, p0}, Lorg/ton/api/pk/PrivateKeyEd25519Impl$3;-><init>(Lorg/ton/api/pk/PrivateKeyEd25519Impl;)V

    invoke-static {p1, p2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    .line 50
    iput-object p1, p0, Lorg/ton/api/pk/PrivateKeyEd25519Impl;->_publicKey$delegate:Lkotlin/Lazy;

    .line 56
    new-instance p1, Lorg/ton/crypto/DecryptorEd25519;

    .line 50
    invoke-virtual {p0}, Lorg/ton/api/pk/PrivateKeyEd25519Impl;->getKey()Lorg/ton/tl/ByteString;

    move-result-object p2

    .line 56
    invoke-virtual {p2}, Lorg/ton/tl/ByteString;->toByteArray()[B

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/ton/crypto/DecryptorEd25519;-><init>([B)V

    .line 50
    iput-object p1, p0, Lorg/ton/api/pk/PrivateKeyEd25519Impl;->$$delegate_0:Lorg/ton/crypto/DecryptorEd25519;

    return-void

    .line 60
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "key must be 32 byte long"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lorg/ton/tl/ByteString;)V
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lorg/ton/api/pk/PrivateKeyEd25519Impl;->key:Lorg/ton/tl/ByteString;

    .line 56
    new-instance v0, Lorg/ton/crypto/DecryptorEd25519;

    invoke-virtual {p1}, Lorg/ton/tl/ByteString;->toByteArray()[B

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/ton/crypto/DecryptorEd25519;-><init>([B)V

    iput-object v0, p0, Lorg/ton/api/pk/PrivateKeyEd25519Impl;->$$delegate_0:Lorg/ton/crypto/DecryptorEd25519;

    .line 60
    invoke-virtual {p0}, Lorg/ton/api/pk/PrivateKeyEd25519Impl;->getKey()Lorg/ton/tl/ByteString;

    move-result-object p1

    invoke-virtual {p1}, Lorg/ton/tl/ByteString;->getSize()I

    move-result p1

    const/16 v0, 0x20

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 63
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    new-instance v0, Lorg/ton/api/pk/PrivateKeyEd25519Impl$_publicKey$2;

    invoke-direct {v0, p0}, Lorg/ton/api/pk/PrivateKeyEd25519Impl$_publicKey$2;-><init>(Lorg/ton/api/pk/PrivateKeyEd25519Impl;)V

    invoke-static {p1, v0}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lorg/ton/api/pk/PrivateKeyEd25519Impl;->_publicKey$delegate:Lkotlin/Lazy;

    return-void

    .line 60
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "key must be 32 byte long"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>([B)V
    .locals 7

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    sget-object v1, Lorg/ton/tl/ByteString;->Companion:Lorg/ton/tl/ByteString$Companion;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lorg/ton/tl/ByteString$Companion;->of$default(Lorg/ton/tl/ByteString$Companion;[BIIILjava/lang/Object;)Lorg/ton/tl/ByteString;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/ton/api/pk/PrivateKeyEd25519Impl;-><init>(Lorg/ton/tl/ByteString;)V

    return-void
.end method

.method private final get_publicKey()Lorg/ton/api/pub/PublicKeyEd25519;
    .locals 1

    .line 63
    iget-object v0, p0, Lorg/ton/api/pk/PrivateKeyEd25519Impl;->_publicKey$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/ton/api/pub/PublicKeyEd25519;

    return-object v0
.end method

.method public static final synthetic write$Self(Lorg/ton/api/pk/PrivateKeyEd25519Impl;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 2

    .line 50
    sget-object v0, Lorg/ton/tl/ByteStringSerializer;->INSTANCE:Lorg/ton/tl/ByteStringSerializer;

    invoke-virtual {p0}, Lorg/ton/api/pk/PrivateKeyEd25519Impl;->getKey()Lorg/ton/tl/ByteString;

    move-result-object p0

    const/4 v1, 0x0

    invoke-interface {p1, p2, v1, v0, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getKey()Lorg/ton/tl/ByteString;
    .locals 1

    .line 55
    iget-object v0, p0, Lorg/ton/api/pk/PrivateKeyEd25519Impl;->key:Lorg/ton/tl/ByteString;

    return-object v0
.end method

.method public bridge synthetic publicKey()Lorg/ton/api/pub/PublicKey;
    .locals 1

    .line 50
    invoke-virtual {p0}, Lorg/ton/api/pk/PrivateKeyEd25519Impl;->publicKey()Lorg/ton/api/pub/PublicKeyEd25519;

    move-result-object v0

    return-object v0
.end method

.method public publicKey()Lorg/ton/api/pub/PublicKeyEd25519;
    .locals 1

    .line 67
    invoke-direct {p0}, Lorg/ton/api/pk/PrivateKeyEd25519Impl;->get_publicKey()Lorg/ton/api/pub/PublicKeyEd25519;

    move-result-object v0

    return-object v0
.end method

.method public sign([B)[B
    .locals 1

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/ton/api/pk/PrivateKeyEd25519Impl;->$$delegate_0:Lorg/ton/crypto/DecryptorEd25519;

    invoke-virtual {v0, p1}, Lorg/ton/crypto/DecryptorEd25519;->sign([B)[B

    move-result-object p1

    return-object p1
.end method

.method public toAdnlIdShort()Lorg/ton/api/adnl/AdnlIdShort;
    .locals 1

    .line 50
    invoke-static {p0}, Lorg/ton/api/pk/PrivateKeyEd25519$DefaultImpls;->toAdnlIdShort(Lorg/ton/api/pk/PrivateKeyEd25519;)Lorg/ton/api/adnl/AdnlIdShort;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 72
    invoke-virtual {p0}, Lorg/ton/api/pk/PrivateKeyEd25519Impl;->toAdnlIdShort()Lorg/ton/api/adnl/AdnlIdShort;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
