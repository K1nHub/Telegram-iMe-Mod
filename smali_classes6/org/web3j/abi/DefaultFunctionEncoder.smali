.class public Lorg/web3j/abi/DefaultFunctionEncoder;
.super Lorg/web3j/abi/FunctionEncoder;
.source "DefaultFunctionEncoder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lorg/web3j/abi/FunctionEncoder;-><init>()V

    return-void
.end method

.method private static encodeParameters(Ljava/util/List;Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/web3j/abi/datatypes/Type;",
            ">;",
            "Ljava/lang/StringBuilder;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 46
    invoke-static {p0}, Lorg/web3j/abi/DefaultFunctionEncoder;->getLength(Ljava/util/List;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x20

    .line 47
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/web3j/abi/datatypes/Type;

    .line 50
    invoke-static {v2}, Lorg/web3j/abi/TypeEncoder;->encode(Lorg/web3j/abi/datatypes/Type;)Ljava/lang/String;

    move-result-object v3

    .line 52
    invoke-static {v2}, Lorg/web3j/abi/TypeEncoder;->isDynamic(Lorg/web3j/abi/datatypes/Type;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 53
    new-instance v2, Lorg/web3j/abi/datatypes/Uint;

    int-to-long v4, v0

    .line 54
    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    invoke-direct {v2, v4}, Lorg/web3j/abi/datatypes/Uint;-><init>(Ljava/math/BigInteger;)V

    invoke-static {v2}, Lorg/web3j/abi/TypeEncoder;->encodeNumeric(Lorg/web3j/abi/datatypes/NumericType;)Ljava/lang/String;

    move-result-object v2

    .line 55
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    shr-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    goto :goto_0

    .line 59
    :cond_0
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 62
    :cond_1
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getLength(Ljava/util/List;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/web3j/abi/datatypes/Type;",
            ">;)I"
        }
    .end annotation

    .line 69
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/web3j/abi/datatypes/Type;

    .line 70
    instance-of v2, v1, Lorg/web3j/abi/datatypes/StaticArray;

    if-eqz v2, :cond_0

    .line 71
    check-cast v1, Lorg/web3j/abi/datatypes/StaticArray;

    invoke-virtual {v1}, Lorg/web3j/abi/datatypes/StaticArray;->getValue()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method


# virtual methods
.method public encodeFunction(Lorg/web3j/abi/datatypes/Function;)Ljava/lang/String;
    .locals 2

    .line 27
    invoke-virtual {p1}, Lorg/web3j/abi/datatypes/Function;->getInputParameters()Ljava/util/List;

    move-result-object v0

    .line 29
    invoke-virtual {p1}, Lorg/web3j/abi/datatypes/Function;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lorg/web3j/abi/FunctionEncoder;->buildMethodSignature(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    .line 30
    invoke-static {p1}, Lorg/web3j/abi/FunctionEncoder;->buildMethodId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 32
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    invoke-static {v0, v1}, Lorg/web3j/abi/DefaultFunctionEncoder;->encodeParameters(Ljava/util/List;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
