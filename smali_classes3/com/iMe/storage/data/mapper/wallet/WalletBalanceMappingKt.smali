.class public final Lcom/iMe/storage/data/mapper/wallet/WalletBalanceMappingKt;
.super Ljava/lang/Object;
.source "WalletBalanceMapping.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWalletBalanceMapping.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WalletBalanceMapping.kt\ncom/iMe/storage/data/mapper/wallet/WalletBalanceMappingKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,68:1\n1620#2,3:69\n*S KotlinDebug\n*F\n+ 1 WalletBalanceMapping.kt\ncom/iMe/storage/data/mapper/wallet/WalletBalanceMappingKt\n*L\n58#1:69,3\n*E\n"
.end annotation


# direct methods
.method public static final mapToDb(Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;J)Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;
    .locals 24

    move-wide/from16 v1, p1

    const-string v0, "<this>"

    move-object/from16 v15, p0

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    new-instance v23, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;

    move-object/from16 v0, v23

    .line 39
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->getTotal()D

    move-result-wide v3

    .line 40
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->getTotalInFiat()Lcom/iMe/storage/domain/model/wallet/token/FiatValue;

    move-result-object v5

    invoke-virtual {v5}, Lcom/iMe/storage/domain/model/wallet/token/FiatValue;->getValue()D

    move-result-wide v5

    .line 41
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->getTotalInFiat()Lcom/iMe/storage/domain/model/wallet/token/FiatValue;

    move-result-object v7

    invoke-virtual {v7}, Lcom/iMe/storage/domain/model/wallet/token/FiatValue;->getSymbol()Ljava/lang/String;

    move-result-object v7

    .line 42
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->getTotalInFiat()Lcom/iMe/storage/domain/model/wallet/token/FiatValue;

    move-result-object v8

    invoke-virtual {v8}, Lcom/iMe/storage/domain/model/wallet/token/FiatValue;->getTicker()Ljava/lang/String;

    move-result-object v8

    .line 43
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->getRateToFiat()Lcom/iMe/storage/domain/model/wallet/token/FiatValue;

    move-result-object v9

    invoke-virtual {v9}, Lcom/iMe/storage/domain/model/wallet/token/FiatValue;->getValue()D

    move-result-wide v9

    .line 44
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->getRateToFiat()Lcom/iMe/storage/domain/model/wallet/token/FiatValue;

    move-result-object v11

    invoke-virtual {v11}, Lcom/iMe/storage/domain/model/wallet/token/FiatValue;->getSymbol()Ljava/lang/String;

    move-result-object v11

    .line 45
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->getRateToFiat()Lcom/iMe/storage/domain/model/wallet/token/FiatValue;

    move-result-object v12

    invoke-virtual {v12}, Lcom/iMe/storage/domain/model/wallet/token/FiatValue;->getTicker()Ljava/lang/String;

    move-result-object v12

    .line 46
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->getRatePercentageChange24h()D

    move-result-wide v13

    .line 47
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->getToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getAddress()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v15, v16

    .line 48
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->getToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getNetworkId()Ljava/lang/String;

    move-result-object v16

    .line 49
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->getToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getAvatarUrl()Ljava/lang/String;

    move-result-object v17

    .line 50
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->getToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getDecimals()I

    move-result v18

    .line 51
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->getToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getTicker()Ljava/lang/String;

    move-result-object v19

    .line 52
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->getToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->isCoin()Z

    move-result v20

    .line 53
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->getToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getName()Ljava/lang/String;

    move-result-object v21

    .line 54
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->getToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getWebsite()Ljava/lang/String;

    move-result-object v22

    .line 37
    invoke-direct/range {v0 .. v22}, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;-><init>(JDDLjava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    return-object v23
.end method

.method public static final mapToDomain(Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;)Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;
    .locals 18

    const-string v0, "<this>"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    new-instance v0, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    .line 12
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->getTotal()D

    move-result-wide v2

    .line 13
    new-instance v4, Lcom/iMe/storage/domain/model/wallet/token/FiatValue;

    .line 14
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->getTotalInFiatValue()D

    move-result-wide v5

    .line 15
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->getTotalInFiatSymbol()Ljava/lang/String;

    move-result-object v7

    .line 16
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->getTotalInFiatTicker()Ljava/lang/String;

    move-result-object v8

    .line 13
    invoke-direct {v4, v5, v6, v7, v8}, Lcom/iMe/storage/domain/model/wallet/token/FiatValue;-><init>(DLjava/lang/String;Ljava/lang/String;)V

    .line 18
    new-instance v5, Lcom/iMe/storage/domain/model/wallet/token/FiatValue;

    .line 19
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->getRateToFiatValue()D

    move-result-wide v6

    .line 20
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->getRateToFiatSymbol()Ljava/lang/String;

    move-result-object v8

    .line 21
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->getRateToFiatTicker()Ljava/lang/String;

    move-result-object v9

    .line 18
    invoke-direct {v5, v6, v7, v8, v9}, Lcom/iMe/storage/domain/model/wallet/token/FiatValue;-><init>(DLjava/lang/String;Ljava/lang/String;)V

    .line 23
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->getRatePercentageChange24h()D

    move-result-wide v6

    .line 24
    new-instance v17, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    .line 25
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->getAddress()Ljava/lang/String;

    move-result-object v9

    .line 26
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->getNetworkId()Ljava/lang/String;

    move-result-object v10

    .line 27
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->getAvatarUrl()Ljava/lang/String;

    move-result-object v11

    .line 28
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->getDecimals()I

    move-result v12

    .line 29
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->getTicker()Ljava/lang/String;

    move-result-object v13

    .line 30
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->isCoin()Z

    move-result v14

    .line 31
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->getName()Ljava/lang/String;

    move-result-object v15

    .line 32
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->getWebsite()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v8, v17

    .line 24
    invoke-direct/range {v8 .. v16}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    move-object v1, v0

    .line 11
    invoke-direct/range {v1 .. v8}, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;-><init>(DLcom/iMe/storage/domain/model/wallet/token/FiatValue;Lcom/iMe/storage/domain/model/wallet/token/FiatValue;DLcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V

    return-object v0
.end method

.method public static final mapToDomain(Lcom/iMe/storage/data/network/model/response/wallet/WalletBalancesResponse;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/data/network/model/response/wallet/WalletBalancesResponse;",
            ")",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletBalancesResponse;->getBalances()Ljava/util/List;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1620
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1621
    check-cast v1, Lcom/iMe/storage/data/network/model/response/wallet/TokenBalanceResponse;

    .line 60
    new-instance v10, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    .line 61
    invoke-virtual {v1}, Lcom/iMe/storage/data/network/model/response/wallet/TokenBalanceResponse;->getTotal()D

    move-result-wide v3

    .line 62
    invoke-virtual {v1}, Lcom/iMe/storage/data/network/model/response/wallet/TokenBalanceResponse;->getTotalInFiat()Lcom/iMe/storage/data/network/model/response/wallet/FiatValueResponse;

    move-result-object v2

    invoke-static {v2}, Lcom/iMe/storage/data/mapper/wallet/FiatValueMappingKt;->mapToDomain(Lcom/iMe/storage/data/network/model/response/wallet/FiatValueResponse;)Lcom/iMe/storage/domain/model/wallet/token/FiatValue;

    move-result-object v5

    .line 63
    invoke-virtual {v1}, Lcom/iMe/storage/data/network/model/response/wallet/TokenBalanceResponse;->getRateToFiat()Lcom/iMe/storage/data/network/model/response/wallet/FiatValueResponse;

    move-result-object v2

    invoke-static {v2}, Lcom/iMe/storage/data/mapper/wallet/FiatValueMappingKt;->mapToDomain(Lcom/iMe/storage/data/network/model/response/wallet/FiatValueResponse;)Lcom/iMe/storage/domain/model/wallet/token/FiatValue;

    move-result-object v6

    .line 64
    invoke-virtual {v1}, Lcom/iMe/storage/data/network/model/response/wallet/TokenBalanceResponse;->getRatePercentageChange24h()Ljava/lang/Double;

    move-result-object v2

    invoke-static {v2}, Lcom/iMe/storage/data/utils/extentions/NumberExtKt;->orZero(Ljava/lang/Double;)D

    move-result-wide v7

    .line 65
    invoke-virtual {v1}, Lcom/iMe/storage/data/network/model/response/wallet/TokenBalanceResponse;->getToken()Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;

    move-result-object v1

    invoke-static {v1}, Lcom/iMe/storage/data/mapper/wallet/TokenMappingKt;->mapToDomain(Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;)Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v9

    move-object v2, v10

    .line 60
    invoke-direct/range {v2 .. v9}, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;-><init>(DLcom/iMe/storage/domain/model/wallet/token/FiatValue;Lcom/iMe/storage/domain/model/wallet/token/FiatValue;DLcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V

    .line 1621
    invoke-interface {v0, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method
