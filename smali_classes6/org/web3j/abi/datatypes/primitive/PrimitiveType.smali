.class public abstract Lorg/web3j/abi/datatypes/primitive/PrimitiveType;
.super Ljava/lang/Object;
.source "PrimitiveType.java"

# interfaces
.implements Lorg/web3j/abi/datatypes/Type;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Ljava/io/Serializable;",
        ":",
        "Ljava/lang/Comparable<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Lorg/web3j/abi/datatypes/Type<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final type:Ljava/lang/String;

.field private final value:Ljava/io/Serializable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


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

    if-eqz p1, :cond_3

    .line 47
    const-class v2, Lorg/web3j/abi/datatypes/primitive/PrimitiveType;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 50
    :cond_1
    check-cast p1, Lorg/web3j/abi/datatypes/primitive/PrimitiveType;

    .line 51
    iget-object v2, p0, Lorg/web3j/abi/datatypes/primitive/PrimitiveType;->type:Ljava/lang/String;

    iget-object v3, p1, Lorg/web3j/abi/datatypes/primitive/PrimitiveType;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/web3j/abi/datatypes/primitive/PrimitiveType;->value:Ljava/io/Serializable;

    iget-object p1, p1, Lorg/web3j/abi/datatypes/primitive/PrimitiveType;->value:Ljava/io/Serializable;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getTypeAsString()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lorg/web3j/abi/datatypes/primitive/PrimitiveType;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/io/Serializable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lorg/web3j/abi/datatypes/primitive/PrimitiveType;->value:Ljava/io/Serializable;

    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lorg/web3j/abi/datatypes/primitive/PrimitiveType;->getValue()Ljava/io/Serializable;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 56
    iget-object v1, p0, Lorg/web3j/abi/datatypes/primitive/PrimitiveType;->type:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/web3j/abi/datatypes/primitive/PrimitiveType;->value:Ljava/io/Serializable;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava8/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public abstract toSolidityType()Lorg/web3j/abi/datatypes/Type;
.end method
