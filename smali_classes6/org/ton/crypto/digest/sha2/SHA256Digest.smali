.class public final Lorg/ton/crypto/digest/sha2/SHA256Digest;
.super Lorg/ton/crypto/digest/md4/GeneralDigest;
.source "SHA256Digest.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ton/crypto/digest/sha2/SHA256Digest$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSHA256Digest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SHA256Digest.kt\norg/ton/crypto/digest/sha2/SHA256Digest\n+ 2 MemoryFactoryJvm.kt\nio/ktor/utils/io/bits/MemoryFactoryJvmKt\n+ 3 MemoryPrimitivesJvm.kt\nio/ktor/utils/io/bits/MemoryPrimitivesJvmKt\n*L\n1#1,212:1\n17#2,4:213\n51#3,2:217\n51#3,2:219\n51#3,2:221\n51#3,2:223\n51#3,2:225\n51#3,2:227\n51#3,2:229\n51#3,2:231\n*S KotlinDebug\n*F\n+ 1 SHA256Digest.kt\norg/ton/crypto/digest/sha2/SHA256Digest\n*L\n38#1:213,4\n39#1:217,2\n40#1:219,2\n41#1:221,2\n42#1:223,2\n43#1:225,2\n44#1:227,2\n45#1:229,2\n46#1:231,2\n*E\n"
.end annotation


# instance fields
.field private h1:I

.field private h2:I

.field private h3:I

.field private h4:I

.field private h5:I

.field private h6:I

.field private h7:I

.field private h8:I

