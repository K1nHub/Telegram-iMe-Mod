.class public Lorg/web3j/crypto/TransactionEncoder;
.super Ljava/lang/Object;
.source "TransactionEncoder.java"


# direct methods
.method public static asRlpValues(Lorg/web3j/crypto/RawTransaction;Lorg/web3j/crypto/Sign$SignatureData;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/web3j/crypto/RawTransaction;",
            "Lorg/web3j/crypto/Sign$SignatureData;",
            ")",
            "Ljava/util/List<",
            "Lorg/web3j/rlp/RlpType;",
            ">;"
        }
    .end annotation

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 108
    invoke-virtual {p0}, Lorg/web3j/crypto/RawTransaction;->getNonce()Ljava/math/BigInteger;

    move-result-object v1

    invoke-static {v1}, Lorg/web3j/rlp/RlpString;->create(Ljava/math/BigInteger;)Lorg/web3j/rlp/RlpString;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    invoke-virtual {p0}, Lorg/web3j/crypto/RawTransaction;->getGasPrice()Ljava/math/BigInteger;

    move-result-object v1

    invoke-static {v1}, Lorg/web3j/rlp/RlpString;->create(Ljava/math/BigInteger;)Lorg/web3j/rlp/RlpString;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    invoke-virtual {p0}, Lorg/web3j/crypto/RawTransaction;->getGasLimit()Ljava/math/BigInteger;

    move-result-object v1

    invoke-static {v1}, Lorg/web3j/rlp/RlpString;->create(Ljava/math/BigInteger;)Lorg/web3j/rlp/RlpString;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    invoke-virtual {p0}, Lorg/web3j/crypto/RawTransaction;->getTo()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 114
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 117
    invoke-static {v1}, Lorg/web3j/utils/Numeric;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lorg/web3j/rlp/RlpString;->create([B)Lorg/web3j/rlp/RlpString;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string v1, ""

    .line 119
    invoke-static {v1}, Lorg/web3j/rlp/RlpString;->create(Ljava/lang/String;)Lorg/web3j/rlp/RlpString;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    :goto_0
    invoke-virtual {p0}, Lorg/web3j/crypto/RawTransaction;->getValue()Ljava/math/BigInteger;

    move-result-object v1

    invoke-static {v1}, Lorg/web3j/rlp/RlpString;->create(Ljava/math/BigInteger;)Lorg/web3j/rlp/RlpString;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    invoke-virtual {p0}, Lorg/web3j/crypto/RawTransaction;->getData()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/web3j/utils/Numeric;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v1

    .line 126
    invoke-static {v1}, Lorg/web3j/rlp/RlpString;->create([B)Lorg/web3j/rlp/RlpString;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    invoke-virtual {p0}, Lorg/web3j/crypto/RawTransaction;->isEIP1559Transaction()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 130
    invoke-virtual {p0}, Lorg/web3j/crypto/RawTransaction;->getGasPremium()Ljava/math/BigInteger;

    move-result-object v1

    invoke-static {v1}, Lorg/web3j/rlp/RlpString;->create(Ljava/math/BigInteger;)Lorg/web3j/rlp/RlpString;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    invoke-virtual {p0}, Lorg/web3j/crypto/RawTransaction;->getFeeCap()Ljava/math/BigInteger;

    move-result-object p0

    invoke-static {p0}, Lorg/web3j/rlp/RlpString;->create(Ljava/math/BigInteger;)Lorg/web3j/rlp/RlpString;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    if-eqz p1, :cond_2

    .line 135
    invoke-virtual {p1}, Lorg/web3j/crypto/Sign$SignatureData;->getV()[B

    move-result-object p0

    invoke-static {p0}, Lorg/web3j/utils/Bytes;->trimLeadingZeroes([B)[B

    move-result-object p0

    invoke-static {p0}, Lorg/web3j/rlp/RlpString;->create([B)Lorg/web3j/rlp/RlpString;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    invoke-virtual {p1}, Lorg/web3j/crypto/Sign$SignatureData;->getR()[B

    move-result-object p0

    invoke-static {p0}, Lorg/web3j/utils/Bytes;->trimLeadingZeroes([B)[B

    move-result-object p0

    invoke-static {p0}, Lorg/web3j/rlp/RlpString;->create([B)Lorg/web3j/rlp/RlpString;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    invoke-virtual {p1}, Lorg/web3j/crypto/Sign$SignatureData;->getS()[B

    move-result-object p0

    invoke-static {p0}, Lorg/web3j/utils/Bytes;->trimLeadingZeroes([B)[B

    move-result-object p0

    invoke-static {p0}, Lorg/web3j/rlp/RlpString;->create([B)Lorg/web3j/rlp/RlpString;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object v0
.end method

.method public static createEip155SignatureData(Lorg/web3j/crypto/Sign$SignatureData;J)Lorg/web3j/crypto/Sign$SignatureData;
    .locals 3

    .line 63
    invoke-virtual {p0}, Lorg/web3j/crypto/Sign$SignatureData;->getV()[B

    move-result-object v0

    invoke-static {v0}, Lorg/web3j/utils/Numeric;->toBigInt([B)Ljava/math/BigInteger;

    move-result-object v0

    const-wide/16 v1, 0x1b

    .line 64
    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    const-wide/16 v1, 0x2

    mul-long p1, p1, v1

    .line 65
    invoke-static {p1, p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    const-wide/16 v0, 0x23

    .line 66
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    .line 68
    new-instance p2, Lorg/web3j/crypto/Sign$SignatureData;

    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p1

    invoke-virtual {p0}, Lorg/web3j/crypto/Sign$SignatureData;->getR()[B

    move-result-object v0

    invoke-virtual {p0}, Lorg/web3j/crypto/Sign$SignatureData;->getS()[B

    move-result-object p0

    invoke-direct {p2, p1, v0, p0}, Lorg/web3j/crypto/Sign$SignatureData;-><init>([B[B[B)V

    return-object p2
.end method

.method public static encode(Lorg/web3j/crypto/RawTransaction;J)[B
    .locals 2

    .line 82
    new-instance v0, Lorg/web3j/crypto/Sign$SignatureData;

    .line 83
    invoke-static {p1, p2}, Lorg/web3j/crypto/TransactionEncoder;->longToBytes(J)[B

    move-result-object p1

    const/4 p2, 0x0

    new-array v1, p2, [B

    new-array p2, p2, [B

    invoke-direct {v0, p1, v1, p2}, Lorg/web3j/crypto/Sign$SignatureData;-><init>([B[B[B)V

    .line 84
    invoke-static {p0, v0}, Lorg/web3j/crypto/TransactionEncoder;->encode(Lorg/web3j/crypto/RawTransaction;Lorg/web3j/crypto/Sign$SignatureData;)[B

    move-result-object p0

    return-object p0
.end method

.method private static encode(Lorg/web3j/crypto/RawTransaction;Lorg/web3j/crypto/Sign$SignatureData;)[B
    .locals 0

    .line 93
    invoke-static {p0, p1}, Lorg/web3j/crypto/TransactionEncoder;->asRlpValues(Lorg/web3j/crypto/RawTransaction;Lorg/web3j/crypto/Sign$SignatureData;)Ljava/util/List;

    move-result-object p0

    .line 94
    new-instance p1, Lorg/web3j/rlp/RlpList;

    invoke-direct {p1, p0}, Lorg/web3j/rlp/RlpList;-><init>(Ljava/util/List;)V

    .line 95
    invoke-static {p1}, Lorg/web3j/rlp/RlpEncoder;->encode(Lorg/web3j/rlp/RlpType;)[B

    move-result-object p0

    return-object p0
.end method

.method private static longToBytes(J)[B
    .locals 1

    const/16 v0, 0x8

    .line 99
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 100
    invoke-virtual {v0, p0, p1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 101
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    return-object p0
.end method

.method public static signMessage(Lorg/web3j/crypto/RawTransaction;JLorg/web3j/crypto/Credentials;)[B
    .locals 1

    .line 47
    invoke-static {p0, p1, p2}, Lorg/web3j/crypto/TransactionEncoder;->encode(Lorg/web3j/crypto/RawTransaction;J)[B

    move-result-object v0

    .line 49
    invoke-virtual {p3}, Lorg/web3j/crypto/Credentials;->getEcKeyPair()Lorg/web3j/crypto/ECKeyPair;

    move-result-object p3

    invoke-static {v0, p3}, Lorg/web3j/crypto/Sign;->signMessage([BLorg/web3j/crypto/ECKeyPair;)Lorg/web3j/crypto/Sign$SignatureData;

    move-result-object p3

    .line 51
    invoke-static {p3, p1, p2}, Lorg/web3j/crypto/TransactionEncoder;->createEip155SignatureData(Lorg/web3j/crypto/Sign$SignatureData;J)Lorg/web3j/crypto/Sign$SignatureData;

    move-result-object p1

    .line 52
    invoke-static {p0, p1}, Lorg/web3j/crypto/TransactionEncoder;->encode(Lorg/web3j/crypto/RawTransaction;Lorg/web3j/crypto/Sign$SignatureData;)[B

    move-result-object p0

    return-object p0
.end method
