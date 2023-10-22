.class public final Lio/github/andreypfau/curve25519/montgomery/MontgomeryProjectivePoint$Companion;
.super Ljava/lang/Object;
.source "MontgomeryProjectivePoint.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/andreypfau/curve25519/montgomery/MontgomeryProjectivePoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lio/github/andreypfau/curve25519/montgomery/MontgomeryProjectivePoint$Companion;-><init>()V

    return-void
.end method

.method public static synthetic identity$default(Lio/github/andreypfau/curve25519/montgomery/MontgomeryProjectivePoint$Companion;Lio/github/andreypfau/curve25519/montgomery/MontgomeryProjectivePoint;ILjava/lang/Object;)Lio/github/andreypfau/curve25519/montgomery/MontgomeryProjectivePoint;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 24
    new-instance p1, Lio/github/andreypfau/curve25519/montgomery/MontgomeryProjectivePoint;

    invoke-direct {p1}, Lio/github/andreypfau/curve25519/montgomery/MontgomeryProjectivePoint;-><init>()V

    .line 23
    :cond_0
    invoke-virtual {p0, p1}, Lio/github/andreypfau/curve25519/montgomery/MontgomeryProjectivePoint$Companion;->identity(Lio/github/andreypfau/curve25519/montgomery/MontgomeryProjectivePoint;)Lio/github/andreypfau/curve25519/montgomery/MontgomeryProjectivePoint;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final identity(Lio/github/andreypfau/curve25519/montgomery/MontgomeryProjectivePoint;)Lio/github/andreypfau/curve25519/montgomery/MontgomeryProjectivePoint;
    .locals 3

    const-string/jumbo v0, "output"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-virtual {p1}, Lio/github/andreypfau/curve25519/montgomery/MontgomeryProjectivePoint;->getU()Lio/github/andreypfau/curve25519/field/FieldElement;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lio/github/andreypfau/curve25519/field/FieldElement;->one$default(Lio/github/andreypfau/curve25519/field/FieldElement;Lio/github/andreypfau/curve25519/field/FieldElement;ILjava/lang/Object;)Lio/github/andreypfau/curve25519/field/FieldElement;

    .line 27
    invoke-virtual {p1}, Lio/github/andreypfau/curve25519/montgomery/MontgomeryProjectivePoint;->getW()Lio/github/andreypfau/curve25519/field/FieldElement;

    move-result-object v0

    invoke-static {v0, v1, v2, v1}, Lio/github/andreypfau/curve25519/field/FieldElement;->zero$default(Lio/github/andreypfau/curve25519/field/FieldElement;Lio/github/andreypfau/curve25519/field/FieldElement;ILjava/lang/Object;)Lio/github/andreypfau/curve25519/field/FieldElement;

    return-object p1
.end method

