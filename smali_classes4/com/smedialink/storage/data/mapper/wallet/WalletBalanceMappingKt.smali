.class public final Lcom/smedialink/storage/data/mapper/wallet/WalletBalanceMappingKt;
.super Ljava/lang/Object;
.source "WalletBalanceMapping.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWalletBalanceMapping.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WalletBalanceMapping.kt\ncom/smedialink/storage/data/mapper/wallet/WalletBalanceMappingKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,51:1\n1618#2,3:52\n*S KotlinDebug\n*F\n+ 1 WalletBalanceMapping.kt\ncom/smedialink/storage/data/mapper/wallet/WalletBalanceMappingKt\n*L\n38#1:52,3\n*E\n"
.end annotation


# direct methods
.method public static final mapToDb(Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;J)Lcom/smedialink/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;
    .locals 12

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;->getCode()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->getName()Ljava/lang/String;

    move-result-object v4

    .line 28
    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;->getTotal()D

    move-result-wide v5

    .line 29
    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;->getTotalInDollars()F

    move-result v7

    .line 31
    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;->getPriceRate()Lcom/smedialink/storage/domain/model/wallet/PriceRate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/wallet/PriceRate;->getRateToDollars()D

    move-result-wide v8

    .line 32
    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;->getPriceRate()Lcom/smedialink/storage/domain/model/wallet/PriceRate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/wallet/PriceRate;->getRatePercentageChange24h()F

    move-result v10

    .line 33
    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;->getNetworkType()Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v11

    .line 26
    new-instance p0, Lcom/smedialink/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;

    move-object v1, p0

    move-wide v2, p1

    invoke-direct/range {v1 .. v11}, Lcom/smedialink/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;-><init>(JLjava/lang/String;DFDFLjava/lang/String;)V

    return-object p0
.end method

.method public static final mapToDomain(Lcom/smedialink/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;)Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;
    .locals 10

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    new-instance v0, Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;

    .line 13
    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->Companion:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode$Companion;

    invoke-virtual {p0}, Lcom/smedialink/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->getCoinCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode$Companion;->map(Ljava/lang/String;)Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object v2

    .line 14
    invoke-virtual {p0}, Lcom/smedialink/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->getTotal()D

    move-result-wide v3

    .line 15
    invoke-virtual {p0}, Lcom/smedialink/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->getTotalInDollars()F

    move-result v5

    .line 16
    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;->Companion:Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Companion;

    invoke-virtual {p0}, Lcom/smedialink/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->getCoinCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Companion;->map(Ljava/lang/String;)Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;

    move-result-object v6

    .line 17
    new-instance v7, Lcom/smedialink/storage/domain/model/wallet/PriceRate;

    .line 18
    invoke-virtual {p0}, Lcom/smedialink/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->getRateToDollars()D

    move-result-wide v8

    .line 19
    invoke-virtual {p0}, Lcom/smedialink/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->getRatePercentageChange24h()F

    move-result v1

    .line 17
    invoke-direct {v7, v8, v9, v1}, Lcom/smedialink/storage/domain/model/wallet/PriceRate;-><init>(DF)V

    .line 21
    sget-object v1, Lcom/smedialink/storage/domain/model/crypto/NetworkType;->Companion:Lcom/smedialink/storage/domain/model/crypto/NetworkType$Companion;

    invoke-virtual {p0}, Lcom/smedialink/storage/data/locale/db/model/wallet/WalletTokenBalanceDb;->getNetworkType()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/smedialink/storage/domain/model/crypto/NetworkType$Companion;->map(Ljava/lang/String;)Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object v8

    move-object v1, v0

    .line 12
    invoke-direct/range {v1 .. v8}, Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;-><init>(Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;DFLcom/smedialink/storage/domain/model/wallet/token/TokenInfo;Lcom/smedialink/storage/domain/model/wallet/PriceRate;Lcom/smedialink/storage/domain/model/crypto/NetworkType;)V

    return-object v0
.end method

.method public static final mapToDomain(Lcom/smedialink/storage/data/network/model/response/wallet/WalletBalancesResponse;)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smedialink/storage/data/network/model/response/wallet/WalletBalancesResponse;",
            ")",
            "Ljava/util/List<",
            "Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-virtual {p0}, Lcom/smedialink/storage/data/network/model/response/wallet/WalletBalancesResponse;->getBalances()Ljava/util/List;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1618
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1619
    check-cast v1, Lcom/smedialink/storage/data/network/model/response/wallet/TokenBalanceResponse;

    .line 39
    new-instance v10, Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;

    .line 40
    sget-object v2, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->Companion:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode$Companion;

    invoke-virtual {v1}, Lcom/smedialink/storage/data/network/model/response/wallet/TokenBalanceResponse;->getCoinCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode$Companion;->map(Ljava/lang/String;)Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object v3

    .line 41
    invoke-virtual {v1}, Lcom/smedialink/storage/data/network/model/response/wallet/TokenBalanceResponse;->getTotal()D

    move-result-wide v4

    .line 42
    invoke-virtual {v1}, Lcom/smedialink/storage/data/network/model/response/wallet/TokenBalanceResponse;->getTotalInDollars()F

    move-result v6

    .line 43
    sget-object v2, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;->Companion:Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Companion;

    invoke-virtual {v1}, Lcom/smedialink/storage/data/network/model/response/wallet/TokenBalanceResponse;->getCoinCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Companion;->map(Ljava/lang/String;)Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;

    move-result-object v7

    .line 44
    new-instance v8, Lcom/smedialink/storage/domain/model/wallet/PriceRate;

    .line 45
    invoke-virtual {v1}, Lcom/smedialink/storage/data/network/model/response/wallet/TokenBalanceResponse;->getRateToDollars()D

    move-result-wide v11

    .line 46
    invoke-virtual {v1}, Lcom/smedialink/storage/data/network/model/response/wallet/TokenBalanceResponse;->getRatePercentageChange24h()Ljava/lang/Float;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 44
    :goto_1
    invoke-direct {v8, v11, v12, v2}, Lcom/smedialink/storage/domain/model/wallet/PriceRate;-><init>(DF)V

    .line 48
    sget-object v2, Lcom/smedialink/storage/domain/model/crypto/NetworkType;->Companion:Lcom/smedialink/storage/domain/model/crypto/NetworkType$Companion;

    invoke-virtual {v1}, Lcom/smedialink/storage/data/network/model/response/wallet/TokenBalanceResponse;->getNetworkType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/smedialink/storage/domain/model/crypto/NetworkType$Companion;->map(Ljava/lang/String;)Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object v9

    move-object v2, v10

    .line 39
    invoke-direct/range {v2 .. v9}, Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;-><init>(Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;DFLcom/smedialink/storage/domain/model/wallet/token/TokenInfo;Lcom/smedialink/storage/domain/model/wallet/PriceRate;Lcom/smedialink/storage/domain/model/crypto/NetworkType;)V

    invoke-interface {v0, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method
