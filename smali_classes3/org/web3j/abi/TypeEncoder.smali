.class public Lorg/web3j/abi/TypeEncoder;
.super Ljava/lang/Object;
.source "TypeEncoder.java"


# direct methods
.method public static encode(Lorg/web3j/abi/datatypes/Type;)Ljava/lang/String;
    .locals 3

    .line 56
    instance-of v0, p0, Lorg/web3j/abi/datatypes/NumericType;

    if-eqz v0, :cond_0

    .line 57
    check-cast p0, Lorg/web3j/abi/datatypes/NumericType;

    invoke-static {p0}, Lorg/web3j/abi/TypeEncoder;->encodeNumeric(Lorg/web3j/abi/datatypes/NumericType;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 58
    :cond_0
    instance-of v0, p0, Lorg/web3j/abi/datatypes/Address;

    if-eqz v0, :cond_1

    .line 59
    check-cast p0, Lorg/web3j/abi/datatypes/Address;

    invoke-static {p0}, Lorg/web3j/abi/TypeEncoder;->encodeAddress(Lorg/web3j/abi/datatypes/Address;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 60
    :cond_1
    instance-of v0, p0, Lorg/web3j/abi/datatypes/Bool;

    if-eqz v0, :cond_2

    .line 61
    check-cast p0, Lorg/web3j/abi/datatypes/Bool;

    invoke-static {p0}, Lorg/web3j/abi/TypeEncoder;->encodeBool(Lorg/web3j/abi/datatypes/Bool;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 62
    :cond_2
    instance-of v0, p0, Lorg/web3j/abi/datatypes/Bytes;

    if-eqz v0, :cond_3

    .line 63
    check-cast p0, Lorg/web3j/abi/datatypes/Bytes;

    invoke-static {p0}, Lorg/web3j/abi/TypeEncoder;->encodeBytes(Lorg/web3j/abi/datatypes/BytesType;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 64
    :cond_3
    instance-of v0, p0, Lorg/web3j/abi/datatypes/DynamicBytes;

    if-eqz v0, :cond_4

    .line 65
    check-cast p0, Lorg/web3j/abi/datatypes/DynamicBytes;

    invoke-static {p0}, Lorg/web3j/abi/TypeEncoder;->encodeDynamicBytes(Lorg/web3j/abi/datatypes/DynamicBytes;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 66
    :cond_4
    instance-of v0, p0, Lorg/web3j/abi/datatypes/Utf8String;

    if-eqz v0, :cond_5

    .line 67
    check-cast p0, Lorg/web3j/abi/datatypes/Utf8String;

    invoke-static {p0}, Lorg/web3j/abi/TypeEncoder;->encodeString(Lorg/web3j/abi/datatypes/Utf8String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 68
    :cond_5
    instance-of v0, p0, Lorg/web3j/abi/datatypes/StaticArray;

    if-eqz v0, :cond_6

    .line 69
    check-cast p0, Lorg/web3j/abi/datatypes/StaticArray;

    invoke-static {p0}, Lorg/web3j/abi/TypeEncoder;->encodeArrayValues(Lorg/web3j/abi/datatypes/Array;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 70
    :cond_6
    instance-of v0, p0, Lorg/web3j/abi/datatypes/DynamicStruct;

    if-eqz v0, :cond_7

    .line 71
    check-cast p0, Lorg/web3j/abi/datatypes/DynamicStruct;

    invoke-static {p0}, Lorg/web3j/abi/TypeEncoder;->encodeDynamicStruct(Lorg/web3j/abi/datatypes/DynamicStruct;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 72
    :cond_7
    instance-of v0, p0, Lorg/web3j/abi/datatypes/DynamicArray;

    if-eqz v0, :cond_8

    .line 73
    check-cast p0, Lorg/web3j/abi/datatypes/DynamicArray;

    invoke-static {p0}, Lorg/web3j/abi/TypeEncoder;->encodeDynamicArray(Lorg/web3j/abi/datatypes/DynamicArray;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 74
    :cond_8
    instance-of v0, p0, Lorg/web3j/abi/datatypes/primitive/PrimitiveType;

    if-eqz v0, :cond_9

    .line 75
    check-cast p0, Lorg/web3j/abi/datatypes/primitive/PrimitiveType;

    invoke-virtual {p0}, Lorg/web3j/abi/datatypes/primitive/PrimitiveType;->toSolidityType()Lorg/web3j/abi/datatypes/Type;

    move-result-object p0

    invoke-static {p0}, Lorg/web3j/abi/TypeEncoder;->encode(Lorg/web3j/abi/datatypes/Type;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 77
    :cond_9
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Type cannot be encoded: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static encodeAddress(Lorg/web3j/abi/datatypes/Address;)Ljava/lang/String;
    .locals 0

    .line 83
    invoke-virtual {p0}, Lorg/web3j/abi/datatypes/Address;->toUint()Lorg/web3j/abi/datatypes/Uint;

    move-result-object p0

    invoke-static {p0}, Lorg/web3j/abi/TypeEncoder;->encodeNumeric(Lorg/web3j/abi/datatypes/NumericType;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static encodeArrayValues(Lorg/web3j/abi/datatypes/Array;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/web3j/abi/datatypes/Type;",
            ">(",
            "Lorg/web3j/abi/datatypes/Array<",
            "TT;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 166
    invoke-virtual {p0}, Lorg/web3j/abi/datatypes/Array;->getValue()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/web3j/abi/datatypes/Type;

    .line 167
    invoke-static {v1}, Lorg/web3j/abi/TypeEncoder;->encode(Lorg/web3j/abi/datatypes/Type;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 169
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static encodeArrayValuesOffsets(Lorg/web3j/abi/datatypes/DynamicArray;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/web3j/abi/datatypes/Type;",
            ">(",
            "Lorg/web3j/abi/datatypes/DynamicArray<",
            "TT;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 229
    invoke-virtual {p0}, Lorg/web3j/abi/datatypes/Array;->getValue()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/web3j/abi/datatypes/Array;->getValue()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lorg/web3j/abi/datatypes/DynamicBytes;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 231
    :goto_0
    invoke-virtual {p0}, Lorg/web3j/abi/datatypes/Array;->getValue()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p0}, Lorg/web3j/abi/datatypes/Array;->getValue()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lorg/web3j/abi/datatypes/Utf8String;

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    if-nez v1, :cond_2

    if-eqz v4, :cond_5

    :cond_2
    const-wide/16 v4, 0x0

    .line 234
    :goto_2
    invoke-virtual {p0}, Lorg/web3j/abi/datatypes/Array;->getValue()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_5

    const/16 v6, 0x20

    if-nez v2, :cond_3

    .line 236
    invoke-virtual {p0}, Lorg/web3j/abi/datatypes/Array;->getValue()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x20

    int-to-long v4, v4

    goto :goto_4

    :cond_3
    if-eqz v1, :cond_4

    .line 240
    invoke-virtual {p0}, Lorg/web3j/abi/datatypes/Array;->getValue()Ljava/util/List;

    move-result-object v7

    add-int/lit8 v8, v2, -0x1

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/web3j/abi/datatypes/Type;

    invoke-interface {v7}, Lorg/web3j/abi/datatypes/Type;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    array-length v7, v7

    goto :goto_3

    .line 241
    :cond_4
    invoke-virtual {p0}, Lorg/web3j/abi/datatypes/Array;->getValue()Ljava/util/List;

    move-result-object v7

    add-int/lit8 v8, v2, -0x1

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/web3j/abi/datatypes/Type;

    invoke-interface {v7}, Lorg/web3j/abi/datatypes/Type;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    :goto_3
    add-int/2addr v7, v6

    sub-int/2addr v7, v3

    .line 242
    div-int/2addr v7, v6

    mul-int/lit8 v7, v7, 0x20

    add-int/2addr v7, v6

    int-to-long v7, v7

    add-long/2addr v4, v7

    .line 246
    :goto_4
    new-instance v7, Ljava/math/BigInteger;

    .line 249
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 248
    invoke-static {v7, v6}, Lorg/web3j/utils/Numeric;->toBytesPadded(Ljava/math/BigInteger;I)[B

    move-result-object v6

    .line 247
    invoke-static {v6}, Lorg/web3j/utils/Numeric;->toHexStringNoPrefix([B)Ljava/lang/String;

    move-result-object v6

    .line 246
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 252
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static encodeBool(Lorg/web3j/abi/datatypes/Bool;)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x20

    new-array v0, v0, [B

    .line 126
    invoke-virtual {p0}, Lorg/web3j/abi/datatypes/Bool;->getValue()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x1f

    const/4 v1, 0x1

    aput-byte v1, v0, p0

    .line 129
    :cond_0
    invoke-static {v0}, Lorg/web3j/utils/Numeric;->toHexStringNoPrefix([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static encodeBytes(Lorg/web3j/abi/datatypes/BytesType;)Ljava/lang/String;
    .locals 3

    .line 133
    invoke-virtual {p0}, Lorg/web3j/abi/datatypes/BytesType;->getValue()[B

    move-result-object p0

    .line 134
    array-length v0, p0

    .line 135
    rem-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_0

    rsub-int/lit8 v1, v1, 0x20

    add-int/2addr v1, v0

    .line 140
    new-array v1, v1, [B

    const/4 v2, 0x0

    .line 141
    invoke-static {p0, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p0, v1

    .line 145
    :cond_0
    invoke-static {p0}, Lorg/web3j/utils/Numeric;->toHexStringNoPrefix([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static encodeDynamicArray(Lorg/web3j/abi/datatypes/DynamicArray;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/web3j/abi/datatypes/Type;",
            ">(",
            "Lorg/web3j/abi/datatypes/DynamicArray<",
            "TT;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 214
    invoke-virtual {p0}, Lorg/web3j/abi/datatypes/Array;->getValue()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 215
    new-instance v1, Lorg/web3j/abi/datatypes/Uint;

    int-to-long v2, v0

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/web3j/abi/datatypes/Uint;-><init>(Ljava/math/BigInteger;)V

    invoke-static {v1}, Lorg/web3j/abi/TypeEncoder;->encode(Lorg/web3j/abi/datatypes/Type;)Ljava/lang/String;

    move-result-object v0

    .line 216
    invoke-static {p0}, Lorg/web3j/abi/TypeEncoder;->encodeArrayValuesOffsets(Lorg/web3j/abi/datatypes/DynamicArray;)Ljava/lang/String;

    move-result-object v1

    .line 217
    invoke-static {p0}, Lorg/web3j/abi/TypeEncoder;->encodeArrayValues(Lorg/web3j/abi/datatypes/Array;)Ljava/lang/String;

    move-result-object p0

    .line 219
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 220
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static encodeDynamicBytes(Lorg/web3j/abi/datatypes/DynamicBytes;)Ljava/lang/String;
    .locals 4

    .line 149
    invoke-virtual {p0}, Lorg/web3j/abi/datatypes/BytesType;->getValue()[B

    move-result-object v0

    array-length v0, v0

    .line 150
    new-instance v1, Lorg/web3j/abi/datatypes/Uint;

    int-to-long v2, v0

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/web3j/abi/datatypes/Uint;-><init>(Ljava/math/BigInteger;)V

    invoke-static {v1}, Lorg/web3j/abi/TypeEncoder;->encode(Lorg/web3j/abi/datatypes/Type;)Ljava/lang/String;

    move-result-object v0

    .line 151
    invoke-static {p0}, Lorg/web3j/abi/TypeEncoder;->encodeBytes(Lorg/web3j/abi/datatypes/BytesType;)Ljava/lang/String;

    move-result-object p0

    .line 153
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 154
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static encodeDynamicStruct(Lorg/web3j/abi/datatypes/DynamicStruct;)Ljava/lang/String;
    .locals 1

    .line 173
    invoke-static {p0}, Lorg/web3j/abi/TypeEncoder;->encodeDynamicStructValues(Lorg/web3j/abi/datatypes/DynamicStruct;)Ljava/lang/String;

    move-result-object p0

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 176
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static encodeDynamicStructValues(Lorg/web3j/abi/datatypes/DynamicStruct;)Ljava/lang/String;
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 182
    :goto_0
    invoke-virtual {p0}, Lorg/web3j/abi/datatypes/Array;->getValue()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 183
    invoke-virtual {p0}, Lorg/web3j/abi/datatypes/Array;->getValue()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/web3j/abi/datatypes/Type;

    .line 184
    invoke-static {v3}, Lorg/web3j/abi/TypeEncoder;->isDynamic(Lorg/web3j/abi/datatypes/Type;)Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 v2, v2, 0x20

    goto :goto_1

    .line 187
    :cond_0
    invoke-interface {v3}, Lorg/web3j/abi/datatypes/Type;->bytes32PaddedLength()I

    move-result v3

    add-int/2addr v2, v3

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 191
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 192
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    .line 193
    :goto_2
    invoke-virtual {p0}, Lorg/web3j/abi/datatypes/Array;->getValue()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 194
    invoke-virtual {p0}, Lorg/web3j/abi/datatypes/Array;->getValue()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/web3j/abi/datatypes/Type;

    .line 195
    invoke-static {v5}, Lorg/web3j/abi/TypeEncoder;->isDynamic(Lorg/web3j/abi/datatypes/Type;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 196
    new-instance v6, Ljava/math/BigInteger;

    int-to-long v7, v2

    .line 199
    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    const/16 v7, 0x20

    .line 198
    invoke-static {v6, v7}, Lorg/web3j/utils/Numeric;->toBytesPadded(Ljava/math/BigInteger;I)[B

    move-result-object v6

    .line 197
    invoke-static {v6}, Lorg/web3j/utils/Numeric;->toHexStringNoPrefix([B)Ljava/lang/String;

    move-result-object v6

    .line 196
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    invoke-static {v5}, Lorg/web3j/abi/TypeEncoder;->encode(Lorg/web3j/abi/datatypes/Type;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    invoke-interface {v5}, Lorg/web3j/abi/datatypes/Type;->bytes32PaddedLength()I

    move-result v5

    add-int/2addr v2, v5

    goto :goto_3

    .line 204
    :cond_2
    invoke-virtual {p0}, Lorg/web3j/abi/datatypes/Array;->getValue()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/web3j/abi/datatypes/Type;

    invoke-static {v5}, Lorg/web3j/abi/TypeEncoder;->encode(Lorg/web3j/abi/datatypes/Type;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 207
    :cond_3
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 208
    invoke-interface {p0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 209
    invoke-interface {p0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-array v0, v0, [Ljava/lang/String;

    .line 210
    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/CharSequence;

    const-string v0, ""

    invoke-static {v0, p0}, Lorg/web3j/compat/Compat;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static encodeNumeric(Lorg/web3j/abi/datatypes/NumericType;)Ljava/lang/String;
    .locals 5

    .line 87
    invoke-static {p0}, Lorg/web3j/abi/TypeEncoder;->toByteArray(Lorg/web3j/abi/datatypes/NumericType;)[B

    move-result-object v0

    .line 88
    invoke-static {p0}, Lorg/web3j/abi/TypeEncoder;->getPaddingValue(Lorg/web3j/abi/datatypes/NumericType;)B

    move-result p0

    const/16 v1, 0x20

    new-array v2, v1, [B

    const/4 v3, 0x0

    if-eqz p0, :cond_0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_0

    .line 92
    aput-byte p0, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 96
    :cond_0
    array-length p0, v0

    sub-int/2addr v1, p0

    array-length p0, v0

    invoke-static {v0, v3, v2, v1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 98
    invoke-static {v2}, Lorg/web3j/utils/Numeric;->toHexStringNoPrefix([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static encodeString(Lorg/web3j/abi/datatypes/Utf8String;)Ljava/lang/String;
    .locals 1

    .line 160
    invoke-virtual {p0}, Lorg/web3j/abi/datatypes/Utf8String;->getValue()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lorg/web3j/compat/Compat;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    .line 161
    new-instance v0, Lorg/web3j/abi/datatypes/DynamicBytes;

    invoke-direct {v0, p0}, Lorg/web3j/abi/datatypes/DynamicBytes;-><init>([B)V

    invoke-static {v0}, Lorg/web3j/abi/TypeEncoder;->encodeDynamicBytes(Lorg/web3j/abi/datatypes/DynamicBytes;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getPaddingValue(Lorg/web3j/abi/datatypes/NumericType;)B
    .locals 1

    .line 102
    invoke-virtual {p0}, Lorg/web3j/abi/datatypes/NumericType;->getValue()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static isDynamic(Lorg/web3j/abi/datatypes/Type;)Z
    .locals 1

    .line 49
    instance-of v0, p0, Lorg/web3j/abi/datatypes/DynamicBytes;

    if-nez v0, :cond_1

    instance-of v0, p0, Lorg/web3j/abi/datatypes/Utf8String;

    if-nez v0, :cond_1

    instance-of p0, p0, Lorg/web3j/abi/datatypes/DynamicArray;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static toByteArray(Lorg/web3j/abi/datatypes/NumericType;)[B
    .locals 4

    .line 110
    invoke-virtual {p0}, Lorg/web3j/abi/datatypes/NumericType;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    .line 111
    instance-of p0, p0, Lorg/web3j/abi/datatypes/Uint;

    if-eqz p0, :cond_0

    .line 112
    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result p0

    const/16 v1, 0x100

    if-ne p0, v1, :cond_0

    const/16 p0, 0x20

    new-array v1, p0, [B

    .line 117
    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v2, v1, v3, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1

    .line 121
    :cond_0
    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method
