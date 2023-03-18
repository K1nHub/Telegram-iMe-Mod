.class public final Lcom/smedialink/mapper/staking/StakingMetadataUiMappingKt;
.super Ljava/lang/Object;
.source "StakingMetadataUiMapping.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStakingMetadataUiMapping.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StakingMetadataUiMapping.kt\ncom/smedialink/mapper/staking/StakingMetadataUiMappingKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,39:1\n1549#2:40\n1620#2,3:41\n*S KotlinDebug\n*F\n+ 1 StakingMetadataUiMapping.kt\ncom/smedialink/mapper/staking/StakingMetadataUiMappingKt\n*L\n14#1:40\n14#1:41,3\n*E\n"
.end annotation


# direct methods
.method public static final mapToUi(Ljava/util/List;)Ljava/util/List;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/smedialink/storage/domain/model/staking/StakingMetadata;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/smedialink/model/staking/StakingProgrammeItem;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    const-string v1, "<this>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1549
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface/range {p0 .. p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1621
    check-cast v2, Lcom/smedialink/storage/domain/model/staking/StakingMetadata;

    .line 17
    invoke-virtual {v2}, Lcom/smedialink/storage/domain/model/staking/StakingMetadata;->getId()J

    move-result-wide v4

    .line 18
    invoke-virtual {v2}, Lcom/smedialink/storage/domain/model/staking/StakingMetadata;->getName()Ljava/lang/String;

    move-result-object v6

    .line 19
    invoke-virtual {v2}, Lcom/smedialink/storage/domain/model/staking/StakingMetadata;->getStats()Lcom/smedialink/storage/domain/model/staking/StakingStats;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smedialink/storage/domain/model/staking/StakingStats;->isParticipated()Z

    move-result v7

    .line 20
    sget-object v3, Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;->Companion:Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance$Companion;

    .line 21
    sget-object v8, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;->Companion:Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Companion;

    invoke-virtual {v2}, Lcom/smedialink/storage/domain/model/staking/StakingMetadata;->getToken()Lcom/smedialink/storage/domain/model/staking/StakingToken;

    move-result-object v9

    invoke-virtual {v9}, Lcom/smedialink/storage/domain/model/staking/StakingToken;->getTicker()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Companion;->map(Ljava/lang/String;)Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;

    move-result-object v8

    .line 20
    invoke-virtual {v3, v8}, Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance$Companion;->createEmptyBalanceFor(Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;)Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;

    move-result-object v9

    .line 23
    invoke-virtual {v2}, Lcom/smedialink/storage/domain/model/staking/StakingMetadata;->getNetworkType()Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object v16

    .line 24
    invoke-virtual {v2}, Lcom/smedialink/storage/domain/model/staking/StakingMetadata;->getStats()Lcom/smedialink/storage/domain/model/staking/StakingStats;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smedialink/storage/domain/model/staking/StakingStats;->getDebt()Lcom/smedialink/storage/domain/model/staking/StakingValues;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smedialink/storage/domain/model/staking/StakingValues;->getAsToken()Ljava/math/BigDecimal;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v11

    .line 25
    invoke-virtual {v2}, Lcom/smedialink/storage/domain/model/staking/StakingMetadata;->getStats()Lcom/smedialink/storage/domain/model/staking/StakingStats;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smedialink/storage/domain/model/staking/StakingStats;->getDebt()Lcom/smedialink/storage/domain/model/staking/StakingValues;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smedialink/storage/domain/model/staking/StakingValues;->getAsUsd()Ljava/math/BigDecimal;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigDecimal;->floatValue()F

    move-result v13

    const/4 v10, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x19

    const/16 v18, 0x0

    .line 22
    invoke-static/range {v9 .. v18}, Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;->copy$default(Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;DFLcom/smedialink/storage/domain/model/wallet/token/TokenInfo;Lcom/smedialink/storage/domain/model/wallet/PriceRate;Lcom/smedialink/storage/domain/model/crypto/NetworkType;ILjava/lang/Object;)Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;

    move-result-object v8

    .line 27
    invoke-static {v2}, Lcom/smedialink/utils/extentions/model/wallet/StakingMetadataExtKt;->getFormattedAPR(Lcom/smedialink/storage/domain/model/staking/StakingMetadata;)Ljava/lang/String;

    move-result-object v9

    .line 28
    invoke-static {v2}, Lcom/smedialink/utils/extentions/model/wallet/StakingMetadataExtKt;->getFormattedAPY(Lcom/smedialink/storage/domain/model/staking/StakingMetadata;)Ljava/lang/String;

    move-result-object v10

    .line 29
    invoke-virtual {v2}, Lcom/smedialink/storage/domain/model/staking/StakingMetadata;->getStats()Lcom/smedialink/storage/domain/model/staking/StakingStats;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smedialink/storage/domain/model/staking/StakingStats;->getDebt()Lcom/smedialink/storage/domain/model/staking/StakingValues;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smedialink/storage/domain/model/staking/StakingValues;->getAsToken()Ljava/math/BigDecimal;

    move-result-object v3

    .line 31
    invoke-virtual {v2}, Lcom/smedialink/storage/domain/model/staking/StakingMetadata;->getCompoundAccrualThreshold()Ljava/math/BigDecimal;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v11

    if-ltz v11, :cond_0

    sget-object v3, Lcom/smedialink/model/staking/StakingAnnualPercentageMode;->APY:Lcom/smedialink/model/staking/StakingAnnualPercentageMode;

    :goto_1
    move-object v11, v3

    goto :goto_2

    .line 32
    :cond_0
    sget-object v11, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    invoke-virtual {v3, v11}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v3

    if-lez v3, :cond_1

    sget-object v3, Lcom/smedialink/model/staking/StakingAnnualPercentageMode;->APR:Lcom/smedialink/model/staking/StakingAnnualPercentageMode;

    goto :goto_1

    .line 33
    :cond_1
    sget-object v3, Lcom/smedialink/model/staking/StakingAnnualPercentageMode;->NONE:Lcom/smedialink/model/staking/StakingAnnualPercentageMode;

    goto :goto_1

    .line 36
    :goto_2
    invoke-virtual {v2}, Lcom/smedialink/storage/domain/model/staking/StakingMetadata;->getEndsAt()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/smedialink/utils/formatter/DateFormatter$DateType;->ONLY_DATE:Lcom/smedialink/utils/formatter/DateFormatter$DateType;

    invoke-static {v2, v3}, Lcom/smedialink/utils/extentions/common/StringExtKt;->formatISODate(Ljava/lang/String;Lcom/smedialink/utils/formatter/DateFormatter$DateType;)Ljava/lang/String;

    move-result-object v12

    .line 16
    new-instance v2, Lcom/smedialink/model/staking/StakingProgrammeItem;

    move-object v3, v2

    invoke-direct/range {v3 .. v12}, Lcom/smedialink/model/staking/StakingProgrammeItem;-><init>(JLjava/lang/String;ZLcom/smedialink/storage/domain/model/wallet/token/TokenBalance;Ljava/lang/String;Ljava/lang/String;Lcom/smedialink/model/staking/StakingAnnualPercentageMode;Ljava/lang/String;)V

    .line 1621
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_2
    return-object v1
.end method
