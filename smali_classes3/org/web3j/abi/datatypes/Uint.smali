.class public Lorg/web3j/abi/datatypes/Uint;
.super Lorg/web3j/abi/datatypes/IntType;
.source "Uint.java"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 21
    new-instance v0, Lorg/web3j/abi/datatypes/Uint;

    sget-object v1, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-direct {v0, v1}, Lorg/web3j/abi/datatypes/Uint;-><init>(Ljava/math/BigInteger;)V

    return-void
.end method

.method protected constructor <init>(ILjava/math/BigInteger;)V
    .locals 1

    const-string v0, "uint"

    .line 24
    invoke-direct {p0, v0, p1, p2}, Lorg/web3j/abi/datatypes/IntType;-><init>(Ljava/lang/String;ILjava/math/BigInteger;)V

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 1

    const/16 v0, 0x100

    .line 29
    invoke-direct {p0, v0, p1}, Lorg/web3j/abi/datatypes/Uint;-><init>(ILjava/math/BigInteger;)V

    return-void
.end method


# virtual methods
.method protected valid()Z
    .locals 1

    .line 34
    invoke-super {p0}, Lorg/web3j/abi/datatypes/IntType;->valid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/web3j/abi/datatypes/NumericType;->value:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
