.class public final Lio/github/andreypfau/curve25519/edwards/CompressedEdwardsY$Companion;
.super Ljava/lang/Object;
.source "CompressedEdwardsY.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/andreypfau/curve25519/edwards/CompressedEdwardsY;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lio/github/andreypfau/curve25519/edwards/CompressedEdwardsY$Companion;-><init>()V

    return-void
.end method

.method public static synthetic from$default(Lio/github/andreypfau/curve25519/edwards/CompressedEdwardsY$Companion;Lio/github/andreypfau/curve25519/edwards/EdwardsPoint;Lio/github/andreypfau/curve25519/edwards/CompressedEdwardsY;ILjava/lang/Object;)Lio/github/andreypfau/curve25519/edwards/CompressedEdwardsY;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 39
    new-instance p2, Lio/github/andreypfau/curve25519/edwards/CompressedEdwardsY;

    invoke-direct {p2}, Lio/github/andreypfau/curve25519/edwards/CompressedEdwardsY;-><init>()V

    :cond_0
    invoke-virtual {p0, p1, p2}, Lio/github/andreypfau/curve25519/edwards/CompressedEdwardsY$Companion;->from(Lio/github/andreypfau/curve25519/edwards/EdwardsPoint;Lio/github/andreypfau/curve25519/edwards/CompressedEdwardsY;)Lio/github/andreypfau/curve25519/edwards/CompressedEdwardsY;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final from(Lio/github/andreypfau/curve25519/edwards/EdwardsPoint;Lio/github/andreypfau/curve25519/edwards/CompressedEdwardsY;)Lio/github/andreypfau/curve25519/edwards/CompressedEdwardsY;
    .locals 5

    const-string v0, "ep"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "output"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    new-instance v0, Lio/github/andreypfau/curve25519/field/FieldElement;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Lio/github/andreypfau/curve25519/field/FieldElement;-><init>([JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 41
    new-instance v3, Lio/github/andreypfau/curve25519/field/FieldElement;

    invoke-direct {v3, v1, v2, v1}, Lio/github/andreypfau/curve25519/field/FieldElement;-><init>([JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 42
    new-instance v4, Lio/github/andreypfau/curve25519/field/FieldElement;

    invoke-direct {v4, v1, v2, v1}, Lio/github/andreypfau/curve25519/field/FieldElement;-><init>([JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 43
    invoke-virtual {p1}, Lio/github/andreypfau/curve25519/edwards/EdwardsPoint;->getZ()Lio/github/andreypfau/curve25519/field/FieldElement;

    move-result-object v1

    invoke-virtual {v4, v1}, Lio/github/andreypfau/curve25519/field/FieldElement;->invert(Lio/github/andreypfau/curve25519/field/FieldElement;)Lio/github/andreypfau/curve25519/field/FieldElement;

    .line 44
    invoke-virtual {p1}, Lio/github/andreypfau/curve25519/edwards/EdwardsPoint;->getX()Lio/github/andreypfau/curve25519/field/FieldElement;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lio/github/andreypfau/curve25519/field/FieldElement;->mul(Lio/github/andreypfau/curve25519/field/FieldElement;Lio/github/andreypfau/curve25519/field/FieldElement;)Lio/github/andreypfau/curve25519/field/FieldElement;

    .line 45
    invoke-virtual {p1}, Lio/github/andreypfau/curve25519/edwards/EdwardsPoint;->getY()Lio/github/andreypfau/curve25519/field/FieldElement;

    move-result-object p1

    invoke-virtual {v3, p1, v4}, Lio/github/andreypfau/curve25519/field/FieldElement;->mul(Lio/github/andreypfau/curve25519/field/FieldElement;Lio/github/andreypfau/curve25519/field/FieldElement;)Lio/github/andreypfau/curve25519/field/FieldElement;

    .line 47
    invoke-virtual {p2}, Lio/github/andreypfau/curve25519/edwards/CompressedEdwardsY;->getData()[B

    move-result-object p1

    invoke-virtual {v3, p1}, Lio/github/andreypfau/curve25519/field/FieldElement;->toBytes([B)[B

    .line 48
    invoke-virtual {p2}, Lio/github/andreypfau/curve25519/edwards/CompressedEdwardsY;->getData()[B

    move-result-object p1

    invoke-virtual {p2}, Lio/github/andreypfau/curve25519/edwards/CompressedEdwardsY;->getData()[B

    move-result-object v1

    const/16 v2, 0x1f

    aget-byte v1, v1, v2

    invoke-virtual {v0}, Lio/github/andreypfau/curve25519/field/FieldElement;->isNegative()I

    move-result v0

    shl-int/lit8 v0, v0, 0x7

    int-to-byte v0, v0

    xor-int/2addr v0, v1

    int-to-byte v0, v0

    aput-byte v0, p1, v2

    return-object p2
.end method
