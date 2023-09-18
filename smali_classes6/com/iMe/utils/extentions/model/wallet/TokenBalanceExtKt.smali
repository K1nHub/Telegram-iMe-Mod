.class public final Lcom/iMe/utils/extentions/model/wallet/TokenBalanceExtKt;
.super Ljava/lang/Object;
.source "TokenBalanceExt.kt"


# direct methods
.method public static final getDollarsBalanceText(Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;)Ljava/lang/String;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    sget-object v0, Lcom/iMe/utils/formatter/BalanceFormatter;->INSTANCE:Lcom/iMe/utils/formatter/BalanceFormatter;

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->getTotalInFiat()Lcom/iMe/storage/domain/model/wallet/token/FiatValue;

    move-result-object p0

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/wallet/token/FiatValue;->getValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v0, p0, v1, v2, v1}, Lcom/iMe/utils/formatter/BalanceFormatter;->formatFiatBalance$default(Lcom/iMe/utils/formatter/BalanceFormatter;Ljava/lang/Number;Ljava/lang/Integer;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final getDollarsRateText(Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;)Ljava/lang/String;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    sget-object v0, Lcom/iMe/utils/formatter/BalanceFormatter;->INSTANCE:Lcom/iMe/utils/formatter/BalanceFormatter;

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->getRateToFiat()Lcom/iMe/storage/domain/model/wallet/token/FiatValue;

    move-result-object p0

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/wallet/token/FiatValue;->getValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v0, p0, v1, v2, v1}, Lcom/iMe/utils/formatter/BalanceFormatter;->formatFiatBalance$default(Lcom/iMe/utils/formatter/BalanceFormatter;Ljava/lang/Number;Ljava/lang/Integer;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final getPriceDirection(Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;)Lcom/iMe/model/wallet/home/PriceRateDirection;
    .locals 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->getRatePercentageChange24h()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    sget-object p0, Lcom/iMe/model/wallet/home/PriceRateDirection;->UP:Lcom/iMe/model/wallet/home/PriceRateDirection;

    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->getRatePercentageChange24h()D

    move-result-wide v0

    cmpg-double p0, v0, v2

    if-gez p0, :cond_1

    sget-object p0, Lcom/iMe/model/wallet/home/PriceRateDirection;->DOWN:Lcom/iMe/model/wallet/home/PriceRateDirection;

    goto :goto_0

    .line 28
    :cond_1
    sget-object p0, Lcom/iMe/model/wallet/home/PriceRateDirection;->NOT_CHANGED:Lcom/iMe/model/wallet/home/PriceRateDirection;

    :goto_0
    return-object p0
.end method

.method public static final getTotalBalance(Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;)Ljava/lang/String;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->getTotal()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->getToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object p0

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getDecimals()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/iMe/utils/formatter/BalanceFormatter;->format(Ljava/lang/Number;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final getTotalBalanceShortText(Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;)Ljava/lang/String;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    sget-object v0, Lcom/iMe/utils/formatter/BalanceFormatter;->INSTANCE:Lcom/iMe/utils/formatter/BalanceFormatter;

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->getTotal()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->getToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/iMe/utils/formatter/BalanceFormatter;->formatTokenBalance(Ljava/lang/Number;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
