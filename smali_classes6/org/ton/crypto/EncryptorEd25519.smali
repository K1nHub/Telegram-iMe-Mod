.class public final Lorg/ton/crypto/EncryptorEd25519;
.super Ljava/lang/Object;
.source "Ed25519.kt"

# interfaces
.implements Lorg/ton/crypto/Encryptor;


# instance fields
.field private final privateKey:Lio/github/andreypfau/curve25519/ed25519/Ed25519PrivateKey;

.field private final publicKey:Lio/github/andreypfau/curve25519/ed25519/Ed25519PublicKey;


# direct methods
.method public constructor <init>(Lio/github/andreypfau/curve25519/ed25519/Ed25519PublicKey;Lio/github/andreypfau/curve25519/ed25519/Ed25519PrivateKey;)V
    .locals 1

    const-string v0, "publicKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lorg/ton/crypto/EncryptorEd25519;->publicKey:Lio/github/andreypfau/curve25519/ed25519/Ed25519PublicKey;

    .line 58
    iput-object p2, p0, Lorg/ton/crypto/EncryptorEd25519;->privateKey:Lio/github/andreypfau/curve25519/ed25519/Ed25519PrivateKey;

    return-void
.end method

.method public synthetic constructor <init>(Lio/github/andreypfau/curve25519/ed25519/Ed25519PublicKey;Lio/github/andreypfau/curve25519/ed25519/Ed25519PrivateKey;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 56
    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/ton/crypto/EncryptorEd25519;-><init>(Lio/github/andreypfau/curve25519/ed25519/Ed25519PublicKey;Lio/github/andreypfau/curve25519/ed25519/Ed25519PrivateKey;)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 2

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    new-instance v0, Lio/github/andreypfau/curve25519/ed25519/Ed25519PublicKey;

    invoke-direct {v0, p1}, Lio/github/andreypfau/curve25519/ed25519/Ed25519PublicKey;-><init>([B)V

    const/4 p1, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, v0, p1, v1, p1}, Lorg/ton/crypto/EncryptorEd25519;-><init>(Lio/github/andreypfau/curve25519/ed25519/Ed25519PublicKey;Lio/github/andreypfau/curve25519/ed25519/Ed25519PrivateKey;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public encrypt([B)[B
    .locals 7

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lorg/ton/crypto/EncryptorEd25519;->privateKey:Lio/github/andreypfau/curve25519/ed25519/Ed25519PrivateKey;

    if-nez v0, :cond_0

    sget-object v0, Lorg/ton/crypto/SecureRandom;->INSTANCE:Lorg/ton/crypto/SecureRandom;

    invoke-static {v0}, Lio/github/andreypfau/curve25519/ed25519/Ed25519;->generateKey(Lkotlin/random/Random;)Lio/github/andreypfau/curve25519/ed25519/Ed25519PrivateKey;

    move-result-object v0

    .line 64
    :cond_0
    iget-object v2, p0, Lorg/ton/crypto/EncryptorEd25519;->publicKey:Lio/github/andreypfau/curve25519/ed25519/Ed25519PublicKey;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, v0

    invoke-static/range {v1 .. v6}, Lio/github/andreypfau/curve25519/ed25519/Ed25519PrivateKey;->sharedKey$default(Lio/github/andreypfau/curve25519/ed25519/Ed25519PrivateKey;Lio/github/andreypfau/curve25519/ed25519/Ed25519PublicKey;[BIILjava/lang/Object;)[B

    move-result-object v1

    .line 65
    new-instance v2, Lorg/ton/crypto/EncryptorAes;

    invoke-direct {v2, v1}, Lorg/ton/crypto/EncryptorAes;-><init>([B)V

    .line 66
    invoke-virtual {v2, p1}, Lorg/ton/crypto/EncryptorAes;->encrypt([B)[B

    move-result-object p1

    .line 67
    invoke-virtual {v0}, Lio/github/andreypfau/curve25519/ed25519/Ed25519PrivateKey;->publicKey()Lio/github/andreypfau/curve25519/ed25519/Ed25519PublicKey;

    move-result-object v0

    invoke-virtual {v0}, Lio/github/andreypfau/curve25519/ed25519/Ed25519PublicKey;->toByteArray()[B

    move-result-object v0

    invoke-static {v0, p1}, Lkotlin/collections/ArraysKt;->plus([B[B)[B

    move-result-object p1

    return-object p1
.end method
