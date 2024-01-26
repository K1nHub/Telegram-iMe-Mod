.class public final Lio/github/andreypfau/curve25519/models/CompletedPoint$Companion;
.super Ljava/lang/Object;
.source "CompletedPoint.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/andreypfau/curve25519/models/CompletedPoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lio/github/andreypfau/curve25519/models/CompletedPoint$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final add(Lio/github/andreypfau/curve25519/edwards/EdwardsPoint;Lio/github/andreypfau/curve25519/models/AffineNielsPoint;Lio/github/andreypfau/curve25519/models/CompletedPoint;)Lio/github/andreypfau/curve25519/models/CompletedPoint;
    .locals 6

    const-string v0, "a"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "b"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "output"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    new-instance v0, Lio/github/andreypfau/curve25519/field/FieldElement;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Lio/github/andreypfau/curve25519/field/FieldElement;-><init>([JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p1}, Lio/github/andreypfau/curve25519/edwards/EdwardsPoint;->getY()Lio/github/andreypfau/curve25519/field/FieldElement;

    move-result-object v3

    invoke-virtual {p1}, Lio/github/andreypfau/curve25519/edwards/EdwardsPoint;->getX()Lio/github/andreypfau/curve25519/field/FieldElement;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lio/github/andreypfau/curve25519/field/FieldElement;->add(Lio/github/andreypfau/curve25519/field/FieldElement;Lio/github/andreypfau/curve25519/field/FieldElement;)Lio/github/andreypfau/curve25519/field/FieldElement;

    move-result-object v0

    .line 81
    invoke-virtual {p2}, Lio/github/andreypfau/curve25519/models/AffineNielsPoint;->getYPlusX()Lio/github/andreypfau/curve25519/field/FieldElement;

    move-result-object v3

    invoke-virtual {v0, v0, v3}, Lio/github/andreypfau/curve25519/field/FieldElement;->mul(Lio/github/andreypfau/curve25519/field/FieldElement;Lio/github/andreypfau/curve25519/field/FieldElement;)Lio/github/andreypfau/curve25519/field/FieldElement;

    .line 82
    new-instance v3, Lio/github/andreypfau/curve25519/field/FieldElement;

    invoke-direct {v3, v1, v2, v1}, Lio/github/andreypfau/curve25519/field/FieldElement;-><init>([JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p1}, Lio/github/andreypfau/curve25519/edwards/EdwardsPoint;->getY()Lio/github/andreypfau/curve25519/field/FieldElement;

    move-result-object v4

    invoke-virtual {p1}, Lio/github/andreypfau/curve25519/edwards/EdwardsPoint;->getX()Lio/github/andreypfau/curve25519/field/FieldElement;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lio/github/andreypfau/curve25519/field/FieldElement;->sub(Lio/github/andreypfau/curve25519/field/FieldElement;Lio/github/andreypfau/curve25519/field/FieldElement;)Lio/github/andreypfau/curve25519/field/FieldElement;

    move-result-object v3

    .line 83
    invoke-virtual {p2}, Lio/github/andreypfau/curve25519/models/AffineNielsPoint;->getYMinusX()Lio/github/andreypfau/curve25519/field/FieldElement;

    move-result-object v4

    invoke-virtual {v3, v3, v4}, Lio/github/andreypfau/curve25519/field/FieldElement;->mul(Lio/github/andreypfau/curve25519/field/FieldElement;Lio/github/andreypfau/curve25519/field/FieldElement;)Lio/github/andreypfau/curve25519/field/FieldElement;

    .line 84
    new-instance v4, Lio/github/andreypfau/curve25519/field/FieldElement;

    invoke-direct {v4, v1, v2, v1}, Lio/github/andreypfau/curve25519/field/FieldElement;-><init>([JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p1}, Lio/github/andreypfau/curve25519/edwards/EdwardsPoint;->getT()Lio/github/andreypfau/curve25519/field/FieldElement;

    move-result-object v5

    invoke-virtual {p2}, Lio/github/andreypfau/curve25519/models/AffineNielsPoint;->getXy2d()Lio/github/andreypfau/curve25519/field/FieldElement;

    move-result-object p2

    invoke-virtual {v4, v5, p2}, Lio/github/andreypfau/curve25519/field/FieldElement;->mul(Lio/github/andreypfau/curve25519/field/FieldElement;Lio/github/andreypfau/curve25519/field/FieldElement;)Lio/github/andreypfau/curve25519/field/FieldElement;

    move-result-object p2

    .line 85
    new-instance v4, Lio/github/andreypfau/curve25519/field/FieldElement;

    invoke-direct {v4, v1, v2, v1}, Lio/github/andreypfau/curve25519/field/FieldElement;-><init>([JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p1}, Lio/github/andreypfau/curve25519/edwards/EdwardsPoint;->getZ()Lio/github/andreypfau/curve25519/field/FieldElement;

    move-result-object v1

    invoke-virtual {p1}, Lio/github/andreypfau/curve25519/edwards/EdwardsPoint;->getZ()Lio/github/andreypfau/curve25519/field/FieldElement;

    move-result-object p1

    invoke-virtual {v4, v1, p1}, Lio/github/andreypfau/curve25519/field/FieldElement;->add(Lio/github/andreypfau/curve25519/field/FieldElement;Lio/github/andreypfau/curve25519/field/FieldElement;)Lio/github/andreypfau/curve25519/field/FieldElement;

    move-result-object p1

    .line 87
    invoke-virtual {p3}, Lio/github/andreypfau/curve25519/models/CompletedPoint;->getX()Lio/github/andreypfau/curve25519/field/FieldElement;

    move-result-object v1

    invoke-virtual {v1, v0, v3}, Lio/github/andreypfau/curve25519/field/FieldElement;->sub(Lio/github/andreypfau/curve25519/field/FieldElement;Lio/github/andreypfau/curve25519/field/FieldElement;)Lio/github/andreypfau/curve25519/field/FieldElement;

    .line 88
    invoke-virtual {p3}, Lio/github/andreypfau/curve25519/models/CompletedPoint;->getY()Lio/github/andreypfau/curve25519/field/FieldElement;

    move-result-object v1

    invoke-virtual {v1, v0, v3}, Lio/github/andreypfau/curve25519/field/FieldElement;->add(Lio/github/andreypfau/curve25519/field/FieldElement;Lio/github/andreypfau/curve25519/field/FieldElement;)Lio/github/andreypfau/curve25519/field/FieldElement;

    .line 89
    invoke-virtual {p3}, Lio/github/andreypfau/curve25519/models/CompletedPoint;->getZ()Lio/github/andreypfau/curve25519/field/FieldElement;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/github/andreypfau/curve25519/field/FieldElement;->add(Lio/github/andreypfau/curve25519/field/FieldElement;Lio/github/andreypfau/curve25519/field/FieldElement;)Lio/github/andreypfau/curve25519/field/FieldElement;

    .line 90
    invoke-virtual {p3}, Lio/github/andreypfau/curve25519/models/CompletedPoint;->getT()Lio/github/andreypfau/curve25519/field/FieldElement;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/github/andreypfau/curve25519/field/FieldElement;->sub(Lio/github/andreypfau/curve25519/field/FieldElement;Lio/github/andreypfau/curve25519/field/FieldElement;)Lio/github/andreypfau/curve25519/field/FieldElement;

    return-object p3
.end method

.method public final double(Lio/github/andreypfau/curve25519/models/ProjectivePoint;Lio/github/andreypfau/curve25519/models/CompletedPoint;)Lio/github/andreypfau/curve25519/models/CompletedPoint;
    .locals 9

    const-string/jumbo v0, "pp"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "output"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    sget-object v1, Lio/github/andreypfau/curve25519/field/FieldElement;->Companion:Lio/github/andreypfau/curve25519/field/FieldElement$Companion;

    invoke-virtual {p1}, Lio/github/andreypfau/curve25519/models/ProjectivePoint;->getX()Lio/github/andreypfau/curve25519/field/FieldElement;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v1, v0, v2, v3, v2}, Lio/github/andreypfau/curve25519/field/FieldElement$Companion;->square$default(Lio/github/andreypfau/curve25519/field/FieldElement$Companion;Lio/github/andreypfau/curve25519/field/FieldElement;Lio/github/andreypfau/curve25519/field/FieldElement;ILjava/lang/Object;)Lio/github/andreypfau/curve25519/field/FieldElement;

    move-result-object v0

    .line 27
    invoke-virtual {p1}, Lio/github/andreypfau/curve25519/models/ProjectivePoint;->getY()Lio/github/andreypfau/curve25519/field/FieldElement;

    move-result-object v4

    invoke-static {v1, v4, v2, v3, v2}, Lio/github/andreypfau/curve25519/field/FieldElement$Companion;->square$default(Lio/github/andreypfau/curve25519/field/FieldElement$Companion;Lio/github/andreypfau/curve25519/field/FieldElement;Lio/github/andreypfau/curve25519/field/FieldElement;ILjava/lang/Object;)Lio/github/andreypfau/curve25519/field/FieldElement;

    move-result-object v7

    .line 28
    invoke-virtual {p1}, Lio/github/andreypfau/curve25519/models/ProjectivePoint;->getZ()Lio/github/andreypfau/curve25519/field/FieldElement;

    move-result-object v4

    invoke-static {v1, v4, v2, v3, v2}, Lio/github/andreypfau/curve25519/field/FieldElement$Companion;->square2$default(Lio/github/andreypfau/curve25519/field/FieldElement$Companion;Lio/github/andreypfau/curve25519/field/FieldElement;Lio/github/andreypfau/curve25519/field/FieldElement;ILjava/lang/Object;)Lio/github/andreypfau/curve25519/field/FieldElement;

    move-result-object v8

    .line 29
    invoke-virtual {p1}, Lio/github/andreypfau/curve25519/models/ProjectivePoint;->getX()Lio/github/andreypfau/curve25519/field/FieldElement;

    move-result-object v2

    invoke-virtual {p1}, Lio/github/andreypfau/curve25519/models/ProjectivePoint;->getY()Lio/github/andreypfau/curve25519/field/FieldElement;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lio/github/andreypfau/curve25519/field/FieldElement$Companion;->add$default(Lio/github/andreypfau/curve25519/field/FieldElement$Companion;Lio/github/andreypfau/curve25519/field/FieldElement;Lio/github/andreypfau/curve25519/field/FieldElement;Lio/github/andreypfau/curve25519/field/FieldElement;ILjava/lang/Object;)Lio/github/andreypfau/curve25519/field/FieldElement;

    move-result-object p1

    .line 30
    invoke-virtual {p1, p1}, Lio/github/andreypfau/curve25519/field/FieldElement;->square(Lio/github/andreypfau/curve25519/field/FieldElement;)Lio/github/andreypfau/curve25519/field/FieldElement;

    .line 32
    invoke-virtual {p2}, Lio/github/andreypfau/curve25519/models/CompletedPoint;->getY()Lio/github/andreypfau/curve25519/field/FieldElement;

    move-result-object v1

    invoke-virtual {v1, v7, v0}, Lio/github/andreypfau/curve25519/field/FieldElement;->add(Lio/github/andreypfau/curve25519/field/FieldElement;Lio/github/andreypfau/curve25519/field/FieldElement;)Lio/github/andreypfau/curve25519/field/FieldElement;

    .line 33
    invoke-virtual {p2}, Lio/github/andreypfau/curve25519/models/CompletedPoint;->getX()Lio/github/andreypfau/curve25519/field/FieldElement;

    move-result-object v1

    invoke-virtual {p2}, Lio/github/andreypfau/curve25519/models/CompletedPoint;->getY()Lio/github/andreypfau/curve25519/field/FieldElement;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lio/github/andreypfau/curve25519/field/FieldElement;->sub(Lio/github/andreypfau/curve25519/field/FieldElement;Lio/github/andreypfau/curve25519/field/FieldElement;)Lio/github/andreypfau/curve25519/field/FieldElement;

    .line 34
    invoke-virtual {p2}, Lio/github/andreypfau/curve25519/models/CompletedPoint;->getZ()Lio/github/andreypfau/curve25519/field/FieldElement;

    move-result-object p1

    invoke-virtual {p1, v7, v0}, Lio/github/andreypfau/curve25519/field/FieldElement;->sub(Lio/github/andreypfau/curve25519/field/FieldElement;Lio/github/andreypfau/curve25519/field/FieldElement;)Lio/github/andreypfau/curve25519/field/FieldElement;

    .line 35
    invoke-virtual {p2}, Lio/github/andreypfau/curve25519/models/CompletedPoint;->getT()Lio/github/andreypfau/curve25519/field/FieldElement;

    move-result-object p1

    invoke-virtual {p2}, Lio/github/andreypfau/curve25519/models/CompletedPoint;->getZ()Lio/github/andreypfau/curve25519/field/FieldElement;

    move-result-object v0

    invoke-virtual {p1, v8, v0}, Lio/github/andreypfau/curve25519/field/FieldElement;->sub(Lio/github/andreypfau/curve25519/field/FieldElement;Lio/github/andreypfau/curve25519/field/FieldElement;)Lio/github/andreypfau/curve25519/field/FieldElement;

    return-object p2
.end method
