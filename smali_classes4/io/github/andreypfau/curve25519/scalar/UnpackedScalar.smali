.class public final Lio/github/andreypfau/curve25519/scalar/UnpackedScalar;
.super Ljava/lang/Object;
.source "UnpackedScalar.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUnpackedScalar.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UnpackedScalar.kt\nio/github/andreypfau/curve25519/scalar/UnpackedScalar\n*L\n1#1,138:1\n18#1:139\n*S KotlinDebug\n*F\n+ 1 UnpackedScalar.kt\nio/github/andreypfau/curve25519/scalar/UnpackedScalar\n*L\n108#1:139\n*E\n"
.end annotation


# instance fields
.field private final data:[J


# direct methods
.method private constructor <init>(JJJJJ)V
    .locals 2

    const/4 v0, 0x5

    new-array v0, v0, [J

    const/4 v1, 0x0

    aput-wide p1, v0, v1

    const/4 p1, 0x1

    aput-wide p3, v0, p1

    const/4 p1, 0x2

    aput-wide p5, v0, p1

    const/4 p1, 0x3

    aput-wide p7, v0, p1

    const/4 p1, 0x4

    aput-wide p9, v0, p1

    const/4 p1, 0x0

    .line 16
    invoke-direct {p0, v0, p1}, Lio/github/andreypfau/curve25519/scalar/UnpackedScalar;-><init>([JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(JJJJJLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p10}, Lio/github/andreypfau/curve25519/scalar/UnpackedScalar;-><init>(JJJJJ)V

    return-void
.end method

.method private constructor <init>([J)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lio/github/andreypfau/curve25519/scalar/UnpackedScalar;->data:[J

    return-void
.end method

.method public synthetic constructor <init>([JILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x5

    .line 14
    invoke-static {p1}, Lkotlin/ULongArray;->constructor-impl(I)[J

    move-result-object p1

    :cond_0
    const/4 p2, 0x0

    .line 13
    invoke-direct {p0, p1, p2}, Lio/github/andreypfau/curve25519/scalar/UnpackedScalar;-><init>([JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>([JLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/github/andreypfau/curve25519/scalar/UnpackedScalar;-><init>([J)V

    return-void
.end method

.method public static synthetic bytes$default(Lio/github/andreypfau/curve25519/scalar/UnpackedScalar;[BIILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 20
    :cond_0
    invoke-virtual {p0, p1, p2}, Lio/github/andreypfau/curve25519/scalar/UnpackedScalar;->bytes([BI)V

    return-void
.end method

.method public static synthetic toByteArray$default(Lio/github/andreypfau/curve25519/scalar/UnpackedScalar;[BIILjava/lang/Object;)[B
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    const/16 p1, 0x20

    new-array p1, p1, [B

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const/4 p2, 0x0

    .line 59
    :cond_1
    invoke-virtual {p0, p1, p2}, Lio/github/andreypfau/curve25519/scalar/UnpackedScalar;->toByteArray([BI)[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final add(Lio/github/andreypfau/curve25519/scalar/UnpackedScalar;Lio/github/andreypfau/curve25519/scalar/UnpackedScalar;)V
    .locals 7

    const-string v0, "a"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "b"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x5

    if-ge v2, v3, :cond_0

    .line 18
    invoke-virtual {p1}, Lio/github/andreypfau/curve25519/scalar/UnpackedScalar;->getData-Y2RjT0g()[J

    move-result-object v3

    invoke-static {v3, v2}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v3

    invoke-virtual {p2}, Lio/github/andreypfau/curve25519/scalar/UnpackedScalar;->getData-Y2RjT0g()[J

    move-result-object v5

    invoke-static {v5, v2}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v5

    add-long/2addr v3, v5

    .line 108
    invoke-static {v3, v4}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v3

    const/16 v5, 0x34

    ushr-long/2addr v0, v5

    invoke-static {v0, v1}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v0

    add-long/2addr v3, v0

    invoke-static {v3, v4}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v0

    .line 109
    iget-object v3, p0, Lio/github/andreypfau/curve25519/scalar/UnpackedScalar;->data:[J

    invoke-static {}, Lio/github/andreypfau/curve25519/constants/ConstantsKt;->getLOW_52_BIT_NASK()J

    move-result-wide v4

    and-long/2addr v4, v0

    invoke-static {v4, v5}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v4

    invoke-static {v3, v2, v4, v5}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 113
    :cond_0
    invoke-static {}, Lio/github/andreypfau/curve25519/constants/ConstantsKt;->getL()Lio/github/andreypfau/curve25519/scalar/UnpackedScalar;

    move-result-object p1

    invoke-virtual {p0, p0, p1}, Lio/github/andreypfau/curve25519/scalar/UnpackedScalar;->sub(Lio/github/andreypfau/curve25519/scalar/UnpackedScalar;Lio/github/andreypfau/curve25519/scalar/UnpackedScalar;)V

    return-void
.end method

.method public final bytes([BI)V
    .locals 9

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x4

    new-array v1, v0, [J

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    mul-int/lit8 v4, v3, 0x8

    add-int/2addr v4, p2

    .line 22
    invoke-static {p1, v4}, Lio/github/andreypfau/curve25519/internal/BinaryKt;->getULongLE([BI)J

    move-result-wide v4

    .line 21
    aput-wide v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lkotlin/ULongArray;->constructor-impl([J)[J

    move-result-object p1

    const-wide/high16 v3, 0x1000000000000L

    .line 24
    invoke-static {v3, v4}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v3

    const-wide/16 v5, 0x1

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v3

    .line 26
    iget-object p2, p0, Lio/github/andreypfau/curve25519/scalar/UnpackedScalar;->data:[J

    invoke-static {p1, v2}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v5

    invoke-static {}, Lio/github/andreypfau/curve25519/constants/ConstantsKt;->getLOW_52_BIT_NASK()J

    move-result-wide v7

    and-long/2addr v5, v7

    invoke-static {v5, v6}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v5

    invoke-static {p2, v2, v5, v6}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 27
    iget-object p2, p0, Lio/github/andreypfau/curve25519/scalar/UnpackedScalar;->data:[J

    invoke-static {p1, v2}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v1

    const/16 v5, 0x34

    ushr-long/2addr v1, v5

    invoke-static {v1, v2}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v1

    const/4 v5, 0x1

    invoke-static {p1, v5}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v6

    const/16 v8, 0xc

    shl-long/2addr v6, v8

    invoke-static {v6, v7}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v6

    or-long/2addr v1, v6

    invoke-static {v1, v2}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v1

    invoke-static {}, Lio/github/andreypfau/curve25519/constants/ConstantsKt;->getLOW_52_BIT_NASK()J

    move-result-wide v6

    and-long/2addr v1, v6

    invoke-static {v1, v2}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v1

    invoke-static {p2, v5, v1, v2}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 28
    iget-object p2, p0, Lio/github/andreypfau/curve25519/scalar/UnpackedScalar;->data:[J

    invoke-static {p1, v5}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v1

    const/16 v5, 0x28

    ushr-long/2addr v1, v5

    invoke-static {v1, v2}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v1

    const/4 v5, 0x2

    invoke-static {p1, v5}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v6

    const/16 v8, 0x18

    shl-long/2addr v6, v8

    invoke-static {v6, v7}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v6

    or-long/2addr v1, v6

    invoke-static {v1, v2}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v1

    invoke-static {}, Lio/github/andreypfau/curve25519/constants/ConstantsKt;->getLOW_52_BIT_NASK()J

    move-result-wide v6

    and-long/2addr v1, v6

    invoke-static {v1, v2}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v1

    invoke-static {p2, v5, v1, v2}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 29
    iget-object p2, p0, Lio/github/andreypfau/curve25519/scalar/UnpackedScalar;->data:[J

    invoke-static {p1, v5}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v1

    const/16 v5, 0x1c

    ushr-long/2addr v1, v5

    invoke-static {v1, v2}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v1

    const/4 v5, 0x3

    invoke-static {p1, v5}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v6

    const/16 v8, 0x24

    shl-long/2addr v6, v8

    invoke-static {v6, v7}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v6

    or-long/2addr v1, v6

    invoke-static {v1, v2}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v1

    invoke-static {}, Lio/github/andreypfau/curve25519/constants/ConstantsKt;->getLOW_52_BIT_NASK()J

    move-result-wide v6

    and-long/2addr v1, v6

    invoke-static {v1, v2}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v1

    invoke-static {p2, v5, v1, v2}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    .line 30
    iget-object p2, p0, Lio/github/andreypfau/curve25519/scalar/UnpackedScalar;->data:[J

    invoke-static {p1, v5}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v1

    const/16 p1, 0x10

    ushr-long/2addr v1, p1

    invoke-static {v1, v2}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v1

    and-long/2addr v1, v3

    invoke-static {v1, v2}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v1

    invoke-static {p2, v0, v1, v2}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    return-void
.end method

.method public final bytesWide([BI)V
    .locals 29

    move-object/from16 v0, p1

    const-string v1, "input"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    new-array v2, v1, [J

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_0

    mul-int/lit8 v5, v4, 0x8

    add-int v5, p2, v5

    .line 35
    invoke-static {v0, v5}, Lio/github/andreypfau/curve25519/internal/BinaryKt;->getULongLE([BI)J

    move-result-wide v5

    .line 34
    aput-wide v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v2}, Lkotlin/ULongArray;->constructor-impl([J)[J

    move-result-object v0

    .line 37
    new-instance v2, Lio/github/andreypfau/curve25519/scalar/UnpackedScalar;

    .line 38
    invoke-static {v0, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v4

    invoke-static {}, Lio/github/andreypfau/curve25519/constants/ConstantsKt;->getLOW_52_BIT_NASK()J

    move-result-wide v6

    and-long/2addr v4, v6

    invoke-static {v4, v5}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v5

    .line 39
    invoke-static {v0, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v3

    const/16 v7, 0x34

    ushr-long/2addr v3, v7

    invoke-static {v3, v4}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v3

    const/4 v7, 0x1

    invoke-static {v0, v7}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v8

    const/16 v10, 0xc

    shl-long/2addr v8, v10

    invoke-static {v8, v9}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v8

    or-long/2addr v3, v8

    invoke-static {v3, v4}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v3

    invoke-static {}, Lio/github/andreypfau/curve25519/constants/ConstantsKt;->getLOW_52_BIT_NASK()J

    move-result-wide v8

    and-long/2addr v3, v8

    invoke-static {v3, v4}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v8

    .line 40
    invoke-static {v0, v7}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v3

    const/16 v7, 0x28

    ushr-long/2addr v3, v7

    invoke-static {v3, v4}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v3

    const/4 v7, 0x2

    invoke-static {v0, v7}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v10

    const/16 v12, 0x18

    shl-long/2addr v10, v12

    invoke-static {v10, v11}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v10

    or-long/2addr v3, v10

    invoke-static {v3, v4}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v3

    invoke-static {}, Lio/github/andreypfau/curve25519/constants/ConstantsKt;->getLOW_52_BIT_NASK()J

    move-result-wide v10

    and-long/2addr v3, v10

    invoke-static {v3, v4}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v10

    .line 41
    invoke-static {v0, v7}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v3

    const/16 v7, 0x1c

    ushr-long/2addr v3, v7

    invoke-static {v3, v4}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v3

    const/4 v7, 0x3

    invoke-static {v0, v7}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v12

    const/16 v14, 0x24

    shl-long/2addr v12, v14

    invoke-static {v12, v13}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v12

    or-long/2addr v3, v12

    invoke-static {v3, v4}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v3

    invoke-static {}, Lio/github/andreypfau/curve25519/constants/ConstantsKt;->getLOW_52_BIT_NASK()J

    move-result-wide v12

    and-long/2addr v3, v12

    invoke-static {v3, v4}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v12

    .line 42
    invoke-static {v0, v7}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v3

    const/16 v7, 0x10

    ushr-long/2addr v3, v7

    invoke-static {v3, v4}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v3

    const/4 v15, 0x4

    invoke-static {v0, v15}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v16

    const/16 v7, 0x30

    shl-long v16, v16, v7

    invoke-static/range {v16 .. v17}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v16

    or-long v3, v3, v16

    invoke-static {v3, v4}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v3

    invoke-static {}, Lio/github/andreypfau/curve25519/constants/ConstantsKt;->getLOW_52_BIT_NASK()J

    move-result-wide v16

    and-long v3, v3, v16

    invoke-static {v3, v4}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v16

    const/4 v3, 0x0

    move-object v4, v2

    move-wide v7, v8

    move-wide v9, v10

    move-wide v11, v12

    move-wide/from16 v13, v16

    move v1, v15

    move-object v15, v3

    .line 37
    invoke-direct/range {v4 .. v15}, Lio/github/andreypfau/curve25519/scalar/UnpackedScalar;-><init>(JJJJJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 44
    new-instance v3, Lio/github/andreypfau/curve25519/scalar/UnpackedScalar;

    .line 45
    invoke-static {v0, v1}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v4

    ushr-long/2addr v4, v1

    invoke-static {v4, v5}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v4

    invoke-static {}, Lio/github/andreypfau/curve25519/constants/ConstantsKt;->getLOW_52_BIT_NASK()J

    move-result-wide v6

    and-long/2addr v4, v6

    invoke-static {v4, v5}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v18

    .line 46
    invoke-static {v0, v1}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v4

    const/16 v1, 0x38

    ushr-long/2addr v4, v1

    invoke-static {v4, v5}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v4

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v6

    const/16 v8, 0x8

    shl-long/2addr v6, v8

    invoke-static {v6, v7}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v6

    or-long/2addr v4, v6

    invoke-static {v4, v5}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v4

    invoke-static {}, Lio/github/andreypfau/curve25519/constants/ConstantsKt;->getLOW_52_BIT_NASK()J

    move-result-wide v6

    and-long/2addr v4, v6

    invoke-static {v4, v5}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v20

    .line 47
    invoke-static {v0, v1}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v4

    const/16 v1, 0x2c

    ushr-long/2addr v4, v1

    invoke-static {v4, v5}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v4

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v6

    const/16 v8, 0x14

    shl-long/2addr v6, v8

    invoke-static {v6, v7}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v6

    or-long/2addr v4, v6

    invoke-static {v4, v5}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v4

    invoke-static {}, Lio/github/andreypfau/curve25519/constants/ConstantsKt;->getLOW_52_BIT_NASK()J

    move-result-wide v6

    and-long/2addr v4, v6

    invoke-static {v4, v5}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v22

    .line 48
    invoke-static {v0, v1}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v4

    const/16 v1, 0x20

    ushr-long/2addr v4, v1

    invoke-static {v4, v5}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v4

    const/4 v6, 0x7

    invoke-static {v0, v6}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v9

    shl-long/2addr v9, v1

    invoke-static {v9, v10}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v9

    or-long/2addr v4, v9

    invoke-static {v4, v5}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v4

    invoke-static {}, Lio/github/andreypfau/curve25519/constants/ConstantsKt;->getLOW_52_BIT_NASK()J

    move-result-wide v9

    and-long/2addr v4, v9

    invoke-static {v4, v5}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v24

    .line 49
    invoke-static {v0, v6}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v0

    ushr-long/2addr v0, v8

    invoke-static {v0, v1}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v26

    const/16 v28, 0x0

    move-object/from16 v17, v3

    .line 44
    invoke-direct/range {v17 .. v28}, Lio/github/andreypfau/curve25519/scalar/UnpackedScalar;-><init>(JJJJJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 52
    invoke-static {}, Lio/github/andreypfau/curve25519/constants/ConstantsKt;->getR()Lio/github/andreypfau/curve25519/scalar/UnpackedScalar;

    move-result-object v0

    invoke-virtual {v2, v2, v0}, Lio/github/andreypfau/curve25519/scalar/UnpackedScalar;->montgomeryMul(Lio/github/andreypfau/curve25519/scalar/UnpackedScalar;Lio/github/andreypfau/curve25519/scalar/UnpackedScalar;)V

    .line 53
    invoke-static {}, Lio/github/andreypfau/curve25519/constants/ConstantsKt;->getRR()Lio/github/andreypfau/curve25519/scalar/UnpackedScalar;

    move-result-object v0

    invoke-virtual {v3, v3, v0}, Lio/github/andreypfau/curve25519/scalar/UnpackedScalar;->montgomeryMul(Lio/github/andreypfau/curve25519/scalar/UnpackedScalar;Lio/github/andreypfau/curve25519/scalar/UnpackedScalar;)V

    move-object/from16 v0, p0

    .line 56
    invoke-virtual {v0, v3, v2}, Lio/github/andreypfau/curve25519/scalar/UnpackedScalar;->add(Lio/github/andreypfau/curve25519/scalar/UnpackedScalar;Lio/github/andreypfau/curve25519/scalar/UnpackedScalar;)V

    return-void
.end method

.method public final getData-Y2RjT0g()[J
    .locals 1

    .line 14
    iget-object v0, p0, Lio/github/andreypfau/curve25519/scalar/UnpackedScalar;->data:[J

    return-object v0
.end method

.method public final montgomeryMul(Lio/github/andreypfau/curve25519/scalar/UnpackedScalar;Lio/github/andreypfau/curve25519/scalar/UnpackedScalar;)V
    .locals 2

    const-string v0, "a"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "b"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    iget-object p1, p1, Lio/github/andreypfau/curve25519/scalar/UnpackedScalar;->data:[J

    iget-object p2, p2, Lio/github/andreypfau/curve25519/scalar/UnpackedScalar;->data:[J

    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-static {p1, p2, v0, v1, v0}, Lio/github/andreypfau/curve25519/internal/Scalar64Kt;->scalarMulInternal-NHtdf0s$default([J[J[JILjava/lang/Object;)[J

    move-result-object p1

    const/4 p2, 0x2

    .line 133
    invoke-static {p1, v0, p2, v0}, Lio/github/andreypfau/curve25519/internal/Scalar64Kt;->scalarMontgomeryReduce-GR1PJdc$default([J[JILjava/lang/Object;)[J

    move-result-object p1

    .line 135
    new-instance p2, Lio/github/andreypfau/curve25519/scalar/UnpackedScalar;

    invoke-direct {p2, p1, v0}, Lio/github/andreypfau/curve25519/scalar/UnpackedScalar;-><init>([JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {}, Lio/github/andreypfau/curve25519/constants/ConstantsKt;->getL()Lio/github/andreypfau/curve25519/scalar/UnpackedScalar;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lio/github/andreypfau/curve25519/scalar/UnpackedScalar;->sub(Lio/github/andreypfau/curve25519/scalar/UnpackedScalar;Lio/github/andreypfau/curve25519/scalar/UnpackedScalar;)V

    return-void
.end method

.method public final mul(Lio/github/andreypfau/curve25519/scalar/UnpackedScalar;Lio/github/andreypfau/curve25519/scalar/UnpackedScalar;)V
    .locals 2

    const-string v0, "a"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "b"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    iget-object p1, p1, Lio/github/andreypfau/curve25519/scalar/UnpackedScalar;->data:[J

    iget-object p2, p2, Lio/github/andreypfau/curve25519/scalar/UnpackedScalar;->data:[J

    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-static {p1, p2, v0, v1, v0}, Lio/github/andreypfau/curve25519/internal/Scalar64Kt;->scalarMulInternal-NHtdf0s$default([J[J[JILjava/lang/Object;)[J

    move-result-object p1

    .line 99
    iget-object p2, p0, Lio/github/andreypfau/curve25519/scalar/UnpackedScalar;->data:[J

    invoke-static {p1, p2}, Lio/github/andreypfau/curve25519/internal/Scalar64Kt;->scalarMontgomeryReduce-GR1PJdc([J[J)[J

    .line 100
    iget-object p1, p0, Lio/github/andreypfau/curve25519/scalar/UnpackedScalar;->data:[J

    invoke-static {}, Lio/github/andreypfau/curve25519/constants/ConstantsKt;->getRR()Lio/github/andreypfau/curve25519/scalar/UnpackedScalar;

    move-result-object p2

    iget-object p2, p2, Lio/github/andreypfau/curve25519/scalar/UnpackedScalar;->data:[J

    invoke-static {p1, p2, v0, v1, v0}, Lio/github/andreypfau/curve25519/internal/Scalar64Kt;->scalarMulInternal-NHtdf0s$default([J[J[JILjava/lang/Object;)[J

    move-result-object p1

    .line 101
    iget-object p2, p0, Lio/github/andreypfau/curve25519/scalar/UnpackedScalar;->data:[J

    invoke-static {p1, p2}, Lio/github/andreypfau/curve25519/internal/Scalar64Kt;->scalarMontgomeryReduce-GR1PJdc([J[J)[J

    return-void
.end method

.method public final sub(Lio/github/andreypfau/curve25519/scalar/UnpackedScalar;Lio/github/andreypfau/curve25519/scalar/UnpackedScalar;)V
    .locals 11

    const-string v0, "a"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "b"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    move v3, v0

    move-wide v4, v1

    :goto_0
    const/16 v6, 0x3f

    const/4 v7, 0x5

    if-ge v3, v7, :cond_0

    .line 119
    iget-object v7, p1, Lio/github/andreypfau/curve25519/scalar/UnpackedScalar;->data:[J

    invoke-static {v7, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v7

    iget-object v9, p2, Lio/github/andreypfau/curve25519/scalar/UnpackedScalar;->data:[J

    invoke-static {v9, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v9

    ushr-long/2addr v4, v6

    invoke-static {v4, v5}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v4

    add-long/2addr v9, v4

    invoke-static {v9, v10}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v4

    sub-long/2addr v7, v4

    invoke-static {v7, v8}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v4

    .line 120
    iget-object v6, p0, Lio/github/andreypfau/curve25519/scalar/UnpackedScalar;->data:[J

    invoke-static {}, Lio/github/andreypfau/curve25519/constants/ConstantsKt;->getLOW_52_BIT_NASK()J

    move-result-wide v7

    and-long/2addr v7, v4

    invoke-static {v7, v8}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v7

    invoke-static {v6, v3, v7, v8}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    ushr-long p1, v4, v6

    .line 123
    invoke-static {p1, p2}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide p1

    const-wide/16 v3, 0x1

    xor-long/2addr p1, v3

    invoke-static {p1, p2}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide p1

    invoke-static {v3, v4}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v3

    sub-long/2addr p1, v3

    invoke-static {p1, p2}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide p1

    :goto_1
    if-ge v0, v7, :cond_1

    .line 126
    iget-object v3, p0, Lio/github/andreypfau/curve25519/scalar/UnpackedScalar;->data:[J

    invoke-static {v3, v0}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v3

    invoke-static {}, Lio/github/andreypfau/curve25519/constants/ConstantsKt;->getL()Lio/github/andreypfau/curve25519/scalar/UnpackedScalar;

    move-result-object v5

    iget-object v5, v5, Lio/github/andreypfau/curve25519/scalar/UnpackedScalar;->data:[J

    invoke-static {v5, v0}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v5

    and-long/2addr v5, p1

    invoke-static {v5, v6}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v5

    add-long/2addr v3, v5

    invoke-static {v3, v4}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v3

    const/16 v5, 0x34

    ushr-long/2addr v1, v5

    invoke-static {v1, v2}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v1

    add-long/2addr v3, v1

    invoke-static {v3, v4}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v1

    .line 127
    iget-object v3, p0, Lio/github/andreypfau/curve25519/scalar/UnpackedScalar;->data:[J

    invoke-static {}, Lio/github/andreypfau/curve25519/constants/ConstantsKt;->getLOW_52_BIT_NASK()J

    move-result-wide v4

    and-long/2addr v4, v1

    invoke-static {v4, v5}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v4

    invoke-static {v3, v0, v4, v5}, Lkotlin/ULongArray;->set-k8EXiF4([JIJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final toByteArray([BI)[B
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "buf"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    iget-object v2, v0, Lio/github/andreypfau/curve25519/scalar/UnpackedScalar;->data:[J

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v4

    long-to-int v2, v4

    int-to-byte v2, v2

    aput-byte v2, v1, p2

    add-int/lit8 v2, p2, 0x1

    .line 61
    iget-object v4, v0, Lio/github/andreypfau/curve25519/scalar/UnpackedScalar;->data:[J

    invoke-static {v4, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v4

    const/16 v6, 0x8

    ushr-long/2addr v4, v6

    invoke-static {v4, v5}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v4

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    add-int/lit8 v2, p2, 0x2

    .line 62
    iget-object v4, v0, Lio/github/andreypfau/curve25519/scalar/UnpackedScalar;->data:[J

    invoke-static {v4, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v4

    const/16 v7, 0x10

    ushr-long/2addr v4, v7

    invoke-static {v4, v5}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v4

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    add-int/lit8 v2, p2, 0x3

    .line 63
    iget-object v4, v0, Lio/github/andreypfau/curve25519/scalar/UnpackedScalar;->data:[J

    invoke-static {v4, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v4

    const/16 v8, 0x18

    ushr-long/2addr v4, v8

    invoke-static {v4, v5}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v4

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    add-int/lit8 v2, p2, 0x4

    .line 64
    iget-object v4, v0, Lio/github/andreypfau/curve25519/scalar/UnpackedScalar;->data:[J

    invoke-static {v4, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v4

    const/16 v9, 0x20

    ushr-long/2addr v4, v9

    invoke-static {v4, v5}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v4

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    add-int/lit8 v2, p2, 0x5

    .line 65
    iget-object v4, v0, Lio/github/andreypfau/curve25519/scalar/UnpackedScalar;->data:[J

    invoke-static {v4, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v4

    const/16 v10, 0x28

    ushr-long/2addr v4, v10

    invoke-static {v4, v5}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v4

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    add-int/lit8 v2, p2, 0x6

    .line 66
    iget-object v4, v0, Lio/github/andreypfau/curve25519/scalar/UnpackedScalar;->data:[J

    invoke-static {v4, v3}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v3

    const/16 v5, 0x30

    ushr-long/2addr v3, v5

    invoke-static {v3, v4}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v3

    iget-object v11, v0, Lio/github/andreypfau/curve25519/scalar/UnpackedScalar;->data:[J

    const/4 v12, 0x1

    invoke-static {v11, v12}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v13

    const/4 v11, 0x4

    shl-long/2addr v13, v11

    invoke-static {v13, v14}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v13

    or-long/2addr v3, v13

    invoke-static {v3, v4}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v3

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, p2, 0x7

    .line 67
    iget-object v3, v0, Lio/github/andreypfau/curve25519/scalar/UnpackedScalar;->data:[J

    invoke-static {v3, v12}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v3

    ushr-long/2addr v3, v11

    invoke-static {v3, v4}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v3

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, p2, 0x8

    .line 68
    iget-object v3, v0, Lio/github/andreypfau/curve25519/scalar/UnpackedScalar;->data:[J

    invoke-static {v3, v12}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v3

    const/16 v13, 0xc

    ushr-long/2addr v3, v13

    invoke-static {v3, v4}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v3

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, p2, 0x9

    .line 69
    iget-object v3, v0, Lio/github/andreypfau/curve25519/scalar/UnpackedScalar;->data:[J

    invoke-static {v3, v12}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v3

    const/16 v14, 0x14

    ushr-long/2addr v3, v14

    invoke-static {v3, v4}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v3

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, p2, 0xa

    .line 70
    iget-object v3, v0, Lio/github/andreypfau/curve25519/scalar/UnpackedScalar;->data:[J

    invoke-static {v3, v12}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v3

    const/16 v15, 0x1c

    ushr-long/2addr v3, v15

    invoke-static {v3, v4}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v3

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, p2, 0xb

    .line 71
    iget-object v3, v0, Lio/github/andreypfau/curve25519/scalar/UnpackedScalar;->data:[J

    invoke-static {v3, v12}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v3

    const/16 v16, 0x24

    ushr-long v3, v3, v16

    invoke-static {v3, v4}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v3

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, p2, 0xc

    .line 72
    iget-object v3, v0, Lio/github/andreypfau/curve25519/scalar/UnpackedScalar;->data:[J

    invoke-static {v3, v12}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v3

    const/16 v12, 0x2c

    ushr-long/2addr v3, v12

    invoke-static {v3, v4}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v3

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, p2, 0xd

    .line 73
    iget-object v3, v0, Lio/github/andreypfau/curve25519/scalar/UnpackedScalar;->data:[J

    const/4 v4, 0x2

    invoke-static {v3, v4}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v14

    long-to-int v3, v14

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, p2, 0xe

    .line 74
    iget-object v3, v0, Lio/github/andreypfau/curve25519/scalar/UnpackedScalar;->data:[J

    invoke-static {v3, v4}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v14

    ushr-long/2addr v14, v6

    invoke-static {v14, v15}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v14

    long-to-int v3, v14

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, p2, 0xf

    .line 75
    iget-object v3, v0, Lio/github/andreypfau/curve25519/scalar/UnpackedScalar;->data:[J

    invoke-static {v3, v4}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v14

    ushr-long/2addr v14, v7

    invoke-static {v14, v15}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v14

    long-to-int v3, v14

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, p2, 0x10

    .line 76
    iget-object v3, v0, Lio/github/andreypfau/curve25519/scalar/UnpackedScalar;->data:[J

    invoke-static {v3, v4}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v14

    ushr-long/2addr v14, v8

    invoke-static {v14, v15}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v14

    long-to-int v3, v14

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, p2, 0x11

    .line 77
    iget-object v3, v0, Lio/github/andreypfau/curve25519/scalar/UnpackedScalar;->data:[J

    invoke-static {v3, v4}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v14

    ushr-long/2addr v14, v9

    invoke-static {v14, v15}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v14

    long-to-int v3, v14

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, p2, 0x12

    .line 78
    iget-object v3, v0, Lio/github/andreypfau/curve25519/scalar/UnpackedScalar;->data:[J

    invoke-static {v3, v4}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v14

    ushr-long/2addr v14, v10

    invoke-static {v14, v15}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v14

    long-to-int v3, v14

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, p2, 0x13

    .line 79
    iget-object v3, v0, Lio/github/andreypfau/curve25519/scalar/UnpackedScalar;->data:[J

    invoke-static {v3, v4}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v3

    ushr-long/2addr v3, v5

    invoke-static {v3, v4}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v3

    iget-object v5, v0, Lio/github/andreypfau/curve25519/scalar/UnpackedScalar;->data:[J

    const/4 v14, 0x3

    invoke-static {v5, v14}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v17

    shl-long v17, v17, v11

    invoke-static/range {v17 .. v18}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v17

    or-long v3, v3, v17

    invoke-static {v3, v4}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v3

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, p2, 0x14

    .line 80
    iget-object v3, v0, Lio/github/andreypfau/curve25519/scalar/UnpackedScalar;->data:[J

    invoke-static {v3, v14}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v3

    ushr-long/2addr v3, v11

    invoke-static {v3, v4}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v3

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, p2, 0x15

    .line 81
    iget-object v3, v0, Lio/github/andreypfau/curve25519/scalar/UnpackedScalar;->data:[J

    invoke-static {v3, v14}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v3

    ushr-long/2addr v3, v13

    invoke-static {v3, v4}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v3

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, p2, 0x16

    .line 82
    iget-object v3, v0, Lio/github/andreypfau/curve25519/scalar/UnpackedScalar;->data:[J

    invoke-static {v3, v14}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v3

    const/16 v5, 0x14

    ushr-long/2addr v3, v5

    invoke-static {v3, v4}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v3

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, p2, 0x17

    .line 83
    iget-object v3, v0, Lio/github/andreypfau/curve25519/scalar/UnpackedScalar;->data:[J

    invoke-static {v3, v14}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v3

    const/16 v5, 0x1c

    ushr-long/2addr v3, v5

    invoke-static {v3, v4}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v3

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, p2, 0x18

    .line 84
    iget-object v3, v0, Lio/github/andreypfau/curve25519/scalar/UnpackedScalar;->data:[J

    invoke-static {v3, v14}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v3

    ushr-long v3, v3, v16

    invoke-static {v3, v4}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v3

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, p2, 0x19

    .line 85
    iget-object v3, v0, Lio/github/andreypfau/curve25519/scalar/UnpackedScalar;->data:[J

    invoke-static {v3, v14}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v3

    ushr-long/2addr v3, v12

    invoke-static {v3, v4}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v3

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, p2, 0x1a

    .line 86
    iget-object v3, v0, Lio/github/andreypfau/curve25519/scalar/UnpackedScalar;->data:[J

    invoke-static {v3, v11}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v3

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, p2, 0x1b

    .line 87
    iget-object v3, v0, Lio/github/andreypfau/curve25519/scalar/UnpackedScalar;->data:[J

    invoke-static {v3, v11}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v3

    ushr-long/2addr v3, v6

    invoke-static {v3, v4}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v3

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, p2, 0x1c

    .line 88
    iget-object v3, v0, Lio/github/andreypfau/curve25519/scalar/UnpackedScalar;->data:[J

    invoke-static {v3, v11}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v3

    ushr-long/2addr v3, v7

    invoke-static {v3, v4}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v3

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, p2, 0x1d

    .line 89
    iget-object v3, v0, Lio/github/andreypfau/curve25519/scalar/UnpackedScalar;->data:[J

    invoke-static {v3, v11}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v3

    ushr-long/2addr v3, v8

    invoke-static {v3, v4}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v3

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, p2, 0x1e

    .line 90
    iget-object v3, v0, Lio/github/andreypfau/curve25519/scalar/UnpackedScalar;->data:[J

    invoke-static {v3, v11}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v3

    ushr-long/2addr v3, v9

    invoke-static {v3, v4}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v3

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, p2, 0x1f

    .line 91
    iget-object v3, v0, Lio/github/andreypfau/curve25519/scalar/UnpackedScalar;->data:[J

    invoke-static {v3, v11}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v3

    ushr-long/2addr v3, v10

    invoke-static {v3, v4}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v3

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    return-object v1
.end method
