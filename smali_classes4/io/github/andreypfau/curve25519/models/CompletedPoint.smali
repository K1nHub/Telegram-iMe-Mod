.class public final Lio/github/andreypfau/curve25519/models/CompletedPoint;
.super Ljava/lang/Object;
.source "CompletedPoint.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/github/andreypfau/curve25519/models/CompletedPoint$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lio/github/andreypfau/curve25519/models/CompletedPoint$Companion;


# instance fields
.field private final t:Lio/github/andreypfau/curve25519/field/FieldElement;

.field private final x:Lio/github/andreypfau/curve25519/field/FieldElement;

.field private final y:Lio/github/andreypfau/curve25519/field/FieldElement;

.field private final z:Lio/github/andreypfau/curve25519/field/FieldElement;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/github/andreypfau/curve25519/models/CompletedPoint$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/github/andreypfau/curve25519/models/CompletedPoint$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/github/andreypfau/curve25519/models/CompletedPoint;->Companion:Lio/github/andreypfau/curve25519/models/CompletedPoint$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 13
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

    invoke-direct {p0, v0, v3, v4, v5}, Lio/github/andreypfau/curve25519/models/CompletedPoint;-><init>(Lio/github/andreypfau/curve25519/field/FieldElement;Lio/github/andreypfau/curve25519/field/FieldElement;Lio/github/andreypfau/curve25519/field/FieldElement;Lio/github/andreypfau/curve25519/field/FieldElement;)V

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

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lio/github/andreypfau/curve25519/models/CompletedPoint;->x:Lio/github/andreypfau/curve25519/field/FieldElement;

    .line 9
    iput-object p2, p0, Lio/github/andreypfau/curve25519/models/CompletedPoint;->y:Lio/github/andreypfau/curve25519/field/FieldElement;

    .line 10
    iput-object p3, p0, Lio/github/andreypfau/curve25519/models/CompletedPoint;->z:Lio/github/andreypfau/curve25519/field/FieldElement;

    .line 11
    iput-object p4, p0, Lio/github/andreypfau/curve25519/models/CompletedPoint;->t:Lio/github/andreypfau/curve25519/field/FieldElement;

    return-void
.end method


# virtual methods
.method public final add(Lio/github/andreypfau/curve25519/edwards/EdwardsPoint;Lio/github/andreypfau/curve25519/models/AffineNielsPoint;)Lio/github/andreypfau/curve25519/models/CompletedPoint;
    .locals 1

    const-string v0, "a"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "b"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    sget-object v0, Lio/github/andreypfau/curve25519/models/CompletedPoint;->Companion:Lio/github/andreypfau/curve25519/models/CompletedPoint$Companion;

    invoke-virtual {v0, p1, p2, p0}, Lio/github/andreypfau/curve25519/models/CompletedPoint$Companion;->add(Lio/github/andreypfau/curve25519/edwards/EdwardsPoint;Lio/github/andreypfau/curve25519/models/AffineNielsPoint;Lio/github/andreypfau/curve25519/models/CompletedPoint;)Lio/github/andreypfau/curve25519/models/CompletedPoint;

    move-result-object p1

    return-object p1
.end method

