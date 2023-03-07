.class public final Lorg/bouncycastle/util/BigIntegers;
.super Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    return-void
.end method

.method public static asUnsignedByteArray(ILjava/math/BigInteger;)[B
    .locals 3

    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p1

    array-length v0, p1

    if-ne v0, p0, :cond_0

    return-object p1

    :cond_0
    const/4 v0, 0x0

    aget-byte v1, p1, v0

    if-nez v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    array-length v1, p1

    sub-int/2addr v1, v0

    if-gt v1, p0, :cond_2

    new-array v2, p0, [B

    sub-int/2addr p0, v1

    invoke-static {p1, v0, v2, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "standard length exceeded for value"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static asUnsignedByteArray(Ljava/math/BigInteger;)[B
    .locals 4

    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p0

    const/4 v0, 0x0

    aget-byte v1, p0, v0

    if-nez v1, :cond_0

    array-length v1, p0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    new-array v3, v1, [B

    invoke-static {p0, v2, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v3

    :cond_0
    return-object p0
.end method

.method public static fromUnsignedByteArray([BII)Ljava/math/BigInteger;
    .locals 2

    if-nez p1, :cond_0

    array-length v0, p0

    if-eq p2, v0, :cond_1

    :cond_0
    new-array v0, p2, [B

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p0, v0

    :cond_1
    new-instance p1, Ljava/math/BigInteger;

    const/4 p2, 0x1

    invoke-direct {p1, p2, p0}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object p1
.end method
