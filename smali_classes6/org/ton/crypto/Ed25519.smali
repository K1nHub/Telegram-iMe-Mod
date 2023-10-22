.class public final Lorg/ton/crypto/Ed25519;
.super Ljava/lang/Object;
.source "Ed25519.kt"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/ton/crypto/Ed25519;

    invoke-direct {v0}, Lorg/ton/crypto/Ed25519;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final publicKey([B)[B
    .locals 1

    const-string v0, "privateKey"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-static {p0}, Lio/github/andreypfau/curve25519/ed25519/Ed25519;->keyFromSeed([B)Lio/github/andreypfau/curve25519/ed25519/Ed25519PrivateKey;

    move-result-object p0

    invoke-virtual {p0}, Lio/github/andreypfau/curve25519/ed25519/Ed25519PrivateKey;->publicKey()Lio/github/andreypfau/curve25519/ed25519/Ed25519PublicKey;

    move-result-object p0

    invoke-virtual {p0}, Lio/github/andreypfau/curve25519/ed25519/Ed25519PublicKey;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method
