.class public final Lio/github/andreypfau/curve25519/ed25519/Ed25519PublicKey;
.super Ljava/lang/Object;
.source "Ed25519PublicKey.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/github/andreypfau/curve25519/ed25519/Ed25519PublicKey$Companion;
    }
.end annotation


# instance fields
.field private final data:[B

.field private final offset:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/github/andreypfau/curve25519/ed25519/Ed25519PublicKey$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/github/andreypfau/curve25519/ed25519/Ed25519PublicKey$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x20

    .line 13
    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    const-string v0, "copyOf(this, newSize)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lio/github/andreypfau/curve25519/ed25519/Ed25519PublicKey;-><init>([BI)V

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 1

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lio/github/andreypfau/curve25519/ed25519/Ed25519PublicKey;->data:[B

    .line 11
    iput p2, p0, Lio/github/andreypfau/curve25519/ed25519/Ed25519PublicKey;->offset:I

    return-void
.end method

.method public static synthetic toByteArray$default(Lio/github/andreypfau/curve25519/ed25519/Ed25519PublicKey;[BIILjava/lang/Object;)[B
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 16
    :cond_0
    invoke-virtual {p0, p1, p2}, Lio/github/andreypfau/curve25519/ed25519/Ed25519PublicKey;->toByteArray([BI)[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getData$curve25519_kotlin()[B
    .locals 1

    .line 10
    iget-object v0, p0, Lio/github/andreypfau/curve25519/ed25519/Ed25519PublicKey;->data:[B

    return-object v0
.end method

.method public final toByteArray()[B
    .locals 4

    const/16 v0, 0x20

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 15
    invoke-static {p0, v0, v1, v2, v3}, Lio/github/andreypfau/curve25519/ed25519/Ed25519PublicKey;->toByteArray$default(Lio/github/andreypfau/curve25519/ed25519/Ed25519PublicKey;[BIILjava/lang/Object;)[B

    move-result-object v0

    return-object v0
.end method

.method public final toByteArray([BI)[B
    .locals 3

    const-string v0, "destination"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    iget-object v0, p0, Lio/github/andreypfau/curve25519/ed25519/Ed25519PublicKey;->data:[B

    iget v1, p0, Lio/github/andreypfau/curve25519/ed25519/Ed25519PublicKey;->offset:I

    add-int/lit8 v2, v1, 0x20

    invoke-static {v0, p1, p2, v1, v2}, Lkotlin/collections/ArraysKt;->copyInto([B[BIII)[B

    move-result-object p1

    return-object p1
.end method
