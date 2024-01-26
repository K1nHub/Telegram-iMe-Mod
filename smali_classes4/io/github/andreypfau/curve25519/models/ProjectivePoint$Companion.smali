.class public final Lio/github/andreypfau/curve25519/models/ProjectivePoint$Companion;
.super Ljava/lang/Object;
.source "ProjectivePoint.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/andreypfau/curve25519/models/ProjectivePoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lio/github/andreypfau/curve25519/models/ProjectivePoint$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final from(Lio/github/andreypfau/curve25519/edwards/EdwardsPoint;Lio/github/andreypfau/curve25519/models/ProjectivePoint;)Lio/github/andreypfau/curve25519/models/ProjectivePoint;
    .locals 4

    const-string v0, "ep"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "output"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Lio/github/andreypfau/curve25519/models/ProjectivePoint;->getX()Lio/github/andreypfau/curve25519/field/FieldElement;

    move-result-object v0

    invoke-virtual {p1}, Lio/github/andreypfau/curve25519/edwards/EdwardsPoint;->getX()Lio/github/andreypfau/curve25519/field/FieldElement;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3, v2}, Lio/github/andreypfau/curve25519/field/FieldElement;->set$default(Lio/github/andreypfau/curve25519/field/FieldElement;Lio/github/andreypfau/curve25519/field/FieldElement;Lio/github/andreypfau/curve25519/field/FieldElement;ILjava/lang/Object;)Lio/github/andreypfau/curve25519/field/FieldElement;

    .line 51
    invoke-virtual {p2}, Lio/github/andreypfau/curve25519/models/ProjectivePoint;->getY()Lio/github/andreypfau/curve25519/field/FieldElement;

    move-result-object v0

    invoke-virtual {p1}, Lio/github/andreypfau/curve25519/edwards/EdwardsPoint;->getY()Lio/github/andreypfau/curve25519/field/FieldElement;

    move-result-object v1

    invoke-static {v0, v1, v2, v3, v2}, Lio/github/andreypfau/curve25519/field/FieldElement;->set$default(Lio/github/andreypfau/curve25519/field/FieldElement;Lio/github/andreypfau/curve25519/field/FieldElement;Lio/github/andreypfau/curve25519/field/FieldElement;ILjava/lang/Object;)Lio/github/andreypfau/curve25519/field/FieldElement;

    .line 52
    invoke-virtual {p2}, Lio/github/andreypfau/curve25519/models/ProjectivePoint;->getZ()Lio/github/andreypfau/curve25519/field/FieldElement;

    move-result-object v0

    invoke-virtual {p1}, Lio/github/andreypfau/curve25519/edwards/EdwardsPoint;->getZ()Lio/github/andreypfau/curve25519/field/FieldElement;

    move-result-object p1

    invoke-static {v0, p1, v2, v3, v2}, Lio/github/andreypfau/curve25519/field/FieldElement;->set$default(Lio/github/andreypfau/curve25519/field/FieldElement;Lio/github/andreypfau/curve25519/field/FieldElement;Lio/github/andreypfau/curve25519/field/FieldElement;ILjava/lang/Object;)Lio/github/andreypfau/curve25519/field/FieldElement;

    return-object p2
.end method

.method public final from(Lio/github/andreypfau/curve25519/models/CompletedPoint;Lio/github/andreypfau/curve25519/models/ProjectivePoint;)Lio/github/andreypfau/curve25519/models/ProjectivePoint;
    .locals 3

    const-string v0, "cp"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "output"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-virtual {p2}, Lio/github/andreypfau/curve25519/models/ProjectivePoint;->getX()Lio/github/andreypfau/curve25519/field/FieldElement;

    move-result-object v0

    invoke-virtual {p1}, Lio/github/andreypfau/curve25519/models/CompletedPoint;->getX()Lio/github/andreypfau/curve25519/field/FieldElement;

    move-result-object v1

    invoke-virtual {p1}, Lio/github/andreypfau/curve25519/models/CompletedPoint;->getT()Lio/github/andreypfau/curve25519/field/FieldElement;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/github/andreypfau/curve25519/field/FieldElement;->mul(Lio/github/andreypfau/curve25519/field/FieldElement;Lio/github/andreypfau/curve25519/field/FieldElement;)Lio/github/andreypfau/curve25519/field/FieldElement;

    .line 44
    invoke-virtual {p2}, Lio/github/andreypfau/curve25519/models/ProjectivePoint;->getY()Lio/github/andreypfau/curve25519/field/FieldElement;

    move-result-object v0

    invoke-virtual {p1}, Lio/github/andreypfau/curve25519/models/CompletedPoint;->getY()Lio/github/andreypfau/curve25519/field/FieldElement;

    move-result-object v1

    invoke-virtual {p1}, Lio/github/andreypfau/curve25519/models/CompletedPoint;->getZ()Lio/github/andreypfau/curve25519/field/FieldElement;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/github/andreypfau/curve25519/field/FieldElement;->mul(Lio/github/andreypfau/curve25519/field/FieldElement;Lio/github/andreypfau/curve25519/field/FieldElement;)Lio/github/andreypfau/curve25519/field/FieldElement;

    .line 45
    invoke-virtual {p2}, Lio/github/andreypfau/curve25519/models/ProjectivePoint;->getZ()Lio/github/andreypfau/curve25519/field/FieldElement;

    move-result-object v0

    invoke-virtual {p1}, Lio/github/andreypfau/curve25519/models/CompletedPoint;->getZ()Lio/github/andreypfau/curve25519/field/FieldElement;

    move-result-object v1

    invoke-virtual {p1}, Lio/github/andreypfau/curve25519/models/CompletedPoint;->getT()Lio/github/andreypfau/curve25519/field/FieldElement;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lio/github/andreypfau/curve25519/field/FieldElement;->mul(Lio/github/andreypfau/curve25519/field/FieldElement;Lio/github/andreypfau/curve25519/field/FieldElement;)Lio/github/andreypfau/curve25519/field/FieldElement;

    return-object p2
.end method
