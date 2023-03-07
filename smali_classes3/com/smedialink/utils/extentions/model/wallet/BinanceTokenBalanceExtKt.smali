.class public final Lcom/smedialink/utils/extentions/model/wallet/BinanceTokenBalanceExtKt;
.super Ljava/lang/Object;
.source "BinanceTokenBalanceExt.kt"


# direct methods
.method public static final getDollarsBalanceText(Lcom/smedialink/storage/domain/model/binancepay/BinanceTokenBalanceInfo;Lcom/smedialink/storage/domain/utils/system/ResourceManager;)Ljava/lang/String;
    .locals 7

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    sget-object v1, Lcom/smedialink/utils/formatter/BalanceFormatter;->INSTANCE:Lcom/smedialink/utils/formatter/BalanceFormatter;

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/binancepay/BinanceTokenBalanceInfo;->getCombined()Lcom/smedialink/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance;->getFiatValuation()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v3, p1

    invoke-static/range {v1 .. v6}, Lcom/smedialink/utils/formatter/BalanceFormatter;->formatFiatBalance$default(Lcom/smedialink/utils/formatter/BalanceFormatter;Ljava/lang/Number;Lcom/smedialink/storage/domain/utils/system/ResourceManager;Ljava/lang/Integer;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final getMarginBalanceShortText(Lcom/smedialink/storage/domain/model/binancepay/BinanceTokenBalanceInfo;)Ljava/lang/String;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/binancepay/BinanceTokenBalanceInfo;->getMargin()Lcom/smedialink/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smedialink/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance;->getTotal()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    sget-object v2, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$BNB;->INSTANCE:Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$BNB;

    invoke-virtual {v2}, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum;->getDecimals()I

    move-result v2

    invoke-static {v1, v2}, Lcom/smedialink/utils/formatter/BalanceFormatter;->formatBalance(Ljava/lang/Number;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/binancepay/BinanceTokenBalanceInfo;->getAssetShortName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final getSpotBalanceShortText(Lcom/smedialink/storage/domain/model/binancepay/BinanceTokenBalanceInfo;)Ljava/lang/String;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/binancepay/BinanceTokenBalanceInfo;->getSpot()Lcom/smedialink/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smedialink/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance;->getTotal()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    sget-object v2, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$BNB;->INSTANCE:Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$BNB;

    invoke-virtual {v2}, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum;->getDecimals()I

    move-result v2

    invoke-static {v1, v2}, Lcom/smedialink/utils/formatter/BalanceFormatter;->formatBalance(Ljava/lang/Number;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/binancepay/BinanceTokenBalanceInfo;->getAssetShortName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final getTotalBalanceShortText(Lcom/smedialink/storage/domain/model/binancepay/BinanceTokenBalanceInfo;)Ljava/lang/String;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/binancepay/BinanceTokenBalanceInfo;->getCombined()Lcom/smedialink/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smedialink/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance;->getTotal()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    sget-object v2, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$BNB;->INSTANCE:Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$BNB;

    invoke-virtual {v2}, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum;->getDecimals()I

    move-result v2

    invoke-static {v1, v2}, Lcom/smedialink/utils/formatter/BalanceFormatter;->formatBalance(Ljava/lang/Number;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/binancepay/BinanceTokenBalanceInfo;->getAssetShortName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final getTotalBalanceText(Lcom/smedialink/storage/domain/model/binancepay/BinanceTokenBalanceInfo;)Ljava/lang/String;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/binancepay/BinanceTokenBalanceInfo;->getCombined()Lcom/smedialink/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance;->getTotal()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    sget-object v0, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$BNB;->INSTANCE:Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$BNB;

    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum;->getDecimals()I

    move-result v0

    invoke-static {p0, v0}, Lcom/smedialink/utils/formatter/BalanceFormatter;->formatBalance(Ljava/lang/Number;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
