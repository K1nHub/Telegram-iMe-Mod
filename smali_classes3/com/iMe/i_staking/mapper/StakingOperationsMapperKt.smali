.class public final Lcom/iMe/i_staking/mapper/StakingOperationsMapperKt;
.super Ljava/lang/Object;
.source "StakingOperationsMapper.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStakingOperationsMapper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StakingOperationsMapper.kt\ncom/iMe/i_staking/mapper/StakingOperationsMapperKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,33:1\n1549#2:34\n1620#2,3:35\n*S KotlinDebug\n*F\n+ 1 StakingOperationsMapper.kt\ncom/iMe/i_staking/mapper/StakingOperationsMapperKt\n*L\n13#1:34\n13#1:35,3\n*E\n"
.end annotation


# direct methods
.method public static final mapToDomain(Lcom/iMe/i_staking/response/StakingOperationResponse;)Lcom/iMe/storage/domain/model/staking/StakingOperation;
    .locals 18

    const-string v0, "<this>"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    new-instance v0, Lcom/iMe/storage/domain/model/staking/StakingOperation;

    .line 19
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/i_staking/response/StakingOperationResponse;->getId()J

    move-result-wide v2

    .line 20
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/i_staking/response/StakingOperationResponse;->getStakingId()I

    move-result v4

    .line 21
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/i_staking/response/StakingOperationResponse;->getTransaction()Ljava/lang/String;

    move-result-object v5

    .line 22
    sget-object v6, Lcom/iMe/storage/domain/model/staking/StakingOperationType;->Companion:Lcom/iMe/storage/domain/model/staking/StakingOperationType$Companion;

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/i_staking/response/StakingOperationResponse;->getType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/iMe/storage/domain/model/staking/StakingOperationType$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/domain/model/staking/StakingOperationType;

    move-result-object v6

    .line 23
    sget-object v7, Lcom/iMe/storage/domain/model/staking/StakingOperationStatus;->Companion:Lcom/iMe/storage/domain/model/staking/StakingOperationStatus$Companion;

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/i_staking/response/StakingOperationResponse;->getStatus()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/iMe/storage/domain/model/staking/StakingOperationStatus$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/domain/model/staking/StakingOperationStatus;

    move-result-object v7

    .line 24
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/i_staking/response/StakingOperationResponse;->getIssuer()Ljava/lang/String;

    move-result-object v8

    .line 25
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/i_staking/response/StakingOperationResponse;->getIssuedAt()Ljava/lang/String;

    move-result-object v9

    .line 26
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/i_staking/response/StakingOperationResponse;->getSettledAt()Ljava/lang/String;

    move-result-object v10

    .line 27
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/i_staking/response/StakingOperationResponse;->getFailReason()Ljava/lang/String;

    move-result-object v11

    .line 28
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/i_staking/response/StakingOperationResponse;->getAmount()Lcom/iMe/i_staking/response/StakingOperationCostResponse;

    move-result-object v12

    const/4 v13, 0x0

    if-eqz v12, :cond_0

    invoke-static {v12}, Lcom/iMe/i_staking/mapper/StakingOperationCostMapperKt;->mapToDomain(Lcom/iMe/i_staking/response/StakingOperationCostResponse;)Lcom/iMe/storage/domain/model/staking/StakingOperationCost;

    move-result-object v12

    goto :goto_0

    :cond_0
    move-object v12, v13

    .line 29
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/i_staking/response/StakingOperationResponse;->getFee()Lcom/iMe/i_staking/response/StakingOperationCostResponse;

    move-result-object v14

    if-eqz v14, :cond_1

    invoke-static {v14}, Lcom/iMe/i_staking/mapper/StakingOperationCostMapperKt;->mapToDomain(Lcom/iMe/i_staking/response/StakingOperationCostResponse;)Lcom/iMe/storage/domain/model/staking/StakingOperationCost;

    move-result-object v14

    goto :goto_1

    :cond_1
    move-object v14, v13

    .line 30
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/i_staking/response/StakingOperationResponse;->getSafe()Ljava/lang/Boolean;

    move-result-object v15

    .line 31
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/i_staking/response/StakingOperationResponse;->getApprovedToken()Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;

    move-result-object v16

    if-eqz v16, :cond_2

    invoke-static/range {v16 .. v16}, Lcom/iMe/storage/data/mapper/wallet/TokenMappingKt;->mapToDomain(Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;)Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v13

    :cond_2
    move-object/from16 v16, v13

    .line 32
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/i_staking/response/StakingOperationResponse;->getToken()Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;

    move-result-object v1

    invoke-static {v1}, Lcom/iMe/storage/data/mapper/wallet/TokenMappingKt;->mapToDomain(Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;)Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v17

    move-object v1, v0

    move-object v13, v14

    move-object v14, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    .line 18
    invoke-direct/range {v1 .. v16}, Lcom/iMe/storage/domain/model/staking/StakingOperation;-><init>(JILjava/lang/String;Lcom/iMe/storage/domain/model/staking/StakingOperationType;Lcom/iMe/storage/domain/model/staking/StakingOperationStatus;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iMe/storage/domain/model/staking/StakingOperationCost;Lcom/iMe/storage/domain/model/staking/StakingOperationCost;Ljava/lang/Boolean;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V

    return-object v0
.end method

.method public static final mapToDomain(Lcom/iMe/i_staking/response/StakingOperationsPagedResponse;)Lcom/iMe/storage/domain/model/staking/StakingOperationsPaged;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-virtual {p0}, Lcom/iMe/i_staking/response/StakingOperationsPagedResponse;->getOperations()Ljava/util/List;

    move-result-object v0

    .line 1549
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1621
    check-cast v2, Lcom/iMe/i_staking/response/StakingOperationResponse;

    .line 13
    invoke-static {v2}, Lcom/iMe/i_staking/mapper/StakingOperationsMapperKt;->mapToDomain(Lcom/iMe/i_staking/response/StakingOperationResponse;)Lcom/iMe/storage/domain/model/staking/StakingOperation;

    move-result-object v2

    .line 1621
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p0}, Lcom/iMe/i_staking/response/StakingOperationsPagedResponse;->getNextCursor()Ljava/lang/String;

    move-result-object p0

    .line 12
    new-instance v0, Lcom/iMe/storage/domain/model/staking/StakingOperationsPaged;

    invoke-direct {v0, v1, p0}, Lcom/iMe/storage/domain/model/staking/StakingOperationsPaged;-><init>(Ljava/util/List;Ljava/lang/String;)V

    return-object v0
.end method
