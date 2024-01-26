.class public final Lorg/ton/crypto/DecryptorEd25519;
.super Ljava/lang/Object;
.source "Ed25519.kt"

# interfaces
.implements Lorg/ton/crypto/Decryptor;


# instance fields
.field private final privateKey:Lio/github/andreypfau/curve25519/ed25519/Ed25519PrivateKey;


# direct methods
.method public constructor <init>(Lio/github/andreypfau/curve25519/ed25519/Ed25519PrivateKey;Lio/github/andreypfau/curve25519/ed25519/Ed25519PublicKey;)V
    .locals 0

    const-string p2, "privateKey"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lorg/ton/crypto/DecryptorEd25519;->privateKey:Lio/github/andreypfau/curve25519/ed25519/Ed25519PrivateKey;

    return-void
.end method

.method public synthetic constructor <init>(Lio/github/andreypfau/curve25519/ed25519/Ed25519PrivateKey;Lio/github/andreypfau/curve25519/ed25519/Ed25519PublicKey;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 33
    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/ton/crypto/DecryptorEd25519;-><init>(Lio/github/andreypfau/curve25519/ed25519/Ed25519PrivateKey;Lio/github/andreypfau/curve25519/ed25519/Ed25519PublicKey;)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 2

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-static {p1}, Lio/github/andreypfau/curve25519/ed25519/Ed25519;->keyFromSeed([B)Lio/github/andreypfau/curve25519/ed25519/Ed25519PrivateKey;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, v0}, Lorg/ton/crypto/DecryptorEd25519;-><init>(Lio/github/andreypfau/curve25519/ed25519/Ed25519PrivateKey;Lio/github/andreypfau/curve25519/ed25519/Ed25519PublicKey;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public sign([B)[B
    .locals 1

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lorg/ton/crypto/DecryptorEd25519;->privateKey:Lio/github/andreypfau/curve25519/ed25519/Ed25519PrivateKey;

    invoke-virtual {v0, p1}, Lio/github/andreypfau/curve25519/ed25519/Ed25519PrivateKey;->sign([B)[B

    move-result-object p1

    return-object p1
.end method
