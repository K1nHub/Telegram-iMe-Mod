.class public final Lcom/iMe/mapper/staking/StakingDetailedMetadataUiMappingKt;
.super Ljava/lang/Object;
.source "StakingDetailedMetadataUiMapping.kt"


# direct methods
.method private static final getAnnualPercentageMode(Ljava/math/BigDecimal;Ljava/math/BigDecimal;)Lcom/iMe/model/staking/StakingAnnualPercentageMode;
    .locals 0

    .line 83
    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p1

    if-ltz p1, :cond_0

    sget-object p0, Lcom/iMe/model/staking/StakingAnnualPercentageMode;->APY:Lcom/iMe/model/staking/StakingAnnualPercentageMode;

    goto :goto_0

    .line 84
    :cond_0
    sget-object p1, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p0

    if-lez p0, :cond_1

    sget-object p0, Lcom/iMe/model/staking/StakingAnnualPercentageMode;->APR:Lcom/iMe/model/staking/StakingAnnualPercentageMode;

    goto :goto_0

    .line 85
    :cond_1
    sget-object p0, Lcom/iMe/model/staking/StakingAnnualPercentageMode;->NONE:Lcom/iMe/model/staking/StakingAnnualPercentageMode;

    :goto_0
    return-object p0
.end method

.method public static final mapToUi(Lcom/iMe/storage/domain/model/staking/StakingDetailedMetadata;)Lcom/iMe/model/staking/StakingDetailsItem;
    .locals 39

    const-string v0, "<this>"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/domain/model/staking/StakingDetailedMetadata;->getId()J

    move-result-wide v3

    .line 18
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/domain/model/staking/StakingDetailedMetadata;->getName()Ljava/lang/String;

    move-result-object v5

    .line 19
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/domain/model/staking/StakingDetailedMetadata;->getAuthor()Ljava/lang/String;

    move-result-object v6

    .line 20
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/domain/model/staking/StakingDetailedMetadata;->getContract()Ljava/lang/String;

    move-result-object v8

    .line 21
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/domain/model/staking/StakingDetailedMetadata;->getToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v0

    invoke-static {v0}, Lcom/iMe/mapper/wallet/TokenUiMappingKt;->mapToUI(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)Lcom/iMe/model/wallet/crypto/TokenItem;

    move-result-object v7

    .line 22
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/domain/model/staking/StakingDetailedMetadata;->getFeeToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v0

    invoke-static {v0}, Lcom/iMe/mapper/wallet/TokenUiMappingKt;->mapToUI(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)Lcom/iMe/model/wallet/crypto/TokenItem;

    move-result-object v9

    .line 23
    invoke-static/range {p0 .. p0}, Lcom/iMe/utils/extentions/model/wallet/StakingMetadataExtKt;->getFormattedAPR(Lcom/iMe/storage/domain/model/staking/StakingDetailedMetadata;)Ljava/lang/String;

    move-result-object v10

    .line 24
    invoke-static/range {p0 .. p0}, Lcom/iMe/utils/extentions/model/wallet/StakingMetadataExtKt;->getFormattedAPY(Lcom/iMe/storage/domain/model/staking/StakingDetailedMetadata;)Ljava/lang/String;

    move-result-object v11

    .line 25
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/domain/model/staking/StakingDetailedMetadata;->getCompoundAccrualThreshold()Ljava/math/BigDecimal;

    move-result-object v12

    .line 26
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/domain/model/staking/StakingDetailedMetadata;->getStartsAt()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/iMe/utils/formatter/DateFormatter$DateType;->ONLY_DATE:Lcom/iMe/utils/formatter/DateFormatter$DateType;

    invoke-static {v0, v2}, Lcom/iMe/utils/extentions/common/StringExtKt;->formatISODate(Ljava/lang/String;Lcom/iMe/utils/formatter/DateFormatter$DateType;)Ljava/lang/String;

    move-result-object v13

    .line 27
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/domain/model/staking/StakingDetailedMetadata;->getStartsAt()Ljava/lang/String;

    move-result-object v14

    .line 28
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/domain/model/staking/StakingDetailedMetadata;->getEndsAt()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/iMe/utils/extentions/common/StringExtKt;->formatISODate(Ljava/lang/String;Lcom/iMe/utils/formatter/DateFormatter$DateType;)Ljava/lang/String;

    move-result-object v15

    .line 29
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/domain/model/staking/StakingDetailedMetadata;->getEndsAt()Ljava/lang/String;

    move-result-object v16

    .line 30
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/domain/model/staking/StakingDetailedMetadata;->getStats()Lcom/iMe/storage/domain/model/staking/StakingDetailedStats;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/staking/StakingDetailedStats;->getImpact()Lcom/iMe/storage/domain/model/staking/StakingValues;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/staking/StakingValues;->getAsToken()Ljava/math/BigDecimal;

    move-result-object v17

    .line 31
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/domain/model/staking/StakingDetailedMetadata;->getStats()Lcom/iMe/storage/domain/model/staking/StakingDetailedStats;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/staking/StakingDetailedStats;->getDebt()Lcom/iMe/storage/domain/model/staking/StakingValues;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/staking/StakingValues;->getAsToken()Ljava/math/BigDecimal;

    move-result-object v18

    .line 32
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/domain/model/staking/StakingDetailedMetadata;->getStats()Lcom/iMe/storage/domain/model/staking/StakingDetailedStats;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/staking/StakingDetailedStats;->getWithdrawnTokens()Lcom/iMe/storage/domain/model/staking/WithdrawnTokens;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/staking/WithdrawnTokens;->getReady()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v19

    .line 33
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/domain/model/staking/StakingDetailedMetadata;->getRules()Lcom/iMe/storage/domain/model/staking/StakingRules;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/staking/StakingRules;->getCanWithdrawSafely()Z

    move-result v21

    .line 34
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/domain/model/staking/StakingDetailedMetadata;->getRules()Lcom/iMe/storage/domain/model/staking/StakingRules;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/staking/StakingRules;->getCanWithdrawImmediately()Z

    move-result v22

    .line 35
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/domain/model/staking/StakingDetailedMetadata;->getPrematureWithdrawalFee()D

    move-result-wide v23

    .line 36
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/domain/model/staking/StakingDetailedMetadata;->getImmediateWithdrawalFee()D

    move-result-wide v25

    .line 37
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/domain/model/staking/StakingDetailedMetadata;->getSafeWithdrawalFee()D

    move-result-wide v27

    .line 38
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/domain/model/staking/StakingDetailedMetadata;->getSafeWithdrawalDuration()J

    move-result-wide v29

    .line 39
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/domain/model/staking/StakingDetailedMetadata;->getStats()Lcom/iMe/storage/domain/model/staking/StakingDetailedStats;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/staking/StakingDetailedStats;->getDebt()Lcom/iMe/storage/domain/model/staking/StakingValues;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/staking/StakingValues;->getAsToken()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/domain/model/staking/StakingDetailedMetadata;->getCompoundAccrualThreshold()Ljava/math/BigDecimal;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/iMe/mapper/staking/StakingDetailedMetadataUiMappingKt;->getAnnualPercentageMode(Ljava/math/BigDecimal;Ljava/math/BigDecimal;)Lcom/iMe/model/staking/StakingAnnualPercentageMode;

    move-result-object v31

    .line 40
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/domain/model/staking/StakingDetailedMetadata;->getHasEnoughFunds()Z

    move-result v32

    .line 41
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/domain/model/staking/StakingDetailedMetadata;->getMinimalRank()Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;

    move-result-object v33

    .line 42
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/domain/model/staking/StakingDetailedMetadata;->getWebsite()Ljava/lang/String;

    move-result-object v34

    .line 43
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/domain/model/staking/StakingDetailedMetadata;->getIncomePeriod()J

    move-result-wide v35

    .line 44
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/domain/model/staking/StakingDetailedMetadata;->getIncomePercent()D

    move-result-wide v37

    .line 16
    new-instance v0, Lcom/iMe/model/staking/StakingDetailsItem;

    move-object v2, v0

    invoke-direct/range {v2 .. v38}, Lcom/iMe/model/staking/StakingDetailsItem;-><init>(JLjava/lang/String;Ljava/lang/String;Lcom/iMe/model/wallet/crypto/TokenItem;Ljava/lang/String;Lcom/iMe/model/wallet/crypto/TokenItem;Ljava/lang/String;Ljava/lang/String;Ljava/math/BigDecimal;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/math/BigDecimal;Ljava/math/BigDecimal;DZZDDDJLcom/iMe/model/staking/StakingAnnualPercentageMode;ZLcom/iMe/storage/domain/model/crypto/level/AccountLevel;Ljava/lang/String;JD)V

    return-object v0
