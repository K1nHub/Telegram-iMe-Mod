.class public final Lcom/iMe/storage/data/utils/crypto/AESUtil;
.super Ljava/lang/Object;
.source "AESUtil.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/storage/data/utils/crypto/AESUtil$DecryptionException;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/iMe/storage/data/utils/crypto/AESUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iMe/storage/data/utils/crypto/AESUtil;

    invoke-direct {v0}, Lcom/iMe/storage/data/utils/crypto/AESUtil;-><init>()V

    sput-object v0, Lcom/iMe/storage/data/utils/crypto/AESUtil;->INSTANCE:Lcom/iMe/storage/data/utils/crypto/AESUtil;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final cipherData(Lorg/bouncycastle/crypto/BufferedBlockCipher;[B)[B
    .locals 7

    .line 265
    array-length v0, p2

    invoke-virtual {p1, v0}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->getOutputSize(I)I

    move-result v0

    .line 266
    new-array v0, v0, [B

    .line 267
    array-length v4, p2

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v0

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->processBytes([BII[BI)I

    move-result p2

    .line 270
    :try_start_0
    invoke-virtual {p1, v0, p2}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->doFinal([BI)I

    move-result p1
    :try_end_0
    .catch Lorg/bouncycastle/crypto/InvalidCipherTextException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 272
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, -0x1

    :goto_0
    add-int/2addr p2, p1

    .line 276
    new-array p1, p2, [B

    const/4 v1, 0x0

    .line 277
    invoke-static {v0, v1, p1, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1
.end method

.method private final copyOfRange([BII)[B
    .locals 2

    sub-int/2addr p3, p2

    .line 204
    new-array v0, p3, [B

    const/4 v1, 0x0

    .line 205
    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static synthetic decrypt$default(Lcom/iMe/storage/data/utils/crypto/AESUtil;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Object;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Lorg/bouncycastle/crypto/InvalidCipherTextException;,
            Lcom/iMe/storage/data/utils/crypto/AESUtil$DecryptionException;
        }
    .end annotation

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/16 p3, 0x1388

    .line 42
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/iMe/storage/data/utils/crypto/AESUtil;->decrypt(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic encrypt$default(Lcom/iMe/storage/data/utils/crypto/AESUtil;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Object;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/16 p3, 0x1388

    .line 33
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/iMe/storage/data/utils/crypto/AESUtil;->encrypt(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final encryptWithSetMode(Ljava/lang/String;Ljava/lang/String;IILorg/bouncycastle/crypto/paddings/BlockCipherPadding;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p2, :cond_3

    if-eqz p1, :cond_2

    .line 222
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    const/16 v1, 0x10

    new-array v2, v1, [B

    .line 224
    invoke-virtual {v0, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 226
    sget-object v0, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const-string v3, "this as java.lang.String).getBytes(charset)"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 228
    new-instance v3, Lorg/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;

    invoke-direct {v3}, Lorg/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;-><init>()V

    .line 229
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object p2

    const-string v4, "this as java.lang.String).toCharArray()"

    invoke-static {p2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Lorg/bouncycastle/crypto/PBEParametersGenerator;->PKCS5PasswordToUTF8Bytes([C)[B

    move-result-object p2

    invoke-virtual {v3, p2, v2, p3}, Lorg/bouncycastle/crypto/PBEParametersGenerator;->init([B[BI)V

    const/16 p2, 0x100

    .line 231
    invoke-virtual {v3, p2}, Lorg/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->generateDerivedParameters(I)Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object p2

    const-string p3, "null cannot be cast to non-null type org.bouncycastle.crypto.params.KeyParameter"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lorg/bouncycastle/crypto/params/KeyParameter;

    .line 233
    new-instance p3, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    invoke-direct {p3, p2, v2}, Lorg/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[B)V

    if-nez p4, :cond_0

    .line 236
    new-instance p2, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;

    new-instance p4, Lorg/bouncycastle/crypto/engines/AESEngine;

    invoke-direct {p4}, Lorg/bouncycastle/crypto/engines/AESEngine;-><init>()V

    invoke-direct {p2, p4}, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    goto :goto_0

    .line 238
    :cond_0
    new-instance p2, Lorg/bouncycastle/crypto/modes/OFBBlockCipher;

    new-instance p4, Lorg/bouncycastle/crypto/engines/AESEngine;

    invoke-direct {p4}, Lorg/bouncycastle/crypto/engines/AESEngine;-><init>()V

    const/16 v3, 0x80

    invoke-direct {p2, p4, v3}, Lorg/bouncycastle/crypto/modes/OFBBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;I)V

    :goto_0
    if-eqz p5, :cond_1

    .line 243
    new-instance p4, Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;

    invoke-direct {p4, p2, p5}, Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;Lorg/bouncycastle/crypto/paddings/BlockCipherPadding;)V

    goto :goto_1

    .line 245
    :cond_1
    new-instance p4, Lorg/bouncycastle/crypto/BufferedBlockCipher;

    invoke-direct {p4, p2}, Lorg/bouncycastle/crypto/BufferedBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    .line 248
    :goto_1
    invoke-virtual {p4}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->reset()V

    const/4 p2, 0x1

    .line 249
    invoke-virtual {p4, p2, p3}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    .line 251
    invoke-direct {p0, p4, p1}, Lcom/iMe/storage/data/utils/crypto/AESUtil;->cipherData(Lorg/bouncycastle/crypto/BufferedBlockCipher;[B)[B

    move-result-object p1

    .line 255
    array-length p2, p1

    add-int p3, v1, p2

    .line 256
    new-array p3, p3, [B

    const/4 p4, 0x0

    .line 257
    invoke-static {v2, p4, p3, p4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 258
    invoke-static {p1, p4, p3, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 260
    invoke-static {p3}, Lorg/apache/commons/codec/binary/Base64;->encodeBase64([B)[B

    move-result-object p1

    new-instance p2, Ljava/lang/String;

    const-string p3, "raw"

    .line 261
    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object p2

    .line 218
    :cond_2
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "Clear text null"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    .line 214
    :cond_3
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "Password null"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final decrypt(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Lorg/bouncycastle/crypto/InvalidCipherTextException;,
            Lcom/iMe/storage/data/utils/crypto/AESUtil$DecryptionException;
        }
    .end annotation

    .line 43
    new-instance v5, Lorg/bouncycastle/crypto/paddings/ISO10126d2Padding;

    invoke-direct {v5}, Lorg/bouncycastle/crypto/paddings/ISO10126d2Padding;-><init>()V

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/iMe/storage/data/utils/crypto/AESUtil;->decryptWithSetMode(Ljava/lang/String;Ljava/lang/String;IILorg/bouncycastle/crypto/paddings/BlockCipherPadding;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final decryptWithSetMode(Ljava/lang/String;Ljava/lang/String;IILorg/bouncycastle/crypto/paddings/BlockCipherPadding;)Ljava/lang/String;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/InvalidCipherTextException;,
            Ljava/io/UnsupportedEncodingException;,
            Lcom/iMe/storage/data/utils/crypto/AESUtil$DecryptionException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p5

    if-eqz p2, :cond_5

    if-eqz v1, :cond_4

    .line 58
    sget-object v3, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    const-string v4, "this as java.lang.String).getBytes(charset)"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lorg/apache/commons/codec/binary/Base64;->decodeBase64([B)[B

    move-result-object v1

    const-string v4, "cipherData"

    .line 61
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/16 v5, 0x10

    invoke-direct {p0, v1, v4, v5}, Lcom/iMe/storage/data/utils/crypto/AESUtil;->copyOfRange([BII)[B

    move-result-object v6

    .line 62
    array-length v7, v1

    invoke-direct {p0, v1, v5, v7}, Lcom/iMe/storage/data/utils/crypto/AESUtil;->copyOfRange([BII)[B

    move-result-object v9

    .line 64
    new-instance v1, Lorg/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;-><init>()V

    .line 67
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    const-string v7, "this as java.lang.String).toCharArray()"

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    invoke-static {v5}, Lorg/bouncycastle/crypto/PBEParametersGenerator;->PKCS5PasswordToUTF8Bytes([C)[B

    move-result-object v5

    move/from16 v7, p3

    .line 65
    invoke-virtual {v1, v5, v6, v7}, Lorg/bouncycastle/crypto/PBEParametersGenerator;->init([B[BI)V

    const/16 v5, 0x100

    .line 70
    invoke-virtual {v1, v5}, Lorg/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->generateDerivedParameters(I)Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v1

    const-string v5, "null cannot be cast to non-null type org.bouncycastle.crypto.params.KeyParameter"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lorg/bouncycastle/crypto/params/KeyParameter;

    .line 72
    new-instance v5, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    invoke-direct {v5, v1, v6}, Lorg/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[B)V

    if-nez p4, :cond_0

    .line 76
    new-instance v1, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;

    new-instance v6, Lorg/bouncycastle/crypto/engines/AESEngine;

    invoke-direct {v6}, Lorg/bouncycastle/crypto/engines/AESEngine;-><init>()V

    invoke-direct {v1, v6}, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    goto :goto_0

    .line 79
    :cond_0
    new-instance v1, Lorg/bouncycastle/crypto/modes/OFBBlockCipher;

    new-instance v6, Lorg/bouncycastle/crypto/engines/AESEngine;

    invoke-direct {v6}, Lorg/bouncycastle/crypto/engines/AESEngine;-><init>()V

    const/16 v7, 0x80

    invoke-direct {v1, v6, v7}, Lorg/bouncycastle/crypto/modes/OFBBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;I)V

    :goto_0
    if-eqz v2, :cond_1

    .line 84
    new-instance v6, Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;

    invoke-direct {v6, v1, v2}, Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;Lorg/bouncycastle/crypto/paddings/BlockCipherPadding;)V

    goto :goto_1

    .line 86
    :cond_1
    new-instance v6, Lorg/bouncycastle/crypto/BufferedBlockCipher;

    invoke-direct {v6, v1}, Lorg/bouncycastle/crypto/BufferedBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    .line 89
    :goto_1
    invoke-virtual {v6}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->reset()V

    .line 90
    invoke-virtual {v6, v4, v5}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    .line 93
    array-length v1, v9

    invoke-virtual {v6, v1}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->getOutputSize(I)I

    move-result v1

    new-array v1, v1, [B

    const/4 v10, 0x0

    .line 94
    array-length v11, v9

    const/4 v13, 0x0

    move-object v8, v6

    move-object v12, v1

    invoke-virtual/range {v8 .. v13}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->processBytes([BII[BI)I

    move-result v2

    .line 95
    invoke-virtual {v6, v1, v2}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->doFinal([BI)I

    move-result v5

    add-int/2addr v2, v5

    .line 98
    new-array v5, v2, [B

    .line 99
    invoke-static {v1, v4, v5, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v1, Ljava/lang/String;

    .line 102
    invoke-direct {v1, v5, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 103
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_2

    const/4 v4, 0x1

    :cond_2
    if-nez v4, :cond_3

    return-object v1

    .line 104
    :cond_3
    new-instance v1, Lcom/iMe/storage/data/utils/crypto/AESUtil$DecryptionException;

    const-string v2, "Decrypted string is empty."

    invoke-direct {v1, v2}, Lcom/iMe/storage/data/utils/crypto/AESUtil$DecryptionException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 55
    :cond_4
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Cipher text null"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 51
    :cond_5
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Password null"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final encrypt(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 34
    new-instance v5, Lorg/bouncycastle/crypto/paddings/ISO10126d2Padding;

    invoke-direct {v5}, Lorg/bouncycastle/crypto/paddings/ISO10126d2Padding;-><init>()V

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/iMe/storage/data/utils/crypto/AESUtil;->encryptWithSetMode(Ljava/lang/String;Ljava/lang/String;IILorg/bouncycastle/crypto/paddings/BlockCipherPadding;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