.field private final x:[I

.field private xOff:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/ton/crypto/digest/sha2/SHA256Digest$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/ton/crypto/digest/sha2/SHA256Digest$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Lorg/ton/crypto/digest/md4/GeneralDigest;-><init>()V

    const/16 v0, 0x40

    new-array v0, v0, [I

    .line 25
    iput-object v0, p0, Lorg/ton/crypto/digest/sha2/SHA256Digest;->x:[I

    .line 29
    invoke-virtual {p0}, Lorg/ton/crypto/digest/sha2/SHA256Digest;->reset()V

    return-void
.end method


# virtual methods
.method public build([BI)[B
    .locals 3

    const-string v0, "output"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-virtual {p0}, Lorg/ton/crypto/digest/md4/GeneralDigest;->finish()V

    .line 38
    array-length v0, p1

    const/4 v1, 0x0

    .line 20
    invoke-static {p1, v1, v0}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    const-string v1, "wrap(this, offset, lengt\u2026der(ByteOrder.BIG_ENDIAN)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lio/ktor/utils/io/bits/Memory;->constructor-impl(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 39
    iget v1, p0, Lorg/ton/crypto/digest/sha2/SHA256Digest;->h1:I

    .line 51
    invoke-virtual {v0, p2, v1}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    add-int/lit8 v1, p2, 0x4

    .line 40
    iget v2, p0, Lorg/ton/crypto/digest/sha2/SHA256Digest;->h2:I

    .line 51
    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    add-int/lit8 v1, p2, 0x8

    .line 41
    iget v2, p0, Lorg/ton/crypto/digest/sha2/SHA256Digest;->h3:I

    .line 51
    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    add-int/lit8 v1, p2, 0xc

    .line 42
    iget v2, p0, Lorg/ton/crypto/digest/sha2/SHA256Digest;->h4:I

    .line 51
    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    add-int/lit8 v1, p2, 0x10

    .line 43
    iget v2, p0, Lorg/ton/crypto/digest/sha2/SHA256Digest;->h5:I

    .line 51
    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    add-int/lit8 v1, p2, 0x14

    .line 44
    iget v2, p0, Lorg/ton/crypto/digest/sha2/SHA256Digest;->h6:I

    .line 51
    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    add-int/lit8 v1, p2, 0x18

    .line 45
    iget v2, p0, Lorg/ton/crypto/digest/sha2/SHA256Digest;->h7:I

    .line 51
    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    add-int/lit8 p2, p2, 0x1c

    .line 46
    iget v1, p0, Lorg/ton/crypto/digest/sha2/SHA256Digest;->h8:I

    .line 51
    invoke-virtual {v0, p2, v1}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 49
    invoke-virtual {p0}, Lorg/ton/crypto/digest/sha2/SHA256Digest;->reset()V

    return-object p1
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    const-string v0, "SHA-256"

    return-object v0
.end method

.method public getDigestSize()I
    .locals 1

    const/16 v0, 0x20

    return v0
.end method

.method protected processBlock()V
    .locals 13

    const/16 v0, 0x10

    :goto_0
    const/16 v1, 0x40

    if-ge v0, v1, :cond_0

    .line 96
    iget-object v1, p0, Lorg/ton/crypto/digest/sha2/SHA256Digest;->x:[I

    add-int/lit8 v2, v0, -0x2

    aget v2, v1, v2

    invoke-static {v2}, Lorg/ton/crypto/digest/sha2/SHA256DigestKt;->access$Theta1(I)I

    move-result v2

    iget-object v3, p0, Lorg/ton/crypto/digest/sha2/SHA256Digest;->x:[I

    add-int/lit8 v4, v0, -0x7

    aget v4, v3, v4

    add-int/2addr v2, v4

    add-int/lit8 v4, v0, -0xf

    aget v3, v3, v4

    invoke-static {v3}, Lorg/ton/crypto/digest/sha2/SHA256DigestKt;->access$Theta0(I)I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lorg/ton/crypto/digest/sha2/SHA256Digest;->x:[I

    add-int/lit8 v4, v0, -0x10

    aget v3, v3, v4

    add-int/2addr v2, v3

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 100
    :cond_0
    iget v0, p0, Lorg/ton/crypto/digest/sha2/SHA256Digest;->h1:I

    .line 101
    iget v1, p0, Lorg/ton/crypto/digest/sha2/SHA256Digest;->h2:I

    .line 102
    iget v2, p0, Lorg/ton/crypto/digest/sha2/SHA256Digest;->h3:I

    .line 103
    iget v3, p0, Lorg/ton/crypto/digest/sha2/SHA256Digest;->h4:I

    .line 104
    iget v4, p0, Lorg/ton/crypto/digest/sha2/SHA256Digest;->h5:I

    .line 105
    iget v5, p0, Lorg/ton/crypto/digest/sha2/SHA256Digest;->h6:I

    .line 106
    iget v6, p0, Lorg/ton/crypto/digest/sha2/SHA256Digest;->h7:I

    .line 107
    iget v7, p0, Lorg/ton/crypto/digest/sha2/SHA256Digest;->h8:I

    const/4 v8, 0x0

    move v9, v8

    move v10, v9

    :goto_1
    const/16 v11, 0x8

    if-ge v9, v11, :cond_1

    .line 112
    invoke-static {v4}, Lorg/ton/crypto/digest/sha2/SHA256DigestKt;->access$Sum1(I)I

    move-result v11

    invoke-static {v4, v5, v6}, Lorg/ton/crypto/digest/sha2/SHA256DigestKt;->access$Ch(III)I

    move-result v12

    add-int/2addr v11, v12

    invoke-static {}, Lorg/ton/crypto/digest/sha2/SHA256DigestKt;->access$getK$p()[I

    move-result-object v12

    aget v12, v12, v10

    add-int/2addr v11, v12

    iget-object v12, p0, Lorg/ton/crypto/digest/sha2/SHA256Digest;->x:[I

    aget v12, v12, v10

    add-int/2addr v11, v12

    add-int/2addr v7, v11

    add-int/2addr v3, v7

    .line 114
    invoke-static {v0}, Lorg/ton/crypto/digest/sha2/SHA256DigestKt;->access$Sum0(I)I

    move-result v11

    invoke-static {v0, v1, v2}, Lorg/ton/crypto/digest/sha2/SHA256DigestKt;->access$Maj(III)I

    move-result v12

    add-int/2addr v11, v12

    add-int/2addr v7, v11

    add-int/lit8 v10, v10, 0x1

    .line 118
    invoke-static {v3}, Lorg/ton/crypto/digest/sha2/SHA256DigestKt;->access$Sum1(I)I

    move-result v11

    invoke-static {v3, v4, v5}, Lorg/ton/crypto/digest/sha2/SHA256DigestKt;->access$Ch(III)I

    move-result v12

    add-int/2addr v11, v12

    invoke-static {}, Lorg/ton/crypto/digest/sha2/SHA256DigestKt;->access$getK$p()[I

    move-result-object v12

    aget v12, v12, v10

    add-int/2addr v11, v12

    iget-object v12, p0, Lorg/ton/crypto/digest/sha2/SHA256Digest;->x:[I

    aget v12, v12, v10

    add-int/2addr v11, v12

    add-int/2addr v6, v11

    add-int/2addr v2, v6

    .line 120
    invoke-static {v7}, Lorg/ton/crypto/digest/sha2/SHA256DigestKt;->access$Sum0(I)I

    move-result v11

    invoke-static {v7, v0, v1}, Lorg/ton/crypto/digest/sha2/SHA256DigestKt;->access$Maj(III)I

    move-result v12

    add-int/2addr v11, v12

    add-int/2addr v6, v11

    add-int/lit8 v10, v10, 0x1

    .line 124
    invoke-static {v2}, Lorg/ton/crypto/digest/sha2/SHA256DigestKt;->access$Sum1(I)I

    move-result v11

    invoke-static {v2, v3, v4}, Lorg/ton/crypto/digest/sha2/SHA256DigestKt;->access$Ch(III)I

    move-result v12

    add-int/2addr v11, v12

    invoke-static {}, Lorg/ton/crypto/digest/sha2/SHA256DigestKt;->access$getK$p()[I

    move-result-object v12

    aget v12, v12, v10

    add-int/2addr v11, v12

    iget-object v12, p0, Lorg/ton/crypto/digest/sha2/SHA256Digest;->x:[I

    aget v12, v12, v10

    add-int/2addr v11, v12

    add-int/2addr v5, v11

    add-int/2addr v1, v5

    .line 126
    invoke-static {v6}, Lorg/ton/crypto/digest/sha2/SHA256DigestKt;->access$Sum0(I)I

    move-result v11

    invoke-static {v6, v7, v0}, Lorg/ton/crypto/digest/sha2/SHA256DigestKt;->access$Maj(III)I

    move-result v12

    add-int/2addr v11, v12

    add-int/2addr v5, v11

    add-int/lit8 v10, v10, 0x1

    .line 130
    invoke-static {v1}, Lorg/ton/crypto/digest/sha2/SHA256DigestKt;->access$Sum1(I)I

    move-result v11

    invoke-static {v1, v2, v3}, Lorg/ton/crypto/digest/sha2/SHA256DigestKt;->access$Ch(III)I

    move-result v12

    add-int/2addr v11, v12

    invoke-static {}, Lorg/ton/crypto/digest/sha2/SHA256DigestKt;->access$getK$p()[I

    move-result-object v12

    aget v12, v12, v10

    add-int/2addr v11, v12

    iget-object v12, p0, Lorg/ton/crypto/digest/sha2/SHA256Digest;->x:[I

    aget v12, v12, v10

    add-int/2addr v11, v12

    add-int/2addr v4, v11

    add-int/2addr v0, v4

    .line 132
    invoke-static {v5}, Lorg/ton/crypto/digest/sha2/SHA256DigestKt;->access$Sum0(I)I

    move-result v11

    invoke-static {v5, v6, v7}, Lorg/ton/crypto/digest/sha2/SHA256DigestKt;->access$Maj(III)I

    move-result v12

    add-int/2addr v11, v12

    add-int/2addr v4, v11

    add-int/lit8 v10, v10, 0x1

    .line 136
    invoke-static {v0}, Lorg/ton/crypto/digest/sha2/SHA256DigestKt;->access$Sum1(I)I

    move-result v11

    invoke-static {v0, v1, v2}, Lorg/ton/crypto/digest/sha2/SHA256DigestKt;->access$Ch(III)I

    move-result v12

    add-int/2addr v11, v12

    invoke-static {}, Lorg/ton/crypto/digest/sha2/SHA256DigestKt;->access$getK$p()[I

    move-result-object v12

    aget v12, v12, v10

    add-int/2addr v11, v12

    iget-object v12, p0, Lorg/ton/crypto/digest/sha2/SHA256Digest;->x:[I

    aget v12, v12, v10

    add-int/2addr v11, v12

    add-int/2addr v3, v11

    add-int/2addr v7, v3

    .line 138
    invoke-static {v4}, Lorg/ton/crypto/digest/sha2/SHA256DigestKt;->access$Sum0(I)I

    move-result v11

    invoke-static {v4, v5, v6}, Lorg/ton/crypto/digest/sha2/SHA256DigestKt;->access$Maj(III)I

    move-result v12

    add-int/2addr v11, v12

    add-int/2addr v3, v11

    add-int/lit8 v10, v10, 0x1

    .line 142
    invoke-static {v7}, Lorg/ton/crypto/digest/sha2/SHA256DigestKt;->access$Sum1(I)I

    move-result v11

    invoke-static {v7, v0, v1}, Lorg/ton/crypto/digest/sha2/SHA256DigestKt;->access$Ch(III)I

    move-result v12

    add-int/2addr v11, v12

    invoke-static {}, Lorg/ton/crypto/digest/sha2/SHA256DigestKt;->access$getK$p()[I

    move-result-object v12

    aget v12, v12, v10

    add-int/2addr v11, v12

    iget-object v12, p0, Lorg/ton/crypto/digest/sha2/SHA256Digest;->x:[I

    aget v12, v12, v10

    add-int/2addr v11, v12

    add-int/2addr v2, v11

    add-int/2addr v6, v2

    .line 144
    invoke-static {v3}, Lorg/ton/crypto/digest/sha2/SHA256DigestKt;->access$Sum0(I)I

    move-result v11

    invoke-static {v3, v4, v5}, Lorg/ton/crypto/digest/sha2/SHA256DigestKt;->access$Maj(III)I

    move-result v12

    add-int/2addr v11, v12

    add-int/2addr v2, v11

    add-int/lit8 v10, v10, 0x1

    .line 148
    invoke-static {v6}, Lorg/ton/crypto/digest/sha2/SHA256DigestKt;->access$Sum1(I)I

    move-result v11

    invoke-static {v6, v7, v0}, Lorg/ton/crypto/digest/sha2/SHA256DigestKt;->access$Ch(III)I

    move-result v12

    add-int/2addr v11, v12

    invoke-static {}, Lorg/ton/crypto/digest/sha2/SHA256DigestKt;->access$getK$p()[I

    move-result-object v12

    aget v12, v12, v10

    add-int/2addr v11, v12

    iget-object v12, p0, Lorg/ton/crypto/digest/sha2/SHA256Digest;->x:[I

    aget v12, v12, v10

    add-int/2addr v11, v12

    add-int/2addr v1, v11

    add-int/2addr v5, v1

    .line 150
    invoke-static {v2}, Lorg/ton/crypto/digest/sha2/SHA256DigestKt;->access$Sum0(I)I

    move-result v11

    invoke-static {v2, v3, v4}, Lorg/ton/crypto/digest/sha2/SHA256DigestKt;->access$Maj(III)I

    move-result v12

    add-int/2addr v11, v12

    add-int/2addr v1, v11

    add-int/lit8 v10, v10, 0x1

    .line 154
    invoke-static {v5}, Lorg/ton/crypto/digest/sha2/SHA256DigestKt;->access$Sum1(I)I

    move-result v11

    invoke-static {v5, v6, v7}, Lorg/ton/crypto/digest/sha2/SHA256DigestKt;->access$Ch(III)I

    move-result v12

    add-int/2addr v11, v12

    invoke-static {}, Lorg/ton/crypto/digest/sha2/SHA256DigestKt;->access$getK$p()[I

    move-result-object v12

    aget v12, v12, v10

    add-int/2addr v11, v12

    iget-object v12, p0, Lorg/ton/crypto/digest/sha2/SHA256Digest;->x:[I

    aget v12, v12, v10

    add-int/2addr v11, v12

    add-int/2addr v0, v11

    add-int/2addr v4, v0

    .line 156
    invoke-static {v1}, Lorg/ton/crypto/digest/sha2/SHA256DigestKt;->access$Sum0(I)I

    move-result v11

    invoke-static {v1, v2, v3}, Lorg/ton/crypto/digest/sha2/SHA256DigestKt;->access$Maj(III)I

    move-result v12

    add-int/2addr v11, v12

    add-int/2addr v0, v11

    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    .line 160
    :cond_1
    iget v9, p0, Lorg/ton/crypto/digest/sha2/SHA256Digest;->h1:I

    add-int/2addr v9, v0

    iput v9, p0, Lorg/ton/crypto/digest/sha2/SHA256Digest;->h1:I

    .line 161
    iget v0, p0, Lorg/ton/crypto/digest/sha2/SHA256Digest;->h2:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/ton/crypto/digest/sha2/SHA256Digest;->h2:I

    .line 162
    iget v0, p0, Lorg/ton/crypto/digest/sha2/SHA256Digest;->h3:I

    add-int/2addr v0, v2

    iput v0, p0, Lorg/ton/crypto/digest/sha2/SHA256Digest;->h3:I

    .line 163
    iget v0, p0, Lorg/ton/crypto/digest/sha2/SHA256Digest;->h4:I

    add-int/2addr v0, v3

    iput v0, p0, Lorg/ton/crypto/digest/sha2/SHA256Digest;->h4:I

    .line 164
    iget v0, p0, Lorg/ton/crypto/digest/sha2/SHA256Digest;->h5:I

    add-int/2addr v0, v4

    iput v0, p0, Lorg/ton/crypto/digest/sha2/SHA256Digest;->h5:I

    .line 165
    iget v0, p0, Lorg/ton/crypto/digest/sha2/SHA256Digest;->h6:I

    add-int/2addr v0, v5

    iput v0, p0, Lorg/ton/crypto/digest/sha2/SHA256Digest;->h6:I

    .line 166
    iget v0, p0, Lorg/ton/crypto/digest/sha2/SHA256Digest;->h7:I

    add-int/2addr v0, v6

    iput v0, p0, Lorg/ton/crypto/digest/sha2/SHA256Digest;->h7:I

    .line 167
    iget v0, p0, Lorg/ton/crypto/digest/sha2/SHA256Digest;->h8:I

    add-int/2addr v0, v7

    iput v0, p0, Lorg/ton/crypto/digest/sha2/SHA256Digest;->h8:I

    .line 170
    iput v8, p0, Lorg/ton/crypto/digest/sha2/SHA256Digest;->xOff:I

    .line 171
    iget-object v1, p0, Lorg/ton/crypto/digest/sha2/SHA256Digest;->x:[I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlin/collections/ArraysKt;->fill$default([IIIIILjava/lang/Object;)V

    return-void
.end method

.method protected processLength(J)V
    .locals 4

    .line 86
    iget v0, p0, Lorg/ton/crypto/digest/sha2/SHA256Digest;->xOff:I

    const/16 v1, 0xe

    if-le v0, v1, :cond_0

    .line 87
    invoke-virtual {p0}, Lorg/ton/crypto/digest/sha2/SHA256Digest;->processBlock()V

    .line 89
    :cond_0
    iget-object v0, p0, Lorg/ton/crypto/digest/sha2/SHA256Digest;->x:[I

    const/16 v2, 0x20

    ushr-long v2, p1, v2

    long-to-int v2, v2

    aput v2, v0, v1

    const/16 v1, 0xf

    const-wide v2, 0xffffffffL

    and-long/2addr p1, v2

    long-to-int p1, p1

    .line 90
    aput p1, v0, v1

    return-void
.end method

.method protected processWord([BI)V
    .locals 3

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    aget-byte v0, p1, p2

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p2, 0x1

    .line 76
    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0x10

    shl-int/2addr v1, v2

    or-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x2

    .line 77
    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 p2, p2, 0x3

    .line 78
    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, v0

    .line 79
    iget-object p2, p0, Lorg/ton/crypto/digest/sha2/SHA256Digest;->x:[I

    iget v0, p0, Lorg/ton/crypto/digest/sha2/SHA256Digest;->xOff:I

    aput p1, p2, v0

    add-int/lit8 v0, v0, 0x1

    .line 80
    iput v0, p0, Lorg/ton/crypto/digest/sha2/SHA256Digest;->xOff:I

    if-ne v0, v2, :cond_0

    .line 81
    invoke-virtual {p0}, Lorg/ton/crypto/digest/sha2/SHA256Digest;->processBlock()V

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 7

    .line 54
    invoke-super {p0}, Lorg/ton/crypto/digest/md4/GeneralDigest;->reset()V

    const v0, 0x6a09e667

    .line 61
    iput v0, p0, Lorg/ton/crypto/digest/sha2/SHA256Digest;->h1:I

    const v0, -0x4498517b

    .line 62
    iput v0, p0, Lorg/ton/crypto/digest/sha2/SHA256Digest;->h2:I

    const v0, 0x3c6ef372

    .line 63
    iput v0, p0, Lorg/ton/crypto/digest/sha2/SHA256Digest;->h3:I

    const v0, -0x5ab00ac6

    .line 64
    iput v0, p0, Lorg/ton/crypto/digest/sha2/SHA256Digest;->h4:I

    const v0, 0x510e527f

    .line 65
    iput v0, p0, Lorg/ton/crypto/digest/sha2/SHA256Digest;->h5:I

    const v0, -0x64fa9774

    .line 66
    iput v0, p0, Lorg/ton/crypto/digest/sha2/SHA256Digest;->h6:I

    const v0, 0x1f83d9ab

    .line 67
    iput v0, p0, Lorg/ton/crypto/digest/sha2/SHA256Digest;->h7:I

    const v0, 0x5be0cd19

    .line 68
    iput v0, p0, Lorg/ton/crypto/digest/sha2/SHA256Digest;->h8:I

    const/4 v0, 0x0

    .line 70
    iput v0, p0, Lorg/ton/crypto/digest/sha2/SHA256Digest;->xOff:I

    .line 71
    iget-object v1, p0, Lorg/ton/crypto/digest/sha2/SHA256Digest;->x:[I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlin/collections/ArraysKt;->fill$default([IIIIILjava/lang/Object;)V

    return-void
.end method
