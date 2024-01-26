.class public final Lio/github/andreypfau/curve25519/edwards/CompressedEdwardsY;
.super Ljava/lang/Object;
.source "CompressedEdwardsY.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/github/andreypfau/curve25519/edwards/CompressedEdwardsY$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCompressedEdwardsY.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CompressedEdwardsY.kt\nio/github/andreypfau/curve25519/edwards/CompressedEdwardsY\n*L\n1#1,53:1\n28#1,5:54\n*S KotlinDebug\n*F\n+ 1 CompressedEdwardsY.kt\nio/github/andreypfau/curve25519/edwards/CompressedEdwardsY\n*L\n20#1:54,5\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lio/github/andreypfau/curve25519/edwards/CompressedEdwardsY$Companion;


# instance fields
.field private final data:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/github/andreypfau/curve25519/edwards/CompressedEdwardsY$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/github/andreypfau/curve25519/edwards/CompressedEdwardsY$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/github/andreypfau/curve25519/edwards/CompressedEdwardsY;->Companion:Lio/github/andreypfau/curve25519/edwards/CompressedEdwardsY$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x20

    new-array v0, v0, [B

    .line 11
    invoke-direct {p0, v0}, Lio/github/andreypfau/curve25519/edwards/CompressedEdwardsY;-><init>([B)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lio/github/andreypfau/curve25519/edwards/CompressedEdwardsY;->data:[B

    return-void
.end method


# virtual methods
.method public final getData()[B
    .locals 1

    .line 9
    iget-object v0, p0, Lio/github/andreypfau/curve25519/edwards/CompressedEdwardsY;->data:[B

    return-object v0
.end method
