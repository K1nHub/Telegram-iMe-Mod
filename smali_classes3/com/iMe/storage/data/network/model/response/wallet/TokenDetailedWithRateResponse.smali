.class public final Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedWithRateResponse;
.super Ljava/lang/Object;
.source "TokenDetailedWithRateResponse.kt"


# instance fields
.field private final address:Ljava/lang/String;

.field private final avatar:Ljava/lang/String;

.field private final decimals:I

.field private final isCoin:Z

.field private final name:Ljava/lang/String;

.field private final networkType:Ljava/lang/String;

.field private final rateToFiat:Lcom/iMe/storage/data/network/model/response/wallet/FiatValueResponse;

.field private final ticker:Ljava/lang/String;

.field private final website:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lcom/iMe/storage/data/network/model/response/wallet/FiatValueResponse;)V
    .locals 1

    const-string v0, "networkType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "avatar"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ticker"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rateToFiat"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedWithRateResponse;->address:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedWithRateResponse;->networkType:Ljava/lang/String;

    .line 6
    iput-object p3, p0, Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedWithRateResponse;->avatar:Ljava/lang/String;

    .line 7
    iput p4, p0, Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedWithRateResponse;->decimals:I

    .line 8
    iput-object p5, p0, Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedWithRateResponse;->ticker:Ljava/lang/String;

    .line 9
    iput-boolean p6, p0, Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedWithRateResponse;->isCoin:Z

    .line 10
    iput-object p7, p0, Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedWithRateResponse;->name:Ljava/lang/String;

    .line 11
    iput-object p8, p0, Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedWithRateResponse;->website:Ljava/lang/String;

    .line 12
    iput-object p9, p0, Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedWithRateResponse;->rateToFiat:Lcom/iMe/storage/data/network/model/response/wallet/FiatValueResponse;

    return-void
.end method

.method public static synthetic copy$default(Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedWithRateResponse;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lcom/iMe/storage/data/network/model/response/wallet/FiatValueResponse;ILjava/lang/Object;)Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedWithRateResponse;
    .locals 10

    move-object v0, p0

    move/from16 v1, p10

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedWithRateResponse;->address:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedWithRateResponse;->networkType:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedWithRateResponse;->avatar:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget v5, v0, Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedWithRateResponse;->decimals:I

    goto :goto_3

    :cond_3
    move v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedWithRateResponse;->ticker:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-boolean v7, v0, Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedWithRateResponse;->isCoin:Z

    goto :goto_5

    :cond_5
    move/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedWithRateResponse;->name:Ljava/lang/String;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget-object v9, v0, Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedWithRateResponse;->website:Ljava/lang/String;

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_8

    iget-object v1, v0, Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedWithRateResponse;->rateToFiat:Lcom/iMe/storage/data/network/model/response/wallet/FiatValueResponse;

    goto :goto_8

    :cond_8
    move-object/from16 v1, p9

    :goto_8
    move-object p1, v2

    move-object p2, v3

    move-object p3, v4

    move p4, v5

    move-object p5, v6

    move/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v1

    invoke-virtual/range {p0 .. p9}, Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedWithRateResponse;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lcom/iMe/storage/data/network/model/response/wallet/FiatValueResponse;)Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedWithRateResponse;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedWithRateResponse;->address:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedWithRateResponse;->networkType:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedWithRateResponse;->avatar:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()I
    .locals 1

    iget v0, p0, Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedWithRateResponse;->decimals:I

    return v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedWithRateResponse;->ticker:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()Z
    .locals 1

    iget-boolean v0, p0, Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedWithRateResponse;->isCoin:Z

    return v0
.end method

.method public final component7()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedWithRateResponse;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final component8()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedWithRateResponse;->website:Ljava/lang/String;

    return-object v0
.end method

