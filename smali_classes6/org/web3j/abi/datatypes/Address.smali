.class public Lorg/web3j/abi/datatypes/Address;
.super Ljava/lang/Object;
.source "Address.java"

# interfaces
.implements Lorg/web3j/abi/datatypes/Type;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/web3j/abi/datatypes/Type<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final value:Lorg/web3j/abi/datatypes/Uint;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 26
    new-instance v0, Lorg/web3j/abi/datatypes/Address;

    sget-object v1, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-direct {v0, v1}, Lorg/web3j/abi/datatypes/Address;-><init>(Ljava/math/BigInteger;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 47
    invoke-static {p2}, Lorg/web3j/utils/Numeric;->toBigInt(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/web3j/abi/datatypes/Address;-><init>(ILjava/math/BigInteger;)V

    return-void
.end method

.method public constructor <init>(ILjava/math/BigInteger;)V
    .locals 1

    .line 39
    new-instance v0, Lorg/web3j/abi/datatypes/Uint;

    invoke-direct {v0, p1, p2}, Lorg/web3j/abi/datatypes/Uint;-><init>(ILjava/math/BigInteger;)V

    invoke-direct {p0, v0}, Lorg/web3j/abi/datatypes/Address;-><init>(Lorg/web3j/abi/datatypes/Uint;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0xa0

    .line 43
    invoke-direct {p0, v0, p1}, Lorg/web3j/abi/datatypes/Address;-><init>(ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 1

    const/16 v0, 0xa0

    .line 35
    invoke-direct {p0, v0, p1}, Lorg/web3j/abi/datatypes/Address;-><init>(ILjava/math/BigInteger;)V

    return-void
.end method

.method public constructor <init>(Lorg/web3j/abi/datatypes/Uint;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lorg/web3j/abi/datatypes/Address;->value:Lorg/web3j/abi/datatypes/Uint;

    return-void
.end method


# virtual methods
.method public synthetic bytes32PaddedLength()I
    .locals 1

    invoke-static {p0}, Lorg/web3j/abi/datatypes/Type$-CC;->$default$bytes32PaddedLength(Lorg/web3j/abi/datatypes/Type;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    .line 74
    const-class v2, Lorg/web3j/abi/datatypes/Address;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 78
    :cond_1
    check-cast p1, Lorg/web3j/abi/datatypes/Address;

    .line 80
    iget-object v2, p0, Lorg/web3j/abi/datatypes/Address;->value:Lorg/web3j/abi/datatypes/Uint;

    if-eqz v2, :cond_2

    iget-object v0, v2, Lorg/web3j/abi/datatypes/NumericType;->value:Ljava/math/BigInteger;

    iget-object p1, p1, Lorg/web3j/abi/datatypes/Address;->value:Lorg/web3j/abi/datatypes/Uint;

    iget-object p1, p1, Lorg/web3j/abi/datatypes/NumericType;->value:Ljava/math/BigInteger;

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_2
    iget-object p1, p1, Lorg/web3j/abi/datatypes/Address;->value:Lorg/web3j/abi/datatypes/Uint;

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_4
    :goto_1
    return v1
.end method

.method public getTypeAsString()Ljava/lang/String;
    .locals 1

    const-string v0, "address"

    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    .line 22
    invoke-virtual {p0}, Lorg/web3j/abi/datatypes/Address;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 66
    invoke-virtual {p0}, Lorg/web3j/abi/datatypes/Address;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 85
    iget-object v0, p0, Lorg/web3j/abi/datatypes/Address;->value:Lorg/web3j/abi/datatypes/Uint;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/web3j/abi/datatypes/NumericType;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 61
    iget-object v0, p0, Lorg/web3j/abi/datatypes/Address;->value:Lorg/web3j/abi/datatypes/Uint;

    invoke-virtual {v0}, Lorg/web3j/abi/datatypes/NumericType;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    iget-object v1, p0, Lorg/web3j/abi/datatypes/Address;->value:Lorg/web3j/abi/datatypes/Uint;

    invoke-virtual {v1}, Lorg/web3j/abi/datatypes/IntType;->getBitSize()I

    move-result v1

    shr-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lorg/web3j/utils/Numeric;->toHexStringWithPrefixZeroPadded(Ljava/math/BigInteger;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toUint()Lorg/web3j/abi/datatypes/Uint;
    .locals 1

    .line 51
    iget-object v0, p0, Lorg/web3j/abi/datatypes/Address;->value:Lorg/web3j/abi/datatypes/Uint;

    return-object v0
.end method
