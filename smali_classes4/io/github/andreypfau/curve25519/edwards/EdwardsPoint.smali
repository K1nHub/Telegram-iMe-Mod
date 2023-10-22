.class public final Lio/github/andreypfau/curve25519/edwards/EdwardsPoint;
.super Ljava/lang/Object;
.source "EdwardsPoint.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/github/andreypfau/curve25519/edwards/EdwardsPoint$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lio/github/andreypfau/curve25519/edwards/EdwardsPoint$Companion;


# instance fields
.field private final t:Lio/github/andreypfau/curve25519/field/FieldElement;

.field private final x:Lio/github/andreypfau/curve25519/field/FieldElement;

.field private final y:Lio/github/andreypfau/curve25519/field/FieldElement;

.field private final z:Lio/github/andreypfau/curve25519/field/FieldElement;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lio/github/andreypfau/curve25519/edwards/EdwardsPoint$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/github/andreypfau/curve25519/edwards/EdwardsPoint$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/github/andreypfau/curve25519/edwards/EdwardsPoint;->Companion:Lio/github/andreypfau/curve25519/edwards/EdwardsPoint$Companion;

    const/4 v2, 0x1

    .line 89
    invoke-static {v0, v1, v2, v1}, Lio/github/andreypfau/curve25519/edwards/EdwardsPoint$Companion;->identity$default(Lio/github/andreypfau/curve25519/edwards/EdwardsPoint$Companion;Lio/github/andreypfau/curve25519/edwards/EdwardsPoint;ILjava/lang/Object;)Lio/github/andreypfau/curve25519/edwards/EdwardsPoint;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 21
    new-instance v0, Lio/github/andreypfau/curve25519/field/FieldElement;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Lio/github/andreypfau/curve25519/field/FieldElement;-><init>([JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v3, Lio/github/andreypfau/curve25519/field/FieldElement;

    invoke-direct {v3, v1, v2, v1}, Lio/github/andreypfau/curve25519/field/FieldElement;-><init>([JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v4, Lio/github/andreypfau/curve25519/field/FieldElement;

    invoke-direct {v4, v1, v2, v1}, Lio/github/andreypfau/curve25519/field/FieldElement;-><init>([JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v5, Lio/github/andreypfau/curve25519/field/FieldElement;

    invoke-direct {v5, v1, v2, v1}, Lio/github/andreypfau/curve25519/field/FieldElement;-><init>([JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {p0, v0, v3, v4, v5}, Lio/github/andreypfau/curve25519/edwards/EdwardsPoint;-><init>(Lio/github/andreypfau/curve25519/field/FieldElement;Lio/github/andreypfau/curve25519/field/FieldElement;Lio/github/andreypfau/curve25519/field/FieldElement;Lio/github/andreypfau/curve25519/field/FieldElement;)V

    return-void
.end method

.method public constructor <init>(Lio/github/andreypfau/curve25519/field/FieldElement;Lio/github/andreypfau/curve25519/field/FieldElement;Lio/github/andreypfau/curve25519/field/FieldElement;Lio/github/andreypfau/curve25519/field/FieldElement;)V
    .locals 1

    const-string/jumbo v0, "x"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "y"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "z"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "t"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lio/github/andreypfau/curve25519/edwards/EdwardsPoint;->x:Lio/github/andreypfau/curve25519/field/FieldElement;

    .line 17
    iput-object p2, p0, Lio/github/andreypfau/curve25519/edwards/EdwardsPoint;->y:Lio/github/andreypfau/curve25519/field/FieldElement;

    .line 18
    iput-object p3, p0, Lio/github/andreypfau/curve25519/edwards/EdwardsPoint;->z:Lio/github/andreypfau/curve25519/field/FieldElement;

    .line 19
    iput-object p4, p0, Lio/github/andreypfau/curve25519/edwards/EdwardsPoint;->t:Lio/github/andreypfau/curve25519/field/FieldElement;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lio/github/andreypfau/curve25519/edwards/EdwardsPoint;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lio/github/andreypfau/curve25519/edwards/EdwardsPoint;

    iget-object v1, p0, Lio/github/andreypfau/curve25519/edwards/EdwardsPoint;->x:Lio/github/andreypfau/curve25519/field/FieldElement;

    iget-object v3, p1, Lio/github/andreypfau/curve25519/edwards/EdwardsPoint;->x:Lio/github/andreypfau/curve25519/field/FieldElement;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lio/github/andreypfau/curve25519/edwards/EdwardsPoint;->y:Lio/github/andreypfau/curve25519/field/FieldElement;

    iget-object v3, p1, Lio/github/andreypfau/curve25519/edwards/EdwardsPoint;->y:Lio/github/andreypfau/curve25519/field/FieldElement;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lio/github/andreypfau/curve25519/edwards/EdwardsPoint;->z:Lio/github/andreypfau/curve25519/field/FieldElement;

    iget-object v3, p1, Lio/github/andreypfau/curve25519/edwards/EdwardsPoint;->z:Lio/github/andreypfau/curve25519/field/FieldElement;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lio/github/andreypfau/curve25519/edwards/EdwardsPoint;->t:Lio/github/andreypfau/curve25519/field/FieldElement;

    iget-object p1, p1, Lio/github/andreypfau/curve25519/edwards/EdwardsPoint;->t:Lio/github/andreypfau/curve25519/field/FieldElement;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getT()Lio/github/andreypfau/curve25519/field/FieldElement;
    .locals 1

    .line 19
    iget-object v0, p0, Lio/github/andreypfau/curve25519/edwards/EdwardsPoint;->t:Lio/github/andreypfau/curve25519/field/FieldElement;

    return-object v0
.end method

.method public final getX()Lio/github/andreypfau/curve25519/field/FieldElement;
    .locals 1

    .line 16
    iget-object v0, p0, Lio/github/andreypfau/curve25519/edwards/EdwardsPoint;->x:Lio/github/andreypfau/curve25519/field/FieldElement;

    return-object v0
.end method

.method public final getY()Lio/github/andreypfau/curve25519/field/FieldElement;
    .locals 1

    .line 17
    iget-object v0, p0, Lio/github/andreypfau/curve25519/edwards/EdwardsPoint;->y:Lio/github/andreypfau/curve25519/field/FieldElement;

    return-object v0
.end method

.method public final getZ()Lio/github/andreypfau/curve25519/field/FieldElement;
    .locals 1

    .line 18
    iget-object v0, p0, Lio/github/andreypfau/curve25519/edwards/EdwardsPoint;->z:Lio/github/andreypfau/curve25519/field/FieldElement;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lio/github/andreypfau/curve25519/edwards/EdwardsPoint;->x:Lio/github/andreypfau/curve25519/field/FieldElement;

    invoke-virtual {v0}, Lio/github/andreypfau/curve25519/field/FieldElement;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/github/andreypfau/curve25519/edwards/EdwardsPoint;->y:Lio/github/andreypfau/curve25519/field/FieldElement;

    invoke-virtual {v1}, Lio/github/andreypfau/curve25519/field/FieldElement;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/github/andreypfau/curve25519/edwards/EdwardsPoint;->z:Lio/github/andreypfau/curve25519/field/FieldElement;

    invoke-virtual {v1}, Lio/github/andreypfau/curve25519/field/FieldElement;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/github/andreypfau/curve25519/edwards/EdwardsPoint;->t:Lio/github/andreypfau/curve25519/field/FieldElement;

    invoke-virtual {v1}, Lio/github/andreypfau/curve25519/field/FieldElement;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final identity()Lio/github/andreypfau/curve25519/edwards/EdwardsPoint;
    .locals 1

    .line 23
    sget-object v0, Lio/github/andreypfau/curve25519/edwards/EdwardsPoint;->Companion:Lio/github/andreypfau/curve25519/edwards/EdwardsPoint$Companion;

    invoke-virtual {v0, p0}, Lio/github/andreypfau/curve25519/edwards/EdwardsPoint$Companion;->identity(Lio/github/andreypfau/curve25519/edwards/EdwardsPoint;)Lio/github/andreypfau/curve25519/edwards/EdwardsPoint;

    move-result-object v0

    return-object v0
.end method

.method public final mulBasepoint(Lio/github/andreypfau/curve25519/constants/tables/EdwardsBasepointTable;Lio/github/andreypfau/curve25519/scalar/Scalar;)Lio/github/andreypfau/curve25519/edwards/EdwardsPoint;
    .locals 1

    const-string v0, "basepoint"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "scalar"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-virtual {p1, p0, p2}, Lio/github/andreypfau/curve25519/constants/tables/EdwardsBasepointTable;->mul(Lio/github/andreypfau/curve25519/edwards/EdwardsPoint;Lio/github/andreypfau/curve25519/scalar/Scalar;)Lio/github/andreypfau/curve25519/edwards/EdwardsPoint;

    move-result-object p1

    return-object p1
.end method

.method public final multByPow2(Lio/github/andreypfau/curve25519/edwards/EdwardsPoint;I)V
    .locals 3

    const-string/jumbo v0, "t"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    new-instance v0, Lio/github/andreypfau/curve25519/models/CompletedPoint;

    invoke-direct {v0}, Lio/github/andreypfau/curve25519/models/CompletedPoint;-><init>()V

    .line 38
    new-instance v1, Lio/github/andreypfau/curve25519/models/ProjectivePoint;

    invoke-direct {v1}, Lio/github/andreypfau/curve25519/models/ProjectivePoint;-><init>()V

    .line 39
    invoke-virtual {v1, p1}, Lio/github/andreypfau/curve25519/models/ProjectivePoint;->set(Lio/github/andreypfau/curve25519/edwards/EdwardsPoint;)Lio/github/andreypfau/curve25519/models/ProjectivePoint;

    add-int/lit8 p2, p2, -0x1

    const/4 p1, 0x0

    :goto_0
    if-ge p1, p2, :cond_0

    .line 41
    invoke-virtual {v0, v1}, Lio/github/andreypfau/curve25519/models/CompletedPoint;->double(Lio/github/andreypfau/curve25519/models/ProjectivePoint;)Lio/github/andreypfau/curve25519/models/CompletedPoint;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/github/andreypfau/curve25519/models/ProjectivePoint;->set(Lio/github/andreypfau/curve25519/models/CompletedPoint;)Lio/github/andreypfau/curve25519/models/ProjectivePoint;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 44
    :cond_0
    invoke-virtual {v0, v1}, Lio/github/andreypfau/curve25519/models/CompletedPoint;->double(Lio/github/andreypfau/curve25519/models/ProjectivePoint;)Lio/github/andreypfau/curve25519/models/CompletedPoint;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/github/andreypfau/curve25519/edwards/EdwardsPoint;->set(Lio/github/andreypfau/curve25519/models/CompletedPoint;)Lio/github/andreypfau/curve25519/edwards/EdwardsPoint;

    return-void
.end method

.method public final set(Lio/github/andreypfau/curve25519/models/CompletedPoint;)Lio/github/andreypfau/curve25519/edwards/EdwardsPoint;
    .locals 1

    const-string v0, "cp"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    sget-object v0, Lio/github/andreypfau/curve25519/edwards/EdwardsPoint;->Companion:Lio/github/andreypfau/curve25519/edwards/EdwardsPoint$Companion;

    invoke-virtual {v0, p1, p0}, Lio/github/andreypfau/curve25519/edwards/EdwardsPoint$Companion;->from(Lio/github/andreypfau/curve25519/models/CompletedPoint;Lio/github/andreypfau/curve25519/edwards/EdwardsPoint;)Lio/github/andreypfau/curve25519/edwards/EdwardsPoint;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EdwardsPoint(x="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/github/andreypfau/curve25519/edwards/EdwardsPoint;->x:Lio/github/andreypfau/curve25519/field/FieldElement;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/github/andreypfau/curve25519/edwards/EdwardsPoint;->y:Lio/github/andreypfau/curve25519/field/FieldElement;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", z="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/github/andreypfau/curve25519/edwards/EdwardsPoint;->z:Lio/github/andreypfau/curve25519/field/FieldElement;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", t="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/github/andreypfau/curve25519/edwards/EdwardsPoint;->t:Lio/github/andreypfau/curve25519/field/FieldElement;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
