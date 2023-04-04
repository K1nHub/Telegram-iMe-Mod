.class public final Lcom/iMe/mapper/staking/StakingTransactionActionToFeeUiMappingKt;
.super Ljava/lang/Object;
.source "StakingTransactionActionToFeeUiMapping.kt"


# direct methods
.method public static final mapToUi(Lcom/iMe/storage/domain/model/staking/StakingTransactionAction;Lcom/iMe/model/dialog/DialogModel;)Lcom/iMe/ui/custom/FeeView$ChooseFeeType;
    .locals 13

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "model"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    sget-object v0, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo;->Companion:Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Companion;

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/staking/StakingTransactionAction;->getGas()Lcom/iMe/storage/domain/model/staking/StakingTransactionGas;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/staking/StakingTransactionGas;->getToken()Lcom/iMe/storage/domain/model/staking/StakingToken;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/staking/StakingToken;->getTicker()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/domain/model/wallet/token/TokenInfo;

    move-result-object v5

    .line 15
    new-instance v0, Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;

    .line 16
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/staking/StakingTransactionAction;->getTransaction()Lcom/iMe/storage/domain/model/staking/StakingTransactionArgs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/staking/StakingTransactionArgs;->getGasPrice()Ljava/math/BigInteger;

    move-result-object v7

    .line 17
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/staking/StakingTransactionAction;->getTransaction()Lcom/iMe/storage/domain/model/staking/StakingTransactionArgs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/staking/StakingTransactionArgs;->getGasLimit()Ljava/math/BigInteger;

    move-result-object v8

    .line 18
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/staking/StakingTransactionAction;->getGas()Lcom/iMe/storage/domain/model/staking/StakingTransactionGas;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/staking/StakingTransactionGas;->getDuration()I

    move-result v9

    .line 19
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/staking/StakingTransactionAction;->getGas()Lcom/iMe/storage/domain/model/staking/StakingTransactionGas;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/staking/StakingTransactionGas;->getAsNativeToken()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v10

    .line 20
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/staking/StakingTransactionAction;->getGas()Lcom/iMe/storage/domain/model/staking/StakingTransactionGas;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/staking/StakingTransactionGas;->getAsUsd()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->floatValue()F

    move-result v12

    move-object v6, v0

    .line 15
    invoke-direct/range {v6 .. v12}, Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;IDF)V

    .line 22
    new-instance v1, Lcom/iMe/ui/custom/FeeView$ChooseFeeType$Default;

    .line 28
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/staking/StakingTransactionAction;->getTransaction()Lcom/iMe/storage/domain/model/staking/StakingTransactionArgs;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/staking/StakingTransactionArgs;->getNonce()Ljava/math/BigInteger;

    move-result-object v10

    .line 29
    sget-object v2, Lcom/iMe/storage/domain/model/crypto/Chain;->Companion:Lcom/iMe/storage/domain/model/crypto/Chain$Companion;

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/staking/StakingTransactionAction;->getTransaction()Lcom/iMe/storage/domain/model/staking/StakingTransactionArgs;

    move-result-object p0

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/staking/StakingTransactionArgs;->getChainId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/iMe/storage/domain/model/crypto/Chain$Companion;->getChainById(J)Lcom/iMe/storage/domain/model/crypto/Chain;

    move-result-object v11

    .line 24
    new-instance v4, Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ether;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v6, v4

    move-object v7, v0

    invoke-direct/range {v6 .. v11}, Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ether;-><init>(Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;Ljava/math/BigInteger;Lcom/iMe/storage/domain/model/crypto/Chain;)V

    .line 32
    new-instance v6, Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;

    .line 33
    sget-object p0, Lcom/iMe/storage/domain/model/crypto/send/TransactionSpeedLevel;->MEDIUM:Lcom/iMe/storage/domain/model/crypto/send/TransactionSpeedLevel;

    .line 32
    invoke-direct {v6, p0, v5, v0}, Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;-><init>(Lcom/iMe/storage/domain/model/crypto/send/TransactionSpeedLevel;Lcom/iMe/storage/domain/model/wallet/token/TokenInfo;Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;)V

    .line 37
    sget-object v7, Lcom/iMe/mapper/staking/StakingTransactionActionToFeeUiMappingKt$mapToUi$1;->INSTANCE:Lcom/iMe/mapper/staking/StakingTransactionActionToFeeUiMappingKt$mapToUi$1;

    move-object v2, v1

    move-object v3, p1

    .line 22
    invoke-direct/range {v2 .. v7}, Lcom/iMe/ui/custom/FeeView$ChooseFeeType$Default;-><init>(Lcom/iMe/model/dialog/DialogModel;Lcom/iMe/storage/domain/model/crypto/TransactionParams;Lcom/iMe/storage/domain/model/wallet/token/TokenInfo;Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;Lkotlin/jvm/functions/Function1;)V

    return-object v1
.end method
