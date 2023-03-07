.class public Lorg/web3j/abi/datatypes/generated/Uint256;
.super Lorg/web3j/abi/datatypes/Uint;
.source "Uint256.java"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 13
    new-instance v0, Lorg/web3j/abi/datatypes/generated/Uint256;

    sget-object v1, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-direct {v0, v1}, Lorg/web3j/abi/datatypes/generated/Uint256;-><init>(Ljava/math/BigInteger;)V

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 1

    const/16 v0, 0x100

    .line 16
    invoke-direct {p0, v0, p1}, Lorg/web3j/abi/datatypes/Uint;-><init>(ILjava/math/BigInteger;)V

    return-void
.end method
