.class public final Lio/github/andreypfau/curve25519/constants/tables/AffineNielsPointLookupTable;
.super Ljava/lang/Object;
.source "AffineNielsPointLookupTable.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/github/andreypfau/curve25519/constants/tables/AffineNielsPointLookupTable$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAffineNielsPointLookupTable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AffineNielsPointLookupTable.kt\nio/github/andreypfau/curve25519/constants/tables/AffineNielsPointLookupTable\n+ 2 constantTime.kt\nio/github/andreypfau/curve25519/internal/ConstantTimeKt\n*L\n1#1,48:1\n17#2:49\n*S KotlinDebug\n*F\n+ 1 AffineNielsPointLookupTable.kt\nio/github/andreypfau/curve25519/constants/tables/AffineNielsPointLookupTable\n*L\n31#1:49\n*E\n"
.end annotation


# instance fields
.field private final points:[Lio/github/andreypfau/curve25519/models/AffineNielsPoint;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/github/andreypfau/curve25519/constants/tables/AffineNielsPointLookupTable$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/github/andreypfau/curve25519/constants/tables/AffineNielsPointLookupTable$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>([Lio/github/andreypfau/curve25519/models/AffineNielsPoint;)V
    .locals 1

    const-string/jumbo v0, "points"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lio/github/andreypfau/curve25519/constants/tables/AffineNielsPointLookupTable;->points:[Lio/github/andreypfau/curve25519/models/AffineNielsPoint;

    return-void
.end method

.method public synthetic constructor <init>([Lio/github/andreypfau/curve25519/models/AffineNielsPoint;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_1

    const/4 p1, 0x0

    const/16 p2, 0x40

    new-array p3, p2, [Lio/github/andreypfau/curve25519/models/AffineNielsPoint;

    :goto_0
    if-ge p1, p2, :cond_0

    .line 8
    new-instance v0, Lio/github/andreypfau/curve25519/models/AffineNielsPoint;

    invoke-direct {v0}, Lio/github/andreypfau/curve25519/models/AffineNielsPoint;-><init>()V

    aput-object v0, p3, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    move-object p1, p3

    .line 7
    :cond_1
    invoke-direct {p0, p1}, Lio/github/andreypfau/curve25519/constants/tables/AffineNielsPointLookupTable;-><init>([Lio/github/andreypfau/curve25519/models/AffineNielsPoint;)V

    return-void
.end method

.method public static synthetic lookup$default(Lio/github/andreypfau/curve25519/constants/tables/AffineNielsPointLookupTable;BLio/github/andreypfau/curve25519/models/AffineNielsPoint;ILjava/lang/Object;)Lio/github/andreypfau/curve25519/models/AffineNielsPoint;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 12
    new-instance p2, Lio/github/andreypfau/curve25519/models/AffineNielsPoint;

    invoke-direct {p2}, Lio/github/andreypfau/curve25519/models/AffineNielsPoint;-><init>()V

    :cond_0
    invoke-virtual {p0, p1, p2}, Lio/github/andreypfau/curve25519/constants/tables/AffineNielsPointLookupTable;->lookup(BLio/github/andreypfau/curve25519/models/AffineNielsPoint;)Lio/github/andreypfau/curve25519/models/AffineNielsPoint;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final get(I)Lio/github/andreypfau/curve25519/models/AffineNielsPoint;
    .locals 1

    .line 10
    iget-object v0, p0, Lio/github/andreypfau/curve25519/constants/tables/AffineNielsPointLookupTable;->points:[Lio/github/andreypfau/curve25519/models/AffineNielsPoint;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final lookup(BLio/github/andreypfau/curve25519/models/AffineNielsPoint;)Lio/github/andreypfau/curve25519/models/AffineNielsPoint;
    .locals 1

    const-string/jumbo v0, "output"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    ushr-int/lit8 v0, p1, 0x7

    add-int/2addr p1, v0

    xor-int/2addr p1, v0

    int-to-byte p1, p1

    .line 18
    invoke-virtual {p0, p2, p1}, Lio/github/andreypfau/curve25519/constants/tables/AffineNielsPointLookupTable;->lookupAffineNiels(Lio/github/andreypfau/curve25519/models/AffineNielsPoint;B)Lio/github/andreypfau/curve25519/models/AffineNielsPoint;

    and-int/lit8 p1, v0, 0x1

    int-to-byte p1, p1

    .line 22
    invoke-virtual {p2, p1}, Lio/github/andreypfau/curve25519/models/AffineNielsPoint;->conditionalNegate(I)V

    return-object p2
.end method

.method public final lookupAffineNiels(Lio/github/andreypfau/curve25519/models/AffineNielsPoint;B)Lio/github/andreypfau/curve25519/models/AffineNielsPoint;
    .locals 4

    const-string/jumbo v0, "out"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-virtual {p1}, Lio/github/andreypfau/curve25519/models/AffineNielsPoint;->identity()Lio/github/andreypfau/curve25519/models/AffineNielsPoint;

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    const/16 v2, 0x9

    if-ge v1, v2, :cond_0

    int-to-byte v2, v1

    xor-int/2addr v2, p2

    .line 17
    invoke-static {v2}, Lkotlin/UInt;->constructor-impl(I)I

    move-result v2

    sub-int/2addr v2, v0

    invoke-static {v2}, Lkotlin/UInt;->constructor-impl(I)I

    move-result v2

    ushr-int/lit8 v2, v2, 0x1f

    invoke-static {v2}, Lkotlin/UInt;->constructor-impl(I)I

    move-result v2

    add-int/lit8 v3, v1, -0x1

    .line 32
    invoke-virtual {p0, v3}, Lio/github/andreypfau/curve25519/constants/tables/AffineNielsPointLookupTable;->get(I)Lio/github/andreypfau/curve25519/models/AffineNielsPoint;

    move-result-object v3

    invoke-virtual {p1, v3, v2}, Lio/github/andreypfau/curve25519/models/AffineNielsPoint;->conditionalAssign(Lio/github/andreypfau/curve25519/models/AffineNielsPoint;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p1
.end method
