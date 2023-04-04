.class public final Lcom/iMe/utils/validator/wallet/CustomPriceValidator;
.super Ljava/lang/Object;
.source "CustomPriceValidator.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/utils/validator/wallet/CustomPriceValidator$CustomPriceArgs;,
        Lcom/iMe/utils/validator/wallet/CustomPriceValidator$State;
    }
.end annotation


# instance fields
.field private final resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;


# direct methods
.method public constructor <init>(Lcom/iMe/storage/domain/utils/system/ResourceManager;)V
    .locals 1

    const-string v0, "resourceManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/iMe/utils/validator/wallet/CustomPriceValidator;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    return-void
.end method


# virtual methods
.method public validate(Ljava/lang/Float;Lcom/iMe/utils/validator/wallet/CustomPriceValidator$CustomPriceArgs;)Lcom/iMe/utils/validator/wallet/CustomPriceValidator$State;
    .locals 9

    const-string v0, "args"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-nez p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 22
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Float;F)Z

    move-result v1

    :goto_0
    if-eqz v1, :cond_1

    sget-object p1, Lcom/iMe/utils/validator/wallet/CustomPriceValidator$State$Invalid$DefaultOrEmpty;->INSTANCE:Lcom/iMe/utils/validator/wallet/CustomPriceValidator$State$Invalid$DefaultOrEmpty;

    goto/16 :goto_1

    .line 24
    :cond_1
    invoke-virtual {p2}, Lcom/iMe/utils/validator/wallet/CustomPriceValidator$CustomPriceArgs;->getFromCurrency()Lcom/iMe/storage/domain/model/crypto/simplex/Currency;

    move-result-object v1

    .line 25
    instance-of v2, v1, Lcom/iMe/storage/domain/model/crypto/simplex/DigitalCurrency;

    const/16 v3, 0x20

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v2, :cond_4

    .line 27
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p2}, Lcom/iMe/utils/validator/wallet/CustomPriceValidator$CustomPriceArgs;->getLimits()Lcom/iMe/storage/domain/model/crypto/simplex/CustomPriceLimits;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/crypto/simplex/CustomPriceLimits;->getMaxCryptoAmount()F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    .line 28
    new-instance p1, Lcom/iMe/utils/validator/wallet/CustomPriceValidator$State$Invalid$AmountLimit;

    .line 29
    iget-object v1, p0, Lcom/iMe/utils/validator/wallet/CustomPriceValidator;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    .line 30
    sget v2, Lorg/telegram/messenger/R$string;->wallet_crypto_buy_custom_price_dialog_validation_max_input:I

    new-array v6, v0, [Ljava/lang/Object;

    .line 31
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/iMe/utils/validator/wallet/CustomPriceValidator$CustomPriceArgs;->getLimits()Lcom/iMe/storage/domain/model/crypto/simplex/CustomPriceLimits;

    move-result-object v8

    invoke-virtual {v8}, Lcom/iMe/storage/domain/model/crypto/simplex/CustomPriceLimits;->getMaxCryptoAmount()F

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v5, v0, v4}, Lcom/iMe/utils/extentions/common/StringExtKt;->stripZeros$default(Ljava/lang/String;CILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/iMe/utils/validator/wallet/CustomPriceValidator;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    invoke-virtual {p2}, Lcom/iMe/utils/validator/wallet/CustomPriceValidator$CustomPriceArgs;->getFromCurrency()Lcom/iMe/storage/domain/model/crypto/simplex/Currency;

    move-result-object v3

    invoke-interface {v3}, Lcom/iMe/storage/domain/model/crypto/simplex/Currency;->getSymbol()I

    move-result v3

    invoke-interface {v0, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v5

    .line 29
    invoke-interface {v1, v2, v6}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 33
    invoke-virtual {p2}, Lcom/iMe/utils/validator/wallet/CustomPriceValidator$CustomPriceArgs;->getLimits()Lcom/iMe/storage/domain/model/crypto/simplex/CustomPriceLimits;

    move-result-object p2

    invoke-virtual {p2}, Lcom/iMe/storage/domain/model/crypto/simplex/CustomPriceLimits;->getMaxFiatAmount()F

    move-result p2

    .line 28
    invoke-direct {p1, v0, p2}, Lcom/iMe/utils/validator/wallet/CustomPriceValidator$State$Invalid$AmountLimit;-><init>(Ljava/lang/String;F)V

    goto/16 :goto_1

    .line 36
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p2}, Lcom/iMe/utils/validator/wallet/CustomPriceValidator$CustomPriceArgs;->getLimits()Lcom/iMe/storage/domain/model/crypto/simplex/CustomPriceLimits;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/crypto/simplex/CustomPriceLimits;->getMinCryptoAmount()F

    move-result v1

    cmpg-float p1, p1, v1

    if-gez p1, :cond_3

    .line 37
    new-instance p1, Lcom/iMe/utils/validator/wallet/CustomPriceValidator$State$Invalid$AmountLimit;

    .line 38
    iget-object v1, p0, Lcom/iMe/utils/validator/wallet/CustomPriceValidator;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    .line 39
    sget v2, Lorg/telegram/messenger/R$string;->wallet_crypto_buy_custom_price_dialog_validation_min_input:I

    new-array v6, v0, [Ljava/lang/Object;

    .line 40
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/iMe/utils/validator/wallet/CustomPriceValidator$CustomPriceArgs;->getLimits()Lcom/iMe/storage/domain/model/crypto/simplex/CustomPriceLimits;

    move-result-object v8

    invoke-virtual {v8}, Lcom/iMe/storage/domain/model/crypto/simplex/CustomPriceLimits;->getMinCryptoAmount()F

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v5, v0, v4}, Lcom/iMe/utils/extentions/common/StringExtKt;->stripZeros$default(Ljava/lang/String;CILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/iMe/utils/validator/wallet/CustomPriceValidator;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    invoke-virtual {p2}, Lcom/iMe/utils/validator/wallet/CustomPriceValidator$CustomPriceArgs;->getFromCurrency()Lcom/iMe/storage/domain/model/crypto/simplex/Currency;

    move-result-object v3

    invoke-interface {v3}, Lcom/iMe/storage/domain/model/crypto/simplex/Currency;->getSymbol()I

    move-result v3

    invoke-interface {v0, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v5

    .line 38
    invoke-interface {v1, v2, v6}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 42
    invoke-virtual {p2}, Lcom/iMe/utils/validator/wallet/CustomPriceValidator$CustomPriceArgs;->getLimits()Lcom/iMe/storage/domain/model/crypto/simplex/CustomPriceLimits;

    move-result-object p2

    invoke-virtual {p2}, Lcom/iMe/storage/domain/model/crypto/simplex/CustomPriceLimits;->getMinFiatAmount()F

    move-result p2

    .line 37
    invoke-direct {p1, v0, p2}, Lcom/iMe/utils/validator/wallet/CustomPriceValidator$State$Invalid$AmountLimit;-><init>(Ljava/lang/String;F)V

    goto/16 :goto_1

    .line 45
    :cond_3
    sget-object p1, Lcom/iMe/utils/validator/wallet/CustomPriceValidator$State$Valid;->INSTANCE:Lcom/iMe/utils/validator/wallet/CustomPriceValidator$State$Valid;

    goto/16 :goto_1

    .line 48
    :cond_4
    instance-of v1, v1, Lcom/iMe/storage/domain/model/crypto/simplex/FiatCurrency;

    if-eqz v1, :cond_7

    .line 50
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p2}, Lcom/iMe/utils/validator/wallet/CustomPriceValidator$CustomPriceArgs;->getLimits()Lcom/iMe/storage/domain/model/crypto/simplex/CustomPriceLimits;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/crypto/simplex/CustomPriceLimits;->getMaxFiatAmount()F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_5

    .line 51
    new-instance p1, Lcom/iMe/utils/validator/wallet/CustomPriceValidator$State$Invalid$AmountLimit;

    .line 52
    iget-object v1, p0, Lcom/iMe/utils/validator/wallet/CustomPriceValidator;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    .line 53
    sget v2, Lorg/telegram/messenger/R$string;->wallet_crypto_buy_custom_price_dialog_validation_max_input:I

    new-array v6, v0, [Ljava/lang/Object;

    .line 54
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/iMe/utils/validator/wallet/CustomPriceValidator$CustomPriceArgs;->getLimits()Lcom/iMe/storage/domain/model/crypto/simplex/CustomPriceLimits;

    move-result-object v8

    invoke-virtual {v8}, Lcom/iMe/storage/domain/model/crypto/simplex/CustomPriceLimits;->getMaxFiatAmount()F

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v5, v0, v4}, Lcom/iMe/utils/extentions/common/StringExtKt;->stripZeros$default(Ljava/lang/String;CILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/iMe/utils/validator/wallet/CustomPriceValidator;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    invoke-virtual {p2}, Lcom/iMe/utils/validator/wallet/CustomPriceValidator$CustomPriceArgs;->getFromCurrency()Lcom/iMe/storage/domain/model/crypto/simplex/Currency;

    move-result-object v3

    invoke-interface {v3}, Lcom/iMe/storage/domain/model/crypto/simplex/Currency;->getSymbol()I

    move-result v3

    invoke-interface {v0, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v5

    .line 52
    invoke-interface {v1, v2, v6}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 56
    invoke-virtual {p2}, Lcom/iMe/utils/validator/wallet/CustomPriceValidator$CustomPriceArgs;->getLimits()Lcom/iMe/storage/domain/model/crypto/simplex/CustomPriceLimits;

    move-result-object p2

    invoke-virtual {p2}, Lcom/iMe/storage/domain/model/crypto/simplex/CustomPriceLimits;->getMaxCryptoAmount()F

    move-result p2

    .line 51
    invoke-direct {p1, v0, p2}, Lcom/iMe/utils/validator/wallet/CustomPriceValidator$State$Invalid$AmountLimit;-><init>(Ljava/lang/String;F)V

    goto :goto_1

    .line 59
    :cond_5
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p2}, Lcom/iMe/utils/validator/wallet/CustomPriceValidator$CustomPriceArgs;->getLimits()Lcom/iMe/storage/domain/model/crypto/simplex/CustomPriceLimits;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/crypto/simplex/CustomPriceLimits;->getMinFiatAmount()F

    move-result v1

    cmpg-float p1, p1, v1

    if-gez p1, :cond_6

    .line 60
    new-instance p1, Lcom/iMe/utils/validator/wallet/CustomPriceValidator$State$Invalid$AmountLimit;

    .line 61
    iget-object v1, p0, Lcom/iMe/utils/validator/wallet/CustomPriceValidator;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    .line 62
    sget v2, Lorg/telegram/messenger/R$string;->wallet_crypto_buy_custom_price_dialog_validation_min_input:I

    new-array v6, v0, [Ljava/lang/Object;

    .line 63
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/iMe/utils/validator/wallet/CustomPriceValidator$CustomPriceArgs;->getLimits()Lcom/iMe/storage/domain/model/crypto/simplex/CustomPriceLimits;

    move-result-object v8

    invoke-virtual {v8}, Lcom/iMe/storage/domain/model/crypto/simplex/CustomPriceLimits;->getMinFiatAmount()F

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v5, v0, v4}, Lcom/iMe/utils/extentions/common/StringExtKt;->stripZeros$default(Ljava/lang/String;CILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/iMe/utils/validator/wallet/CustomPriceValidator;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    invoke-virtual {p2}, Lcom/iMe/utils/validator/wallet/CustomPriceValidator$CustomPriceArgs;->getFromCurrency()Lcom/iMe/storage/domain/model/crypto/simplex/Currency;

    move-result-object v3

    invoke-interface {v3}, Lcom/iMe/storage/domain/model/crypto/simplex/Currency;->getSymbol()I

    move-result v3

    invoke-interface {v0, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v5

    .line 61
    invoke-interface {v1, v2, v6}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 65
    invoke-virtual {p2}, Lcom/iMe/utils/validator/wallet/CustomPriceValidator$CustomPriceArgs;->getLimits()Lcom/iMe/storage/domain/model/crypto/simplex/CustomPriceLimits;

    move-result-object p2

    invoke-virtual {p2}, Lcom/iMe/storage/domain/model/crypto/simplex/CustomPriceLimits;->getMinCryptoAmount()F

    move-result p2

    .line 60
    invoke-direct {p1, v0, p2}, Lcom/iMe/utils/validator/wallet/CustomPriceValidator$State$Invalid$AmountLimit;-><init>(Ljava/lang/String;F)V

    goto :goto_1

    .line 68
    :cond_6
    sget-object p1, Lcom/iMe/utils/validator/wallet/CustomPriceValidator$State$Valid;->INSTANCE:Lcom/iMe/utils/validator/wallet/CustomPriceValidator$State$Valid;

    goto :goto_1

    .line 71
    :cond_7
    sget-object p1, Lcom/iMe/utils/validator/wallet/CustomPriceValidator$State$Valid;->INSTANCE:Lcom/iMe/utils/validator/wallet/CustomPriceValidator$State$Valid;

    :goto_1
    return-object p1
.end method