.method public final double(Lio/github/andreypfau/curve25519/models/ProjectivePoint;)Lio/github/andreypfau/curve25519/models/CompletedPoint;
    .locals 1

    const-string/jumbo v0, "pp"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    sget-object v0, Lio/github/andreypfau/curve25519/models/CompletedPoint;->Companion:Lio/github/andreypfau/curve25519/models/CompletedPoint$Companion;

    invoke-virtual {v0, p1, p0}, Lio/github/andreypfau/curve25519/models/CompletedPoint$Companion;->double(Lio/github/andreypfau/curve25519/models/ProjectivePoint;Lio/github/andreypfau/curve25519/models/CompletedPoint;)Lio/github/andreypfau/curve25519/models/CompletedPoint;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lio/github/andreypfau/curve25519/models/CompletedPoint;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lio/github/andreypfau/curve25519/models/CompletedPoint;

    iget-object v1, p0, Lio/github/andreypfau/curve25519/models/CompletedPoint;->x:Lio/github/andreypfau/curve25519/field/FieldElement;

    iget-object v3, p1, Lio/github/andreypfau/curve25519/models/CompletedPoint;->x:Lio/github/andreypfau/curve25519/field/FieldElement;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lio/github/andreypfau/curve25519/models/CompletedPoint;->y:Lio/github/andreypfau/curve25519/field/FieldElement;

    iget-object v3, p1, Lio/github/andreypfau/curve25519/models/CompletedPoint;->y:Lio/github/andreypfau/curve25519/field/FieldElement;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lio/github/andreypfau/curve25519/models/CompletedPoint;->z:Lio/github/andreypfau/curve25519/field/FieldElement;

    iget-object v3, p1, Lio/github/andreypfau/curve25519/models/CompletedPoint;->z:Lio/github/andreypfau/curve25519/field/FieldElement;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lio/github/andreypfau/curve25519/models/CompletedPoint;->t:Lio/github/andreypfau/curve25519/field/FieldElement;

    iget-object p1, p1, Lio/github/andreypfau/curve25519/models/CompletedPoint;->t:Lio/github/andreypfau/curve25519/field/FieldElement;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getT()Lio/github/andreypfau/curve25519/field/FieldElement;
    .locals 1

    .line 11
    iget-object v0, p0, Lio/github/andreypfau/curve25519/models/CompletedPoint;->t:Lio/github/andreypfau/curve25519/field/FieldElement;

    return-object v0
.end method

.method public final getX()Lio/github/andreypfau/curve25519/field/FieldElement;
    .locals 1

    .line 8
    iget-object v0, p0, Lio/github/andreypfau/curve25519/models/CompletedPoint;->x:Lio/github/andreypfau/curve25519/field/FieldElement;

    return-object v0
.end method

.method public final getY()Lio/github/andreypfau/curve25519/field/FieldElement;
    .locals 1

    .line 9
    iget-object v0, p0, Lio/github/andreypfau/curve25519/models/CompletedPoint;->y:Lio/github/andreypfau/curve25519/field/FieldElement;

    return-object v0
.end method

.method public final getZ()Lio/github/andreypfau/curve25519/field/FieldElement;
    .locals 1

    .line 10
    iget-object v0, p0, Lio/github/andreypfau/curve25519/models/CompletedPoint;->z:Lio/github/andreypfau/curve25519/field/FieldElement;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lio/github/andreypfau/curve25519/models/CompletedPoint;->x:Lio/github/andreypfau/curve25519/field/FieldElement;

    invoke-virtual {v0}, Lio/github/andreypfau/curve25519/field/FieldElement;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/github/andreypfau/curve25519/models/CompletedPoint;->y:Lio/github/andreypfau/curve25519/field/FieldElement;

    invoke-virtual {v1}, Lio/github/andreypfau/curve25519/field/FieldElement;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/github/andreypfau/curve25519/models/CompletedPoint;->z:Lio/github/andreypfau/curve25519/field/FieldElement;

    invoke-virtual {v1}, Lio/github/andreypfau/curve25519/field/FieldElement;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/github/andreypfau/curve25519/models/CompletedPoint;->t:Lio/github/andreypfau/curve25519/field/FieldElement;

    invoke-virtual {v1}, Lio/github/andreypfau/curve25519/field/FieldElement;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CompletedPoint(x="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/github/andreypfau/curve25519/models/CompletedPoint;->x:Lio/github/andreypfau/curve25519/field/FieldElement;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/github/andreypfau/curve25519/models/CompletedPoint;->y:Lio/github/andreypfau/curve25519/field/FieldElement;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", z="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/github/andreypfau/curve25519/models/CompletedPoint;->z:Lio/github/andreypfau/curve25519/field/FieldElement;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", t="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/github/andreypfau/curve25519/models/CompletedPoint;->t:Lio/github/andreypfau/curve25519/field/FieldElement;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
