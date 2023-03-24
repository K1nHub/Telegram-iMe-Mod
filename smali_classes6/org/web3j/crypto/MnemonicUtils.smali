.class public Lorg/web3j/crypto/MnemonicUtils;
.super Ljava/lang/Object;
.source "MnemonicUtils.java"


# static fields
.field private static WORD_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static calculateChecksum([B)B
    .locals 2

    .line 252
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x8

    .line 253
    div-int/lit8 v0, v0, 0x20

    rsub-int/lit8 v0, v0, 0x8

    const/16 v1, 0xff

    shl-int v0, v1, v0

    int-to-byte v0, v0

    .line 254
    invoke-static {p0}, Lorg/web3j/crypto/Hash;->sha256([B)[B

    move-result-object p0

    const/4 v1, 0x0

    .line 256
    aget-byte p0, p0, v1

    and-int/2addr p0, v0

    int-to-byte p0, p0

    return p0
.end method

.method private static convertToBits([BB)[Z
    .locals 9

    .line 184
    array-length v0, p0

    const/16 v1, 0x8

    mul-int/2addr v0, v1

    .line 185
    div-int/lit8 v2, v0, 0x20

    add-int v3, v0, v2

    .line 187
    new-array v3, v3, [Z

    const/4 v4, 0x0

    move v5, v4

    .line 189
    :goto_0
    array-length v6, p0

    if-ge v5, v6, :cond_1

    move v6, v4

    :goto_1
    if-ge v6, v1, :cond_0

    .line 191
    aget-byte v7, p0, v5

    mul-int/lit8 v8, v5, 0x8

    add-int/2addr v8, v6

    .line 192
    invoke-static {v7, v6}, Lorg/web3j/crypto/MnemonicUtils;->toBit(BI)Z

    move-result v7

    aput-boolean v7, v3, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    :goto_2
    if-ge v4, v2, :cond_2

    add-int p0, v0, v4

    .line 197
    invoke-static {p1, v4}, Lorg/web3j/crypto/MnemonicUtils;->toBit(BI)Z

    move-result v1

    aput-boolean v1, v3, p0

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    return-object v3
.end method

.method public static generateEntropy(Ljava/lang/String;)[B
    .locals 4

    .line 96
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 97
    invoke-static {p0, v0}, Lorg/web3j/crypto/MnemonicUtils;->mnemonicToBits(Ljava/lang/String;Ljava/util/BitSet;)I

    move-result p0

    if-eqz p0, :cond_3

    mul-int/lit8 p0, p0, 0x20

    .line 102
    div-int/lit8 p0, p0, 0x21

    .line 103
    rem-int/lit8 v1, p0, 0x8

    if-nez v1, :cond_2

    .line 106
    div-int/lit8 p0, p0, 0x8

    new-array v1, p0, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p0, :cond_0

    .line 108
    invoke-static {v0, v2}, Lorg/web3j/crypto/MnemonicUtils;->readByte(Ljava/util/BitSet;I)B

    move-result v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 110
    :cond_0
    invoke-static {v1}, Lorg/web3j/crypto/MnemonicUtils;->validateEntropy([B)V

    .line 112
    invoke-static {v1}, Lorg/web3j/crypto/MnemonicUtils;->calculateChecksum([B)B

    move-result v2

    .line 113
    invoke-static {v0, p0}, Lorg/web3j/crypto/MnemonicUtils;->readByte(Ljava/util/BitSet;I)B

    move-result p0

    if-ne v2, p0, :cond_1

    return-object v1

    .line 115
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Wrong checksum"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 104
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Wrong mnemonic size"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 99
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Empty mnemonic"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static generateMnemonic([B)Ljava/lang/String;
    .locals 6

    .line 64
    invoke-static {p0}, Lorg/web3j/crypto/MnemonicUtils;->validateEntropy([B)V

    .line 65
    invoke-static {}, Lorg/web3j/crypto/MnemonicUtils;->getWords()Ljava/util/List;

    move-result-object v0

    .line 67
    array-length v1, p0

    mul-int/lit8 v1, v1, 0x8

    .line 68
    div-int/lit8 v2, v1, 0x20

    .line 70
    invoke-static {p0}, Lorg/web3j/crypto/MnemonicUtils;->calculateChecksum([B)B

    move-result v3

    .line 71
    invoke-static {p0, v3}, Lorg/web3j/crypto/MnemonicUtils;->convertToBits([BB)[Z

    move-result-object p0

    add-int/2addr v1, v2

    .line 73
    div-int/lit8 v1, v1, 0xb

    .line 74
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_2

    .line 76
    invoke-static {p0, v4}, Lorg/web3j/crypto/MnemonicUtils;->nextElevenBits([ZI)[Z

    move-result-object v5

    invoke-static {v5}, Lorg/web3j/crypto/MnemonicUtils;->toInt([Z)I

    move-result v5

    .line 77
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v1, -0x1

    if-ge v4, v5, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    move v5, v3

    :goto_1
    if-eqz v5, :cond_1

    const-string v5, " "

    .line 81
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 85
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static generateSeed(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 2

    .line 140
    invoke-static {p0}, Lorg/web3j/crypto/MnemonicUtils;->isMnemonicEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "mnemonic%s"

    .line 145
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 146
    new-instance v0, Lorg/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;

    new-instance v1, Lorg/bouncycastle/crypto/digests/SHA512Digest;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/digests/SHA512Digest;-><init>()V

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    .line 147
    sget-object v1, Lorg/web3j/compat/Compat;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const/16 v1, 0x800

    invoke-virtual {v0, p0, p1, v1}, Lorg/bouncycastle/crypto/PBEParametersGenerator;->init([B[BI)V

    const/16 p0, 0x200

    .line 149
    invoke-virtual {v0, p0}, Lorg/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->generateDerivedParameters(I)Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object p0

    return-object p0

    .line 141
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Mnemonic is required to generate a seed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getWords()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 122
    sget-object v0, Lorg/web3j/crypto/MnemonicUtils;->WORD_LIST:Ljava/util/List;

    if-nez v0, :cond_0

    .line 123
    invoke-static {}, Lorg/web3j/crypto/MnemonicUtils;->populateWordList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/web3j/crypto/MnemonicUtils;->WORD_LIST:Ljava/util/List;

    .line 125
    :cond_0
    sget-object v0, Lorg/web3j/crypto/MnemonicUtils;->WORD_LIST:Ljava/util/List;

    return-object v0
.end method

.method private static isBitSet(II)Z
    .locals 0

    shr-int/2addr p0, p1

    const/4 p1, 0x1

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private static isMnemonicEmpty(Ljava/lang/String;)Z
    .locals 0

    if-eqz p0, :cond_1

    .line 162
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static mnemonicToBits(Ljava/lang/String;Ljava/util/BitSet;)I
    .locals 7

    .line 221
    invoke-static {}, Lorg/web3j/crypto/MnemonicUtils;->getWords()Ljava/util/List;

    move-result-object v0

    .line 222
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, " "

    invoke-direct {v1, p0, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    move v2, p0

    .line 223
    :cond_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 224
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 225
    invoke-interface {v0, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    if-ltz v4, :cond_1

    move v3, p0

    :goto_0
    const/16 v5, 0xb

    if-ge v3, v5, :cond_0

    add-int/lit8 v5, v2, 0x1

    rsub-int/lit8 v6, v3, 0xa

    .line 231
    invoke-static {v4, v6}, Lorg/web3j/crypto/MnemonicUtils;->isBitSet(II)Z

    move-result v6

    invoke-virtual {p1, v2, v6}, Ljava/util/BitSet;->set(IZ)V

    add-int/lit8 v3, v3, 0x1

    move v2, v5

    goto :goto_0

    .line 227
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v3, v0, p0

    const-string p0, "Mnemonic word \'%s\' should be in the word list"

    .line 228
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    return v2
.end method

.method private static nextElevenBits([ZI)[Z
    .locals 1

    mul-int/lit8 p1, p1, 0xb

    add-int/lit8 v0, p1, 0xb

    .line 168
    invoke-static {p0, p1, v0}, Ljava/util/Arrays;->copyOfRange([ZII)[Z

    move-result-object p0

    return-object p0
.end method

.method private static populateWordList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 261
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 262
    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "en-mnemonic-word-list.txt"

    .line 263
    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 265
    :try_start_0
    invoke-static {v0}, Lorg/web3j/crypto/MnemonicUtils;->readAllLines(Ljava/io/InputStream;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 267
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static readAllLines(Ljava/io/InputStream;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 272
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 273
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 274
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 275
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method private static readByte(Ljava/util/BitSet;I)B
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v2, 0x8

    if-ge v0, v2, :cond_1

    mul-int/2addr v2, p1

    add-int/2addr v2, v0

    .line 240
    invoke-virtual {p0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_0

    rsub-int/lit8 v2, v0, 0x7

    const/4 v3, 0x1

    shl-int v2, v3, v2

    or-int/2addr v1, v2

    int-to-byte v1, v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private static toBit(BI)Z
    .locals 0

    rsub-int/lit8 p1, p1, 0x7

    ushr-int/2addr p0, p1

    const/4 p1, 0x1

    and-int/2addr p0, p1

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private static toInt([Z)I
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 209
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 210
    aget-boolean v2, p0, v0

    if-eqz v2, :cond_0

    .line 212
    array-length v2, p0

    sub-int/2addr v2, v0

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    shl-int v2, v3, v2

    add-int/2addr v1, v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private static validateEntropy([B)V
    .locals 1

    if-eqz p0, :cond_1

    .line 176
    array-length p0, p0

    mul-int/lit8 p0, p0, 0x8

    const/16 v0, 0x80

    if-lt p0, v0, :cond_0

    const/16 v0, 0x100

    if-gt p0, v0, :cond_0

    .line 177
    rem-int/lit8 p0, p0, 0x20

    if-nez p0, :cond_0

    return-void

    .line 178
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The allowed size of ENT is 128-256 bits of multiples of 32"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 173
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Entropy is required"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static validateMnemonic(Ljava/lang/String;)Z
    .locals 0

    .line 154
    :try_start_0
    invoke-static {p0}, Lorg/web3j/crypto/MnemonicUtils;->generateEntropy(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method
