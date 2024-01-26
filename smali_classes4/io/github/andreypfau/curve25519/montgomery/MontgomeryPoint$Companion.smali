.class public final Lio/github/andreypfau/curve25519/montgomery/MontgomeryPoint$Companion;
.super Ljava/lang/Object;
.source "MontgomeryPoint.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/andreypfau/curve25519/montgomery/MontgomeryPoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lio/github/andreypfau/curve25519/montgomery/MontgomeryPoint$Companion;-><init>()V

    return-void
.end method

.method public static synthetic from$default(Lio/github/andreypfau/curve25519/montgomery/MontgomeryPoint$Companion;Lio/github/andreypfau/curve25519/edwards/EdwardsPoint;Lio/github/andreypfau/curve25519/montgomery/MontgomeryPoint;ILjava/lang/Object;)Lio/github/andreypfau/curve25519/montgomery/MontgomeryPoint;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 54
    new-instance p2, Lio/github/andreypfau/curve25519/montgomery/MontgomeryPoint;

    const/4 p3, 0x1

    const/4 p4, 0x0

    invoke-direct {p2, p4, p3, p4}, Lio/github/andreypfau/curve25519/montgomery/MontgomeryPoint;-><init>([BILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 52
    :cond_0
    invoke-virtual {p0, p1, p2}, Lio/github/andreypfau/curve25519/montgomery/MontgomeryPoint$Companion;->from(Lio/github/andreypfau/curve25519/edwards/EdwardsPoint;Lio/github/andreypfau/curve25519/montgomery/MontgomeryPoint;)Lio/github/andreypfau/curve25519/montgomery/MontgomeryPoint;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final from(Lio/github/andreypfau/curve25519/edwards/EdwardsPoint;Lio/github/andreypfau/curve25519/montgomery/MontgomeryPoint;)Lio/github/andreypfau/curve25519/montgomery/MontgomeryPoint;
    .locals 8

    const-string v0, "ep"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "output"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    sget-object v0, Lio/github/andreypfau/curve25519/field/FieldElement;->Companion:Lio/github/andreypfau/curve25519/field/FieldElement$Companion;

    invoke-virtual {p1}, Lio/github/andreypfau/curve25519/edwards/EdwardsPoint;->getZ()Lio/github/andreypfau/curve25519/field/FieldElement;

    move-result-object v2

    invoke-virtual {p1}, Lio/github/andreypfau/curve25519/edwards/EdwardsPoint;->getY()Lio/github/andreypfau/curve25519/field/FieldElement;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, v0

    invoke-static/range {v1 .. v6}, Lio/github/andreypfau/curve25519/field/FieldElement$Companion;->add$default(Lio/github/andreypfau/curve25519/field/FieldElement$Companion;Lio/github/andreypfau/curve25519/field/FieldElement;Lio/github/andreypfau/curve25519/field/FieldElement;Lio/github/andreypfau/curve25519/field/FieldElement;ILjava/lang/Object;)Lio/github/andreypfau/curve25519/field/FieldElement;

    move-result-object v7

    .line 57
    invoke-virtual {p1}, Lio/github/andreypfau/curve25519/edwards/EdwardsPoint;->getZ()Lio/github/andreypfau/curve25519/field/FieldElement;

    move-result-object v2

    invoke-virtual {p1}, Lio/github/andreypfau/curve25519/edwards/EdwardsPoint;->getY()Lio/github/andreypfau/curve25519/field/FieldElement;

    move-result-object v3

    invoke-static/range {v1 .. v6}, Lio/github/andreypfau/curve25519/field/FieldElement$Companion;->sub$default(Lio/github/andreypfau/curve25519/field/FieldElement$Companion;Lio/github/andreypfau/curve25519/field/FieldElement;Lio/github/andreypfau/curve25519/field/FieldElement;Lio/github/andreypfau/curve25519/field/FieldElement;ILjava/lang/Object;)Lio/github/andreypfau/curve25519/field/FieldElement;

    move-result-object p1

    .line 58
    invoke-virtual {p1, p1}, Lio/github/andreypfau/curve25519/field/FieldElement;->invert(Lio/github/andreypfau/curve25519/field/FieldElement;)Lio/github/andreypfau/curve25519/field/FieldElement;

    .line 59
    invoke-virtual {v7, v7, p1}, Lio/github/andreypfau/curve25519/field/FieldElement;->mul(Lio/github/andreypfau/curve25519/field/FieldElement;Lio/github/andreypfau/curve25519/field/FieldElement;)Lio/github/andreypfau/curve25519/field/FieldElement;

    .line 60
    invoke-virtual {p2}, Lio/github/andreypfau/curve25519/montgomery/MontgomeryPoint;->getData()[B

    move-result-object p1

    invoke-virtual {v7, p1}, Lio/github/andreypfau/curve25519/field/FieldElement;->toBytes([B)[B

    return-object p2
.end method

.method public final from(Lio/github/andreypfau/curve25519/montgomery/MontgomeryProjectivePoint;Lio/github/andreypfau/curve25519/montgomery/MontgomeryPoint;)Lio/github/andreypfau/curve25519/montgomery/MontgomeryPoint;
    .locals 7

    const-string/jumbo v0, "pp"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "output"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    sget-object v1, Lio/github/andreypfau/curve25519/field/FieldElement;->Companion:Lio/github/andreypfau/curve25519/field/FieldElement$Companion;

    invoke-virtual {p1}, Lio/github/andreypfau/curve25519/montgomery/MontgomeryProjectivePoint;->getW()Lio/github/andreypfau/curve25519/field/FieldElement;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v1, v0, v2, v3, v2}, Lio/github/andreypfau/curve25519/field/FieldElement$Companion;->invert$default(Lio/github/andreypfau/curve25519/field/FieldElement$Companion;Lio/github/andreypfau/curve25519/field/FieldElement;Lio/github/andreypfau/curve25519/field/FieldElement;ILjava/lang/Object;)Lio/github/andreypfau/curve25519/field/FieldElement;

    move-result-object v3

    .line 69
    invoke-virtual {p1}, Lio/github/andreypfau/curve25519/montgomery/MontgomeryProjectivePoint;->getU()Lio/github/andreypfau/curve25519/field/FieldElement;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lio/github/andreypfau/curve25519/field/FieldElement$Companion;->mul$default(Lio/github/andreypfau/curve25519/field/FieldElement$Companion;Lio/github/andreypfau/curve25519/field/FieldElement;Lio/github/andreypfau/curve25519/field/FieldElement;Lio/github/andreypfau/curve25519/field/FieldElement;ILjava/lang/Object;)Lio/github/andreypfau/curve25519/field/FieldElement;

    move-result-object p1

    .line 70
    invoke-virtual {p2}, Lio/github/andreypfau/curve25519/montgomery/MontgomeryPoint;->getData()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/github/andreypfau/curve25519/field/FieldElement;->toBytes([B)[B

    return-object p2
.end method

.method public final mul(Lio/github/andreypfau/curve25519/montgomery/MontgomeryPoint;Lio/github/andreypfau/curve25519/scalar/Scalar;Lio/github/andreypfau/curve25519/montgomery/MontgomeryPoint;)Lio/github/andreypfau/curve25519/montgomery/MontgomeryPoint;
    .locals 10

    const-string/jumbo v0, "point"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "scalar"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "output"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    sget-object v0, Lio/github/andreypfau/curve25519/field/FieldElement;->Companion:Lio/github/andreypfau/curve25519/field/FieldElement$Companion;

    invoke-virtual {p1}, Lio/github/andreypfau/curve25519/montgomery/MontgomeryPoint;->getData()[B

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, v0

    invoke-static/range {v1 .. v6}, Lio/github/andreypfau/curve25519/field/FieldElement$Companion;->fromBytes$default(Lio/github/andreypfau/curve25519/field/FieldElement$Companion;[BILio/github/andreypfau/curve25519/field/FieldElement;ILjava/lang/Object;)Lio/github/andreypfau/curve25519/field/FieldElement;

    move-result-object v7

    .line 80
    sget-object v1, Lio/github/andreypfau/curve25519/montgomery/MontgomeryProjectivePoint;->Companion:Lio/github/andreypfau/curve25519/montgomery/MontgomeryProjectivePoint$Companion;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, v2, v3, v2}, Lio/github/andreypfau/curve25519/montgomery/MontgomeryProjectivePoint$Companion;->identity$default(Lio/github/andreypfau/curve25519/montgomery/MontgomeryProjectivePoint$Companion;Lio/github/andreypfau/curve25519/montgomery/MontgomeryProjectivePoint;ILjava/lang/Object;)Lio/github/andreypfau/curve25519/montgomery/MontgomeryProjectivePoint;

    move-result-object v8

    .line 81
    new-instance v9, Lio/github/andreypfau/curve25519/montgomery/MontgomeryProjectivePoint;

    .line 82
    invoke-virtual {p1}, Lio/github/andreypfau/curve25519/montgomery/MontgomeryPoint;->getData()[B

    move-result-object v2

    const/4 v3, 0x0

    move-object v1, v0

    invoke-static/range {v1 .. v6}, Lio/github/andreypfau/curve25519/field/FieldElement$Companion;->fromBytes$default(Lio/github/andreypfau/curve25519/field/FieldElement$Companion;[BILio/github/andreypfau/curve25519/field/FieldElement;ILjava/lang/Object;)Lio/github/andreypfau/curve25519/field/FieldElement;

    move-result-object p1

    .line 83
    invoke-virtual {v0}, Lio/github/andreypfau/curve25519/field/FieldElement$Companion;->one()Lio/github/andreypfau/curve25519/field/FieldElement;

    move-result-object v0

    .line 81
    invoke-direct {v9, p1, v0}, Lio/github/andreypfau/curve25519/montgomery/MontgomeryProjectivePoint;-><init>(Lio/github/andreypfau/curve25519/field/FieldElement;Lio/github/andreypfau/curve25519/field/FieldElement;)V

    .line 85
    invoke-virtual {p2}, Lio/github/andreypfau/curve25519/scalar/Scalar;->bits()[B

    move-result-object p1

    const/16 p2, 0xfe

    :goto_0
    const/4 v0, -0x1

    if-ge v0, p2, :cond_0

    add-int/lit8 v0, p2, 0x1

    .line 87
    aget-byte v0, p1, v0

    aget-byte v1, p1, p2

    xor-int/2addr v0, v1

    .line 88
    invoke-virtual {v8, v9, v0}, Lio/github/andreypfau/curve25519/montgomery/MontgomeryProjectivePoint;->conditionalSwap(Lio/github/andreypfau/curve25519/montgomery/MontgomeryProjectivePoint;I)V

    .line 89
    sget-object v0, Lio/github/andreypfau/curve25519/montgomery/MontgomeryProjectivePoint;->Companion:Lio/github/andreypfau/curve25519/montgomery/MontgomeryProjectivePoint$Companion;

    invoke-virtual {v0, v8, v9, v7}, Lio/github/andreypfau/curve25519/montgomery/MontgomeryProjectivePoint$Companion;->montgomeryDifferentialAddAndDouble(Lio/github/andreypfau/curve25519/montgomery/MontgomeryProjectivePoint;Lio/github/andreypfau/curve25519/montgomery/MontgomeryProjectivePoint;Lio/github/andreypfau/curve25519/field/FieldElement;)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 91
    aget-byte p1, p1, p2

    invoke-virtual {v8, v9, p1}, Lio/github/andreypfau/curve25519/montgomery/MontgomeryProjectivePoint;->conditionalSwap(Lio/github/andreypfau/curve25519/montgomery/MontgomeryProjectivePoint;I)V

    .line 92
    invoke-virtual {p0, v8, p3}, Lio/github/andreypfau/curve25519/montgomery/MontgomeryPoint$Companion;->from(Lio/github/andreypfau/curve25519/montgomery/MontgomeryProjectivePoint;Lio/github/andreypfau/curve25519/montgomery/MontgomeryPoint;)Lio/github/andreypfau/curve25519/montgomery/MontgomeryPoint;

    move-result-object p1

    return-object p1
.end method
