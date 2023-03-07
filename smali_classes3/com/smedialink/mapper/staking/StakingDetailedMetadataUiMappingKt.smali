.class public final Lcom/smedialink/mapper/staking/StakingDetailedMetadataUiMappingKt;
.super Ljava/lang/Object;
.source "StakingDetailedMetadataUiMapping.kt"


# direct methods
.method private static final getAnnualPercentageMode(Ljava/math/BigDecimal;Ljava/math/BigDecimal;)Lcom/smedialink/model/staking/StakingAnnualPercentageMode;
    .locals 0

    .line 83
    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p1

    if-ltz p1, :cond_0

    sget-object p0, Lcom/smedialink/model/staking/StakingAnnualPercentageMode;->APY:Lcom/smedialink/model/staking/StakingAnnualPercentageMode;

    goto :goto_0

    .line 84
    :cond_0
    sget-object p1, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p0

    if-lez p0, :cond_1

    sget-object p0, Lcom/smedialink/model/staking/StakingAnnualPercentageMode;->APR:Lcom/smedialink/model/staking/StakingAnnualPercentageMode;

    goto :goto_0

    .line 85
    :cond_1
    sget-object p0, Lcom/smedialink/model/staking/StakingAnnualPercentageMode;->NONE:Lcom/smedialink/model/staking/StakingAnnualPercentageMode;

    :goto_0
    return-object p0
.end method