.method public final montgomeryDifferentialAddAndDouble(Lio/github/andreypfau/curve25519/montgomery/MontgomeryProjectivePoint;Lio/github/andreypfau/curve25519/montgomery/MontgomeryProjectivePoint;Lio/github/andreypfau/curve25519/field/FieldElement;)V
    .locals 17

    move-object/from16 v0, p3

    const-string/jumbo v1, "p"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v1, "q"

    move-object/from16 v3, p2

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "affinePmQ"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    sget-object v1, Lio/github/andreypfau/curve25519/field/FieldElement;->Companion:Lio/github/andreypfau/curve25519/field/FieldElement$Companion;

    invoke-virtual/range {p1 .. p1}, Lio/github/andreypfau/curve25519/montgomery/MontgomeryProjectivePoint;->getU()Lio/github/andreypfau/curve25519/field/FieldElement;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lio/github/andreypfau/curve25519/montgomery/MontgomeryProjectivePoint;->getW()Lio/github/andreypfau/curve25519/field/FieldElement;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x0

    move-object v4, v1

    invoke-static/range {v4 .. v9}, Lio/github/andreypfau/curve25519/field/FieldElement$Companion;->add$default(Lio/github/andreypfau/curve25519/field/FieldElement$Companion;Lio/github/andreypfau/curve25519/field/FieldElement;Lio/github/andreypfau/curve25519/field/FieldElement;Lio/github/andreypfau/curve25519/field/FieldElement;ILjava/lang/Object;)Lio/github/andreypfau/curve25519/field/FieldElement;

    move-result-object v10

    .line 37
    invoke-virtual/range {p1 .. p1}, Lio/github/andreypfau/curve25519/montgomery/MontgomeryProjectivePoint;->getU()Lio/github/andreypfau/curve25519/field/FieldElement;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lio/github/andreypfau/curve25519/montgomery/MontgomeryProjectivePoint;->getW()Lio/github/andreypfau/curve25519/field/FieldElement;

    move-result-object v6

    invoke-static/range {v4 .. v9}, Lio/github/andreypfau/curve25519/field/FieldElement$Companion;->sub$default(Lio/github/andreypfau/curve25519/field/FieldElement$Companion;Lio/github/andreypfau/curve25519/field/FieldElement;Lio/github/andreypfau/curve25519/field/FieldElement;Lio/github/andreypfau/curve25519/field/FieldElement;ILjava/lang/Object;)Lio/github/andreypfau/curve25519/field/FieldElement;

    move-result-object v11

    .line 38
    invoke-virtual/range {p2 .. p2}, Lio/github/andreypfau/curve25519/montgomery/MontgomeryProjectivePoint;->getU()Lio/github/andreypfau/curve25519/field/FieldElement;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Lio/github/andreypfau/curve25519/montgomery/MontgomeryProjectivePoint;->getW()Lio/github/andreypfau/curve25519/field/FieldElement;

    move-result-object v6

    invoke-static/range {v4 .. v9}, Lio/github/andreypfau/curve25519/field/FieldElement$Companion;->add$default(Lio/github/andreypfau/curve25519/field/FieldElement$Companion;Lio/github/andreypfau/curve25519/field/FieldElement;Lio/github/andreypfau/curve25519/field/FieldElement;Lio/github/andreypfau/curve25519/field/FieldElement;ILjava/lang/Object;)Lio/github/andreypfau/curve25519/field/FieldElement;

    move-result-object v12

    .line 39
    invoke-virtual/range {p2 .. p2}, Lio/github/andreypfau/curve25519/montgomery/MontgomeryProjectivePoint;->getU()Lio/github/andreypfau/curve25519/field/FieldElement;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Lio/github/andreypfau/curve25519/montgomery/MontgomeryProjectivePoint;->getW()Lio/github/andreypfau/curve25519/field/FieldElement;

    move-result-object v6

    invoke-static/range {v4 .. v9}, Lio/github/andreypfau/curve25519/field/FieldElement$Companion;->sub$default(Lio/github/andreypfau/curve25519/field/FieldElement$Companion;Lio/github/andreypfau/curve25519/field/FieldElement;Lio/github/andreypfau/curve25519/field/FieldElement;Lio/github/andreypfau/curve25519/field/FieldElement;ILjava/lang/Object;)Lio/github/andreypfau/curve25519/field/FieldElement;

    move-result-object v13

    const/4 v4, 0x0

    const/4 v5, 0x2

    .line 41
    invoke-static {v1, v10, v4, v5, v4}, Lio/github/andreypfau/curve25519/field/FieldElement$Companion;->square$default(Lio/github/andreypfau/curve25519/field/FieldElement$Companion;Lio/github/andreypfau/curve25519/field/FieldElement;Lio/github/andreypfau/curve25519/field/FieldElement;ILjava/lang/Object;)Lio/github/andreypfau/curve25519/field/FieldElement;

    move-result-object v14

    .line 42
    invoke-static {v1, v11, v4, v5, v4}, Lio/github/andreypfau/curve25519/field/FieldElement$Companion;->square$default(Lio/github/andreypfau/curve25519/field/FieldElement$Companion;Lio/github/andreypfau/curve25519/field/FieldElement;Lio/github/andreypfau/curve25519/field/FieldElement;ILjava/lang/Object;)Lio/github/andreypfau/curve25519/field/FieldElement;

    move-result-object v15

    move-object v4, v1

    move-object v5, v14

    move-object v6, v15

    .line 44
    invoke-static/range {v4 .. v9}, Lio/github/andreypfau/curve25519/field/FieldElement$Companion;->sub$default(Lio/github/andreypfau/curve25519/field/FieldElement$Companion;Lio/github/andreypfau/curve25519/field/FieldElement;Lio/github/andreypfau/curve25519/field/FieldElement;Lio/github/andreypfau/curve25519/field/FieldElement;ILjava/lang/Object;)Lio/github/andreypfau/curve25519/field/FieldElement;

    move-result-object v9

    const/16 v16, 0x0

    move-object v5, v10

    move-object v6, v13

    move-object v10, v9

    move-object/from16 v9, v16

    .line 46
    invoke-static/range {v4 .. v9}, Lio/github/andreypfau/curve25519/field/FieldElement$Companion;->mul$default(Lio/github/andreypfau/curve25519/field/FieldElement$Companion;Lio/github/andreypfau/curve25519/field/FieldElement;Lio/github/andreypfau/curve25519/field/FieldElement;Lio/github/andreypfau/curve25519/field/FieldElement;ILjava/lang/Object;)Lio/github/andreypfau/curve25519/field/FieldElement;

    move-result-object v13

    const/4 v9, 0x0

    move-object v5, v11

    move-object v6, v12

    .line 47
    invoke-static/range {v4 .. v9}, Lio/github/andreypfau/curve25519/field/FieldElement$Companion;->mul$default(Lio/github/andreypfau/curve25519/field/FieldElement$Companion;Lio/github/andreypfau/curve25519/field/FieldElement;Lio/github/andreypfau/curve25519/field/FieldElement;Lio/github/andreypfau/curve25519/field/FieldElement;ILjava/lang/Object;)Lio/github/andreypfau/curve25519/field/FieldElement;

    move-result-object v1

    .line 52
    invoke-virtual/range {p2 .. p2}, Lio/github/andreypfau/curve25519/montgomery/MontgomeryProjectivePoint;->getU()Lio/github/andreypfau/curve25519/field/FieldElement;

    move-result-object v4

    invoke-virtual {v4, v13, v1}, Lio/github/andreypfau/curve25519/field/FieldElement;->add(Lio/github/andreypfau/curve25519/field/FieldElement;Lio/github/andreypfau/curve25519/field/FieldElement;)Lio/github/andreypfau/curve25519/field/FieldElement;

    .line 53
    invoke-virtual/range {p2 .. p2}, Lio/github/andreypfau/curve25519/montgomery/MontgomeryProjectivePoint;->getW()Lio/github/andreypfau/curve25519/field/FieldElement;

    move-result-object v4

    invoke-virtual {v4, v13, v1}, Lio/github/andreypfau/curve25519/field/FieldElement;->sub(Lio/github/andreypfau/curve25519/field/FieldElement;Lio/github/andreypfau/curve25519/field/FieldElement;)Lio/github/andreypfau/curve25519/field/FieldElement;

    .line 55
    invoke-virtual/range {p2 .. p2}, Lio/github/andreypfau/curve25519/montgomery/MontgomeryProjectivePoint;->getU()Lio/github/andreypfau/curve25519/field/FieldElement;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Lio/github/andreypfau/curve25519/montgomery/MontgomeryProjectivePoint;->getU()Lio/github/andreypfau/curve25519/field/FieldElement;

    move-result-object v4

    invoke-virtual {v1, v4}, Lio/github/andreypfau/curve25519/field/FieldElement;->square(Lio/github/andreypfau/curve25519/field/FieldElement;)Lio/github/andreypfau/curve25519/field/FieldElement;

    .line 56
    invoke-virtual/range {p2 .. p2}, Lio/github/andreypfau/curve25519/montgomery/MontgomeryProjectivePoint;->getW()Lio/github/andreypfau/curve25519/field/FieldElement;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Lio/github/andreypfau/curve25519/montgomery/MontgomeryProjectivePoint;->getW()Lio/github/andreypfau/curve25519/field/FieldElement;

    move-result-object v4

    invoke-virtual {v1, v4}, Lio/github/andreypfau/curve25519/field/FieldElement;->square(Lio/github/andreypfau/curve25519/field/FieldElement;)Lio/github/andreypfau/curve25519/field/FieldElement;

    .line 58
    invoke-virtual/range {p1 .. p1}, Lio/github/andreypfau/curve25519/montgomery/MontgomeryProjectivePoint;->getW()Lio/github/andreypfau/curve25519/field/FieldElement;

    move-result-object v1

    invoke-virtual {v1, v10}, Lio/github/andreypfau/curve25519/field/FieldElement;->mul12166(Lio/github/andreypfau/curve25519/field/FieldElement;)Lio/github/andreypfau/curve25519/field/FieldElement;

    .line 60
    invoke-virtual/range {p1 .. p1}, Lio/github/andreypfau/curve25519/montgomery/MontgomeryProjectivePoint;->getU()Lio/github/andreypfau/curve25519/field/FieldElement;

    move-result-object v1

    invoke-virtual {v1, v14, v15}, Lio/github/andreypfau/curve25519/field/FieldElement;->mul(Lio/github/andreypfau/curve25519/field/FieldElement;Lio/github/andreypfau/curve25519/field/FieldElement;)Lio/github/andreypfau/curve25519/field/FieldElement;

    .line 61
    invoke-virtual/range {p1 .. p1}, Lio/github/andreypfau/curve25519/montgomery/MontgomeryProjectivePoint;->getW()Lio/github/andreypfau/curve25519/field/FieldElement;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lio/github/andreypfau/curve25519/montgomery/MontgomeryProjectivePoint;->getW()Lio/github/andreypfau/curve25519/field/FieldElement;

    move-result-object v4

    invoke-virtual {v1, v4, v15}, Lio/github/andreypfau/curve25519/field/FieldElement;->add(Lio/github/andreypfau/curve25519/field/FieldElement;Lio/github/andreypfau/curve25519/field/FieldElement;)Lio/github/andreypfau/curve25519/field/FieldElement;

    .line 63
    invoke-virtual/range {p1 .. p1}, Lio/github/andreypfau/curve25519/montgomery/MontgomeryProjectivePoint;->getW()Lio/github/andreypfau/curve25519/field/FieldElement;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lio/github/andreypfau/curve25519/montgomery/MontgomeryProjectivePoint;->getW()Lio/github/andreypfau/curve25519/field/FieldElement;

    move-result-object v2

    invoke-virtual {v1, v10, v2}, Lio/github/andreypfau/curve25519/field/FieldElement;->mul(Lio/github/andreypfau/curve25519/field/FieldElement;Lio/github/andreypfau/curve25519/field/FieldElement;)Lio/github/andreypfau/curve25519/field/FieldElement;

    .line 64
    invoke-virtual/range {p2 .. p2}, Lio/github/andreypfau/curve25519/montgomery/MontgomeryProjectivePoint;->getW()Lio/github/andreypfau/curve25519/field/FieldElement;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Lio/github/andreypfau/curve25519/montgomery/MontgomeryProjectivePoint;->getW()Lio/github/andreypfau/curve25519/field/FieldElement;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lio/github/andreypfau/curve25519/field/FieldElement;->mul(Lio/github/andreypfau/curve25519/field/FieldElement;Lio/github/andreypfau/curve25519/field/FieldElement;)Lio/github/andreypfau/curve25519/field/FieldElement;

    return-void
.end method
