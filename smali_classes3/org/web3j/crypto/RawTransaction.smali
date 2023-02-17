.class public Lorg/web3j/crypto/RawTransaction;
.super Ljava/lang/Object;
.source "RawTransaction.java"


# instance fields
.field private data:Ljava/lang/String;

.field private feeCap:Ljava/math/BigInteger;

.field private gasLimit:Ljava/math/BigInteger;

.field private gasPremium:Ljava/math/BigInteger;

.field private gasPrice:Ljava/math/BigInteger;

.field private nonce:Ljava/math/BigInteger;

.field private to:Ljava/lang/String;

.field private value:Ljava/math/BigInteger;


# direct methods
.method protected constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/lang/String;Ljava/math/BigInteger;Ljava/lang/String;)V
    .locals 9

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 42
    invoke-direct/range {v0 .. v8}, Lorg/web3j/crypto/RawTransaction;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/lang/String;Ljava/math/BigInteger;Ljava/lang/String;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-void
.end method

.method protected constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/lang/String;Ljava/math/BigInteger;Ljava/lang/String;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lorg/web3j/crypto/RawTransaction;->nonce:Ljava/math/BigInteger;

    .line 55
    iput-object p2, p0, Lorg/web3j/crypto/RawTransaction;->gasPrice:Ljava/math/BigInteger;

    .line 56
    iput-object p3, p0, Lorg/web3j/crypto/RawTransaction;->gasLimit:Ljava/math/BigInteger;

    .line 57
    iput-object p4, p0, Lorg/web3j/crypto/RawTransaction;->to:Ljava/lang/String;

    .line 58
    iput-object p5, p0, Lorg/web3j/crypto/RawTransaction;->value:Ljava/math/BigInteger;

    if-eqz p6, :cond_0

    .line 59
    invoke-static {p6}, Lorg/web3j/utils/Numeric;->cleanHexPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lorg/web3j/crypto/RawTransaction;->data:Ljava/lang/String;

    .line 60
    iput-object p7, p0, Lorg/web3j/crypto/RawTransaction;->gasPremium:Ljava/math/BigInteger;

    .line 61
    iput-object p8, p0, Lorg/web3j/crypto/RawTransaction;->feeCap:Ljava/math/BigInteger;

    return-void
.end method

.method public static createEtherTransaction(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/lang/String;Ljava/math/BigInteger;)Lorg/web3j/crypto/RawTransaction;
    .locals 8

    .line 81
    new-instance v7, Lorg/web3j/crypto/RawTransaction;

    const-string v6, ""

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lorg/web3j/crypto/RawTransaction;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/lang/String;Ljava/math/BigInteger;Ljava/lang/String;)V

    return-object v7
.end method

.method public static createTransaction(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/lang/String;Ljava/lang/String;)Lorg/web3j/crypto/RawTransaction;
    .locals 6

    .line 96
    sget-object v4, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lorg/web3j/crypto/RawTransaction;->createTransaction(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/lang/String;Ljava/math/BigInteger;Ljava/lang/String;)Lorg/web3j/crypto/RawTransaction;

    move-result-object p0

    return-object p0
.end method

.method public static createTransaction(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/lang/String;Ljava/math/BigInteger;Ljava/lang/String;)Lorg/web3j/crypto/RawTransaction;
    .locals 8

    .line 107
    new-instance v7, Lorg/web3j/crypto/RawTransaction;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/web3j/crypto/RawTransaction;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/lang/String;Ljava/math/BigInteger;Ljava/lang/String;)V

    return-object v7
.end method


# virtual methods
.method public getData()Ljava/lang/String;
    .locals 1

    .line 144
    iget-object v0, p0, Lorg/web3j/crypto/RawTransaction;->data:Ljava/lang/String;

    return-object v0
.end method

.method public getFeeCap()Ljava/math/BigInteger;
    .locals 1

    .line 152
    iget-object v0, p0, Lorg/web3j/crypto/RawTransaction;->feeCap:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getGasLimit()Ljava/math/BigInteger;
    .locals 1

    .line 132
    iget-object v0, p0, Lorg/web3j/crypto/RawTransaction;->gasLimit:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getGasPremium()Ljava/math/BigInteger;
    .locals 1

    .line 148
    iget-object v0, p0, Lorg/web3j/crypto/RawTransaction;->gasPremium:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getGasPrice()Ljava/math/BigInteger;
    .locals 1

    .line 128
    iget-object v0, p0, Lorg/web3j/crypto/RawTransaction;->gasPrice:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getNonce()Ljava/math/BigInteger;
    .locals 1

    .line 124
    iget-object v0, p0, Lorg/web3j/crypto/RawTransaction;->nonce:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getTo()Ljava/lang/String;
    .locals 1

    .line 136
    iget-object v0, p0, Lorg/web3j/crypto/RawTransaction;->to:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/math/BigInteger;
    .locals 1

    .line 140
    iget-object v0, p0, Lorg/web3j/crypto/RawTransaction;->value:Ljava/math/BigInteger;

    return-object v0
.end method

.method public isEIP1559Transaction()Z
    .locals 1

    .line 160
    iget-object v0, p0, Lorg/web3j/crypto/RawTransaction;->gasPrice:Ljava/math/BigInteger;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/web3j/crypto/RawTransaction;->gasPremium:Ljava/math/BigInteger;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/web3j/crypto/RawTransaction;->feeCap:Ljava/math/BigInteger;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
