.class public final Lcom/iMe/storage/domain/utils/extensions/TokenExtKt;
.super Ljava/lang/Object;
.source "TokenExt.kt"


# direct methods
.method public static final toIndexedToken(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)Lcom/iMe/storage/domain/model/wallet/token/Token;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    new-instance v0, Lcom/iMe/storage/domain/model/wallet/token/Token;

    .line 11
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 12
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getNetworkId()Ljava/lang/String;

    move-result-object p0

    .line 10
    invoke-direct {v0, v1, p0}, Lcom/iMe/storage/domain/model/wallet/token/Token;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final toTokenDetailed(Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;)Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;
    .locals 10

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;->getLogoUrl()Ljava/lang/String;

    move-result-object v4

    .line 20
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;->getAssetShortName()Ljava/lang/String;

    move-result-object v6

    .line 22
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;->getAssetName()Ljava/lang/String;

    move-result-object v8

    .line 23
    sget-object p0, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->Companion:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed$Companion;

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed$Companion;->getBNB()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object p0

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getDecimals()I

    move-result v5

    .line 16
    new-instance p0, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    const-string v2, ""

    const-string v3, "BINANCE_SMART_CHAIN"

    const/4 v7, 0x0

    const-string v9, ""

    move-object v1, p0

    invoke-direct/range {v1 .. v9}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method
