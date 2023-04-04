.class public final Lcom/iMe/i_staking/mapper/StakingMetadataMapperKt;
.super Ljava/lang/Object;
.source "StakingMetadataMapper.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStakingMetadataMapper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StakingMetadataMapper.kt\ncom/iMe/i_staking/mapper/StakingMetadataMapperKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,39:1\n1549#2:40\n1620#2,3:41\n*S KotlinDebug\n*F\n+ 1 StakingMetadataMapper.kt\ncom/iMe/i_staking/mapper/StakingMetadataMapperKt\n*L\n13#1:40\n13#1:41,3\n*E\n"
.end annotation


# direct methods
.method public static final mapToDomain(Lcom/iMe/i_staking/response/StakingMetadataResponse;)Lcom/iMe/storage/domain/model/staking/StakingMetadata;
    .locals 33

    const-string v0, "<this>"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    new-instance v0, Lcom/iMe/storage/domain/model/staking/StakingMetadata;

    .line 18
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/i_staking/response/StakingMetadataResponse;->getId()J

    move-result-wide v3

    .line 19
    sget-object v2, Lcom/iMe/storage/domain/model/crypto/NetworkType;->Companion:Lcom/iMe/storage/domain/model/crypto/NetworkType$Companion;

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/i_staking/response/StakingMetadataResponse;->getNet()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/iMe/storage/domain/model/crypto/NetworkType$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/domain/model/crypto/NetworkType;

    move-result-object v5

    .line 20
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/i_staking/response/StakingMetadataResponse;->getName()Ljava/lang/String;

    move-result-object v6

    .line 21
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/i_staking/response/StakingMetadataResponse;->getAuthor()Ljava/lang/String;

    move-result-object v7

    .line 22
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/i_staking/response/StakingMetadataResponse;->getContract()Ljava/lang/String;

    move-result-object v8

    .line 23
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/i_staking/response/StakingMetadataResponse;->getStartsAt()Ljava/lang/String;

    move-result-object v9

    .line 24
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/i_staking/response/StakingMetadataResponse;->getEndsAt()Ljava/lang/String;

    move-result-object v10

    .line 25
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/i_staking/response/StakingMetadataResponse;->getToken()Lcom/iMe/i_staking/response/StakingTokenResponse;

    move-result-object v2

    invoke-static {v2}, Lcom/iMe/i_staking/mapper/StakingTokenMapperKt;->mapToDomain(Lcom/iMe/i_staking/response/StakingTokenResponse;)Lcom/iMe/storage/domain/model/staking/StakingToken;

    move-result-object v11

    .line 26
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/i_staking/response/StakingMetadataResponse;->getFeeToken()Lcom/iMe/i_staking/response/StakingTokenResponse;

    move-result-object v2

    invoke-static {v2}, Lcom/iMe/i_staking/mapper/StakingTokenMapperKt;->mapToDomain(Lcom/iMe/i_staking/response/StakingTokenResponse;)Lcom/iMe/storage/domain/model/staking/StakingToken;

    move-result-object v12

    .line 27
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/i_staking/response/StakingMetadataResponse;->getApy()D

    move-result-wide v13

    .line 28
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/i_staking/response/StakingMetadataResponse;->getApr()D

    move-result-wide v15

    .line 29
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/i_staking/response/StakingMetadataResponse;->getIncomePeriod()J

    move-result-wide v17

    .line 30
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/i_staking/response/StakingMetadataResponse;->getIncomePercent()D

    move-result-wide v19

    .line 31
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/i_staking/response/StakingMetadataResponse;->getPrematureWithdrawalFee()D

    move-result-wide v21

    .line 32
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/i_staking/response/StakingMetadataResponse;->getImmediateWithdrawalFee()D

    move-result-wide v23

    .line 33
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/i_staking/response/StakingMetadataResponse;->getSafeWithdrawalFee()D

    move-result-wide v25

    .line 34
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/i_staking/response/StakingMetadataResponse;->getSafeWithdrawalDuration()J

    move-result-wide v27

    .line 35
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/i_staking/response/StakingMetadataResponse;->getCompoundAccrualThreshold()Ljava/math/BigDecimal;

    move-result-object v29

    .line 36
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/i_staking/response/StakingMetadataResponse;->getStats()Lcom/iMe/i_staking/response/StakingStatsResponse;

    move-result-object v2

    invoke-static {v2}, Lcom/iMe/i_staking/mapper/StakingStatsMapperKt;->mapToDomain(Lcom/iMe/i_staking/response/StakingStatsResponse;)Lcom/iMe/storage/domain/model/staking/StakingStats;

    move-result-object v30

    .line 37
    sget-object v2, Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;->Companion:Lcom/iMe/storage/domain/model/crypto/level/AccountLevel$Companion;

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/i_staking/response/StakingMetadataResponse;->getMinimalRank()Ljava/lang/String;

    move-result-object v31

    if-nez v31, :cond_0

    const-string v31, ""

    :cond_0
    move-object/from16 v1, v31

    invoke-virtual {v2, v1}, Lcom/iMe/storage/domain/model/crypto/level/AccountLevel$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;

    move-result-object v31

    .line 38
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/i_staking/response/StakingMetadataResponse;->getWebsite()Ljava/lang/String;

    move-result-object v32

    move-object v2, v0

    .line 17
    invoke-direct/range {v2 .. v32}, Lcom/iMe/storage/domain/model/staking/StakingMetadata;-><init>(JLcom/iMe/storage/domain/model/crypto/NetworkType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iMe/storage/domain/model/staking/StakingToken;Lcom/iMe/storage/domain/model/staking/StakingToken;DDJDDDDJLjava/math/BigDecimal;Lcom/iMe/storage/domain/model/staking/StakingStats;Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final mapToDomain(Lcom/iMe/i_staking/response/StakingProgrammesResponse;)Lcom/iMe/storage/domain/model/staking/StakingProgrammes;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0}, Lcom/iMe/i_staking/response/StakingProgrammesResponse;->getTotal()I

    move-result v0

    .line 13
    invoke-virtual {p0}, Lcom/iMe/i_staking/response/StakingProgrammesResponse;->getProgrammes()Ljava/util/List;

    move-result-object p0

    .line 1549
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1621
    check-cast v2, Lcom/iMe/i_staking/response/StakingMetadataResponse;

    .line 13
    invoke-static {v2}, Lcom/iMe/i_staking/mapper/StakingMetadataMapperKt;->mapToDomain(Lcom/iMe/i_staking/response/StakingMetadataResponse;)Lcom/iMe/storage/domain/model/staking/StakingMetadata;

    move-result-object v2

    .line 1621
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 11
    :cond_0
    new-instance p0, Lcom/iMe/storage/domain/model/staking/StakingProgrammes;

    invoke-direct {p0, v0, v1}, Lcom/iMe/storage/domain/model/staking/StakingProgrammes;-><init>(ILjava/util/List;)V

    return-object p0
.end method
