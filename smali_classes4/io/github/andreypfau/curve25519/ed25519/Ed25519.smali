.class public final Lio/github/andreypfau/curve25519/ed25519/Ed25519;
.super Ljava/lang/Object;
.source "Ed25519.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEd25519.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Ed25519.kt\nio/github/andreypfau/curve25519/ed25519/Ed25519\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,76:1\n1#2:77\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lio/github/andreypfau/curve25519/ed25519/Ed25519;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/github/andreypfau/curve25519/ed25519/Ed25519;

    invoke-direct {v0}, Lio/github/andreypfau/curve25519/ed25519/Ed25519;-><init>()V

    sput-object v0, Lio/github/andreypfau/curve25519/ed25519/Ed25519;->INSTANCE:Lio/github/andreypfau/curve25519/ed25519/Ed25519;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final generateKey(Lkotlin/random/Random;)Lio/github/andreypfau/curve25519/ed25519/Ed25519PrivateKey;
    .locals 1

    const-string/jumbo v0, "random"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x20

    .line 36
    invoke-virtual {p0, v0}, Lkotlin/random/Random;->nextBytes(I)[B

    move-result-object p0

    .line 37
    invoke-static {p0}, Lio/github/andreypfau/curve25519/ed25519/Ed25519;->keyFromSeed([B)Lio/github/andreypfau/curve25519/ed25519/Ed25519PrivateKey;

    move-result-object p0

    return-object p0
.end method

.method public static final keyFromSeed([B)Lio/github/andreypfau/curve25519/ed25519/Ed25519PrivateKey;
    .locals 4

    const-string/jumbo v0, "seed"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x40

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/4 v2, 0x4

    const/4 v3, 0x0

    .line 43
    invoke-static {p0, v0, v1, v2, v3}, Lio/github/andreypfau/curve25519/ed25519/Ed25519;->keyFromSeed$default([B[BIILjava/lang/Object;)[B

    .line 44
    new-instance p0, Lio/github/andreypfau/curve25519/ed25519/Ed25519PrivateKey;

    invoke-direct {p0, v0}, Lio/github/andreypfau/curve25519/ed25519/Ed25519PrivateKey;-><init>([B)V

    return-object p0
.end method

.method public static final keyFromSeed([B[BI)[B
    .locals 19

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    const-string/jumbo v0, "seed"

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "output"

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    array-length v0, v8

    const/4 v10, 0x1

    const/16 v11, 0x20

    const/4 v12, 0x0

    if-ne v0, v11, :cond_0

    move v0, v10

    goto :goto_0

    :cond_0
    move v0, v12

    :goto_0
    if-eqz v0, :cond_1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x3e

    const/4 v7, 0x0

    move-object/from16 v0, p0

    .line 50
    invoke-static/range {v0 .. v7}, Lio/github/andreypfau/curve25519/internal/Sha512Kt;->sha512$default([BII[BIIILjava/lang/Object;)[B

    move-result-object v0

    .line 51
    aget-byte v1, v0, v12

    and-int/lit16 v1, v1, 0xf8

    int-to-byte v1, v1

    aput-byte v1, v0, v12

    const/16 v1, 0x1f

    .line 52
    aget-byte v2, v0, v1

    and-int/lit8 v2, v2, 0x7f

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 53
    aget-byte v2, v0, v1

    or-int/lit8 v2, v2, 0x40

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 55
    new-instance v15, Lio/github/andreypfau/curve25519/scalar/Scalar;

    const/4 v1, 0x0

    invoke-direct {v15, v1, v10, v1}, Lio/github/andreypfau/curve25519/scalar/Scalar;-><init>([BILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v2, 0x2

    .line 56
    invoke-static {v15, v0, v12, v2, v1}, Lio/github/andreypfau/curve25519/scalar/Scalar;->setByteArray$default(Lio/github/andreypfau/curve25519/scalar/Scalar;[BIILjava/lang/Object;)Lio/github/andreypfau/curve25519/scalar/Scalar;

    .line 58
    sget-object v0, Lio/github/andreypfau/curve25519/edwards/CompressedEdwardsY;->Companion:Lio/github/andreypfau/curve25519/edwards/CompressedEdwardsY$Companion;

    sget-object v13, Lio/github/andreypfau/curve25519/edwards/EdwardsPoint;->Companion:Lio/github/andreypfau/curve25519/edwards/EdwardsPoint$Companion;

    invoke-static {}, Lio/github/andreypfau/curve25519/constants/tables/EdwardsBasepointTableKt;->getED25519_BASEPOINT_TABLE()Lio/github/andreypfau/curve25519/constants/tables/EdwardsBasepointTable;

    move-result-object v14

    const/16 v16, 0x0

    const/16 v17, 0x4

    const/16 v18, 0x0

    invoke-static/range {v13 .. v18}, Lio/github/andreypfau/curve25519/edwards/EdwardsPoint$Companion;->mul$default(Lio/github/andreypfau/curve25519/edwards/EdwardsPoint$Companion;Lio/github/andreypfau/curve25519/constants/tables/EdwardsBasepointTable;Lio/github/andreypfau/curve25519/scalar/Scalar;Lio/github/andreypfau/curve25519/edwards/EdwardsPoint;ILjava/lang/Object;)Lio/github/andreypfau/curve25519/edwards/EdwardsPoint;

    move-result-object v3

    invoke-static {v0, v3, v1, v2, v1}, Lio/github/andreypfau/curve25519/edwards/CompressedEdwardsY$Companion;->from$default(Lio/github/andreypfau/curve25519/edwards/CompressedEdwardsY$Companion;Lio/github/andreypfau/curve25519/edwards/EdwardsPoint;Lio/github/andreypfau/curve25519/edwards/CompressedEdwardsY;ILjava/lang/Object;)Lio/github/andreypfau/curve25519/edwards/CompressedEdwardsY;

    move-result-object v7

    const/4 v3, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 59
    invoke-static/range {v0 .. v6}, Lkotlin/collections/ArraysKt;->copyInto$default([B[BIIIILjava/lang/Object;)[B

    .line 60
    invoke-virtual {v7}, Lio/github/andreypfau/curve25519/edwards/CompressedEdwardsY;->getData()[B

    move-result-object v0

    add-int/lit8 v2, p2, 0x20

    invoke-static/range {v0 .. v6}, Lkotlin/collections/ArraysKt;->copyInto$default([B[BIIIILjava/lang/Object;)[B

    return-object v9

    .line 49
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ed25519: bad length: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static synthetic keyFromSeed$default([B[BIILjava/lang/Object;)[B
    .locals 0

    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 48
    :cond_0
    invoke-static {p0, p1, p2}, Lio/github/andreypfau/curve25519/ed25519/Ed25519;->keyFromSeed([B[BI)[B

    move-result-object p0

    return-object p0
.end method

.method public static final sharedKey(Lio/github/andreypfau/curve25519/ed25519/Ed25519PrivateKey;Lio/github/andreypfau/curve25519/ed25519/Ed25519PublicKey;[BI)[B
    .locals 3

    const-string/jumbo v0, "privateKey"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "publicKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "output"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x6

    .line 71
    invoke-static {p0, v0, v1, v2, v0}, Lio/github/andreypfau/curve25519/x25519/X25519;->toX25519$default(Lio/github/andreypfau/curve25519/ed25519/Ed25519PrivateKey;[BIILjava/lang/Object;)[B

    move-result-object p0

    .line 72
    invoke-static {p1, v0, v1, v2, v0}, Lio/github/andreypfau/curve25519/x25519/X25519;->toX25519$default(Lio/github/andreypfau/curve25519/ed25519/Ed25519PublicKey;[BIILjava/lang/Object;)[B

    move-result-object p1

    .line 73
    invoke-static {p0, p1, p2, p3}, Lio/github/andreypfau/curve25519/x25519/X25519;->x25519([B[B[BI)[B

    move-result-object p0

    return-object p0
.end method
