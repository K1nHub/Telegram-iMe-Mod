.class public final Lorg/ton/crypto/EncryptorAes;
.super Ljava/lang/Object;
.source "AesCtr.kt"

# interfaces
.implements Lorg/ton/crypto/Encryptor;


# instance fields
.field private final secret:[B


# direct methods
.method public constructor <init>([B)V
    .locals 1

    const-string v0, "secret"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lorg/ton/crypto/EncryptorAes;->secret:[B

    return-void
.end method


# virtual methods
.method public encrypt([B)[B
    .locals 7

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-static {p1}, Lorg/ton/crypto/digest/DigestJvmKt;->sha256([B)[B

    move-result-object v0

    const/16 v1, 0x20

    new-array v2, v1, [B

    .line 18
    iget-object v3, p0, Lorg/ton/crypto/EncryptorAes;->secret:[B

    const/4 v4, 0x0

    const/16 v5, 0x10

    invoke-static {v3, v2, v4, v4, v5}, Lkotlin/collections/ArraysKt;->copyInto([B[BIII)[B

    .line 19
    invoke-static {v0, v2, v5, v5, v1}, Lkotlin/collections/ArraysKt;->copyInto([B[BIII)[B

    new-array v3, v5, [B

    const/4 v5, 0x4

    .line 22
    invoke-static {v0, v3, v4, v4, v5}, Lkotlin/collections/ArraysKt;->copyInto([B[BIII)[B

    .line 23
    iget-object v4, p0, Lorg/ton/crypto/EncryptorAes;->secret:[B

    const/16 v6, 0x14

    invoke-static {v4, v3, v5, v6, v1}, Lkotlin/collections/ArraysKt;->copyInto([B[BIII)[B

    .line 25
    new-instance v1, Lorg/ton/crypto/AesCtr;

    invoke-direct {v1, v2, v3}, Lorg/ton/crypto/AesCtr;-><init>([B[B)V

    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 26
    invoke-static {v1, p1, v2, v3, v2}, Lorg/ton/crypto/AesCtr;->update$default(Lorg/ton/crypto/AesCtr;[B[BILjava/lang/Object;)[B

    move-result-object p1

    .line 28
    invoke-static {v0, p1}, Lkotlin/collections/ArraysKt;->plus([B[B)[B

    move-result-object p1

    return-object p1
.end method
