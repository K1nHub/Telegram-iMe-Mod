.class public abstract Lorg/web3j/abi/datatypes/IntType;
.super Lorg/web3j/abi/datatypes/NumericType;
.source "IntType.java"


# instance fields
.field private final bitSize:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/math/BigInteger;)V
    .locals 1

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Lorg/web3j/abi/datatypes/NumericType;-><init>(Ljava/lang/String;Ljava/math/BigInteger;)V

    .line 24
    iput p2, p0, Lorg/web3j/abi/datatypes/IntType;->bitSize:I

    .line 25
    invoke-virtual {p0}, Lorg/web3j/abi/datatypes/IntType;->valid()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 26
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Bit size must be 8 bit aligned, and in range 0 < bitSize <= 256"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static isValidBitCount(ILjava/math/BigInteger;)Z
    .locals 0

    .line 46
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result p1

    if-gt p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isValidBitSize(I)Z
    .locals 1

    .line 42
    rem-int/lit8 v0, p0, 0x8

    if-nez v0, :cond_0

    if-lez p0, :cond_0

    const/16 v0, 0x100

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public getBitSize()I
    .locals 1

    .line 34
    iget v0, p0, Lorg/web3j/abi/datatypes/IntType;->bitSize:I

    return v0
.end method

.method protected valid()Z
    .locals 2

    .line 38
    iget v0, p0, Lorg/web3j/abi/datatypes/IntType;->bitSize:I

    invoke-static {v0}, Lorg/web3j/abi/datatypes/IntType;->isValidBitSize(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/web3j/abi/datatypes/IntType;->bitSize:I

    iget-object v1, p0, Lorg/web3j/abi/datatypes/NumericType;->value:Ljava/math/BigInteger;

    invoke-static {v0, v1}, Lorg/web3j/abi/datatypes/IntType;->isValidBitCount(ILjava/math/BigInteger;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
