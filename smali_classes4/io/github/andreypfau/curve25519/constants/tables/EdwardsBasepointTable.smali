.class public final Lio/github/andreypfau/curve25519/constants/tables/EdwardsBasepointTable;
.super Ljava/lang/Object;
.source "EdwardsBasepointTable.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/github/andreypfau/curve25519/constants/tables/EdwardsBasepointTable$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lio/github/andreypfau/curve25519/constants/tables/EdwardsBasepointTable$Companion;


# instance fields
.field private final data:[Lio/github/andreypfau/curve25519/constants/tables/AffineNielsPointLookupTable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/github/andreypfau/curve25519/constants/tables/EdwardsBasepointTable$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/github/andreypfau/curve25519/constants/tables/EdwardsBasepointTable$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/github/andreypfau/curve25519/constants/tables/EdwardsBasepointTable;->Companion:Lio/github/andreypfau/curve25519/constants/tables/EdwardsBasepointTable$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lio/github/andreypfau/curve25519/constants/tables/EdwardsBasepointTable;-><init>([Lio/github/andreypfau/curve25519/constants/tables/AffineNielsPointLookupTable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>([Lio/github/andreypfau/curve25519/constants/tables/AffineNielsPointLookupTable;)V
    .locals 1

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lio/github/andreypfau/curve25519/constants/tables/EdwardsBasepointTable;->data:[Lio/github/andreypfau/curve25519/constants/tables/AffineNielsPointLookupTable;

    return-void
.end method

.method public synthetic constructor <init>([Lio/github/andreypfau/curve25519/constants/tables/AffineNielsPointLookupTable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 3

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_1

    const/4 p1, 0x0

    const/16 p2, 0x20

    new-array v0, p2, [Lio/github/andreypfau/curve25519/constants/tables/AffineNielsPointLookupTable;

    :goto_0
    if-ge p1, p2, :cond_0

    .line 14
    new-instance v1, Lio/github/andreypfau/curve25519/constants/tables/AffineNielsPointLookupTable;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p3, v2}, Lio/github/andreypfau/curve25519/constants/tables/AffineNielsPointLookupTable;-><init>([Lio/github/andreypfau/curve25519/models/AffineNielsPoint;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    aput-object v1, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    move-object p1, v0

    .line 13
    :cond_1
    invoke-direct {p0, p1}, Lio/github/andreypfau/curve25519/constants/tables/EdwardsBasepointTable;-><init>([Lio/github/andreypfau/curve25519/constants/tables/AffineNielsPointLookupTable;)V

    return-void
.end method


# virtual methods
.method public final get(I)Lio/github/andreypfau/curve25519/constants/tables/AffineNielsPointLookupTable;
    .locals 1

    .line 16
    iget-object v0, p0, Lio/github/andreypfau/curve25519/constants/tables/EdwardsBasepointTable;->data:[Lio/github/andreypfau/curve25519/constants/tables/AffineNielsPointLookupTable;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final mul(Lio/github/andreypfau/curve25519/edwards/EdwardsPoint;Lio/github/andreypfau/curve25519/scalar/Scalar;)Lio/github/andreypfau/curve25519/edwards/EdwardsPoint;
    .locals 9

    const-string/jumbo v0, "out"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "scalar"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 19
    invoke-static {p2, v0, v1, v0}, Lio/github/andreypfau/curve25519/scalar/Scalar;->toRadix16$default(Lio/github/andreypfau/curve25519/scalar/Scalar;[BILjava/lang/Object;)[B

    move-result-object p2

    .line 20
    invoke-virtual {p1}, Lio/github/andreypfau/curve25519/edwards/EdwardsPoint;->identity()Lio/github/andreypfau/curve25519/edwards/EdwardsPoint;

    .line 21
    new-instance v2, Lio/github/andreypfau/curve25519/models/CompletedPoint;

    invoke-direct {v2}, Lio/github/andreypfau/curve25519/models/CompletedPoint;-><init>()V

    const/16 v3, 0x40

    .line 22
    invoke-static {v1, v3}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v1

    const/4 v4, 0x2

    invoke-static {v1, v4}, Lkotlin/ranges/RangesKt;->step(Lkotlin/ranges/IntProgression;I)Lkotlin/ranges/IntProgression;

    move-result-object v1

    invoke-virtual {v1}, Lkotlin/ranges/IntProgression;->getFirst()I

    move-result v5

    invoke-virtual {v1}, Lkotlin/ranges/IntProgression;->getLast()I

    move-result v6

    invoke-virtual {v1}, Lkotlin/ranges/IntProgression;->getStep()I

    move-result v1

    if-lez v1, :cond_0

    if-le v5, v6, :cond_1

    :cond_0
    if-gez v1, :cond_2

    if-gt v6, v5, :cond_2

    .line 23
    :cond_1
    :goto_0
    div-int/lit8 v7, v5, 0x2

    invoke-virtual {p0, v7}, Lio/github/andreypfau/curve25519/constants/tables/EdwardsBasepointTable;->get(I)Lio/github/andreypfau/curve25519/constants/tables/AffineNielsPointLookupTable;

    move-result-object v7

    aget-byte v8, p2, v5

    invoke-static {v7, v8, v0, v4, v0}, Lio/github/andreypfau/curve25519/constants/tables/AffineNielsPointLookupTable;->lookup$default(Lio/github/andreypfau/curve25519/constants/tables/AffineNielsPointLookupTable;BLio/github/andreypfau/curve25519/models/AffineNielsPoint;ILjava/lang/Object;)Lio/github/andreypfau/curve25519/models/AffineNielsPoint;

    move-result-object v7

    .line 24
    invoke-virtual {v2, p1, v7}, Lio/github/andreypfau/curve25519/models/CompletedPoint;->add(Lio/github/andreypfau/curve25519/edwards/EdwardsPoint;Lio/github/andreypfau/curve25519/models/AffineNielsPoint;)Lio/github/andreypfau/curve25519/models/CompletedPoint;

    .line 25
    invoke-virtual {p1, v2}, Lio/github/andreypfau/curve25519/edwards/EdwardsPoint;->set(Lio/github/andreypfau/curve25519/models/CompletedPoint;)Lio/github/andreypfau/curve25519/edwards/EdwardsPoint;

    if-eq v5, v6, :cond_2

    add-int/2addr v5, v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x4

    .line 28
    invoke-virtual {p1, p1, v1}, Lio/github/andreypfau/curve25519/edwards/EdwardsPoint;->multByPow2(Lio/github/andreypfau/curve25519/edwards/EdwardsPoint;I)V

    const/4 v1, 0x0

    .line 30
    invoke-static {v1, v3}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v1

    invoke-static {v1, v4}, Lkotlin/ranges/RangesKt;->step(Lkotlin/ranges/IntProgression;I)Lkotlin/ranges/IntProgression;

    move-result-object v1

    invoke-virtual {v1}, Lkotlin/ranges/IntProgression;->getFirst()I

    move-result v3

    invoke-virtual {v1}, Lkotlin/ranges/IntProgression;->getLast()I

    move-result v5

    invoke-virtual {v1}, Lkotlin/ranges/IntProgression;->getStep()I

    move-result v1

    if-lez v1, :cond_3

    if-le v3, v5, :cond_4

    :cond_3
    if-gez v1, :cond_5

    if-gt v5, v3, :cond_5

    .line 31
    :cond_4
    :goto_1
    div-int/lit8 v6, v3, 0x2

    invoke-virtual {p0, v6}, Lio/github/andreypfau/curve25519/constants/tables/EdwardsBasepointTable;->get(I)Lio/github/andreypfau/curve25519/constants/tables/AffineNielsPointLookupTable;

    move-result-object v6

    aget-byte v7, p2, v3

    invoke-static {v6, v7, v0, v4, v0}, Lio/github/andreypfau/curve25519/constants/tables/AffineNielsPointLookupTable;->lookup$default(Lio/github/andreypfau/curve25519/constants/tables/AffineNielsPointLookupTable;BLio/github/andreypfau/curve25519/models/AffineNielsPoint;ILjava/lang/Object;)Lio/github/andreypfau/curve25519/models/AffineNielsPoint;

    move-result-object v6

    .line 32
    invoke-virtual {v2, p1, v6}, Lio/github/andreypfau/curve25519/models/CompletedPoint;->add(Lio/github/andreypfau/curve25519/edwards/EdwardsPoint;Lio/github/andreypfau/curve25519/models/AffineNielsPoint;)Lio/github/andreypfau/curve25519/models/CompletedPoint;

    .line 33
    invoke-virtual {p1, v2}, Lio/github/andreypfau/curve25519/edwards/EdwardsPoint;->set(Lio/github/andreypfau/curve25519/models/CompletedPoint;)Lio/github/andreypfau/curve25519/edwards/EdwardsPoint;

    if-eq v3, v5, :cond_5

    add-int/2addr v3, v1

    goto :goto_1

    :cond_5
    return-object p1
.end method
