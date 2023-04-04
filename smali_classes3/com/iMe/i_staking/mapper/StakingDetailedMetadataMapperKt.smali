.class public final Lcom/iMe/i_staking/mapper/StakingDetailedMetadataMapperKt;
.super Ljava/lang/Object;
.source "StakingDetailedMetadataMapper.kt"


# direct methods
.method public static final mapToDomain(Lcom/iMe/i_staking/response/StakingDetailedMetadataResponse;)Lcom/iMe/storage/domain/model/staking/StakingDetailedMetadata;
    .locals 35

    const-string v0, "<this>"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    new-instance v0, Lcom/iMe/storage/domain/model/staking/StakingDetailedMetadata;

    .line 10
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/i_staking/response/StakingDetailedMetadataResponse;->getId()J

    move-result-wide v3

    .line 11
    sget-object v2, Lcom/iMe/storage/domain/model/crypto/NetworkType;->Companion:Lcom/iMe/storage/domain/model/crypto/NetworkType$Companion;

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/i_staking/response/StakingDetailedMetadataResponse;->getNet()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/iMe/storage/domain/model/crypto/NetworkType$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/domain/model/crypto/NetworkType;

    move-result-object v5

    .line 12
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/i_staking/response/StakingDetailedMetadataResponse;->getName()Ljava/lang/String;

    move-result-object v6

    .line 13
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/i_staking/response/StakingDetailedMetadataResponse;->getAuthor()Ljava/lang/String;

    move-result-object v7

    .line 14
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/i_staking/response/StakingDetailedMetadataResponse;->getContract()Ljava/lang/String;

    move-result-object v8

    .line 15
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/i_staking/response/StakingDetailedMetadataResponse;->getStartsAt()Ljava/lang/String;

    move-result-object v9

    .line 16
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/i_staking/response/StakingDetailedMetadataResponse;->getEndsAt()Ljava/lang/String;

    move-result-object v10

    .line 17
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/i_staking/response/StakingDetailedMetadataResponse;->getToken()Lcom/iMe/i_staking/response/StakingTokenResponse;

    move-result-object v2

    invoke-static {v2}, Lcom/iMe/i_staking/mapper/StakingTokenMapperKt;->mapToDomain(Lcom/iMe/i_staking/response/StakingTokenResponse;)Lcom/iMe/storage/domain/model/staking/StakingToken;

    move-result-object v11

    .line 18
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/i_staking/response/StakingDetailedMetadataResponse;->getFeeToken()Lcom/iMe/i_staking/response/StakingTokenResponse;

    move-result-object v2

    invoke-static {v2}, Lcom/iMe/i_staking/mapper/StakingTokenMapperKt;->mapToDomain(Lcom/iMe/i_staking/response/StakingTokenResponse;)Lcom/iMe/storage/domain/model/staking/StakingToken;

    move-result-object v12

    .line 19
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/i_staking/response/StakingDetailedMetadataResponse;->getApy()D

    move-result-wide v13

    .line 20
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/i_staking/response/StakingDetailedMetadataResponse;->getApr()D

    move-result-wide v15

    .line 21
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/i_staking/response/StakingDetailedMetadataResponse;->getIncomePeriod()J

    move-result-wide v17

    .line 22
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/i_staking/response/StakingDetailedMetadataResponse;->getIncomePercent()D

    move-result-wide v19

    .line 23
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/i_staking/response/StakingDetailedMetadataResponse;->getPrematureWithdrawalFee()D

    move-result-wide v21

    .line 24
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/i_staking/response/StakingDetailedMetadataResponse;->getImmediateWithdrawalFee()D

    move-result-wide v23

    .line 25
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/i_staking/response/StakingDetailedMetadataResponse;->getSafeWithdrawalFee()D

    move-result-wide v25

    .line 26
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/i_staking/response/StakingDetailedMetadataResponse;->getSafeWithdrawalDuration()J

    move-result-wide v27

    .line 27
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/i_staking/response/StakingDetailedMetadataResponse;->getCompoundAccrualThreshold()Ljava/math/BigDecimal;

    move-result-object v29

    .line 28
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/i_staking/response/StakingDetailedMetadataResponse;->getStats()Lcom/iMe/i_staking/response/StakingDetailedStatsResponse;

    move-result-object v2

    invoke-static {v2}, Lcom/iMe/i_staking/mapper/StakingDetailedStatsMapperKt;->mapToDomain(Lcom/iMe/i_staking/response/StakingDetailedStatsResponse;)Lcom/iMe/storage/domain/model/staking/StakingDetailedStats;

    move-result-object v30

    .line 29
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/i_staking/response/StakingDetailedMetadataResponse;->getRules()Lcom/iMe/i_staking/response/StakingRulesResponse;

    move-result-object v2

    invoke-static {v2}, Lcom/iMe/i_staking/mapper/StakingRulesMapperKt;->mapToDomain(Lcom/iMe/i_staking/response/StakingRulesResponse;)Lcom/iMe/storage/domain/model/staking/StakingRules;

    move-result-object v31

    .line 30
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/i_staking/response/StakingDetailedMetadataResponse;->getHasEnoughFunds()Z

    move-result v32

    .line 31
    sget-object v2, Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;->Companion:Lcom/iMe/storage/domain/model/crypto/level/AccountLevel$Companion;

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/i_staking/response/StakingDetailedMetadataResponse;->getMinimalRank()Ljava/lang/String;

    move-result-object v33

    if-nez v33, :cond_0

    const-string v33, ""

    :cond_0
    move-object/from16 v1, v33

    invoke-virtual {v2, v1}, Lcom/iMe/storage/domain/model/crypto/level/AccountLevel$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;

    move-result-object v33

    .line 32
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/i_staking/response/StakingDetailedMetadataResponse;->getWebsite()Ljava/lang/String;

    move-result-object v34

    move-object v2, v0

    .line 9
    invoke-direct/range {v2 .. v34}, Lcom/iMe/storage/domain/model/staking/StakingDetailedMetadata;-><init>(JLcom/iMe/storage/domain/model/crypto/NetworkType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iMe/storage/domain/model/staking/StakingToken;Lcom/iMe/storage/domain/model/staking/StakingToken;DDJDDDDJLjava/math/BigDecimal;Lcom/iMe/storage/domain/model/staking/StakingDetailedStats;Lcom/iMe/storage/domain/model/staking/StakingRules;ZLcom/iMe/storage/domain/model/crypto/level/AccountLevel;Ljava/lang/String;)V

    return-object v0
.end method
