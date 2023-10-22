.class public final Lorg/ton/crypto/digest/sha2/SHA256DigestKt;
.super Ljava/lang/Object;
.source "SHA256Digest.kt"


# static fields
.field private static k:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x40

    new-array v0, v0, [I

    .line 187
    fill-array-data v0, :array_0

    .line 195
    sput-object v0, Lorg/ton/crypto/digest/sha2/SHA256DigestKt;->k:[I

    return-void

    :array_0
    .array-data 4
        0x428a2f98
        0x71374491
        -0x4a3f0431
        -0x164a245b
        0x3956c25b
        0x59f111f1
        -0x6dc07d5c    # -6.043E-28f
        -0x54e3a12b
        -0x27f85568
        0x12835b01
        0x243185be
        0x550c7dc3
        0x72be5d74
        -0x7f214e02
        -0x6423f959
        -0x3e640e8c
        -0x1b64963f
        -0x1041b87a
        0xfc19dc6
        0x240ca1cc
        0x2de92c6f
        0x4a7484aa    # 4006186.5f
        0x5cb0a9dc
        0x76f988da
        -0x67c1aeae
        -0x57ce3993
        -0x4ffcd838
        -0x40a68039
        -0x391ff40d
        -0x2a586eb9
        0x6ca6351
        0x14292967
        0x27b70a85
        0x2e1b2138
        0x4d2c6dfc    # 1.80805568E8f
        0x53380d13
        0x650a7354
        0x766a0abb
        -0x7e3d36d2
        -0x6d8dd37b
        -0x5d40175f
        -0x57e599b5
        -0x3db47490
        -0x3893ae5d
        -0x2e6d17e7
        -0x2966f9dc
        -0xbf1ca7b
        0x106aa070
        0x19a4c116
        0x1e376c08
        0x2748774c
        0x34b0bcb5
        0x391c0cb3
        0x4ed8aa4a    # 1.81751936E9f
        0x5b9cca4f
        0x682e6ff3
        0x748f82ee
        0x78a5636f
        -0x7b3787ec
        -0x7338fdf8
        -0x6f410006
        -0x5baf9315
        -0x41065c09
        -0x398e870e
    .end array-data
.end method

.method private static final Ch(III)I
    .locals 0

    and-int/2addr p1, p0

    not-int p0, p0

    and-int/2addr p0, p2

    xor-int/2addr p0, p1

    return p0
.end method

.method private static final Maj(III)I
    .locals 1

    and-int v0, p0, p1

    and-int/2addr p0, p2

    xor-int/2addr p0, v0

    and-int/2addr p1, p2

    xor-int/2addr p0, p1

    return p0
.end method

.method private static final Sum0(I)I
    .locals 3

    ushr-int/lit8 v0, p0, 0x2

    shl-int/lit8 v1, p0, 0x1e

    or-int/2addr v0, v1

    ushr-int/lit8 v1, p0, 0xd

    shl-int/lit8 v2, p0, 0x13

    or-int/2addr v1, v2

    xor-int/2addr v0, v1

    ushr-int/lit8 v1, p0, 0x16

    shl-int/lit8 p0, p0, 0xa

    or-int/2addr p0, v1

    xor-int/2addr p0, v0

    return p0
.end method

.method private static final Sum1(I)I
    .locals 3

    ushr-int/lit8 v0, p0, 0x6

    shl-int/lit8 v1, p0, 0x1a

    or-int/2addr v0, v1

    ushr-int/lit8 v1, p0, 0xb

    shl-int/lit8 v2, p0, 0x15

    or-int/2addr v1, v2

    xor-int/2addr v0, v1

    ushr-int/lit8 v1, p0, 0x19

    shl-int/lit8 p0, p0, 0x7

    or-int/2addr p0, v1

    xor-int/2addr p0, v0

    return p0
.end method

.method private static final Theta0(I)I
    .locals 3

    ushr-int/lit8 v0, p0, 0x7

    shl-int/lit8 v1, p0, 0x19

    or-int/2addr v0, v1

    ushr-int/lit8 v1, p0, 0x12

    shl-int/lit8 v2, p0, 0xe

    or-int/2addr v1, v2

    xor-int/2addr v0, v1

    ushr-int/lit8 p0, p0, 0x3

    xor-int/2addr p0, v0

    return p0
.end method

.method private static final Theta1(I)I
    .locals 3

    ushr-int/lit8 v0, p0, 0x11

    shl-int/lit8 v1, p0, 0xf

    or-int/2addr v0, v1

    ushr-int/lit8 v1, p0, 0x13

    shl-int/lit8 v2, p0, 0xd

    or-int/2addr v1, v2

    xor-int/2addr v0, v1

    ushr-int/lit8 p0, p0, 0xa

    xor-int/2addr p0, v0

    return p0
.end method

.method public static final synthetic access$Ch(III)I
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lorg/ton/crypto/digest/sha2/SHA256DigestKt;->Ch(III)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$Maj(III)I
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lorg/ton/crypto/digest/sha2/SHA256DigestKt;->Maj(III)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$Sum0(I)I
    .locals 0

    .line 1
    invoke-static {p0}, Lorg/ton/crypto/digest/sha2/SHA256DigestKt;->Sum0(I)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$Sum1(I)I
    .locals 0

    .line 1
    invoke-static {p0}, Lorg/ton/crypto/digest/sha2/SHA256DigestKt;->Sum1(I)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$Theta0(I)I
    .locals 0

    .line 1
    invoke-static {p0}, Lorg/ton/crypto/digest/sha2/SHA256DigestKt;->Theta0(I)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$Theta1(I)I
    .locals 0

    .line 1
    invoke-static {p0}, Lorg/ton/crypto/digest/sha2/SHA256DigestKt;->Theta1(I)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$getK$p()[I
    .locals 1

    .line 1
    sget-object v0, Lorg/ton/crypto/digest/sha2/SHA256DigestKt;->k:[I

    return-object v0
.end method
