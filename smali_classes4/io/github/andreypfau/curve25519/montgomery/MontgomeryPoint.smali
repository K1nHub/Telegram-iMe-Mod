.class public final Lio/github/andreypfau/curve25519/montgomery/MontgomeryPoint;
.super Ljava/lang/Object;
.source "MontgomeryPoint.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/github/andreypfau/curve25519/montgomery/MontgomeryPoint$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lio/github/andreypfau/curve25519/montgomery/MontgomeryPoint$Companion;


# instance fields
.field private final data:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/github/andreypfau/curve25519/montgomery/MontgomeryPoint$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/github/andreypfau/curve25519/montgomery/MontgomeryPoint$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/github/andreypfau/curve25519/montgomery/MontgomeryPoint;->Companion:Lio/github/andreypfau/curve25519/montgomery/MontgomeryPoint$Companion;

    .line 48
    sget-object v0, Lio/github/andreypfau/curve25519/field/FieldElement;->Companion:Lio/github/andreypfau/curve25519/field/FieldElement$Companion;

    invoke-virtual {v0}, Lio/github/andreypfau/curve25519/field/FieldElement$Companion;->one()Lio/github/andreypfau/curve25519/field/FieldElement;

    .line 49
    invoke-virtual {v0}, Lio/github/andreypfau/curve25519/field/FieldElement$Companion;->minusOne()Lio/github/andreypfau/curve25519/field/FieldElement;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lio/github/andreypfau/curve25519/montgomery/MontgomeryPoint;->data:[B

    return-void
.end method

.method public synthetic constructor <init>([BILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/16 p1, 0x20

    new-array p1, p1, [B

    .line 12
    :cond_0
    invoke-direct {p0, p1}, Lio/github/andreypfau/curve25519/montgomery/MontgomeryPoint;-><init>([B)V

    return-void
.end method


# virtual methods
.method public final getData()[B
    .locals 1

    .line 13
    iget-object v0, p0, Lio/github/andreypfau/curve25519/montgomery/MontgomeryPoint;->data:[B

    return-object v0
.end method

.method public final mul(Lio/github/andreypfau/curve25519/montgomery/MontgomeryPoint;Lio/github/andreypfau/curve25519/scalar/Scalar;)Lio/github/andreypfau/curve25519/montgomery/MontgomeryPoint;
    .locals 1

    const-string/jumbo v0, "point"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "scalar"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    sget-object v0, Lio/github/andreypfau/curve25519/montgomery/MontgomeryPoint;->Companion:Lio/github/andreypfau/curve25519/montgomery/MontgomeryPoint$Companion;

    invoke-virtual {v0, p1, p2, p0}, Lio/github/andreypfau/curve25519/montgomery/MontgomeryPoint$Companion;->mul(Lio/github/andreypfau/curve25519/montgomery/MontgomeryPoint;Lio/github/andreypfau/curve25519/scalar/Scalar;Lio/github/andreypfau/curve25519/montgomery/MontgomeryPoint;)Lio/github/andreypfau/curve25519/montgomery/MontgomeryPoint;

    move-result-object p1

    return-object p1
.end method
