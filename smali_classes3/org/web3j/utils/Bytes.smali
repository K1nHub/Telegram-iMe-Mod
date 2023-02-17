.class public Lorg/web3j/utils/Bytes;
.super Ljava/lang/Object;
.source "Bytes.java"


# direct methods
.method public static trimLeadingBytes([BB)[B
    .locals 2

    const/4 v0, 0x0

    .line 24
    :goto_0
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    .line 25
    aget-byte v1, p0, v0

    if-eq v1, p1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 29
    :cond_1
    :goto_1
    array-length p1, p0

    invoke-static {p0, v0, p1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    return-object p0
.end method

.method public static trimLeadingZeroes([B)[B
    .locals 1

    const/4 v0, 0x0

    .line 33
    invoke-static {p0, v0}, Lorg/web3j/utils/Bytes;->trimLeadingBytes([BB)[B

    move-result-object p0

    return-object p0
.end method
