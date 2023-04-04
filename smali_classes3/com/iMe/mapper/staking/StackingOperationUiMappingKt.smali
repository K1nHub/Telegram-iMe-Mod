.class public final Lcom/iMe/mapper/staking/StackingOperationUiMappingKt;
.super Ljava/lang/Object;
.source "StackingOperationUiMapping.kt"


# direct methods
.method public static final mapToUi(Lcom/iMe/storage/domain/model/staking/StakingOperation;Z)Lcom/chad/library/adapter/base/entity/node/BaseNode;
    .locals 14

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    new-instance v0, Lcom/iMe/model/wallet/transaction/StakingOperationItem;

    .line 11
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/staking/StakingOperation;->getId()J

    move-result-wide v2

    .line 12
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/staking/StakingOperation;->getAmount()Lcom/iMe/storage/domain/model/staking/StakingOperationCost;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/staking/StakingOperationCost;->getValue()Lcom/iMe/storage/domain/model/staking/StakingValues;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/staking/StakingValues;->getAsToken()Ljava/math/BigDecimal;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/iMe/storage/data/utils/extentions/NumberExtKt;->orZero(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v4

    .line 13
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/staking/StakingOperation;->getTokenTicker()Ljava/lang/String;

    move-result-object v5

    .line 14
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/staking/StakingOperation;->getType()Lcom/iMe/storage/domain/model/staking/StakingOperationType;

    move-result-object v6

    .line 15
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/staking/StakingOperation;->getStatus()Lcom/iMe/storage/domain/model/staking/StakingOperationStatus;

    move-result-object v7

    .line 16
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/staking/StakingOperation;->getCreatedAt()Ljava/lang/String;

    move-result-object v8

    .line 17
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/staking/StakingOperation;->getTransaction()Ljava/lang/String;

    move-result-object v9

    .line 18
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/staking/StakingOperation;->getFee()Lcom/iMe/storage/domain/model/staking/StakingOperationCost;

    move-result-object v10

    .line 19
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/staking/StakingOperation;->getSafe()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    move v11, v1

    .line 21
    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo;->Companion:Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Companion;

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/staking/StakingOperation;->getToken()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/domain/model/wallet/token/TokenInfo;

    move-result-object v1

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/staking/StakingOperation;->getNetworkType()Lcom/iMe/storage/domain/model/crypto/NetworkType;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/iMe/storage/domain/utils/extentions/model/TokenInfoExtKt;->getLogo(Lcom/iMe/storage/domain/model/wallet/token/TokenInfo;Lcom/iMe/storage/domain/model/crypto/NetworkType;)I

    move-result v13

    move-object v1, v0

    move v12, p1

    .line 10
    invoke-direct/range {v1 .. v13}, Lcom/iMe/model/wallet/transaction/StakingOperationItem;-><init>(JLjava/math/BigDecimal;Ljava/lang/String;Lcom/iMe/storage/domain/model/staking/StakingOperationType;Lcom/iMe/storage/domain/model/staking/StakingOperationStatus;Ljava/lang/String;Ljava/lang/String;Lcom/iMe/storage/domain/model/staking/StakingOperationCost;ZZI)V

    return-object v0
.end method
