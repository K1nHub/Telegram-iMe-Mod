.class public final Lcom/iMe/mapper/staking/StakingMetadataUiMappingKt;
.super Ljava/lang/Object;
.source "StakingMetadataUiMapping.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStakingMetadataUiMapping.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StakingMetadataUiMapping.kt\ncom/iMe/mapper/staking/StakingMetadataUiMappingKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,40:1\n1549#2:41\n1620#2,3:42\n*S KotlinDebug\n*F\n+ 1 StakingMetadataUiMapping.kt\ncom/iMe/mapper/staking/StakingMetadataUiMappingKt\n*L\n15#1:41\n15#1:42,3\n*E\n"
.end annotation


# direct methods
.method public static final mapToUi(Ljava/util/List;)Ljava/util/List;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/staking/StakingMetadata;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/iMe/model/staking/StakingProgrammeItem;",
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

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1621
    check-cast v2, Lcom/iMe/storage/domain/model/staking/StakingMetadata;

    .line 17
    sget-object v3, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->Companion:Lcom/iMe/storage/domain/model/wallet/token/TokenBalance$Companion;

    .line 18
    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->getToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v4

    .line 17
    invoke-virtual {v3, v4}, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance$Companion;->createEmptyBalanceFor(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    move-result-object v5

    .line 21
    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->getId()J

    move-result-wide v3

    .line 22
    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->getName()Ljava/lang/String;

    move-result-object v15

    .line 23
    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->getStats()Lcom/iMe/storage/domain/model/staking/StakingStats;

    move-result-object v6

    invoke-virtual {v6}, Lcom/iMe/storage/domain/model/staking/StakingStats;->isParticipated()Z

    move-result v16

    .line 25
    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->getStats()Lcom/iMe/storage/domain/model/staking/StakingStats;

    move-result-object v6

    invoke-virtual {v6}, Lcom/iMe/storage/domain/model/staking/StakingStats;->getDebt()Lcom/iMe/storage/domain/model/staking/StakingValues;

    move-result-object v6

    const/4 v14, 0x0

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Lcom/iMe/storage/domain/model/staking/StakingValues;->getAsToken()Ljava/math/BigDecimal;

    move-result-object v6

    goto :goto_1

    :cond_0
    move-object v6, v14

    :goto_1
    invoke-static {v6}, Lcom/iMe/storage/data/utils/extentions/NumberExtKt;->orZero(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v6

    invoke-virtual {v6}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v6

    .line 26
    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->getStats()Lcom/iMe/storage/domain/model/staking/StakingStats;

    move-result-object v8

    invoke-virtual {v8}, Lcom/iMe/storage/domain/model/staking/StakingStats;->getDebt()Lcom/iMe/storage/domain/model/staking/StakingValues;

    move-result-object v8

    if-eqz v8, :cond_1

    invoke-virtual {v8}, Lcom/iMe/storage/domain/model/staking/StakingValues;->getAsFiat()Lcom/iMe/storage/domain/model/wallet/token/FiatValue;

    move-result-object v8

    if-nez v8, :cond_2

    :cond_1
    sget-object v8, Lcom/iMe/storage/domain/model/wallet/token/FiatValue;->Companion:Lcom/iMe/storage/domain/model/wallet/token/FiatValue$Companion;

    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    invoke-static {v8, v9, v10, v11, v14}, Lcom/iMe/storage/domain/model/wallet/token/FiatValue$Companion;->createUSDValue$default(Lcom/iMe/storage/domain/model/wallet/token/FiatValue$Companion;DILjava/lang/Object;)Lcom/iMe/storage/domain/model/wallet/token/FiatValue;

    move-result-object v8

    :cond_2
    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    const/16 v13, 0x1c

    const/16 v17, 0x0

    move-object/from16 v18, v14

    move-object/from16 v14, v17

    .line 24
    invoke-static/range {v5 .. v14}, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->copy$default(Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;DLcom/iMe/storage/domain/model/wallet/token/FiatValue;Lcom/iMe/storage/domain/model/wallet/token/FiatValue;DLcom/iMe/storage/domain/model/wallet/token/TokenDetailed;ILjava/lang/Object;)Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    move-result-object v11

    .line 28
    invoke-static {v2}, Lcom/iMe/utils/extentions/model/wallet/StakingMetadataExtKt;->getFormattedAPR(Lcom/iMe/storage/domain/model/staking/StakingMetadata;)Ljava/lang/String;

    move-result-object v12

    .line 29
    invoke-static {v2}, Lcom/iMe/utils/extentions/model/wallet/StakingMetadataExtKt;->getFormattedAPY(Lcom/iMe/storage/domain/model/staking/StakingMetadata;)Ljava/lang/String;

    move-result-object v13

    .line 30
    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->getStats()Lcom/iMe/storage/domain/model/staking/StakingStats;

    move-result-object v5

    invoke-virtual {v5}, Lcom/iMe/storage/domain/model/staking/StakingStats;->getDebt()Lcom/iMe/storage/domain/model/staking/StakingValues;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Lcom/iMe/storage/domain/model/staking/StakingValues;->getAsToken()Ljava/math/BigDecimal;

    move-result-object v14

    goto :goto_2

    :cond_3
    move-object/from16 v14, v18

    :goto_2
    invoke-static {v14}, Lcom/iMe/storage/data/utils/extentions/NumberExtKt;->orZero(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v5

    .line 32
    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->getCompoundAccrualThreshold()Ljava/math/BigDecimal;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v6

    if-ltz v6, :cond_4

    sget-object v5, Lcom/iMe/model/staking/StakingAnnualPercentageMode;->APY:Lcom/iMe/model/staking/StakingAnnualPercentageMode;

    :goto_3
    move-object v14, v5

    goto :goto_4

    .line 33
    :cond_4
    sget-object v6, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    invoke-virtual {v5, v6}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v5

    if-lez v5, :cond_5

    sget-object v5, Lcom/iMe/model/staking/StakingAnnualPercentageMode;->APR:Lcom/iMe/model/staking/StakingAnnualPercentageMode;

    goto :goto_3

    .line 34
    :cond_5
    sget-object v5, Lcom/iMe/model/staking/StakingAnnualPercentageMode;->NONE:Lcom/iMe/model/staking/StakingAnnualPercentageMode;

    goto :goto_3

    .line 37
    :goto_4
    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/staking/StakingMetadata;->getEndsAt()Ljava/lang/String;

    move-result-object v2

    sget-object v5, Lcom/iMe/utils/formatter/DateFormatter$DateType;->ONLY_DATE:Lcom/iMe/utils/formatter/DateFormatter$DateType;

    invoke-static {v2, v5}, Lcom/iMe/utils/extentions/common/StringExtKt;->formatISODate(Ljava/lang/String;Lcom/iMe/utils/formatter/DateFormatter$DateType;)Ljava/lang/String;

    move-result-object v2

    .line 20
    new-instance v5, Lcom/iMe/model/staking/StakingProgrammeItem;

    move-object v6, v5

    move-wide v7, v3

    move-object v9, v15

    move/from16 v10, v16

    move-object v15, v2

    invoke-direct/range {v6 .. v15}, Lcom/iMe/model/staking/StakingProgrammeItem;-><init>(JLjava/lang/String;ZLcom/iMe/storage/domain/model/wallet/token/TokenBalance;Ljava/lang/String;Ljava/lang/String;Lcom/iMe/model/staking/StakingAnnualPercentageMode;Ljava/lang/String;)V

    .line 1621
    invoke-interface {v1, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_6
    return-object v1
.end method
