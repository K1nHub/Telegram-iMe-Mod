.class public final Lorg/web3j/abi/datatypes/AbiTypes;
.super Ljava/lang/Object;
.source "AbiTypes.java"


# direct methods
.method public static getTypeAString(Ljava/lang/Class;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lorg/web3j/abi/datatypes/Type;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 371
    const-class v0, Lorg/web3j/abi/datatypes/Utf8String;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "string"

    return-object p0

    .line 373
    :cond_0
    const-class v0, Lorg/web3j/abi/datatypes/DynamicBytes;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "bytes"

    return-object p0

    .line 376
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
