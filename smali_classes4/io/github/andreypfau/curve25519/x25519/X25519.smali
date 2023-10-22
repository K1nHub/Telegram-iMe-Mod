.class public final Lio/github/andreypfau/curve25519/x25519/X25519;
.super Ljava/lang/Object;
.source "X25519.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nX25519.kt\nKotlin\n*S Kotlin\n*F\n+ 1 X25519.kt\nio/github/andreypfau/curve25519/x25519/X25519\n+ 2 constantTime.kt\nio/github/andreypfau/curve25519/internal/ConstantTimeKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,106:1\n29#2,6:107\n20#2:113\n1#3:114\n*S KotlinDebug\n*F\n+ 1 X25519.kt\nio/github/andreypfau/curve25519/x25519/X25519\n*L\n33#1:107,6\n33#1:113\n*E\n"
.end annotation


# static fields
.field private static final BASEPOINT:[B

.field public static final INSTANCE:Lio/github/andreypfau/curve25519/x25519/X25519;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lio/github/andreypfau/curve25519/x25519/X25519;

    invoke-direct {v0}, Lio/github/andreypfau/curve25519/x25519/X25519;-><init>()V

    sput-object v0, Lio/github/andreypfau/curve25519/x25519/X25519;->INSTANCE:Lio/github/andreypfau/curve25519/x25519/X25519;

    const/16 v0, 0x20

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, 0x9

    aput-byte v2, v0, v1

    .line 18
    sput-object v0, Lio/github/andreypfau/curve25519/x25519/X25519;->BASEPOINT:[B

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final clampScalar([B)[B
    .locals 2

    const/4 v0, 0x0

    .line 100
    aget-byte v1, p1, v0

    and-int/lit16 v1, v1, 0xf8

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    const/16 v0, 0x1f

    .line 101
    aget-byte v1, p1, v0

    and-int/lit8 v1, v1, 0x7f

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 102
    aget-byte v1, p1, v0

    or-int/lit8 v1, v1, 0x40

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    return-object p1
.end method

.method private static final scalarBaseMult([B[BI)[B
    .locals 8

    const/16 v0, 0x20

    new-array v0, v0, [B

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xe

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, v0

    .line 70
    invoke-static/range {v1 .. v7}, Lkotlin/collections/ArraysKt;->copyInto$default([B[BIIIILjava/lang/Object;)[B

    .line 71
    sget-object p0, Lio/github/andreypfau/curve25519/x25519/X25519;->INSTANCE:Lio/github/andreypfau/curve25519/x25519/X25519;

    invoke-direct {p0, v0}, Lio/github/andreypfau/curve25519/x25519/X25519;->clampScalar([B)[B

    .line 73
    sget-object v1, Lio/github/andreypfau/curve25519/scalar/Scalar;->Companion:Lio/github/andreypfau/curve25519/scalar/Scalar$Companion;

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lio/github/andreypfau/curve25519/scalar/Scalar$Companion;->fromByteArray$default(Lio/github/andreypfau/curve25519/scalar/Scalar$Companion;[BILio/github/andreypfau/curve25519/scalar/Scalar;ILjava/lang/Object;)Lio/github/andreypfau/curve25519/scalar/Scalar;

    move-result-object p0

    .line 74
    new-instance v0, Lio/github/andreypfau/curve25519/edwards/EdwardsPoint;

    invoke-direct {v0}, Lio/github/andreypfau/curve25519/edwards/EdwardsPoint;-><init>()V

    invoke-static {}, Lio/github/andreypfau/curve25519/constants/tables/EdwardsBasepointTableKt;->getED25519_BASEPOINT_TABLE()Lio/github/andreypfau/curve25519/constants/tables/EdwardsBasepointTable;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lio/github/andreypfau/curve25519/edwards/EdwardsPoint;->mulBasepoint(Lio/github/andreypfau/curve25519/constants/tables/EdwardsBasepointTable;Lio/github/andreypfau/curve25519/scalar/Scalar;)Lio/github/andreypfau/curve25519/edwards/EdwardsPoint;

    move-result-object p0

    .line 75
    sget-object v0, Lio/github/andreypfau/curve25519/montgomery/MontgomeryPoint;->Companion:Lio/github/andreypfau/curve25519/montgomery/MontgomeryPoint$Companion;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v0, p0, v1, v2, v1}, Lio/github/andreypfau/curve25519/montgomery/MontgomeryPoint$Companion;->from$default(Lio/github/andreypfau/curve25519/montgomery/MontgomeryPoint$Companion;Lio/github/andreypfau/curve25519/edwards/EdwardsPoint;Lio/github/andreypfau/curve25519/montgomery/MontgomeryPoint;ILjava/lang/Object;)Lio/github/andreypfau/curve25519/montgomery/MontgomeryPoint;

    move-result-object p0

    .line 76
    invoke-virtual {p0}, Lio/github/andreypfau/curve25519/montgomery/MontgomeryPoint;->getData()[B

    move-result-object v0

    const/4 v4, 0x0

    const/16 v5, 0xc

    move-object v1, p1

    move v2, p2

    invoke-static/range {v0 .. v6}, Lkotlin/collections/ArraysKt;->copyInto$default([B[BIIIILjava/lang/Object;)[B

    return-object p1
.end method

.method private static final scalarMult([B[B[BI)[B
    .locals 8

    const/16 v0, 0x20

    new-array v0, v0, [B

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xe

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, v0

    .line 88
    invoke-static/range {v1 .. v7}, Lkotlin/collections/ArraysKt;->copyInto$default([B[BIIIILjava/lang/Object;)[B

    .line 89
    sget-object p0, Lio/github/andreypfau/curve25519/x25519/X25519;->INSTANCE:Lio/github/andreypfau/curve25519/x25519/X25519;

    invoke-direct {p0, v0}, Lio/github/andreypfau/curve25519/x25519/X25519;->clampScalar([B)[B

    .line 91
    sget-object v1, Lio/github/andreypfau/curve25519/scalar/Scalar;->Companion:Lio/github/andreypfau/curve25519/scalar/Scalar$Companion;

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lio/github/andreypfau/curve25519/scalar/Scalar$Companion;->fromByteArray$default(Lio/github/andreypfau/curve25519/scalar/Scalar$Companion;[BILio/github/andreypfau/curve25519/scalar/Scalar;ILjava/lang/Object;)Lio/github/andreypfau/curve25519/scalar/Scalar;

    move-result-object p0

    .line 92
    new-instance v0, Lio/github/andreypfau/curve25519/montgomery/MontgomeryPoint;

    invoke-direct {v0, p1}, Lio/github/andreypfau/curve25519/montgomery/MontgomeryPoint;-><init>([B)V

    .line 93
    invoke-virtual {v0, v0, p0}, Lio/github/andreypfau/curve25519/montgomery/MontgomeryPoint;->mul(Lio/github/andreypfau/curve25519/montgomery/MontgomeryPoint;Lio/github/andreypfau/curve25519/scalar/Scalar;)Lio/github/andreypfau/curve25519/montgomery/MontgomeryPoint;

    .line 95
    invoke-virtual {v0}, Lio/github/andreypfau/curve25519/montgomery/MontgomeryPoint;->getData()[B

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    move-object v2, p2

    move v3, p3

    invoke-static/range {v1 .. v7}, Lkotlin/collections/ArraysKt;->copyInto$default([B[BIIIILjava/lang/Object;)[B

    return-object p2
.end method

.method public static final toX25519(Lio/github/andreypfau/curve25519/ed25519/Ed25519PrivateKey;[BI)[B
    .locals 9

    const-string/jumbo v0, "privateKey"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "output"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0}, Lio/github/andreypfau/curve25519/ed25519/Ed25519PrivateKey;->getData$curve25519_kotlin()[B

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x20

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x38

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Lio/github/andreypfau/curve25519/internal/Sha512Kt;->sha512$default([BII[BIIILjava/lang/Object;)[B

    move-result-object p0

    .line 58
    sget-object v0, Lio/github/andreypfau/curve25519/x25519/X25519;->INSTANCE:Lio/github/andreypfau/curve25519/x25519/X25519;

    invoke-direct {v0, p0}, Lio/github/andreypfau/curve25519/x25519/X25519;->clampScalar([B)[B

    const/4 v0, 0x0

    const/16 v1, 0x20

    .line 59
    invoke-static {p0, p1, p2, v0, v1}, Lkotlin/collections/ArraysKt;->copyInto([B[BIII)[B

    return-object p1
.end method

.method public static final toX25519(Lio/github/andreypfau/curve25519/ed25519/Ed25519PublicKey;[BI)[B
    .locals 7

    const-string/jumbo v0, "publicKey"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "output"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    new-instance v0, Lio/github/andreypfau/curve25519/edwards/CompressedEdwardsY;

    invoke-virtual {p0}, Lio/github/andreypfau/curve25519/ed25519/Ed25519PublicKey;->getData$curve25519_kotlin()[B

    move-result-object p0

    invoke-direct {v0, p0}, Lio/github/andreypfau/curve25519/edwards/CompressedEdwardsY;-><init>([B)V

    .line 45
    sget-object p0, Lio/github/andreypfau/curve25519/edwards/EdwardsPoint;->Companion:Lio/github/andreypfau/curve25519/edwards/EdwardsPoint$Companion;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p0, v0, v1, v2, v1}, Lio/github/andreypfau/curve25519/edwards/EdwardsPoint$Companion;->from$default(Lio/github/andreypfau/curve25519/edwards/EdwardsPoint$Companion;Lio/github/andreypfau/curve25519/edwards/CompressedEdwardsY;Lio/github/andreypfau/curve25519/edwards/EdwardsPoint;ILjava/lang/Object;)Lio/github/andreypfau/curve25519/edwards/EdwardsPoint;

    move-result-object p0

    .line 46
    sget-object v0, Lio/github/andreypfau/curve25519/montgomery/MontgomeryPoint;->Companion:Lio/github/andreypfau/curve25519/montgomery/MontgomeryPoint$Companion;

    invoke-static {v0, p0, v1, v2, v1}, Lio/github/andreypfau/curve25519/montgomery/MontgomeryPoint$Companion;->from$default(Lio/github/andreypfau/curve25519/montgomery/MontgomeryPoint$Companion;Lio/github/andreypfau/curve25519/edwards/EdwardsPoint;Lio/github/andreypfau/curve25519/montgomery/MontgomeryPoint;ILjava/lang/Object;)Lio/github/andreypfau/curve25519/montgomery/MontgomeryPoint;

    move-result-object p0

    .line 47
    invoke-virtual {p0}, Lio/github/andreypfau/curve25519/montgomery/MontgomeryPoint;->getData()[B

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    move-object v1, p1

    move v2, p2

    invoke-static/range {v0 .. v6}, Lkotlin/collections/ArraysKt;->copyInto$default([B[BIIIILjava/lang/Object;)[B

    return-object p1
.end method

.method public static synthetic toX25519$default(Lio/github/andreypfau/curve25519/ed25519/Ed25519PrivateKey;[BIILjava/lang/Object;)[B
    .locals 0

    and-int/lit8 p4, p3, 0x2

    if-eqz p4, :cond_0

    const/16 p1, 0x20

    new-array p1, p1, [B

    :cond_0
    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_1

    const/4 p2, 0x0

    .line 52
    :cond_1
    invoke-static {p0, p1, p2}, Lio/github/andreypfau/curve25519/x25519/X25519;->toX25519(Lio/github/andreypfau/curve25519/ed25519/Ed25519PrivateKey;[BI)[B

    move-result-object p0

    return-object p0
.end method

.method public static synthetic toX25519$default(Lio/github/andreypfau/curve25519/ed25519/Ed25519PublicKey;[BIILjava/lang/Object;)[B
    .locals 0

    and-int/lit8 p4, p3, 0x2

    if-eqz p4, :cond_0

    const/16 p1, 0x20

    new-array p1, p1, [B

    :cond_0
    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_1

    const/4 p2, 0x0

    .line 39
    :cond_1
    invoke-static {p0, p1, p2}, Lio/github/andreypfau/curve25519/x25519/X25519;->toX25519(Lio/github/andreypfau/curve25519/ed25519/Ed25519PublicKey;[BI)[B

    move-result-object p0

    return-object p0
.end method

.method public static final x25519([B[B[BI)[B
    .locals 4

    const-string/jumbo v0, "scalar"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "point"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "output"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    sget-object v0, Lio/github/andreypfau/curve25519/x25519/X25519;->BASEPOINT:[B

    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    invoke-static {p0, p2, p3}, Lio/github/andreypfau/curve25519/x25519/X25519;->scalarBaseMult([B[BI)[B

    goto :goto_2

    .line 32
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lio/github/andreypfau/curve25519/x25519/X25519;->scalarMult([B[B[BI)[B

    const/16 p0, 0x20

    new-array p1, p0, [B

    .line 29
    array-length p3, p2

    const/4 v0, 0x0

    if-eq p3, p0, :cond_1

    move p0, v0

    goto :goto_1

    .line 31
    :cond_1
    array-length p0, p2

    move p3, v0

    move v1, p3

    :goto_0
    if-ge p3, p0, :cond_2

    .line 32
    aget-byte v2, p2, p3

    aget-byte v3, p1, p3

    xor-int/2addr v2, v3

    or-int/2addr v1, v2

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_2
    xor-int/lit8 p0, v1, 0x0

    .line 20
    invoke-static {p0}, Lkotlin/UInt;->constructor-impl(I)I

    move-result p0

    int-to-long p0, p0

    const-wide v1, 0xffffffffL

    and-long/2addr p0, v1

    invoke-static {p0, p1}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide p0

    const-wide/16 v1, 0x1

    invoke-static {v1, v2}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v1

    sub-long/2addr p0, v1

    invoke-static {p0, p1}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide p0

    const/16 p3, 0x3f

    ushr-long/2addr p0, p3

    invoke-static {p0, p1}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide p0

    long-to-int p0, p0

    :goto_1
    const/4 p1, 0x1

    if-eq p0, p1, :cond_3

    move v0, p1

    :cond_3
    if-eqz v0, :cond_4

    :goto_2
    return-object p2

    .line 33
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "bad input point: low order point"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
