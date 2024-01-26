.class public final Lcom/iMe/mapper/cryptobox/CryptoBoxTransactionActionUiMappingKt;
.super Ljava/lang/Object;
.source "CryptoBoxTransactionActionUiMapping.kt"


# direct methods
.method public static final mapToUi(Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTransactionAction;Lcom/iMe/storage/domain/utils/system/ResourceManager;)Lcom/iMe/model/wallet/crypto/send/fee/FeeType;
    .locals 17

    move-object/from16 v0, p1

    const-string v1, "<this>"

    move-object/from16 v2, p0

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "resourceManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    new-instance v1, Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;

    .line 16
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTransactionAction;->getTransaction()Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTransactionArgs;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTransactionArgs;->getGasPrice()Ljava/math/BigInteger;

    move-result-object v4

    .line 17
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTransactionAction;->getTransaction()Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTransactionArgs;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTransactionArgs;->getGasLimit()Ljava/math/BigInteger;

    move-result-object v5

    .line 18
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTransactionAction;->getGas()Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTransactionGas;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTransactionGas;->getDurationMinutes()I

    move-result v6

    .line 19
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTransactionAction;->getGas()Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTransactionGas;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTransactionGas;->getValue()Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxValues;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxValues;->getAsToken()Ljava/math/BigDecimal;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v7

    .line 20
    sget-object v3, Lcom/iMe/storage/domain/model/wallet/token/FiatValue;->Companion:Lcom/iMe/storage/domain/model/wallet/token/FiatValue$Companion;

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTransactionAction;->getGas()Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTransactionGas;

    move-result-object v9

    invoke-virtual {v9}, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTransactionGas;->getValue()Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxValues;

    move-result-object v9

    invoke-virtual {v9}, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxValues;->getAsUsd()D

    move-result-wide v9

    invoke-virtual {v3, v9, v10}, Lcom/iMe/storage/domain/model/wallet/token/FiatValue$Companion;->createUSDValue(D)Lcom/iMe/storage/domain/model/wallet/token/FiatValue;

    move-result-object v9

    move-object v3, v1

    .line 15
    invoke-direct/range {v3 .. v9}, Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;IDLcom/iMe/storage/domain/model/wallet/token/FiatValue;)V

    .line 22
    new-instance v16, Lcom/iMe/model/wallet/crypto/send/fee/FeeType$Default;

    .line 23
    new-instance v11, Lcom/iMe/model/dialog/DialogModel;

    .line 24
    sget v3, Lorg/telegram/messenger/R$string;->wallet_amount_send_fee_dialog_title:I

    invoke-interface {v0, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 25
    sget v3, Lorg/telegram/messenger/R$string;->common_cancel:I

    invoke-interface {v0, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x6

    const/4 v9, 0x0

    move-object v3, v11

    .line 23
    invoke-direct/range {v3 .. v9}, Lcom/iMe/model/dialog/DialogModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 31
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTransactionAction;->getTransaction()Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTransactionArgs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTransactionArgs;->getNonce()Ljava/math/BigInteger;

    move-result-object v7

    .line 32
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTransactionAction;->getTransaction()Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTransactionArgs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTransactionArgs;->getChainId()J

    move-result-wide v8

    .line 27
    new-instance v12, Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ether;

    move-object v3, v12

    move-object v4, v1

    invoke-direct/range {v3 .. v9}, Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ether;-><init>(Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;Ljava/math/BigInteger;J)V

    .line 34
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTransactionAction;->getGas()Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTransactionGas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTransactionGas;->getToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v13

    .line 35
    new-instance v14, Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;

    .line 36
    sget-object v0, Lcom/iMe/storage/domain/model/crypto/send/TransactionSpeedLevel;->MEDIUM:Lcom/iMe/storage/domain/model/crypto/send/TransactionSpeedLevel;

    .line 37
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTransactionAction;->getGas()Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTransactionGas;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTransactionGas;->getToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v2

    .line 35
    invoke-direct {v14, v0, v2, v1}, Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;-><init>(Lcom/iMe/storage/domain/model/crypto/send/TransactionSpeedLevel;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;)V

    .line 40
    sget-object v15, Lcom/iMe/mapper/cryptobox/CryptoBoxTransactionActionUiMappingKt$mapToUi$1;->INSTANCE:Lcom/iMe/mapper/cryptobox/CryptoBoxTransactionActionUiMappingKt$mapToUi$1;

    move-object/from16 v10, v16

    .line 22
    invoke-direct/range {v10 .. v15}, Lcom/iMe/model/wallet/crypto/send/fee/FeeType$Default;-><init>(Lcom/iMe/model/dialog/DialogModel;Lcom/iMe/storage/domain/model/crypto/TransactionParams;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;Lkotlin/jvm/functions/Function1;)V

    return-object v16
.end method