.end method

.method public static final mapToUi(Lcom/iMe/storage/domain/model/staking/StakingMetadata;)Lcom/iMe/model/staking/StakingDetailsItem;
    .locals 39

    const-string v0, "<this>"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->getId()J

    move-result-wide v3

    .line 49
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->getName()Ljava/lang/String;

    move-result-object v5

    .line 50
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->getAuthor()Ljava/lang/String;

    move-result-object v6

    .line 51
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->getContract()Ljava/lang/String;

    move-result-object v8

    .line 52
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->getToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v0

    invoke-static {v0}, Lcom/iMe/mapper/wallet/TokenUiMappingKt;->mapToUI(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)Lcom/iMe/model/wallet/crypto/TokenItem;

    move-result-object v7

    .line 53
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->getFeeToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v0

    invoke-static {v0}, Lcom/iMe/mapper/wallet/TokenUiMappingKt;->mapToUI(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)Lcom/iMe/model/wallet/crypto/TokenItem;

    move-result-object v9

    .line 54
    invoke-static/range {p0 .. p0}, Lcom/iMe/utils/extentions/model/wallet/StakingMetadataExtKt;->getFormattedAPR(Lcom/iMe/storage/domain/model/staking/StakingMetadata;)Ljava/lang/String;

    move-result-object v10

    .line 55
    invoke-static/range {p0 .. p0}, Lcom/iMe/utils/extentions/model/wallet/StakingMetadataExtKt;->getFormattedAPY(Lcom/iMe/storage/domain/model/staking/StakingMetadata;)Ljava/lang/String;

    move-result-object v11

    .line 56
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->getCompoundAccrualThreshold()Ljava/math/BigDecimal;

    move-result-object v12

    .line 57
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->getStartsAt()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/iMe/utils/formatter/DateFormatter$DateType;->ONLY_DATE:Lcom/iMe/utils/formatter/DateFormatter$DateType;

    invoke-static {v0, v2}, Lcom/iMe/utils/extentions/common/StringExtKt;->formatISODate(Ljava/lang/String;Lcom/iMe/utils/formatter/DateFormatter$DateType;)Ljava/lang/String;

    move-result-object v13

    .line 58
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->getStartsAt()Ljava/lang/String;

    move-result-object v14

    .line 59
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->getEndsAt()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/iMe/utils/extentions/common/StringExtKt;->formatISODate(Ljava/lang/String;Lcom/iMe/utils/formatter/DateFormatter$DateType;)Ljava/lang/String;

    move-result-object v15

    .line 60
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->getEndsAt()Ljava/lang/String;

    move-result-object v16

    .line 61
    sget-object v0, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    .line 62
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->getStats()Lcom/iMe/storage/domain/model/staking/StakingStats;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/staking/StakingStats;->getDebt()Lcom/iMe/storage/domain/model/staking/StakingValues;

    move-result-object v2

    const/16 v17, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/staking/StakingValues;->getAsToken()Ljava/math/BigDecimal;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object/from16 v2, v17

    :goto_0
    invoke-static {v2}, Lcom/iMe/storage/data/utils/extentions/NumberExtKt;->orZero(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v18

    .line 66
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->getPrematureWithdrawalFee()D

    move-result-wide v23

    .line 67
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->getImmediateWithdrawalFee()D

    move-result-wide v25

    .line 68
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->getSafeWithdrawalFee()D

    move-result-wide v27

    .line 69
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->getSafeWithdrawalDuration()J

    move-result-wide v29

    .line 70
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->getStats()Lcom/iMe/storage/domain/model/staking/StakingStats;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/staking/StakingStats;->getDebt()Lcom/iMe/storage/domain/model/staking/StakingValues;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/staking/StakingValues;->getAsToken()Ljava/math/BigDecimal;

    move-result-object v17

    :cond_1
    invoke-static/range {v17 .. v17}, Lcom/iMe/storage/data/utils/extentions/NumberExtKt;->orZero(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->getCompoundAccrualThreshold()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/iMe/mapper/staking/StakingDetailedMetadataUiMappingKt;->getAnnualPercentageMode(Ljava/math/BigDecimal;Ljava/math/BigDecimal;)Lcom/iMe/model/staking/StakingAnnualPercentageMode;

    move-result-object v31

    .line 72
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->getMinimalRank()Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;

    move-result-object v33

    .line 73
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->getWebsite()Ljava/lang/String;

    move-result-object v34

    .line 74
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->getIncomePeriod()J

    move-result-wide v35

    .line 75
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->getIncomePercent()D

    move-result-wide v37

    .line 47
    new-instance v1, Lcom/iMe/model/staking/StakingDetailsItem;

    move-object v2, v1

    move-object/from16 p0, v1

    const-string v1, "ZERO"

    .line 61
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v32, 0x1

    move-object/from16 v17, v0

    .line 47
    invoke-direct/range {v2 .. v38}, Lcom/iMe/model/staking/StakingDetailsItem;-><init>(JLjava/lang/String;Ljava/lang/String;Lcom/iMe/model/wallet/crypto/TokenItem;Ljava/lang/String;Lcom/iMe/model/wallet/crypto/TokenItem;Ljava/lang/String;Ljava/lang/String;Ljava/math/BigDecimal;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/math/BigDecimal;Ljava/math/BigDecimal;DZZDDDJLcom/iMe/model/staking/StakingAnnualPercentageMode;ZLcom/iMe/storage/domain/model/crypto/level/AccountLevel;Ljava/lang/String;JD)V

    return-object p0
.end method