.method public static final mapToUi(Lcom/smedialink/storage/domain/model/staking/StakingDetailedMetadata;)Lcom/smedialink/model/staking/StakingDetailsItem;
    .locals 41

    const-string v0, "<this>"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    new-instance v0, Lcom/smedialink/model/staking/StakingDetailsItem;

    move-object v2, v0

    .line 15
    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/domain/model/staking/StakingDetailedMetadata;->getId()J

    move-result-wide v3

    .line 16
    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/domain/model/staking/StakingDetailedMetadata;->getName()Ljava/lang/String;

    move-result-object v5

    .line 17
    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/domain/model/staking/StakingDetailedMetadata;->getAuthor()Ljava/lang/String;

    move-result-object v6

    .line 18
    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/domain/model/staking/StakingDetailedMetadata;->getNetworkType()Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object v7

    .line 19
    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/domain/model/staking/StakingDetailedMetadata;->getContract()Ljava/lang/String;

    move-result-object v8

    .line 20
    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/domain/model/staking/StakingDetailedMetadata;->getToken()Lcom/smedialink/storage/domain/model/staking/StakingToken;

    move-result-object v9

    invoke-virtual {v9}, Lcom/smedialink/storage/domain/model/staking/StakingToken;->getTicker()Ljava/lang/String;

    move-result-object v9

    .line 21
    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/domain/model/staking/StakingDetailedMetadata;->getFeeToken()Lcom/smedialink/storage/domain/model/staking/StakingToken;

    move-result-object v10

    invoke-virtual {v10}, Lcom/smedialink/storage/domain/model/staking/StakingToken;->getTicker()Ljava/lang/String;

    move-result-object v10

    .line 22
    invoke-static/range {p0 .. p0}, Lcom/smedialink/utils/extentions/model/wallet/StakingMetadataExtKt;->getFormattedAPR(Lcom/smedialink/storage/domain/model/staking/StakingDetailedMetadata;)Ljava/lang/String;

    move-result-object v11

    .line 23
    invoke-static/range {p0 .. p0}, Lcom/smedialink/utils/extentions/model/wallet/StakingMetadataExtKt;->getFormattedAPY(Lcom/smedialink/storage/domain/model/staking/StakingDetailedMetadata;)Ljava/lang/String;

    move-result-object v12

    .line 24
    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/domain/model/staking/StakingDetailedMetadata;->getCompoundAccrualThreshold()Ljava/math/BigDecimal;

    move-result-object v13

    .line 25
    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/domain/model/staking/StakingDetailedMetadata;->getStartsAt()Ljava/lang/String;

    move-result-object v14

    sget-object v15, Lcom/smedialink/utils/formatter/DateFormatter$DateType;->ONLY_DATE:Lcom/smedialink/utils/formatter/DateFormatter$DateType;

    invoke-static {v14, v15}, Lcom/smedialink/utils/extentions/common/StringExtKt;->formatISODate(Ljava/lang/String;Lcom/smedialink/utils/formatter/DateFormatter$DateType;)Ljava/lang/String;

    move-result-object v14

    .line 26
    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/domain/model/staking/StakingDetailedMetadata;->getStartsAt()Ljava/lang/String;

    move-result-object v16

    move-object v1, v15

    move-object/from16 v15, v16

    move-object/from16 v40, v0

    .line 27
    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/domain/model/staking/StakingDetailedMetadata;->getEndsAt()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/smedialink/utils/extentions/common/StringExtKt;->formatISODate(Ljava/lang/String;Lcom/smedialink/utils/formatter/DateFormatter$DateType;)Ljava/lang/String;

    move-result-object v16

    .line 28
    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/domain/model/staking/StakingDetailedMetadata;->getEndsAt()Ljava/lang/String;

    move-result-object v17

    .line 29
    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/domain/model/staking/StakingDetailedMetadata;->getStats()Lcom/smedialink/storage/domain/model/staking/StakingDetailedStats;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/staking/StakingDetailedStats;->getImpact()Lcom/smedialink/storage/domain/model/staking/StakingValues;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/staking/StakingValues;->getAsToken()Ljava/math/BigDecimal;

    move-result-object v18

    .line 30
    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/domain/model/staking/StakingDetailedMetadata;->getStats()Lcom/smedialink/storage/domain/model/staking/StakingDetailedStats;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/staking/StakingDetailedStats;->getDebt()Lcom/smedialink/storage/domain/model/staking/StakingValues;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/staking/StakingValues;->getAsToken()Ljava/math/BigDecimal;

    move-result-object v19

    .line 31
    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/domain/model/staking/StakingDetailedMetadata;->getStats()Lcom/smedialink/storage/domain/model/staking/StakingDetailedStats;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/staking/StakingDetailedStats;->getWithdrawnTokens()Lcom/smedialink/storage/domain/model/staking/WithdrawnTokens;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/staking/WithdrawnTokens;->getReady()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v20

    .line 32
    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/domain/model/staking/StakingDetailedMetadata;->getRules()Lcom/smedialink/storage/domain/model/staking/StakingRules;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/staking/StakingRules;->getCanWithdrawSafely()Z

    move-result v22

    .line 33
    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/domain/model/staking/StakingDetailedMetadata;->getRules()Lcom/smedialink/storage/domain/model/staking/StakingRules;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/staking/StakingRules;->getCanWithdrawImmediately()Z

    move-result v23

    .line 34
    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/domain/model/staking/StakingDetailedMetadata;->getPrematureWithdrawalFee()D

    move-result-wide v24

    .line 35
    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/domain/model/staking/StakingDetailedMetadata;->getImmediateWithdrawalFee()D

    move-result-wide v26

    .line 36
    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/domain/model/staking/StakingDetailedMetadata;->getSafeWithdrawalFee()D

    move-result-wide v28

    .line 37
    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/domain/model/staking/StakingDetailedMetadata;->getSafeWithdrawalDuration()J

    move-result-wide v30

    .line 38
    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/domain/model/staking/StakingDetailedMetadata;->getStats()Lcom/smedialink/storage/domain/model/staking/StakingDetailedStats;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/staking/StakingDetailedStats;->getDebt()Lcom/smedialink/storage/domain/model/staking/StakingValues;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/staking/StakingValues;->getAsToken()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/domain/model/staking/StakingDetailedMetadata;->getCompoundAccrualThreshold()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/smedialink/mapper/staking/StakingDetailedMetadataUiMappingKt;->getAnnualPercentageMode(Ljava/math/BigDecimal;Ljava/math/BigDecimal;)Lcom/smedialink/model/staking/StakingAnnualPercentageMode;

    move-result-object v32

    .line 39
    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/domain/model/staking/StakingDetailedMetadata;->getHasEnoughFunds()Z

    move-result v33

    .line 40
    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/domain/model/staking/StakingDetailedMetadata;->getMinimalRank()Lcom/smedialink/storage/domain/model/crypto/level/AccountLevel;

    move-result-object v34

    .line 41
    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/domain/model/staking/StakingDetailedMetadata;->getWebsite()Ljava/lang/String;

    move-result-object v35

    .line 42
    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/domain/model/staking/StakingDetailedMetadata;->getIncomePeriod()J

    move-result-wide v36

    .line 43
    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/domain/model/staking/StakingDetailedMetadata;->getIncomePercent()D

    move-result-wide v38

    .line 14
    invoke-direct/range {v2 .. v39}, Lcom/smedialink/model/staking/StakingDetailsItem;-><init>(JLjava/lang/String;Ljava/lang/String;Lcom/smedialink/storage/domain/model/crypto/NetworkType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/math/BigDecimal;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/math/BigDecimal;Ljava/math/BigDecimal;DZZDDDJLcom/smedialink/model/staking/StakingAnnualPercentageMode;ZLcom/smedialink/storage/domain/model/crypto/level/AccountLevel;Ljava/lang/String;JD)V

    return-object v40
