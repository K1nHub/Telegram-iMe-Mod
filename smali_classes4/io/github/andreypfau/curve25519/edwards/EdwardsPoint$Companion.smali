.class public final Lio/github/andreypfau/curve25519/edwards/EdwardsPoint$Companion;
.super Ljava/lang/Object;
.source "EdwardsPoint.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/andreypfau/curve25519/edwards/EdwardsPoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEdwardsPoint.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EdwardsPoint.kt\nio/github/andreypfau/curve25519/edwards/EdwardsPoint$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,185:1\n1#2:186\n*E\n"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lio/github/andreypfau/curve25519/edwards/EdwardsPoint$Companion;-><init>()V

    return-void
.end method

.method public static synthetic from$default(Lio/github/andreypfau/curve25519/edwards/EdwardsPoint$Companion;Lio/github/andreypfau/curve25519/edwards/CompressedEdwardsY;Lio/github/andreypfau/curve25519/edwards/EdwardsPoint;ILjava/lang/Object;)Lio/github/andreypfau/curve25519/edwards/EdwardsPoint;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/github/andreypfau/curve25519/exceptioin/InvalidYCoordinateException;
        }
    .end annotation

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 124
    new-instance p2, Lio/github/andreypfau/curve25519/edwards/EdwardsPoint;

    invoke-direct {p2}, Lio/github/andreypfau/curve25519/edwards/EdwardsPoint;-><init>()V

    :cond_0
    invoke-virtual {p0, p1, p2}, Lio/github/andreypfau/curve25519/edwards/EdwardsPoint$Companion;->from(Lio/github/andreypfau/curve25519/edwards/CompressedEdwardsY;Lio/github/andreypfau/curve25519/edwards/EdwardsPoint;)Lio/github/andreypfau/curve25519/edwards/EdwardsPoint;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic identity$default(Lio/github/andreypfau/curve25519/edwards/EdwardsPoint$Companion;Lio/github/andreypfau/curve25519/edwards/EdwardsPoint;ILjava/lang/Object;)Lio/github/andreypfau/curve25519/edwards/EdwardsPoint;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 92
    new-instance p1, Lio/github/andreypfau/curve25519/edwards/EdwardsPoint;

    invoke-direct {p1}, Lio/github/andreypfau/curve25519/edwards/EdwardsPoint;-><init>()V

    :cond_0
    invoke-virtual {p0, p1}, Lio/github/andreypfau/curve25519/edwards/EdwardsPoint$Companion;->identity(Lio/github/andreypfau/curve25519/edwards/EdwardsPoint;)Lio/github/andreypfau/curve25519/edwards/EdwardsPoint;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic mul$default(Lio/github/andreypfau/curve25519/edwards/EdwardsPoint$Companion;Lio/github/andreypfau/curve25519/constants/tables/EdwardsBasepointTable;Lio/github/andreypfau/curve25519/scalar/Scalar;Lio/github/andreypfau/curve25519/edwards/EdwardsPoint;ILjava/lang/Object;)Lio/github/andreypfau/curve25519/edwards/EdwardsPoint;
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 151
    new-instance p3, Lio/github/andreypfau/curve25519/edwards/EdwardsPoint;

    invoke-direct {p3}, Lio/github/andreypfau/curve25519/edwards/EdwardsPoint;-><init>()V

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lio/github/andreypfau/curve25519/edwards/EdwardsPoint$Companion;->mul(Lio/github/andreypfau/curve25519/constants/tables/EdwardsBasepointTable;Lio/github/andreypfau/curve25519/scalar/Scalar;Lio/github/andreypfau/curve25519/edwards/EdwardsPoint;)Lio/github/andreypfau/curve25519/edwards/EdwardsPoint;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final from(Lio/github/andreypfau/curve25519/edwards/CompressedEdwardsY;Lio/github/andreypfau/curve25519/edwards/EdwardsPoint;)Lio/github/andreypfau/curve25519/edwards/EdwardsPoint;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/github/andreypfau/curve25519/exceptioin/InvalidYCoordinateException;
        }
    .end annotation

    const-string v0, "compressedY"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "output"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    sget-object v0, Lio/github/andreypfau/curve25519/field/FieldElement;->Companion:Lio/github/andreypfau/curve25519/field/FieldElement$Companion;

    invoke-virtual {p1}, Lio/github/andreypfau/curve25519/edwards/CompressedEdwardsY;->getData()[B

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, v0

    invoke-static/range {v1 .. v6}, Lio/github/andreypfau/curve25519/field/FieldElement$Companion;->fromBytes$default(Lio/github/andreypfau/curve25519/field/FieldElement$Companion;[BILio/github/andreypfau/curve25519/field/FieldElement;ILjava/lang/Object;)Lio/github/andreypfau/curve25519/field/FieldElement;

    move-result-object v7

    .line 126
    invoke-virtual {v0}, Lio/github/andreypfau/curve25519/field/FieldElement$Companion;->one()Lio/github/andreypfau/curve25519/field/FieldElement;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x2

    .line 127
    invoke-static {v0, v7, v9, v10, v9}, Lio/github/andreypfau/curve25519/field/FieldElement$Companion;->square$default(Lio/github/andreypfau/curve25519/field/FieldElement$Companion;Lio/github/andreypfau/curve25519/field/FieldElement;Lio/github/andreypfau/curve25519/field/FieldElement;ILjava/lang/Object;)Lio/github/andreypfau/curve25519/field/FieldElement;

    move-result-object v11

    const/4 v5, 0x4

    move-object v2, v11

    move-object v3, v8

    .line 128
    invoke-static/range {v1 .. v6}, Lio/github/andreypfau/curve25519/field/FieldElement$Companion;->sub$default(Lio/github/andreypfau/curve25519/field/FieldElement$Companion;Lio/github/andreypfau/curve25519/field/FieldElement;Lio/github/andreypfau/curve25519/field/FieldElement;Lio/github/andreypfau/curve25519/field/FieldElement;ILjava/lang/Object;)Lio/github/andreypfau/curve25519/field/FieldElement;

    move-result-object v12

    .line 129
    invoke-static {}, Lio/github/andreypfau/curve25519/constants/ConstantsKt;->getEDWARDS_D()Lio/github/andreypfau/curve25519/field/FieldElement;

    move-result-object v3

    invoke-static/range {v1 .. v6}, Lio/github/andreypfau/curve25519/field/FieldElement$Companion;->mul$default(Lio/github/andreypfau/curve25519/field/FieldElement$Companion;Lio/github/andreypfau/curve25519/field/FieldElement;Lio/github/andreypfau/curve25519/field/FieldElement;Lio/github/andreypfau/curve25519/field/FieldElement;ILjava/lang/Object;)Lio/github/andreypfau/curve25519/field/FieldElement;

    move-result-object v3

    .line 130
    invoke-virtual {v3, v3, v8}, Lio/github/andreypfau/curve25519/field/FieldElement;->add(Lio/github/andreypfau/curve25519/field/FieldElement;Lio/github/andreypfau/curve25519/field/FieldElement;)Lio/github/andreypfau/curve25519/field/FieldElement;

    move-object v2, v12

    .line 131
    invoke-static/range {v1 .. v6}, Lio/github/andreypfau/curve25519/field/FieldElement$Companion;->sqrtRatioI$default(Lio/github/andreypfau/curve25519/field/FieldElement$Companion;Lio/github/andreypfau/curve25519/field/FieldElement;Lio/github/andreypfau/curve25519/field/FieldElement;Lio/github/andreypfau/curve25519/field/FieldElement;ILjava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/github/andreypfau/curve25519/field/FieldElement;

    invoke-virtual {v0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    .line 135
    invoke-virtual {p1}, Lio/github/andreypfau/curve25519/edwards/CompressedEdwardsY;->getData()[B

    move-result-object p1

    const/16 v0, 0x1f

    aget-byte p1, p1, v0

    shr-int/lit8 p1, p1, 0x7

    .line 136
    invoke-virtual {v1, p1}, Lio/github/andreypfau/curve25519/field/FieldElement;->conditionalNegate(I)V

    .line 138
    invoke-virtual {p2}, Lio/github/andreypfau/curve25519/edwards/EdwardsPoint;->getX()Lio/github/andreypfau/curve25519/field/FieldElement;

    move-result-object p1

    invoke-static {p1, v1, v9, v10, v9}, Lio/github/andreypfau/curve25519/field/FieldElement;->set$default(Lio/github/andreypfau/curve25519/field/FieldElement;Lio/github/andreypfau/curve25519/field/FieldElement;Lio/github/andreypfau/curve25519/field/FieldElement;ILjava/lang/Object;)Lio/github/andreypfau/curve25519/field/FieldElement;

    .line 139
    invoke-virtual {p2}, Lio/github/andreypfau/curve25519/edwards/EdwardsPoint;->getY()Lio/github/andreypfau/curve25519/field/FieldElement;

    move-result-object p1

    invoke-static {p1, v7, v9, v10, v9}, Lio/github/andreypfau/curve25519/field/FieldElement;->set$default(Lio/github/andreypfau/curve25519/field/FieldElement;Lio/github/andreypfau/curve25519/field/FieldElement;Lio/github/andreypfau/curve25519/field/FieldElement;ILjava/lang/Object;)Lio/github/andreypfau/curve25519/field/FieldElement;

    .line 140
    invoke-virtual {p2}, Lio/github/andreypfau/curve25519/edwards/EdwardsPoint;->getZ()Lio/github/andreypfau/curve25519/field/FieldElement;

    move-result-object p1

    invoke-static {p1, v8, v9, v10, v9}, Lio/github/andreypfau/curve25519/field/FieldElement;->set$default(Lio/github/andreypfau/curve25519/field/FieldElement;Lio/github/andreypfau/curve25519/field/FieldElement;Lio/github/andreypfau/curve25519/field/FieldElement;ILjava/lang/Object;)Lio/github/andreypfau/curve25519/field/FieldElement;

    .line 141
    invoke-virtual {p2}, Lio/github/andreypfau/curve25519/edwards/EdwardsPoint;->getT()Lio/github/andreypfau/curve25519/field/FieldElement;

    move-result-object p1

    invoke-virtual {p1, v1, v7}, Lio/github/andreypfau/curve25519/field/FieldElement;->mul(Lio/github/andreypfau/curve25519/field/FieldElement;Lio/github/andreypfau/curve25519/field/FieldElement;)Lio/github/andreypfau/curve25519/field/FieldElement;

    return-object p2

    .line 132
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid Y coordinate"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final from(Lio/github/andreypfau/curve25519/models/CompletedPoint;Lio/github/andreypfau/curve25519/edwards/EdwardsPoint;)Lio/github/andreypfau/curve25519/edwards/EdwardsPoint;
    .locals 3

    const-string v0, "cp"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "output"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    invoke-virtual {p2}, Lio/github/andreypfau/curve25519/edwards/EdwardsPoint;->getX()Lio/github/andreypfau/curve25519/field/FieldElement;

    move-result-object v0

    invoke-virtual {p1}, Lio/github/andreypfau/curve25519/models/CompletedPoint;->getX()Lio/github/andreypfau/curve25519/field/FieldElement;

    move-result-object v1

    invoke-virtual {p1}, Lio/github/andreypfau/curve25519/models/CompletedPoint;->getT()Lio/github/andreypfau/curve25519/field/FieldElement;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/github/andreypfau/curve25519/field/FieldElement;->mul(Lio/github/andreypfau/curve25519/field/FieldElement;Lio/github/andreypfau/curve25519/field/FieldElement;)Lio/github/andreypfau/curve25519/field/FieldElement;

    .line 116
    invoke-virtual {p2}, Lio/github/andreypfau/curve25519/edwards/EdwardsPoint;->getY()Lio/github/andreypfau/curve25519/field/FieldElement;

    move-result-object v0

    invoke-virtual {p1}, Lio/github/andreypfau/curve25519/models/CompletedPoint;->getY()Lio/github/andreypfau/curve25519/field/FieldElement;

    move-result-object v1

    invoke-virtual {p1}, Lio/github/andreypfau/curve25519/models/CompletedPoint;->getZ()Lio/github/andreypfau/curve25519/field/FieldElement;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/github/andreypfau/curve25519/field/FieldElement;->mul(Lio/github/andreypfau/curve25519/field/FieldElement;Lio/github/andreypfau/curve25519/field/FieldElement;)Lio/github/andreypfau/curve25519/field/FieldElement;

    .line 117
    invoke-virtual {p2}, Lio/github/andreypfau/curve25519/edwards/EdwardsPoint;->getZ()Lio/github/andreypfau/curve25519/field/FieldElement;

    move-result-object v0

    invoke-virtual {p1}, Lio/github/andreypfau/curve25519/models/CompletedPoint;->getZ()Lio/github/andreypfau/curve25519/field/FieldElement;

    move-result-object v1

    invoke-virtual {p1}, Lio/github/andreypfau/curve25519/models/CompletedPoint;->getT()Lio/github/andreypfau/curve25519/field/FieldElement;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/github/andreypfau/curve25519/field/FieldElement;->mul(Lio/github/andreypfau/curve25519/field/FieldElement;Lio/github/andreypfau/curve25519/field/FieldElement;)Lio/github/andreypfau/curve25519/field/FieldElement;

    .line 118
    invoke-virtual {p2}, Lio/github/andreypfau/curve25519/edwards/EdwardsPoint;->getT()Lio/github/andreypfau/curve25519/field/FieldElement;

    move-result-object v0

    invoke-virtual {p1}, Lio/github/andreypfau/curve25519/models/CompletedPoint;->getX()Lio/github/andreypfau/curve25519/field/FieldElement;

    move-result-object v1

    invoke-virtual {p1}, Lio/github/andreypfau/curve25519/models/CompletedPoint;->getY()Lio/github/andreypfau/curve25519/field/FieldElement;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lio/github/andreypfau/curve25519/field/FieldElement;->mul(Lio/github/andreypfau/curve25519/field/FieldElement;Lio/github/andreypfau/curve25519/field/FieldElement;)Lio/github/andreypfau/curve25519/field/FieldElement;

    return-object p2
.end method

.method public final identity(Lio/github/andreypfau/curve25519/edwards/EdwardsPoint;)Lio/github/andreypfau/curve25519/edwards/EdwardsPoint;
    .locals 3

    const-string/jumbo v0, "output"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    invoke-virtual {p1}, Lio/github/andreypfau/curve25519/edwards/EdwardsPoint;->getX()Lio/github/andreypfau/curve25519/field/FieldElement;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lio/github/andreypfau/curve25519/field/FieldElement;->zero$default(Lio/github/andreypfau/curve25519/field/FieldElement;Lio/github/andreypfau/curve25519/field/FieldElement;ILjava/lang/Object;)Lio/github/andreypfau/curve25519/field/FieldElement;

    .line 94
    invoke-virtual {p1}, Lio/github/andreypfau/curve25519/edwards/EdwardsPoint;->getY()Lio/github/andreypfau/curve25519/field/FieldElement;

    move-result-object v0

    invoke-static {v0, v1, v2, v1}, Lio/github/andreypfau/curve25519/field/FieldElement;->one$default(Lio/github/andreypfau/curve25519/field/FieldElement;Lio/github/andreypfau/curve25519/field/FieldElement;ILjava/lang/Object;)Lio/github/andreypfau/curve25519/field/FieldElement;

    .line 95
    invoke-virtual {p1}, Lio/github/andreypfau/curve25519/edwards/EdwardsPoint;->getZ()Lio/github/andreypfau/curve25519/field/FieldElement;

    move-result-object v0

    invoke-static {v0, v1, v2, v1}, Lio/github/andreypfau/curve25519/field/FieldElement;->one$default(Lio/github/andreypfau/curve25519/field/FieldElement;Lio/github/andreypfau/curve25519/field/FieldElement;ILjava/lang/Object;)Lio/github/andreypfau/curve25519/field/FieldElement;

    .line 96
    invoke-virtual {p1}, Lio/github/andreypfau/curve25519/edwards/EdwardsPoint;->getT()Lio/github/andreypfau/curve25519/field/FieldElement;

    move-result-object v0

    invoke-static {v0, v1, v2, v1}, Lio/github/andreypfau/curve25519/field/FieldElement;->zero$default(Lio/github/andreypfau/curve25519/field/FieldElement;Lio/github/andreypfau/curve25519/field/FieldElement;ILjava/lang/Object;)Lio/github/andreypfau/curve25519/field/FieldElement;

    return-object p1
.end method

.method public final mul(Lio/github/andreypfau/curve25519/constants/tables/EdwardsBasepointTable;Lio/github/andreypfau/curve25519/scalar/Scalar;Lio/github/andreypfau/curve25519/edwards/EdwardsPoint;)Lio/github/andreypfau/curve25519/edwards/EdwardsPoint;
    .locals 1

    const-string v0, "basepoint"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "scalar"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "output"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    invoke-virtual {p1, p3, p2}, Lio/github/andreypfau/curve25519/constants/tables/EdwardsBasepointTable;->mul(Lio/github/andreypfau/curve25519/edwards/EdwardsPoint;Lio/github/andreypfau/curve25519/scalar/Scalar;)Lio/github/andreypfau/curve25519/edwards/EdwardsPoint;

    move-result-object p1

    return-object p1
.end method
