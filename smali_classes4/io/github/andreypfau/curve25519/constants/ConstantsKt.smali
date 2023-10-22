.class public final Lio/github/andreypfau/curve25519/constants/ConstantsKt;
.super Ljava/lang/Object;
.source "constants.kt"


# static fields
.field private static final EDWARDS_D:Lio/github/andreypfau/curve25519/field/FieldElement;

.field private static final L:Lio/github/andreypfau/curve25519/scalar/UnpackedScalar;

.field private static final LOW_51_BIT_NASK:J

.field private static final LOW_52_BIT_NASK:J

.field private static final R:Lio/github/andreypfau/curve25519/scalar/UnpackedScalar;

.field private static final RR:Lio/github/andreypfau/curve25519/scalar/UnpackedScalar;

.field private static final SQRT_M1:Lio/github/andreypfau/curve25519/field/FieldElement;


# direct methods
.method static constructor <clinit>()V
    .locals 26

    const-wide/high16 v0, 0x8000000000000L

    .line 8
    invoke-static {v0, v1}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v0

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v0

    sput-wide v0, Lio/github/andreypfau/curve25519/constants/ConstantsKt;->LOW_51_BIT_NASK:J

    const-wide/high16 v0, 0x10000000000000L

    .line 9
    invoke-static {v0, v1}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v0

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v0

    sput-wide v0, Lio/github/andreypfau/curve25519/constants/ConstantsKt;->LOW_52_BIT_NASK:J

    .line 12
    new-instance v0, Lio/github/andreypfau/curve25519/field/FieldElement;

    const-wide v3, 0x34dca135978a3L

    const-wide v5, 0x1a8283b156ebdL

    const-wide v7, 0x5e7a26001c029L

    const-wide v9, 0x739c663a03cbbL

    const-wide v11, 0x52036cee2b6ffL

    const/4 v13, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v13}, Lio/github/andreypfau/curve25519/field/FieldElement;-><init>(JJJJJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/github/andreypfau/curve25519/constants/ConstantsKt;->EDWARDS_D:Lio/github/andreypfau/curve25519/field/FieldElement;

    .line 21
    new-instance v14, Lio/github/andreypfau/curve25519/field/FieldElement;

    const-wide v15, 0x69b9426b2f159L

    const-wide v17, 0x35050762add7aL

    const-wide v19, 0x3cf44c0038052L

    const-wide v21, 0x6738cc7407977L

    const-wide v23, 0x2406d9dc56dffL

    const/16 v25, 0x0

    invoke-direct/range {v14 .. v25}, Lio/github/andreypfau/curve25519/field/FieldElement;-><init>(JJJJJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 30
    new-instance v12, Lio/github/andreypfau/curve25519/field/FieldElement;

    const-wide v1, 0x61b274a0ea0b0L

    const-wide v3, 0xd5a5fc8f189dL

    const-wide v5, 0x7ef5e9cbd0c60L

    const-wide v7, 0x78595a6804c9eL

    const-wide v9, 0x2b8324804fc1dL

    const/4 v11, 0x0

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Lio/github/andreypfau/curve25519/field/FieldElement;-><init>(JJJJJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v12, Lio/github/andreypfau/curve25519/constants/ConstantsKt;->SQRT_M1:Lio/github/andreypfau/curve25519/field/FieldElement;

    .line 39
    new-instance v0, Lio/github/andreypfau/curve25519/scalar/UnpackedScalar;

    const-wide v14, 0x2631a5cf5d3edL

    const-wide v16, 0xdea2f79cd6581L

    const-wide/32 v18, 0x14def9

    const-wide/16 v20, 0x0

    const-wide v22, 0x100000000000L

    const/16 v24, 0x0

    move-object v13, v0

    invoke-direct/range {v13 .. v24}, Lio/github/andreypfau/curve25519/scalar/UnpackedScalar;-><init>(JJJJJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/github/andreypfau/curve25519/constants/ConstantsKt;->L:Lio/github/andreypfau/curve25519/scalar/UnpackedScalar;

    .line 48
    new-instance v0, Lio/github/andreypfau/curve25519/scalar/UnpackedScalar;

    const-wide v2, 0xf48bd6721e6edL

    const-wide v4, 0x3bab5ac67e45aL

    const-wide v6, 0xfffffeb35e51bL

    const-wide v8, 0xfffffffffffffL

    const-wide v10, 0xfffffffffffL

    const/4 v12, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v12}, Lio/github/andreypfau/curve25519/scalar/UnpackedScalar;-><init>(JJJJJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/github/andreypfau/curve25519/constants/ConstantsKt;->R:Lio/github/andreypfau/curve25519/scalar/UnpackedScalar;

    .line 57
    new-instance v0, Lio/github/andreypfau/curve25519/scalar/UnpackedScalar;

    const-wide v14, 0x9d265e952d13bL

    const-wide v16, 0xd63c715bea69fL

    const-wide v18, 0x5be65cb687604L

    const-wide v20, 0x3dceec73d217fL

    const-wide v22, 0x9411b7c309aL

    move-object v13, v0

    invoke-direct/range {v13 .. v24}, Lio/github/andreypfau/curve25519/scalar/UnpackedScalar;-><init>(JJJJJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/github/andreypfau/curve25519/constants/ConstantsKt;->RR:Lio/github/andreypfau/curve25519/scalar/UnpackedScalar;

    .line 68
    new-instance v0, Lio/github/andreypfau/curve25519/edwards/CompressedEdwardsY;

    const-string v1, "0100000000000000000000000000000000000000000000000000000000000080"

    invoke-static {v1}, Lio/github/andreypfau/curve25519/internal/BinaryKt;->hex(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lio/github/andreypfau/curve25519/edwards/CompressedEdwardsY;-><init>([B)V

    .line 69
    new-instance v0, Lio/github/andreypfau/curve25519/edwards/CompressedEdwardsY;

    const-string v1, "ecffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"

    invoke-static {v1}, Lio/github/andreypfau/curve25519/internal/BinaryKt;->hex(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lio/github/andreypfau/curve25519/edwards/CompressedEdwardsY;-><init>([B)V

    return-void
.end method

.method public static final getEDWARDS_D()Lio/github/andreypfau/curve25519/field/FieldElement;
    .locals 1

    .line 12
    sget-object v0, Lio/github/andreypfau/curve25519/constants/ConstantsKt;->EDWARDS_D:Lio/github/andreypfau/curve25519/field/FieldElement;

    return-object v0
.end method

.method public static final getL()Lio/github/andreypfau/curve25519/scalar/UnpackedScalar;
    .locals 1

    .line 39
    sget-object v0, Lio/github/andreypfau/curve25519/constants/ConstantsKt;->L:Lio/github/andreypfau/curve25519/scalar/UnpackedScalar;

    return-object v0
.end method

.method public static final getLOW_51_BIT_NASK()J
    .locals 2

    .line 8
    sget-wide v0, Lio/github/andreypfau/curve25519/constants/ConstantsKt;->LOW_51_BIT_NASK:J

    return-wide v0
.end method

.method public static final getLOW_52_BIT_NASK()J
    .locals 2

    .line 9
    sget-wide v0, Lio/github/andreypfau/curve25519/constants/ConstantsKt;->LOW_52_BIT_NASK:J

    return-wide v0
.end method

.method public static final getR()Lio/github/andreypfau/curve25519/scalar/UnpackedScalar;
    .locals 1

    .line 48
    sget-object v0, Lio/github/andreypfau/curve25519/constants/ConstantsKt;->R:Lio/github/andreypfau/curve25519/scalar/UnpackedScalar;

    return-object v0
.end method

.method public static final getRR()Lio/github/andreypfau/curve25519/scalar/UnpackedScalar;
    .locals 1

    .line 57
    sget-object v0, Lio/github/andreypfau/curve25519/constants/ConstantsKt;->RR:Lio/github/andreypfau/curve25519/scalar/UnpackedScalar;

    return-object v0
.end method

.method public static final getSQRT_M1()Lio/github/andreypfau/curve25519/field/FieldElement;
    .locals 1

    .line 30
    sget-object v0, Lio/github/andreypfau/curve25519/constants/ConstantsKt;->SQRT_M1:Lio/github/andreypfau/curve25519/field/FieldElement;

    return-object v0
.end method
