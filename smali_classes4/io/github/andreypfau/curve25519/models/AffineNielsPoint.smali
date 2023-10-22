.class public final Lio/github/andreypfau/curve25519/models/AffineNielsPoint;
.super Ljava/lang/Object;
.source "AffineNielsPoint.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/github/andreypfau/curve25519/models/AffineNielsPoint$Companion;
    }
.end annotation


# instance fields
.field private final xy2d:Lio/github/andreypfau/curve25519/field/FieldElement;

.field private final yMinusX:Lio/github/andreypfau/curve25519/field/FieldElement;

.field private final yPlusX:Lio/github/andreypfau/curve25519/field/FieldElement;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/github/andreypfau/curve25519/models/AffineNielsPoint$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/github/andreypfau/curve25519/models/AffineNielsPoint$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 12
    new-instance v0, Lio/github/andreypfau/curve25519/field/FieldElement;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Lio/github/andreypfau/curve25519/field/FieldElement;-><init>([JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v3, Lio/github/andreypfau/curve25519/field/FieldElement;

    invoke-direct {v3, v1, v2, v1}, Lio/github/andreypfau/curve25519/field/FieldElement;-><init>([JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v4, Lio/github/andreypfau/curve25519/field/FieldElement;

    invoke-direct {v4, v1, v2, v1}, Lio/github/andreypfau/curve25519/field/FieldElement;-><init>([JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {p0, v0, v3, v4}, Lio/github/andreypfau/curve25519/models/AffineNielsPoint;-><init>(Lio/github/andreypfau/curve25519/field/FieldElement;Lio/github/andreypfau/curve25519/field/FieldElement;Lio/github/andreypfau/curve25519/field/FieldElement;)V

    return-void
.end method

.method public constructor <init>(Lio/github/andreypfau/curve25519/field/FieldElement;Lio/github/andreypfau/curve25519/field/FieldElement;Lio/github/andreypfau/curve25519/field/FieldElement;)V
    .locals 1

    const-string/jumbo v0, "yPlusX"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "yMinusX"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "xy2d"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lio/github/andreypfau/curve25519/models/AffineNielsPoint;->yPlusX:Lio/github/andreypfau/curve25519/field/FieldElement;

    .line 9
    iput-object p2, p0, Lio/github/andreypfau/curve25519/models/AffineNielsPoint;->yMinusX:Lio/github/andreypfau/curve25519/field/FieldElement;

    .line 10
    iput-object p3, p0, Lio/github/andreypfau/curve25519/models/AffineNielsPoint;->xy2d:Lio/github/andreypfau/curve25519/field/FieldElement;

    return-void
.end method

.method public static synthetic setRawData$default(Lio/github/andreypfau/curve25519/models/AffineNielsPoint;[BIILjava/lang/Object;)Lio/github/andreypfau/curve25519/models/AffineNielsPoint;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 14
    :cond_0
    invoke-virtual {p0, p1, p2}, Lio/github/andreypfau/curve25519/models/AffineNielsPoint;->setRawData([BI)Lio/github/andreypfau/curve25519/models/AffineNielsPoint;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final conditionalAssign(Lio/github/andreypfau/curve25519/models/AffineNielsPoint;I)V
    .locals 2

    const-string/jumbo v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lio/github/andreypfau/curve25519/models/AffineNielsPoint;->yPlusX:Lio/github/andreypfau/curve25519/field/FieldElement;

    iget-object v1, p1, Lio/github/andreypfau/curve25519/models/AffineNielsPoint;->yPlusX:Lio/github/andreypfau/curve25519/field/FieldElement;

    invoke-virtual {v0, v1, p2}, Lio/github/andreypfau/curve25519/field/FieldElement;->conditionalAssign(Lio/github/andreypfau/curve25519/field/FieldElement;I)V

    .line 55
    iget-object v0, p0, Lio/github/andreypfau/curve25519/models/AffineNielsPoint;->yMinusX:Lio/github/andreypfau/curve25519/field/FieldElement;

    iget-object v1, p1, Lio/github/andreypfau/curve25519/models/AffineNielsPoint;->yMinusX:Lio/github/andreypfau/curve25519/field/FieldElement;

    invoke-virtual {v0, v1, p2}, Lio/github/andreypfau/curve25519/field/FieldElement;->conditionalAssign(Lio/github/andreypfau/curve25519/field/FieldElement;I)V

    .line 56
    iget-object v0, p0, Lio/github/andreypfau/curve25519/models/AffineNielsPoint;->xy2d:Lio/github/andreypfau/curve25519/field/FieldElement;

    iget-object p1, p1, Lio/github/andreypfau/curve25519/models/AffineNielsPoint;->xy2d:Lio/github/andreypfau/curve25519/field/FieldElement;

    invoke-virtual {v0, p1, p2}, Lio/github/andreypfau/curve25519/field/FieldElement;->conditionalAssign(Lio/github/andreypfau/curve25519/field/FieldElement;I)V

    return-void
.end method

.method public final conditionalNegate(I)V
    .locals 2

    .line 62
    iget-object v0, p0, Lio/github/andreypfau/curve25519/models/AffineNielsPoint;->yPlusX:Lio/github/andreypfau/curve25519/field/FieldElement;

    iget-object v1, p0, Lio/github/andreypfau/curve25519/models/AffineNielsPoint;->yMinusX:Lio/github/andreypfau/curve25519/field/FieldElement;

    invoke-virtual {v0, v1, p1}, Lio/github/andreypfau/curve25519/field/FieldElement;->conditionalSwap(Lio/github/andreypfau/curve25519/field/FieldElement;I)V

    .line 63
    iget-object v0, p0, Lio/github/andreypfau/curve25519/models/AffineNielsPoint;->xy2d:Lio/github/andreypfau/curve25519/field/FieldElement;

    invoke-virtual {v0, p1}, Lio/github/andreypfau/curve25519/field/FieldElement;->conditionalNegate(I)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lio/github/andreypfau/curve25519/models/AffineNielsPoint;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lio/github/andreypfau/curve25519/models/AffineNielsPoint;

    iget-object v1, p0, Lio/github/andreypfau/curve25519/models/AffineNielsPoint;->yPlusX:Lio/github/andreypfau/curve25519/field/FieldElement;

    iget-object v3, p1, Lio/github/andreypfau/curve25519/models/AffineNielsPoint;->yPlusX:Lio/github/andreypfau/curve25519/field/FieldElement;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lio/github/andreypfau/curve25519/models/AffineNielsPoint;->yMinusX:Lio/github/andreypfau/curve25519/field/FieldElement;

    iget-object v3, p1, Lio/github/andreypfau/curve25519/models/AffineNielsPoint;->yMinusX:Lio/github/andreypfau/curve25519/field/FieldElement;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lio/github/andreypfau/curve25519/models/AffineNielsPoint;->xy2d:Lio/github/andreypfau/curve25519/field/FieldElement;

    iget-object p1, p1, Lio/github/andreypfau/curve25519/models/AffineNielsPoint;->xy2d:Lio/github/andreypfau/curve25519/field/FieldElement;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getXy2d()Lio/github/andreypfau/curve25519/field/FieldElement;
    .locals 1

    .line 10
    iget-object v0, p0, Lio/github/andreypfau/curve25519/models/AffineNielsPoint;->xy2d:Lio/github/andreypfau/curve25519/field/FieldElement;

    return-object v0
.end method

.method public final getYMinusX()Lio/github/andreypfau/curve25519/field/FieldElement;
    .locals 1

    .line 9
    iget-object v0, p0, Lio/github/andreypfau/curve25519/models/AffineNielsPoint;->yMinusX:Lio/github/andreypfau/curve25519/field/FieldElement;

    return-object v0
.end method

.method public final getYPlusX()Lio/github/andreypfau/curve25519/field/FieldElement;
    .locals 1

    .line 8
    iget-object v0, p0, Lio/github/andreypfau/curve25519/models/AffineNielsPoint;->yPlusX:Lio/github/andreypfau/curve25519/field/FieldElement;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lio/github/andreypfau/curve25519/models/AffineNielsPoint;->yPlusX:Lio/github/andreypfau/curve25519/field/FieldElement;

    invoke-virtual {v0}, Lio/github/andreypfau/curve25519/field/FieldElement;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/github/andreypfau/curve25519/models/AffineNielsPoint;->yMinusX:Lio/github/andreypfau/curve25519/field/FieldElement;

    invoke-virtual {v1}, Lio/github/andreypfau/curve25519/field/FieldElement;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/github/andreypfau/curve25519/models/AffineNielsPoint;->xy2d:Lio/github/andreypfau/curve25519/field/FieldElement;

    invoke-virtual {v1}, Lio/github/andreypfau/curve25519/field/FieldElement;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final identity()Lio/github/andreypfau/curve25519/models/AffineNielsPoint;
    .locals 3

    .line 21
    iget-object v0, p0, Lio/github/andreypfau/curve25519/models/AffineNielsPoint;->yPlusX:Lio/github/andreypfau/curve25519/field/FieldElement;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lio/github/andreypfau/curve25519/field/FieldElement;->one$default(Lio/github/andreypfau/curve25519/field/FieldElement;Lio/github/andreypfau/curve25519/field/FieldElement;ILjava/lang/Object;)Lio/github/andreypfau/curve25519/field/FieldElement;

    .line 22
    iget-object v0, p0, Lio/github/andreypfau/curve25519/models/AffineNielsPoint;->yMinusX:Lio/github/andreypfau/curve25519/field/FieldElement;

    invoke-static {v0, v1, v2, v1}, Lio/github/andreypfau/curve25519/field/FieldElement;->one$default(Lio/github/andreypfau/curve25519/field/FieldElement;Lio/github/andreypfau/curve25519/field/FieldElement;ILjava/lang/Object;)Lio/github/andreypfau/curve25519/field/FieldElement;

    .line 23
    iget-object v0, p0, Lio/github/andreypfau/curve25519/models/AffineNielsPoint;->xy2d:Lio/github/andreypfau/curve25519/field/FieldElement;

    invoke-static {v0, v1, v2, v1}, Lio/github/andreypfau/curve25519/field/FieldElement;->zero$default(Lio/github/andreypfau/curve25519/field/FieldElement;Lio/github/andreypfau/curve25519/field/FieldElement;ILjava/lang/Object;)Lio/github/andreypfau/curve25519/field/FieldElement;

    return-object p0
.end method

.method public final setRawData([BI)Lio/github/andreypfau/curve25519/models/AffineNielsPoint;
    .locals 2

    const-string/jumbo v0, "rawData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    iget-object v0, p0, Lio/github/andreypfau/curve25519/models/AffineNielsPoint;->yPlusX:Lio/github/andreypfau/curve25519/field/FieldElement;

    invoke-virtual {v0, p1, p2}, Lio/github/andreypfau/curve25519/field/FieldElement;->setBytes([BI)Lio/github/andreypfau/curve25519/field/FieldElement;

    .line 16
    iget-object v0, p0, Lio/github/andreypfau/curve25519/models/AffineNielsPoint;->yMinusX:Lio/github/andreypfau/curve25519/field/FieldElement;

    add-int/lit8 v1, p2, 0x20

    invoke-virtual {v0, p1, v1}, Lio/github/andreypfau/curve25519/field/FieldElement;->setBytes([BI)Lio/github/andreypfau/curve25519/field/FieldElement;

    .line 17
    iget-object v0, p0, Lio/github/andreypfau/curve25519/models/AffineNielsPoint;->xy2d:Lio/github/andreypfau/curve25519/field/FieldElement;

    add-int/lit8 p2, p2, 0x40

    invoke-virtual {v0, p1, p2}, Lio/github/andreypfau/curve25519/field/FieldElement;->setBytes([BI)Lio/github/andreypfau/curve25519/field/FieldElement;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AffineNielsPoint(yPlusX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/github/andreypfau/curve25519/models/AffineNielsPoint;->yPlusX:Lio/github/andreypfau/curve25519/field/FieldElement;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", yMinusX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/github/andreypfau/curve25519/models/AffineNielsPoint;->yMinusX:Lio/github/andreypfau/curve25519/field/FieldElement;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", xy2d="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/github/andreypfau/curve25519/models/AffineNielsPoint;->xy2d:Lio/github/andreypfau/curve25519/field/FieldElement;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
