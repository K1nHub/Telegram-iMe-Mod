.class public final Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;
.super Ljava/lang/Object;
.source "BinanceTokenBalanceInfo.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance;,
        Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Companion;


# instance fields
.field private final assetCode:Ljava/lang/String;

.field private final assetName:Ljava/lang/String;

.field private final assetShortName:Ljava/lang/String;

.field private final combined:Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance;

.field private final convertible:Z

.field private final logoUrl:Ljava/lang/String;

.field private final margin:Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance;

.field private final receivable:Z

.field private final replenishNetworksIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final spot:Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;->Companion:Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance;Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance;Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance;Ljava/util/List;ZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance;",
            "Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance;",
            "Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;ZZ)V"
        }
    .end annotation

    const-string v0, "assetCode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "assetName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "assetShortName"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logoUrl"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "spot"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "margin"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "combined"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "replenishNetworksIds"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;->assetCode:Ljava/lang/String;

    .line 7
    iput-object p2, p0, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;->assetName:Ljava/lang/String;

    .line 8
    iput-object p3, p0, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;->assetShortName:Ljava/lang/String;

    .line 9
    iput-object p4, p0, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;->logoUrl:Ljava/lang/String;

    .line 10
    iput-object p5, p0, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;->spot:Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance;

    .line 11
    iput-object p6, p0, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;->margin:Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance;

    .line 12
    iput-object p7, p0, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;->combined:Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance;

    .line 13
    iput-object p8, p0, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;->replenishNetworksIds:Ljava/util/List;

    .line 14
    iput-boolean p9, p0, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;->convertible:Z

    .line 15
    iput-boolean p10, p0, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;->receivable:Z

    return-void
.end method

.method public static synthetic copy$default(Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance;Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance;Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance;Ljava/util/List;ZZILjava/lang/Object;)Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;
    .locals 11

    move-object v0, p0

    move/from16 v1, p11

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;->assetCode:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;->assetName:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;->assetShortName:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;->logoUrl:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;->spot:Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance;

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;->margin:Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance;

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;->combined:Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget-object v9, v0, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;->replenishNetworksIds:Ljava/util/List;

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    iget-boolean v10, v0, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;->convertible:Z

    goto :goto_8

    :cond_8
    move/from16 v10, p9

    :goto_8
    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_9

    iget-boolean v1, v0, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;->receivable:Z

    goto :goto_9

    :cond_9
    move/from16 v1, p10

    :goto_9
    move-object p1, v2

    move-object p2, v3

    move-object p3, v4

    move-object p4, v5

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move/from16 p9, v10

    move/from16 p10, v1

    invoke-virtual/range {p0 .. p10}, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance;Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance;Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance;Ljava/util/List;ZZ)Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;->assetCode:Ljava/lang/String;

    return-object v0
.end method

.method public final component10()Z
    .locals 1

    iget-boolean v0, p0, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;->receivable:Z

    return v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;->assetName:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;->assetShortName:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;->logoUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;->spot:Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance;

    return-object v0
.end method

.method public final component6()Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;->margin:Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance;

    return-object v0
.end method

.method public final component7()Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;->combined:Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance;

    return-object v0
.end method

.method public final component8()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;->replenishNetworksIds:Ljava/util/List;

    return-object v0
.end method

.method public final component9()Z
    .locals 1

    iget-boolean v0, p0, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;->convertible:Z

    return v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance;Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance;Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance;Ljava/util/List;ZZ)Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance;",
            "Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance;",
            "Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;ZZ)",
            "Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;"
        }
    .end annotation

    const-string v0, "assetCode"

    move-object v2, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "assetName"

    move-object v3, p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "assetShortName"

    move-object v4, p3

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logoUrl"

    move-object/from16 v5, p4

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "spot"

    move-object/from16 v6, p5

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "margin"

    move-object/from16 v7, p6

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "combined"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "replenishNetworksIds"

    move-object/from16 v9, p8

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;

    move-object v1, v0

    move/from16 v10, p9

    move/from16 v11, p10

    invoke-direct/range {v1 .. v11}, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance;Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance;Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance;Ljava/util/List;ZZ)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;

    iget-object v1, p0, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;->assetCode:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;->assetCode:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;->assetName:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;->assetName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;->assetShortName:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;->assetShortName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;->logoUrl:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;->logoUrl:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;->spot:Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance;

    iget-object v3, p1, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;->spot:Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;->margin:Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance;

    iget-object v3, p1, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;->margin:Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;->combined:Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance;

    iget-object v3, p1, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;->combined:Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;->replenishNetworksIds:Ljava/util/List;

    iget-object v3, p1, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;->replenishNetworksIds:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-boolean v1, p0, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;->convertible:Z

    iget-boolean v3, p1, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;->convertible:Z

    if-eq v1, v3, :cond_a

    return v2

    :cond_a
    iget-boolean v1, p0, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;->receivable:Z

    iget-boolean p1, p1, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;->receivable:Z

    if-eq v1, p1, :cond_b

    return v2

    :cond_b
    return v0
.end method

.method public final getAssetCode()Ljava/lang/String;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;->assetCode:Ljava/lang/String;

    return-object v0
.end method

.method public final getAssetName()Ljava/lang/String;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;->assetName:Ljava/lang/String;

    return-object v0
.end method

.method public final getAssetShortName()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;->assetShortName:Ljava/lang/String;

    return-object v0
.end method

.method public final getCombined()Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;->combined:Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance;

    return-object v0
.end method

.method public final getConvertible()Z
    .locals 1

    .line 14
    iget-boolean v0, p0, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;->convertible:Z

    return v0
.end method

.method public final getLogoUrl()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;->logoUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getMargin()Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;->margin:Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance;

    return-object v0
.end method

.method public final getReceivable()Z
    .locals 1

    .line 15
    iget-boolean v0, p0, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;->receivable:Z

    return v0
.end method

.method public final getReplenishNetworksIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 13
    iget-object v0, p0, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;->replenishNetworksIds:Ljava/util/List;

    return-object v0
.end method

.method public final getSpot()Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;->spot:Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;->assetCode:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;->assetName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;->assetShortName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;->logoUrl:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;->spot:Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance;

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;->margin:Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance;

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;->combined:Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance;

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;->replenishNetworksIds:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;->convertible:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    :cond_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;->receivable:Z

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BinanceTokenBalanceInfo(assetCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;->assetCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", assetName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;->assetName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", assetShortName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;->assetShortName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", logoUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;->logoUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", spot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;->spot:Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", margin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;->margin:Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", combined="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;->combined:Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", replenishNetworksIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;->replenishNetworksIds:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", convertible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;->convertible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", receivable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;->receivable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
