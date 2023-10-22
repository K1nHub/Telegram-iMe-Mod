.class public final Lio/github/andreypfau/curve25519/scalar/Scalar$Companion;
.super Ljava/lang/Object;
.source "Scalar.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/andreypfau/curve25519/scalar/Scalar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lio/github/andreypfau/curve25519/scalar/Scalar$Companion;-><init>()V

    return-void
.end method

.method public static synthetic fromByteArray$default(Lio/github/andreypfau/curve25519/scalar/Scalar$Companion;[BILio/github/andreypfau/curve25519/scalar/Scalar;ILjava/lang/Object;)Lio/github/andreypfau/curve25519/scalar/Scalar;
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 140
    new-instance p3, Lio/github/andreypfau/curve25519/scalar/Scalar;

    const/4 p4, 0x1

    const/4 p5, 0x0

    invoke-direct {p3, p5, p4, p5}, Lio/github/andreypfau/curve25519/scalar/Scalar;-><init>([BILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 137
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lio/github/andreypfau/curve25519/scalar/Scalar$Companion;->fromByteArray([BILio/github/andreypfau/curve25519/scalar/Scalar;)Lio/github/andreypfau/curve25519/scalar/Scalar;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic fromWideByteArray$default(Lio/github/andreypfau/curve25519/scalar/Scalar$Companion;[BILio/github/andreypfau/curve25519/scalar/Scalar;ILjava/lang/Object;)Lio/github/andreypfau/curve25519/scalar/Scalar;
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 151
    new-instance p3, Lio/github/andreypfau/curve25519/scalar/Scalar;

    const/4 p4, 0x1

    const/4 p5, 0x0

    invoke-direct {p3, p5, p4, p5}, Lio/github/andreypfau/curve25519/scalar/Scalar;-><init>([BILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 148
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lio/github/andreypfau/curve25519/scalar/Scalar$Companion;->fromWideByteArray([BILio/github/andreypfau/curve25519/scalar/Scalar;)Lio/github/andreypfau/curve25519/scalar/Scalar;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final fromByteArray([BILio/github/andreypfau/curve25519/scalar/Scalar;)Lio/github/andreypfau/curve25519/scalar/Scalar;
    .locals 3

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "output"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    invoke-virtual {p3}, Lio/github/andreypfau/curve25519/scalar/Scalar;->getData()[B

    move-result-object v0

    add-int/lit8 v1, p2, 0x20

    const/4 v2, 0x0

    invoke-static {p1, v0, v2, p2, v1}, Lkotlin/collections/ArraysKt;->copyInto([B[BIII)[B

    .line 143
    invoke-virtual {p3}, Lio/github/andreypfau/curve25519/scalar/Scalar;->getData()[B

    move-result-object p1

    invoke-virtual {p3}, Lio/github/andreypfau/curve25519/scalar/Scalar;->getData()[B

    move-result-object p2

    const/16 v0, 0x1f

    aget-byte p2, p2, v0

    and-int/lit8 p2, p2, 0x7f

    int-to-byte p2, p2

    aput-byte p2, p1, v0

    return-object p3
.end method

.method public final fromWideByteArray([BILio/github/andreypfau/curve25519/scalar/Scalar;)Lio/github/andreypfau/curve25519/scalar/Scalar;
    .locals 3

    const-string v0, "byteArray"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "output"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    new-instance v0, Lio/github/andreypfau/curve25519/scalar/UnpackedScalar;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Lio/github/andreypfau/curve25519/scalar/UnpackedScalar;-><init>([JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 154
    invoke-virtual {v0, p1, p2}, Lio/github/andreypfau/curve25519/scalar/UnpackedScalar;->bytesWide([BI)V

    .line 156
    invoke-virtual {p3, v0}, Lio/github/andreypfau/curve25519/scalar/Scalar;->pack(Lio/github/andreypfau/curve25519/scalar/UnpackedScalar;)V

    return-object p3
.end method
