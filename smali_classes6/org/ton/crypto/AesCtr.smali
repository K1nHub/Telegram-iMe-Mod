.class public final Lorg/ton/crypto/AesCtr;
.super Ljava/lang/Object;
.source "AesCtr.kt"


# instance fields
.field private final cipher:Ljavax/crypto/Cipher;


# direct methods
.method public constructor <init>([B[B)V
    .locals 3

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "iv"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "AES/CTR/NoPadding"

    .line 13
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 14
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "AES"

    invoke-direct {v1, p1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    new-instance p1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {p1, p2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/4 p2, 0x1

    invoke-virtual {v0, p2, v1, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 13
    iput-object v0, p0, Lorg/ton/crypto/AesCtr;->cipher:Ljavax/crypto/Cipher;

    return-void
.end method

.method public static synthetic update$default(Lorg/ton/crypto/AesCtr;[B[BILjava/lang/Object;)[B
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 9
    array-length p2, p1

    new-array p2, p2, [B

    .line 19
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/ton/crypto/AesCtr;->update([B[B)[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final update([B[B)[B
    .locals 7

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "output"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    iget-object v1, p0, Lorg/ton/crypto/AesCtr;->cipher:Ljavax/crypto/Cipher;

    array-length v4, p1

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    move-object v5, p2

    invoke-virtual/range {v1 .. v6}, Ljavax/crypto/Cipher;->update([BII[BI)I

    return-object p2
.end method