.end method

.method public static final mapToUi(Lcom/smedialink/storage/domain/model/staking/StakingMetadata;)Lcom/smedialink/model/staking/StakingDetailsItem;
    .locals 41

    const-string v0, "<this>"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    new-instance v0, Lcom/smedialink/model/staking/StakingDetailsItem;

    move-object v2, v0

    .line 47
    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/domain/model/staking/StakingMetadata;->getId()J

    move-result-wide v3

    .line 48
    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/domain/model/staking/StakingMetadata;->getName()Ljava/lang/String;

    move-result-object v5

    .line 49
    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/domain/model/staking/StakingMetadata;->getAuthor()Ljava/lang/String;

    move-result-object v6

    .line 50
    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/domain/model/staking/StakingMetadata;->getNetworkType()Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object v7

    .line 51
    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/domain/model/staking/StakingMetadata;->getContract()Ljava/lang/String;

    move-result-object v8

    .line 52
    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/domain/model/staking/StakingMetadata;->getToken()Lcom/smedialink/storage/domain/model/staking/StakingToken;

    move-result-object v9

    invoke-virtual {v9}, Lcom/smedialink/storage/domain/model/staking/StakingToken;->getTicker()Ljava/lang/String;

    move-result-object v9

    .line 53
    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/domain/model/staking/StakingMetadata;->getFeeToken()Lcom/smedialink/storage/domain/model/staking/StakingToken;

    move-result-object v10

    invoke-virtual {v10}, Lcom/smedialink/storage/domain/model/staking/StakingToken;->getTicker()Ljava/lang/String;

    move-result-object v10

    .line 54
    invoke-static/range {p0 .. p0}, Lcom/smedialink/utils/extentions/model/wallet/StakingMetadataExtKt;->getFormattedAPR(Lcom/smedialink/storage/domain/model/staking/StakingMetadata;)Ljava/lang/String;

    move-result-object v11

    .line 55
    invoke-static/range {p0 .. p0}, Lcom/smedialink/utils/extentions/model/wallet/StakingMetadataExtKt;->getFormattedAPY(Lcom/smedialink/storage/domain/model/staking/StakingMetadata;)Ljava/lang/String;

    move-result-object v12

    .line 56
    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/domain/model/staking/StakingMetadata;->getCompoundAccrualThreshold()Ljava/math/BigDecimal;

    move-result-object v13

    .line 57
    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/domain/model/staking/StakingMetadata;->getStartsAt()Ljava/lang/String;

    move-result-object v14

    sget-object v15, Lcom/smedialink/utils/formatter/DateFormatter$DateType;->ONLY_DATE:Lcom/smedialink/utils/formatter/DateFormatter$DateType;

    invoke-static {v14, v15}, Lcom/smedialink/utils/extentions/common/StringExtKt;->formatISODate(Ljava/lang/String;Lcom/smedialink/utils/formatter/DateFormatter$DateType;)Ljava/lang/String;

    move-result-object v14

    .line 58
    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/domain/model/staking/StakingMetadata;->getStartsAt()Ljava/lang/String;

    move-result-object v16

    move-object v1, v15

    move-object/from16 v15, v16

    move-object/from16 v40, v0

    .line 59
    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/domain/model/staking/StakingMetadata;->getEndsAt()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/smedialink/utils/extentions/common/StringExtKt;->formatISODate(Ljava/lang/String;Lcom/smedialink/utils/formatter/DateFormatter$DateType;)Ljava/lang/String;

    move-result-object v16

    .line 60
    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/domain/model/staking/StakingMetadata;->getEndsAt()Ljava/lang/String;

    move-result-object v17

    .line 61
    sget-object v0, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    move-object/from16 v18, v0

    const-string v1, "ZERO"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/domain/model/staking/StakingMetadata;->getStats()Lcom/smedialink/storage/domain/model/staking/StakingStats;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/staking/StakingStats;->getDebt()Lcom/smedialink/storage/domain/model/staking/StakingValues;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/staking/StakingValues;->getAsToken()Ljava/math/BigDecimal;

    move-result-object v19

    .line 66
    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/domain/model/staking/StakingMetadata;->getPrematureWithdrawalFee()D

    move-result-wide v24

    .line 67
    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/domain/model/staking/StakingMetadata;->getImmediateWithdrawalFee()D

    move-result-wide v26

    .line 68
    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/domain/model/staking/StakingMetadata;->getSafeWithdrawalFee()D

    move-result-wide v28

    .line 69
    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/domain/model/staking/StakingMetadata;->getSafeWithdrawalDuration()J

    move-result-wide v30

    .line 70
    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/domain/model/staking/StakingMetadata;->getStats()Lcom/smedialink/storage/domain/model/staking/StakingStats;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/staking/StakingStats;->getDebt()Lcom/smedialink/storage/domain/model/staking/StakingValues;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/staking/StakingValues;->getAsToken()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/domain/model/staking/StakingMetadata;->getCompoundAccrualThreshold()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/smedialink/mapper/staking/StakingDetailedMetadataUiMappingKt;->getAnnualPercentageMode(Ljava/math/BigDecimal;Ljava/math/BigDecimal;)Lcom/smedialink/model/staking/StakingAnnualPercentageMode;

    move-result-object v32

    .line 72
    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/domain/model/staking/StakingMetadata;->getMinimalRank()Lcom/smedialink/storage/domain/model/crypto/level/AccountLevel;

    move-result-object v34

    .line 73
    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/domain/model/staking/StakingMetadata;->getWebsite()Ljava/lang/String;

    move-result-object v35

    .line 74
    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/domain/model/staking/StakingMetadata;->getIncomePeriod()J

    move-result-wide v36

    .line 75
    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/domain/model/staking/StakingMetadata;->getIncomePercent()D

    move-result-wide v38

    const-wide/16 v20, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v33, 0x1

    .line 46
    invoke-direct/range {v2 .. v39}, Lcom/smedialink/model/staking/StakingDetailsItem;-><init>(JLjava/lang/String;Ljava/lang/String;Lcom/smedialink/storage/domain/model/crypto/NetworkType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/math/BigDecimal;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/math/BigDecimal;Ljava/math/BigDecimal;DZZDDDJLcom/smedialink/model/staking/StakingAnnualPercentageMode;ZLcom/smedialink/storage/domain/model/crypto/level/AccountLevel;Ljava/lang/String;JD)V

    return-object v40
.end method
