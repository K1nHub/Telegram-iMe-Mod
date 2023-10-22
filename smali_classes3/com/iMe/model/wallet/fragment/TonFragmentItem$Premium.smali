.class public final Lcom/iMe/model/wallet/fragment/TonFragmentItem$Premium;
.super Lcom/iMe/model/wallet/fragment/TonFragmentItem;
.source "TonFragmentItem.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/model/wallet/fragment/TonFragmentItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Premium"
.end annotation


# instance fields
.field private final discount:Ljava/lang/String;

.field private final fiatPrice:Ljava/lang/String;

.field private final isChecked:Z

.field private final monthsCount:I

.field private final price:D

.field private final priceText:Ljava/lang/String;


# direct methods
.method public constructor <init>(DLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 2

    const-string v0, "priceText"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fiatPrice"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "discount"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Months"

    .line 18
    invoke-static {v1, p5, v0}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "formatPluralString(\"Months\", monthsCount)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/iMe/model/wallet/fragment/TonFragmentItem;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 12
    iput-wide p1, p0, Lcom/iMe/model/wallet/fragment/TonFragmentItem$Premium;->price:D

    .line 13
    iput-object p3, p0, Lcom/iMe/model/wallet/fragment/TonFragmentItem$Premium;->priceText:Ljava/lang/String;

    .line 14
    iput-object p4, p0, Lcom/iMe/model/wallet/fragment/TonFragmentItem$Premium;->fiatPrice:Ljava/lang/String;

    .line 15
    iput p5, p0, Lcom/iMe/model/wallet/fragment/TonFragmentItem$Premium;->monthsCount:I

    .line 16
    iput-object p6, p0, Lcom/iMe/model/wallet/fragment/TonFragmentItem$Premium;->discount:Ljava/lang/String;

    .line 17
    iput-boolean p7, p0, Lcom/iMe/model/wallet/fragment/TonFragmentItem$Premium;->isChecked:Z

    return-void
.end method

.method public static synthetic copy$default(Lcom/iMe/model/wallet/fragment/TonFragmentItem$Premium;DLjava/lang/String;Ljava/lang/String;ILjava/lang/String;ZILjava/lang/Object;)Lcom/iMe/model/wallet/fragment/TonFragmentItem$Premium;
    .locals 8

    move-object v0, p0

    and-int/lit8 v1, p8, 0x1

    if-eqz v1, :cond_0

    iget-wide v1, v0, Lcom/iMe/model/wallet/fragment/TonFragmentItem$Premium;->price:D

    goto :goto_0

    :cond_0
    move-wide v1, p1

    :goto_0
    and-int/lit8 v3, p8, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/iMe/model/wallet/fragment/TonFragmentItem$Premium;->priceText:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v3, p3

    :goto_1
    and-int/lit8 v4, p8, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/iMe/model/wallet/fragment/TonFragmentItem$Premium;->fiatPrice:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object v4, p4

    :goto_2
    and-int/lit8 v5, p8, 0x8

    if-eqz v5, :cond_3

    iget v5, v0, Lcom/iMe/model/wallet/fragment/TonFragmentItem$Premium;->monthsCount:I

    goto :goto_3

    :cond_3
    move v5, p5

    :goto_3
    and-int/lit8 v6, p8, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/iMe/model/wallet/fragment/TonFragmentItem$Premium;->discount:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object v6, p6

    :goto_4
    and-int/lit8 v7, p8, 0x20

    if-eqz v7, :cond_5

    iget-boolean v7, v0, Lcom/iMe/model/wallet/fragment/TonFragmentItem$Premium;->isChecked:Z

    goto :goto_5

    :cond_5
    move v7, p7

    :goto_5
    move-wide p1, v1

    move-object p3, v3

    move-object p4, v4

    move p5, v5

    move-object p6, v6

    move p7, v7

    invoke-virtual/range {p0 .. p7}, Lcom/iMe/model/wallet/fragment/TonFragmentItem$Premium;->copy(DLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)Lcom/iMe/model/wallet/fragment/TonFragmentItem$Premium;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()D
    .locals 2

    iget-wide v0, p0, Lcom/iMe/model/wallet/fragment/TonFragmentItem$Premium;->price:D

    return-wide v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/model/wallet/fragment/TonFragmentItem$Premium;->priceText:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/model/wallet/fragment/TonFragmentItem$Premium;->fiatPrice:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()I
    .locals 1

    iget v0, p0, Lcom/iMe/model/wallet/fragment/TonFragmentItem$Premium;->monthsCount:I

    return v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/model/wallet/fragment/TonFragmentItem$Premium;->discount:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()Z
    .locals 1

    iget-boolean v0, p0, Lcom/iMe/model/wallet/fragment/TonFragmentItem$Premium;->isChecked:Z

    return v0
.end method

.method public final copy(DLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)Lcom/iMe/model/wallet/fragment/TonFragmentItem$Premium;
    .locals 9

    const-string v0, "priceText"

    move-object v4, p3

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fiatPrice"

    move-object v5, p4

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "discount"

    move-object v7, p6

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/iMe/model/wallet/fragment/TonFragmentItem$Premium;

    move-object v1, v0

    move-wide v2, p1

    move v6, p5

    move/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Lcom/iMe/model/wallet/fragment/TonFragmentItem$Premium;-><init>(DLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/iMe/model/wallet/fragment/TonFragmentItem$Premium;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/iMe/model/wallet/fragment/TonFragmentItem$Premium;

    iget-wide v3, p0, Lcom/iMe/model/wallet/fragment/TonFragmentItem$Premium;->price:D

    iget-wide v5, p1, Lcom/iMe/model/wallet/fragment/TonFragmentItem$Premium;->price:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/iMe/model/wallet/fragment/TonFragmentItem$Premium;->priceText:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/model/wallet/fragment/TonFragmentItem$Premium;->priceText:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/iMe/model/wallet/fragment/TonFragmentItem$Premium;->fiatPrice:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/model/wallet/fragment/TonFragmentItem$Premium;->fiatPrice:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/iMe/model/wallet/fragment/TonFragmentItem$Premium;->monthsCount:I

    iget v3, p1, Lcom/iMe/model/wallet/fragment/TonFragmentItem$Premium;->monthsCount:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/iMe/model/wallet/fragment/TonFragmentItem$Premium;->discount:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/model/wallet/fragment/TonFragmentItem$Premium;->discount:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-boolean v1, p0, Lcom/iMe/model/wallet/fragment/TonFragmentItem$Premium;->isChecked:Z

    iget-boolean p1, p1, Lcom/iMe/model/wallet/fragment/TonFragmentItem$Premium;->isChecked:Z

    if-eq v1, p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final getDiscount()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/iMe/model/wallet/fragment/TonFragmentItem$Premium;->discount:Ljava/lang/String;

    return-object v0
.end method

.method public final getFiatPrice()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/iMe/model/wallet/fragment/TonFragmentItem$Premium;->fiatPrice:Ljava/lang/String;

    return-object v0
.end method

.method public final getMonthsCount()I
    .locals 1

    .line 15
    iget v0, p0, Lcom/iMe/model/wallet/fragment/TonFragmentItem$Premium;->monthsCount:I

    return v0
.end method

.method public final getPrice()D
    .locals 2

    .line 12
    iget-wide v0, p0, Lcom/iMe/model/wallet/fragment/TonFragmentItem$Premium;->price:D

    return-wide v0
.end method

.method public final getPriceText()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/iMe/model/wallet/fragment/TonFragmentItem$Premium;->priceText:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-wide v0, p0, Lcom/iMe/model/wallet/fragment/TonFragmentItem$Premium;->price:D

    invoke-static {v0, v1}, Lcom/iMe/i_staking/response/StakingDetailedMetadataResponse$$ExternalSyntheticBackport0;->m(D)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/model/wallet/fragment/TonFragmentItem$Premium;->priceText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/model/wallet/fragment/TonFragmentItem$Premium;->fiatPrice:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/iMe/model/wallet/fragment/TonFragmentItem$Premium;->monthsCount:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/model/wallet/fragment/TonFragmentItem$Premium;->discount:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/iMe/model/wallet/fragment/TonFragmentItem$Premium;->isChecked:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :cond_0
    add-int/2addr v0, v1

    return v0
.end method

.method public final isChecked()Z
    .locals 1

    .line 17
    iget-boolean v0, p0, Lcom/iMe/model/wallet/fragment/TonFragmentItem$Premium;->isChecked:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Premium(price="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/iMe/model/wallet/fragment/TonFragmentItem$Premium;->price:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", priceText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/model/wallet/fragment/TonFragmentItem$Premium;->priceText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", fiatPrice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/model/wallet/fragment/TonFragmentItem$Premium;->fiatPrice:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", monthsCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/iMe/model/wallet/fragment/TonFragmentItem$Premium;->monthsCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", discount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/model/wallet/fragment/TonFragmentItem$Premium;->discount:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isChecked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/iMe/model/wallet/fragment/TonFragmentItem$Premium;->isChecked:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
