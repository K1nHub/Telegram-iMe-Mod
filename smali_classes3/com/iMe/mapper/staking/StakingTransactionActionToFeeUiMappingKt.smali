.class public final Lcom/iMe/mapper/staking/StakingTransactionActionToFeeUiMappingKt;
.super Ljava/lang/Object;
.source "StakingTransactionActionToFeeUiMapping.kt"


# direct methods
.method public static final mapToUi(Lcom/iMe/storage/domain/model/staking/StakingTransactionAction;Lcom/iMe/model/dialog/DialogModel;)Lcom/iMe/model/wallet/crypto/send/fee/FeeType;
    .locals 12

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "model"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    new-instance v0, Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;

    .line 14
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/staking/StakingTransactionAction;->getTransaction()Lcom/iMe/storage/domain/model/staking/StakingTransactionArgs;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iMe/storage/domain/model/staking/StakingTransactionArgs;->getGasPrice()Ljava/math/BigInteger;

    move-result-object v4

    .line 15
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/staking/StakingTransactionAction;->getTransaction()Lcom/iMe/storage/domain/model/staking/StakingTransactionArgs;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iMe/storage/domain/model/staking/StakingTransactionArgs;->getGasLimit()Ljava/math/BigInteger;

    move-result-object v5

    .line 16
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/staking/StakingTransactionAction;->getGas()Lcom/iMe/storage/domain/model/staking/StakingTransactionGas;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iMe/storage/domain/model/staking/StakingTransactionGas;->getDuration()I

    move-result v6

    .line 17
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/staking/StakingTransactionAction;->getGas()Lcom/iMe/storage/domain/model/staking/StakingTransactionGas;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iMe/storage/domain/model/staking/StakingTransactionGas;->getAsNativeToken()Ljava/math/BigDecimal;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v7

    .line 18
    sget-object v3, Lcom/iMe/storage/domain/model/wallet/token/FiatValue;->Companion:Lcom/iMe/storage/domain/model/wallet/token/FiatValue$Companion;

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/staking/StakingTransactionAction;->getGas()Lcom/iMe/storage/domain/model/staking/StakingTransactionGas;

    move-result-object v9

    invoke-virtual {v9}, Lcom/iMe/storage/domain/model/staking/StakingTransactionGas;->getAsUsd()Ljava/math/BigDecimal;

    move-result-object v9

    invoke-virtual {v9}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v9

    invoke-virtual {v3, v9, v10}, Lcom/iMe/storage/domain/model/wallet/token/FiatValue$Companion;->createUSDValue(D)Lcom/iMe/storage/domain/model/wallet/token/FiatValue;

    move-result-object v9

    move-object v3, v0

    .line 13
    invoke-direct/range {v3 .. v9}, Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;IDLcom/iMe/storage/domain/model/wallet/token/FiatValue;)V

    .line 20
    new-instance v10, Lcom/iMe/model/wallet/crypto/send/fee/FeeType$Default;

    .line 26
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/staking/StakingTransactionAction;->getTransaction()Lcom/iMe/storage/domain/model/staking/StakingTransactionArgs;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iMe/storage/domain/model/staking/StakingTransactionArgs;->getNonce()Ljava/math/BigInteger;

    move-result-object v7

    .line 27
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/staking/StakingTransactionAction;->getTransaction()Lcom/iMe/storage/domain/model/staking/StakingTransactionArgs;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iMe/storage/domain/model/staking/StakingTransactionArgs;->getChainId()J

    move-result-wide v8

    .line 22
    new-instance v11, Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ether;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, v11

    move-object v4, v0

    invoke-direct/range {v3 .. v9}, Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ether;-><init>(Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;Ljava/math/BigInteger;J)V

    .line 29
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/staking/StakingTransactionAction;->getGas()Lcom/iMe/storage/domain/model/staking/StakingTransactionGas;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iMe/storage/domain/model/staking/StakingTransactionGas;->getToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v4

    .line 30
    new-instance v5, Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;

    .line 31
    sget-object v3, Lcom/iMe/storage/domain/model/crypto/send/TransactionSpeedLevel;->MEDIUM:Lcom/iMe/storage/domain/model/crypto/send/TransactionSpeedLevel;

    .line 32
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/staking/StakingTransactionAction;->getGas()Lcom/iMe/storage/domain/model/staking/StakingTransactionGas;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/staking/StakingTransactionGas;->getToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v1

    .line 30
    invoke-direct {v5, v3, v1, v0}, Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;-><init>(Lcom/iMe/storage/domain/model/crypto/send/TransactionSpeedLevel;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;)V

    .line 35
    sget-object v6, Lcom/iMe/mapper/staking/StakingTransactionActionToFeeUiMappingKt$mapToUi$1;->INSTANCE:Lcom/iMe/mapper/staking/StakingTransactionActionToFeeUiMappingKt$mapToUi$1;

    move-object v1, v10

    move-object v2, p1

    move-object v3, v11

    .line 20
    invoke-direct/range {v1 .. v6}, Lcom/iMe/model/wallet/crypto/send/fee/FeeType$Default;-><init>(Lcom/iMe/model/dialog/DialogModel;Lcom/iMe/storage/domain/model/crypto/TransactionParams;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;Lkotlin/jvm/functions/Function1;)V

    return-object v10
.end method