.method public final component9()Lcom/iMe/storage/data/network/model/response/wallet/FiatValueResponse;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedWithRateResponse;->rateToFiat:Lcom/iMe/storage/data/network/model/response/wallet/FiatValueResponse;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lcom/iMe/storage/data/network/model/response/wallet/FiatValueResponse;)Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedWithRateResponse;
    .locals 11

    const-string v0, "networkType"

    move-object v3, p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "avatar"

    move-object v4, p3

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ticker"

    move-object/from16 v6, p5

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rateToFiat"

    move-object/from16 v10, p9

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedWithRateResponse;

    move-object v1, v0

    move-object v2, p1

    move v5, p4

    move/from16 v7, p6

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v10}, Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedWithRateResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lcom/iMe/storage/data/network/model/response/wallet/FiatValueResponse;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedWithRateResponse;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedWithRateResponse;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedWithRateResponse;->address:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedWithRateResponse;->address:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedWithRateResponse;->networkType:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedWithRateResponse;->networkType:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedWithRateResponse;->avatar:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedWithRateResponse;->avatar:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedWithRateResponse;->decimals:I

    iget v3, p1, Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedWithRateResponse;->decimals:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedWithRateResponse;->ticker:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedWithRateResponse;->ticker:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-boolean v1, p0, Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedWithRateResponse;->isCoin:Z

    iget-boolean v3, p1, Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedWithRateResponse;->isCoin:Z

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedWithRateResponse;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedWithRateResponse;->name:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedWithRateResponse;->website:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedWithRateResponse;->website:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedWithRateResponse;->rateToFiat:Lcom/iMe/storage/data/network/model/response/wallet/FiatValueResponse;

    iget-object p1, p1, Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedWithRateResponse;->rateToFiat:Lcom/iMe/storage/data/network/model/response/wallet/FiatValueResponse;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    return v2

    :cond_a
    return v0
.end method

.method public final getAddress()Ljava/lang/String;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedWithRateResponse;->address:Ljava/lang/String;

    return-object v0
.end method

.method public final getAvatar()Ljava/lang/String;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedWithRateResponse;->avatar:Ljava/lang/String;

    return-object v0
.end method

.method public final getDecimals()I
    .locals 1

    .line 7
    iget v0, p0, Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedWithRateResponse;->decimals:I

    return v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedWithRateResponse;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getNetworkType()Ljava/lang/String;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedWithRateResponse;->networkType:Ljava/lang/String;

    return-object v0
.end method

.method public final getRateToFiat()Lcom/iMe/storage/data/network/model/response/wallet/FiatValueResponse;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedWithRateResponse;->rateToFiat:Lcom/iMe/storage/data/network/model/response/wallet/FiatValueResponse;

    return-object v0
.end method

.method public final getTicker()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedWithRateResponse;->ticker:Ljava/lang/String;

    return-object v0
.end method

.method public final getWebsite()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedWithRateResponse;->website:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedWithRateResponse;->address:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedWithRateResponse;->networkType:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedWithRateResponse;->avatar:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedWithRateResponse;->decimals:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedWithRateResponse;->ticker:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedWithRateResponse;->isCoin:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :cond_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedWithRateResponse;->name:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedWithRateResponse;->website:Ljava/lang/String;

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedWithRateResponse;->rateToFiat:Lcom/iMe/storage/data/network/model/response/wallet/FiatValueResponse;

    invoke-virtual {v1}, Lcom/iMe/storage/data/network/model/response/wallet/FiatValueResponse;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final isCoin()Z
    .locals 1

    .line 9
    iget-boolean v0, p0, Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedWithRateResponse;->isCoin:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TokenDetailedWithRateResponse(address="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedWithRateResponse;->address:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", networkType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedWithRateResponse;->networkType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", avatar="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedWithRateResponse;->avatar:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", decimals="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedWithRateResponse;->decimals:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", ticker="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedWithRateResponse;->ticker:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isCoin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedWithRateResponse;->isCoin:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedWithRateResponse;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", website="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedWithRateResponse;->website:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", rateToFiat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedWithRateResponse;->rateToFiat:Lcom/iMe/storage/data/network/model/response/wallet/FiatValueResponse;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
