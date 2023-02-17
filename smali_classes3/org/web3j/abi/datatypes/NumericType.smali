.class public abstract Lorg/web3j/abi/datatypes/NumericType;
.super Ljava/lang/Object;
.source "NumericType.java"

# interfaces
.implements Lorg/web3j/abi/datatypes/Type;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/web3j/abi/datatypes/Type<",
        "Ljava/math/BigInteger;",
        ">;"
    }
.end annotation


# instance fields
.field private type:Ljava/lang/String;

.field value:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/math/BigInteger;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lorg/web3j/abi/datatypes/NumericType;->type:Ljava/lang/String;

    .line 25
    iput-object p2, p0, Lorg/web3j/abi/datatypes/NumericType;->value:Ljava/math/BigInteger;

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

    if-eqz p1, :cond_5

    .line 45
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 49
    :cond_1
    check-cast p1, Lorg/web3j/abi/datatypes/NumericType;

    .line 51
    iget-object v2, p0, Lorg/web3j/abi/datatypes/NumericType;->type:Ljava/lang/String;

    iget-object v3, p1, Lorg/web3j/abi/datatypes/NumericType;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 55
    :cond_2
    iget-object v2, p0, Lorg/web3j/abi/datatypes/NumericType;->value:Ljava/math/BigInteger;

    iget-object p1, p1, Lorg/web3j/abi/datatypes/NumericType;->value:Ljava/math/BigInteger;

    if-eqz v2, :cond_3

    invoke-virtual {v2, p1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_3
    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_5
    :goto_1
    return v1
.end method

.method public getTypeAsString()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lorg/web3j/abi/datatypes/NumericType;->type:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    .line 18
    invoke-virtual {p0}, Lorg/web3j/abi/datatypes/NumericType;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/math/BigInteger;
    .locals 1

    .line 35
    iget-object v0, p0, Lorg/web3j/abi/datatypes/NumericType;->value:Ljava/math/BigInteger;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 60
    iget-object v0, p0, Lorg/web3j/abi/datatypes/NumericType;->type:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 61
    iget-object v1, p0, Lorg/web3j/abi/datatypes/NumericType;->value:Ljava/math/BigInteger;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method
