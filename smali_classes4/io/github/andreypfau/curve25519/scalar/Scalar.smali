.class public final Lio/github/andreypfau/curve25519/scalar/Scalar;
.super Ljava/lang/Object;
.source "Scalar.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/github/andreypfau/curve25519/scalar/Scalar$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nScalar.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Scalar.kt\nio/github/andreypfau/curve25519/scalar/Scalar\n+ 2 Scalar.kt\nio/github/andreypfau/curve25519/scalar/ScalarKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,166:1\n162#2:167\n165#2:168\n1#3:169\n*S KotlinDebug\n*F\n+ 1 Scalar.kt\nio/github/andreypfau/curve25519/scalar/Scalar\n*L\n43#1:167\n44#1:168\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lio/github/andreypfau/curve25519/scalar/Scalar$Companion;


# instance fields
.field private final data:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/github/andreypfau/curve25519/scalar/Scalar$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/github/andreypfau/curve25519/scalar/Scalar$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/github/andreypfau/curve25519/scalar/Scalar;->Companion:Lio/github/andreypfau/curve25519/scalar/Scalar$Companion;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lio/github/andreypfau/curve25519/scalar/Scalar;->data:[B

    return-void
.end method

.method public synthetic constructor <init>([BILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/16 p1, 0x20

    new-array p1, p1, [B

    .line 12
    :cond_0
    invoke-direct {p0, p1}, Lio/github/andreypfau/curve25519/scalar/Scalar;-><init>([B)V

    return-void
.end method

.method public static synthetic setByteArray$default(Lio/github/andreypfau/curve25519/scalar/Scalar;[BIILjava/lang/Object;)Lio/github/andreypfau/curve25519/scalar/Scalar;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 19
    :cond_0
    invoke-virtual {p0, p1, p2}, Lio/github/andreypfau/curve25519/scalar/Scalar;->setByteArray([BI)Lio/github/andreypfau/curve25519/scalar/Scalar;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic setWideByteArray$default(Lio/github/andreypfau/curve25519/scalar/Scalar;[BIILjava/lang/Object;)Lio/github/andreypfau/curve25519/scalar/Scalar;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 27
    :cond_0
    invoke-virtual {p0, p1, p2}, Lio/github/andreypfau/curve25519/scalar/Scalar;->setWideByteArray([BI)Lio/github/andreypfau/curve25519/scalar/Scalar;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic toRadix16$default(Lio/github/andreypfau/curve25519/scalar/Scalar;[BILjava/lang/Object;)[B
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/16 p1, 0x40

    new-array p1, p1, [B

    .line 39
    :cond_0
    invoke-virtual {p0, p1}, Lio/github/andreypfau/curve25519/scalar/Scalar;->toRadix16([B)[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final add(Lio/github/andreypfau/curve25519/scalar/Scalar;Lio/github/andreypfau/curve25519/scalar/Scalar;)V
    .locals 3

    const-string v0, "a"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "b"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    invoke-virtual {p1}, Lio/github/andreypfau/curve25519/scalar/Scalar;->unpack()Lio/github/andreypfau/curve25519/scalar/UnpackedScalar;

    move-result-object p1

    .line 126
    invoke-virtual {p2}, Lio/github/andreypfau/curve25519/scalar/Scalar;->unpack()Lio/github/andreypfau/curve25519/scalar/UnpackedScalar;

    move-result-object p2

    invoke-virtual {p1, p1, p2}, Lio/github/andreypfau/curve25519/scalar/UnpackedScalar;->add(Lio/github/andreypfau/curve25519/scalar/UnpackedScalar;Lio/github/andreypfau/curve25519/scalar/UnpackedScalar;)V

    .line 127
    invoke-virtual {p1}, Lio/github/andreypfau/curve25519/scalar/UnpackedScalar;->getData-Y2RjT0g()[J

    move-result-object p2

    invoke-static {}, Lio/github/andreypfau/curve25519/constants/ConstantsKt;->getR()Lio/github/andreypfau/curve25519/scalar/UnpackedScalar;

    move-result-object v0

    invoke-virtual {v0}, Lio/github/andreypfau/curve25519/scalar/UnpackedScalar;->getData-Y2RjT0g()[J

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-static {p2, v0, v1, v2, v1}, Lio/github/andreypfau/curve25519/internal/Scalar64Kt;->scalarMulInternal-NHtdf0s$default([J[J[JILjava/lang/Object;)[J

    move-result-object p2

    .line 128
    invoke-virtual {p1}, Lio/github/andreypfau/curve25519/scalar/UnpackedScalar;->getData-Y2RjT0g()[J

    move-result-object v0

    invoke-static {p2, v0}, Lio/github/andreypfau/curve25519/internal/Scalar64Kt;->scalarMontgomeryReduce-GR1PJdc([J[J)[J

    .line 129
    invoke-virtual {p0, p1}, Lio/github/andreypfau/curve25519/scalar/Scalar;->pack(Lio/github/andreypfau/curve25519/scalar/UnpackedScalar;)V

    return-void
.end method

.method public final bits()[B
    .locals 5

    const/16 v0, 0x100

    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 32
    iget-object v3, p0, Lio/github/andreypfau/curve25519/scalar/Scalar;->data:[B

    shr-int/lit8 v4, v2, 0x3

    aget-byte v3, v3, v4

    and-int/lit8 v4, v2, 0x7

    shr-int/2addr v3, v4

    and-int/lit8 v3, v3, 0x1

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public final getData()[B
    .locals 1

    .line 13
    iget-object v0, p0, Lio/github/andreypfau/curve25519/scalar/Scalar;->data:[B

    return-object v0
.end method

.method public final mul(Lio/github/andreypfau/curve25519/scalar/Scalar;Lio/github/andreypfau/curve25519/scalar/Scalar;)V
    .locals 1

    const-string v0, "a"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "b"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    invoke-virtual {p1}, Lio/github/andreypfau/curve25519/scalar/Scalar;->unpack()Lio/github/andreypfau/curve25519/scalar/UnpackedScalar;

    move-result-object p1

    .line 111
    invoke-virtual {p2}, Lio/github/andreypfau/curve25519/scalar/Scalar;->unpack()Lio/github/andreypfau/curve25519/scalar/UnpackedScalar;

    move-result-object p2

    invoke-virtual {p1, p1, p2}, Lio/github/andreypfau/curve25519/scalar/UnpackedScalar;->mul(Lio/github/andreypfau/curve25519/scalar/UnpackedScalar;Lio/github/andreypfau/curve25519/scalar/UnpackedScalar;)V

    .line 112
    invoke-virtual {p0, p1}, Lio/github/andreypfau/curve25519/scalar/Scalar;->pack(Lio/github/andreypfau/curve25519/scalar/UnpackedScalar;)V

    return-void
.end method

.method public final pack(Lio/github/andreypfau/curve25519/scalar/UnpackedScalar;)V
    .locals 4

    const-string/jumbo v0, "us"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lio/github/andreypfau/curve25519/scalar/Scalar;->data:[B

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lio/github/andreypfau/curve25519/scalar/UnpackedScalar;->toByteArray$default(Lio/github/andreypfau/curve25519/scalar/UnpackedScalar;[BIILjava/lang/Object;)[B

    return-void
.end method

.method public final setByteArray([BI)Lio/github/andreypfau/curve25519/scalar/Scalar;
    .locals 1

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    sget-object v0, Lio/github/andreypfau/curve25519/scalar/Scalar;->Companion:Lio/github/andreypfau/curve25519/scalar/Scalar$Companion;

    invoke-virtual {v0, p1, p2, p0}, Lio/github/andreypfau/curve25519/scalar/Scalar$Companion;->fromByteArray([BILio/github/andreypfau/curve25519/scalar/Scalar;)Lio/github/andreypfau/curve25519/scalar/Scalar;

    return-object p0
.end method

.method public final setWideByteArray([BI)Lio/github/andreypfau/curve25519/scalar/Scalar;
    .locals 1

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    sget-object v0, Lio/github/andreypfau/curve25519/scalar/Scalar;->Companion:Lio/github/andreypfau/curve25519/scalar/Scalar$Companion;

    invoke-virtual {v0, p1, p2, p0}, Lio/github/andreypfau/curve25519/scalar/Scalar$Companion;->fromWideByteArray([BILio/github/andreypfau/curve25519/scalar/Scalar;)Lio/github/andreypfau/curve25519/scalar/Scalar;

    return-object p0
.end method

.method public final toByteArray([BI)[B
    .locals 8

    const-string/jumbo v0, "output"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    iget-object v1, p0, Lio/github/andreypfau/curve25519/scalar/Scalar;->data:[B

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    const/4 v7, 0x0

    move-object v2, p1

    move v3, p2

    invoke-static/range {v1 .. v7}, Lkotlin/collections/ArraysKt;->copyInto$default([B[BIIIILjava/lang/Object;)[B

    move-result-object p1

    return-object p1
.end method

.method public final toRadix16([B)[B
    .locals 5

    const-string/jumbo v0, "output"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v2, 0x20

    if-ge v1, v2, :cond_0

    mul-int/lit8 v2, v1, 0x2

    .line 43
    iget-object v3, p0, Lio/github/andreypfau/curve25519/scalar/Scalar;->data:[B

    aget-byte v4, v3, v1

    ushr-int/2addr v4, v0

    and-int/lit8 v4, v4, 0xf

    int-to-byte v4, v4

    .line 162
    aput-byte v4, p1, v2

    add-int/lit8 v2, v2, 0x1

    .line 44
    aget-byte v3, v3, v1

    ushr-int/lit8 v3, v3, 0x4

    and-int/lit8 v3, v3, 0xf

    int-to-byte v3, v3

    .line 165
    aput-byte v3, p1, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    const/16 v1, 0x3f

    if-ge v0, v1, :cond_1

    .line 50
    aget-byte v1, p1, v0

    add-int/lit8 v1, v1, 0x8

    shr-int/lit8 v1, v1, 0x4

    .line 51
    aget-byte v2, p1, v0

    shl-int/lit8 v3, v1, 0x4

    sub-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    add-int/lit8 v0, v0, 0x1

    .line 52
    aget-byte v2, p1, v0

    add-int/2addr v2, v1

    int-to-byte v1, v2

    aput-byte v1, p1, v0

    goto :goto_1

    :cond_1
    return-object p1
.end method

.method public final unpack()Lio/github/andreypfau/curve25519/scalar/UnpackedScalar;
    .locals 5

    .line 35
    new-instance v0, Lio/github/andreypfau/curve25519/scalar/UnpackedScalar;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Lio/github/andreypfau/curve25519/scalar/UnpackedScalar;-><init>([JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 36
    iget-object v2, p0, Lio/github/andreypfau/curve25519/scalar/Scalar;->data:[B

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {v0, v2, v3, v4, v1}, Lio/github/andreypfau/curve25519/scalar/UnpackedScalar;->bytes$default(Lio/github/andreypfau/curve25519/scalar/UnpackedScalar;[BIILjava/lang/Object;)V

    return-object v0
.end method
