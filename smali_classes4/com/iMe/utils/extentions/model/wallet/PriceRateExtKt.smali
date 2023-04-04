.class public final Lcom/iMe/utils/extentions/model/wallet/PriceRateExtKt;
.super Ljava/lang/Object;
.source "PriceRateExt.kt"


# direct methods
.method public static final getPriceDirection(Lcom/iMe/storage/domain/model/wallet/PriceRate;)Lcom/iMe/model/wallet/home/PriceRateDirection;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/wallet/PriceRate;->getRatePercentageChange24h()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    sget-object p0, Lcom/iMe/model/wallet/home/PriceRateDirection;->UP:Lcom/iMe/model/wallet/home/PriceRateDirection;

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/wallet/PriceRate;->getRatePercentageChange24h()F

    move-result p0

    cmpg-float p0, p0, v1

    if-gez p0, :cond_1

    sget-object p0, Lcom/iMe/model/wallet/home/PriceRateDirection;->DOWN:Lcom/iMe/model/wallet/home/PriceRateDirection;

    goto :goto_0

    .line 10
    :cond_1
    sget-object p0, Lcom/iMe/model/wallet/home/PriceRateDirection;->NOT_CHANGED:Lcom/iMe/model/wallet/home/PriceRateDirection;

    :goto_0
    return-object p0
.end method
