.class public final Lio/github/andreypfau/curve25519/constants/tables/EdwardsBasepointTable$Companion;
.super Ljava/lang/Object;
.source "EdwardsBasepointTable.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/andreypfau/curve25519/constants/tables/EdwardsBasepointTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lio/github/andreypfau/curve25519/constants/tables/EdwardsBasepointTable$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final unpack([[B)Lio/github/andreypfau/curve25519/constants/tables/EdwardsBasepointTable;
    .locals 8

    const-string/jumbo v0, "packed"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    new-instance v0, Lio/github/andreypfau/curve25519/constants/tables/EdwardsBasepointTable;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Lio/github/andreypfau/curve25519/constants/tables/EdwardsBasepointTable;-><init>([Lio/github/andreypfau/curve25519/constants/tables/AffineNielsPointLookupTable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/16 v4, 0x20

    if-ge v3, v4, :cond_1

    move v4, v2

    :goto_1
    const/16 v5, 0x8

    if-ge v4, v5, :cond_0

    mul-int/lit8 v5, v3, 0x8

    add-int/2addr v5, v4

    .line 46
    invoke-virtual {v0, v3}, Lio/github/andreypfau/curve25519/constants/tables/EdwardsBasepointTable;->get(I)Lio/github/andreypfau/curve25519/constants/tables/AffineNielsPointLookupTable;

    move-result-object v6

    invoke-virtual {v6, v4}, Lio/github/andreypfau/curve25519/constants/tables/AffineNielsPointLookupTable;->get(I)Lio/github/andreypfau/curve25519/models/AffineNielsPoint;

    move-result-object v6

    aget-object v5, p1, v5

    const/4 v7, 0x2

    invoke-static {v6, v5, v2, v7, v1}, Lio/github/andreypfau/curve25519/models/AffineNielsPoint;->setRawData$default(Lio/github/andreypfau/curve25519/models/AffineNielsPoint;[BIILjava/lang/Object;)Lio/github/andreypfau/curve25519/models/AffineNielsPoint;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method
