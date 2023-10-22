.class public final Lio/github/andreypfau/curve25519/ed25519/Ed25519PrivateKey;
.super Ljava/lang/Object;
.source "Ed25519PrivateKey.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/github/andreypfau/curve25519/ed25519/Ed25519PrivateKey$Companion;
    }
.end annotation


# instance fields
.field private final data:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/github/andreypfau/curve25519/ed25519/Ed25519PrivateKey$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/github/andreypfau/curve25519/ed25519/Ed25519PrivateKey$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lio/github/andreypfau/curve25519/ed25519/Ed25519PrivateKey;->data:[B

    return-void
.end method

.method public static synthetic sharedKey$default(Lio/github/andreypfau/curve25519/ed25519/Ed25519PrivateKey;Lio/github/andreypfau/curve25519/ed25519/Ed25519PublicKey;[BIILjava/lang/Object;)[B
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/16 p2, 0x20

    new-array p2, p2, [B

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 57
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lio/github/andreypfau/curve25519/ed25519/Ed25519PrivateKey;->sharedKey(Lio/github/andreypfau/curve25519/ed25519/Ed25519PublicKey;[BI)[B

    move-result-object p0

    return-object p0
.end method

.method public static synthetic sign$default(Lio/github/andreypfau/curve25519/ed25519/Ed25519PrivateKey;[B[BIILjava/lang/Object;)[B
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 26
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lio/github/andreypfau/curve25519/ed25519/Ed25519PrivateKey;->sign([B[BI)[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getData$curve25519_kotlin()[B
    .locals 1

    .line 10
    iget-object v0, p0, Lio/github/andreypfau/curve25519/ed25519/Ed25519PrivateKey;->data:[B

    return-object v0
.end method

.method public final publicKey()Lio/github/andreypfau/curve25519/ed25519/Ed25519PublicKey;
    .locals 4

    .line 23
    new-instance v0, Lio/github/andreypfau/curve25519/ed25519/Ed25519PublicKey;

    iget-object v1, p0, Lio/github/andreypfau/curve25519/ed25519/Ed25519PrivateKey;->data:[B

    const/16 v2, 0x20

    const/16 v3, 0x40

    invoke-static {v1, v2, v3}, Lkotlin/collections/ArraysKt;->copyOfRange([BII)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lio/github/andreypfau/curve25519/ed25519/Ed25519PublicKey;-><init>([B)V

    return-object v0
.end method

.method public final sharedKey(Lio/github/andreypfau/curve25519/ed25519/Ed25519PublicKey;[BI)[B
    .locals 1

    const-string/jumbo v0, "publicKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "output"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    invoke-static {p0, p1, p2, p3}, Lio/github/andreypfau/curve25519/ed25519/Ed25519;->sharedKey(Lio/github/andreypfau/curve25519/ed25519/Ed25519PrivateKey;Lio/github/andreypfau/curve25519/ed25519/Ed25519PublicKey;[BI)[B

    move-result-object p1

    return-object p1
.end method

.method public final sign([B)[B
    .locals 7

    const-string/jumbo v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x40

    new-array v3, v0, [B

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    .line 25
    invoke-static/range {v1 .. v6}, Lio/github/andreypfau/curve25519/ed25519/Ed25519PrivateKey;->sign$default(Lio/github/andreypfau/curve25519/ed25519/Ed25519PrivateKey;[B[BIILjava/lang/Object;)[B

    move-result-object p1

    return-object p1
.end method

.method public final sign([B[BI)[B
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v8, p2

    const-string/jumbo v2, "message"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "destination"

    invoke-static {v8, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    iget-object v9, v0, Lio/github/andreypfau/curve25519/ed25519/Ed25519PrivateKey;->data:[B

    const/4 v10, 0x0

    const/16 v11, 0x20

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0x38

    const/16 v16, 0x0

    invoke-static/range {v9 .. v16}, Lio/github/andreypfau/curve25519/internal/Sha512Kt;->sha512$default([BII[BIIILjava/lang/Object;)[B

    move-result-object v2

    const/4 v3, 0x0

    .line 28
    aget-byte v4, v2, v3

    and-int/lit16 v4, v4, 0xf8

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    const/16 v4, 0x1f

    .line 29
    aget-byte v5, v2, v4

    and-int/lit8 v5, v5, 0x7f

    int-to-byte v5, v5

    aput-byte v5, v2, v4

    .line 30
    aget-byte v5, v2, v4

    or-int/lit8 v5, v5, 0x40

    int-to-byte v5, v5

    aput-byte v5, v2, v4

    .line 32
    array-length v4, v2

    const/16 v9, 0x20

    invoke-static {v2, v9, v4}, Lkotlin/collections/ArraysKt;->copyOfRange([BII)[B

    move-result-object v4

    invoke-static {v4, v1}, Lkotlin/collections/ArraysKt;->plus([B[B)[B

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x3e

    const/16 v17, 0x0

    invoke-static/range {v10 .. v17}, Lio/github/andreypfau/curve25519/internal/Sha512Kt;->sha512$default([BII[BIIILjava/lang/Object;)[B

    move-result-object v19

    .line 33
    sget-object v4, Lio/github/andreypfau/curve25519/scalar/Scalar;->Companion:Lio/github/andreypfau/curve25519/scalar/Scalar$Companion;

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x6

    const/16 v23, 0x0

    move-object/from16 v18, v4

    invoke-static/range {v18 .. v23}, Lio/github/andreypfau/curve25519/scalar/Scalar$Companion;->fromWideByteArray$default(Lio/github/andreypfau/curve25519/scalar/Scalar$Companion;[BILio/github/andreypfau/curve25519/scalar/Scalar;ILjava/lang/Object;)Lio/github/andreypfau/curve25519/scalar/Scalar;

    move-result-object v7

    .line 36
    new-instance v5, Lio/github/andreypfau/curve25519/edwards/EdwardsPoint;

    invoke-direct {v5}, Lio/github/andreypfau/curve25519/edwards/EdwardsPoint;-><init>()V

    invoke-static {}, Lio/github/andreypfau/curve25519/constants/tables/EdwardsBasepointTableKt;->getED25519_BASEPOINT_TABLE()Lio/github/andreypfau/curve25519/constants/tables/EdwardsBasepointTable;

    move-result-object v6

    invoke-virtual {v5, v6, v7}, Lio/github/andreypfau/curve25519/edwards/EdwardsPoint;->mulBasepoint(Lio/github/andreypfau/curve25519/constants/tables/EdwardsBasepointTable;Lio/github/andreypfau/curve25519/scalar/Scalar;)Lio/github/andreypfau/curve25519/edwards/EdwardsPoint;

    move-result-object v5

    .line 37
    sget-object v6, Lio/github/andreypfau/curve25519/edwards/CompressedEdwardsY;->Companion:Lio/github/andreypfau/curve25519/edwards/CompressedEdwardsY$Companion;

    const/4 v10, 0x0

    const/4 v11, 0x2

    invoke-static {v6, v5, v10, v11, v10}, Lio/github/andreypfau/curve25519/edwards/CompressedEdwardsY$Companion;->from$default(Lio/github/andreypfau/curve25519/edwards/CompressedEdwardsY$Companion;Lio/github/andreypfau/curve25519/edwards/EdwardsPoint;Lio/github/andreypfau/curve25519/edwards/CompressedEdwardsY;ILjava/lang/Object;)Lio/github/andreypfau/curve25519/edwards/CompressedEdwardsY;

    move-result-object v12

    .line 40
    new-instance v13, Lio/github/andreypfau/curve25519/scalar/Scalar;

    const/4 v5, 0x1

    invoke-direct {v13, v10, v5, v10}, Lio/github/andreypfau/curve25519/scalar/Scalar;-><init>([BILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 41
    invoke-virtual {v12}, Lio/github/andreypfau/curve25519/edwards/CompressedEdwardsY;->getData()[B

    move-result-object v5

    iget-object v6, v0, Lio/github/andreypfau/curve25519/ed25519/Ed25519PrivateKey;->data:[B

    array-length v14, v6

    invoke-static {v6, v9, v14}, Lkotlin/collections/ArraysKt;->copyOfRange([BII)[B

    move-result-object v6

    invoke-static {v5, v6}, Lkotlin/collections/ArraysKt;->plus([B[B)[B

    move-result-object v5

    invoke-static {v5, v1}, Lkotlin/collections/ArraysKt;->plus([B[B)[B

    move-result-object v14

    const/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x3e

    invoke-static/range {v14 .. v21}, Lio/github/andreypfau/curve25519/internal/Sha512Kt;->sha512$default([BII[BIIILjava/lang/Object;)[B

    move-result-object v1

    .line 42
    invoke-static {v13, v1, v3, v11, v10}, Lio/github/andreypfau/curve25519/scalar/Scalar;->setWideByteArray$default(Lio/github/andreypfau/curve25519/scalar/Scalar;[BIILjava/lang/Object;)Lio/github/andreypfau/curve25519/scalar/Scalar;

    const/4 v5, 0x0

    const/4 v6, 0x6

    move-object v1, v4

    move-object v4, v5

    move v5, v6

    move-object v6, v10

    .line 44
    invoke-static/range {v1 .. v6}, Lio/github/andreypfau/curve25519/scalar/Scalar$Companion;->fromByteArray$default(Lio/github/andreypfau/curve25519/scalar/Scalar$Companion;[BILio/github/andreypfau/curve25519/scalar/Scalar;ILjava/lang/Object;)Lio/github/andreypfau/curve25519/scalar/Scalar;

    move-result-object v1

    .line 45
    invoke-virtual {v13, v13, v1}, Lio/github/andreypfau/curve25519/scalar/Scalar;->mul(Lio/github/andreypfau/curve25519/scalar/Scalar;Lio/github/andreypfau/curve25519/scalar/Scalar;)V

    .line 48
    invoke-virtual {v13, v13, v7}, Lio/github/andreypfau/curve25519/scalar/Scalar;->add(Lio/github/andreypfau/curve25519/scalar/Scalar;Lio/github/andreypfau/curve25519/scalar/Scalar;)V

    .line 51
    invoke-virtual {v12}, Lio/github/andreypfau/curve25519/edwards/CompressedEdwardsY;->getData()[B

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    const/4 v7, 0x0

    move-object/from16 v2, p2

    move/from16 v3, p3

    invoke-static/range {v1 .. v7}, Lkotlin/collections/ArraysKt;->copyInto$default([B[BIIIILjava/lang/Object;)[B

    add-int/lit8 v1, p3, 0x20

    .line 52
    invoke-virtual {v13, v8, v1}, Lio/github/andreypfau/curve25519/scalar/Scalar;->toByteArray([BI)[B

    return-object v8
.end method
