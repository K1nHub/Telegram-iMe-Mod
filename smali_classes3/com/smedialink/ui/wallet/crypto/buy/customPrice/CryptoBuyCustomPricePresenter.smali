.class public final Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPricePresenter;
.super Lcom/smedialink/ui/base/mvp/base/BasePresenter;
.source "CryptoBuyCustomPricePresenter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/smedialink/ui/base/mvp/base/BasePresenter<",
        "Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceView;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCryptoBuyCustomPricePresenter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CryptoBuyCustomPricePresenter.kt\ncom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPricePresenter\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,109:1\n1#2:110\n*E\n"
.end annotation

.annotation runtime Lmoxy/InjectViewState;
.end annotation


# instance fields
.field private final customPriceValidator:Lcom/smedialink/utils/validator/wallet/CustomPriceValidator;

.field private fromCurrency:Lcom/smedialink/storage/domain/model/crypto/simplex/Currency;

.field private final limits:Lcom/smedialink/storage/domain/model/crypto/simplex/CustomPriceLimits;

.field private final minItem:Lcom/smedialink/model/wallet/crypto/buy/CryptoBuyItem;

.field private final resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

.field private final simplexInteractor:Lcom/smedialink/storage/domain/interactor/crypto/simplex/SimplexInteractor;

.field private toCurrency:Lcom/smedialink/storage/domain/model/crypto/simplex/Currency;


# direct methods
.method public constructor <init>(Lcom/smedialink/model/wallet/crypto/buy/CryptoBuyItem;Lcom/smedialink/storage/domain/interactor/crypto/simplex/SimplexInteractor;Lcom/smedialink/storage/domain/utils/system/ResourceManager;Lcom/smedialink/utils/validator/wallet/CustomPriceValidator;)V
    .locals 1

    const-string v0, "minItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "simplexInteractor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "customPriceValidator"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0}, Lcom/smedialink/ui/base/mvp/base/BasePresenter;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPricePresenter;->minItem:Lcom/smedialink/model/wallet/crypto/buy/CryptoBuyItem;

    .line 20
    iput-object p2, p0, Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPricePresenter;->simplexInteractor:Lcom/smedialink/storage/domain/interactor/crypto/simplex/SimplexInteractor;

    .line 21
    iput-object p3, p0, Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPricePresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    .line 22
    iput-object p4, p0, Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPricePresenter;->customPriceValidator:Lcom/smedialink/utils/validator/wallet/CustomPriceValidator;

    .line 26
    invoke-virtual {p1}, Lcom/smedialink/model/wallet/crypto/buy/CryptoBuyItem;->getQuote()Lcom/smedialink/storage/domain/model/crypto/simplex/BuyingCryptoQuote;

    move-result-object p3

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2, p3}, Lcom/smedialink/storage/domain/interactor/crypto/simplex/SimplexInteractor;->calculateCustomPriceLimits(Lcom/smedialink/storage/domain/model/crypto/simplex/BuyingCryptoQuote;)Lcom/smedialink/storage/domain/model/crypto/simplex/CustomPriceLimits;

    move-result-object p2

    iput-object p2, p0, Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPricePresenter;->limits:Lcom/smedialink/storage/domain/model/crypto/simplex/CustomPriceLimits;

    .line 27
    sget-object p2, Lcom/smedialink/storage/domain/model/crypto/simplex/FiatCurrency;->USD:Lcom/smedialink/storage/domain/model/crypto/simplex/FiatCurrency;

    iput-object p2, p0, Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPricePresenter;->fromCurrency:Lcom/smedialink/storage/domain/model/crypto/simplex/Currency;

    .line 28
    sget-object p2, Lcom/smedialink/storage/domain/model/crypto/simplex/DigitalCurrency;->Companion:Lcom/smedialink/storage/domain/model/crypto/simplex/DigitalCurrency$Companion;

    invoke-virtual {p1}, Lcom/smedialink/model/wallet/crypto/buy/CryptoBuyItem;->getTokenInfo()Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;->getCode()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/smedialink/storage/domain/model/crypto/simplex/DigitalCurrency$Companion;->map(Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;)Lcom/smedialink/storage/domain/model/crypto/simplex/DigitalCurrency;

    move-result-object p1

    iput-object p1, p0, Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPricePresenter;->toCurrency:Lcom/smedialink/storage/domain/model/crypto/simplex/Currency;

    return-void
.end method

.method private final getConfirmationDialogModel(F)Lcom/smedialink/model/dialog/DialogModel;
    .locals 6

    .line 82
    new-instance v0, Lcom/smedialink/model/dialog/DialogModel;

    .line 83
    iget-object v1, p0, Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPricePresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    sget v2, Lorg/telegram/messenger/R$string;->wallet_crypto_buy_confirm_dialog_title:I

    invoke-interface {v1, v2}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 84
    iget-object v2, p0, Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPricePresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    .line 85
    sget v3, Lorg/telegram/messenger/R$string;->wallet_crypto_buy_confirm_dialog_description:I

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 86
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iget-object v5, p0, Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPricePresenter;->minItem:Lcom/smedialink/model/wallet/crypto/buy/CryptoBuyItem;

    invoke-virtual {v5}, Lcom/smedialink/model/wallet/crypto/buy/CryptoBuyItem;->getTokenInfo()Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;->getDecimals()I

    move-result v5

    invoke-static {p1, v5}, Lcom/smedialink/utils/formatter/BalanceFormatter;->formatBalance(Ljava/lang/Number;I)Ljava/lang/String;

    move-result-object p1

    const/4 v5, 0x0

    aput-object p1, v4, v5

    .line 87
    iget-object p1, p0, Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPricePresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    iget-object v5, p0, Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPricePresenter;->minItem:Lcom/smedialink/model/wallet/crypto/buy/CryptoBuyItem;

    invoke-virtual {v5}, Lcom/smedialink/model/wallet/crypto/buy/CryptoBuyItem;->getTokenInfo()Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;->getShortName()I

    move-result v5

    invoke-interface {p1, v5}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v5, 0x1

    aput-object p1, v4, v5

    .line 84
    invoke-interface {v2, v3, v4}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 89
    iget-object v2, p0, Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPricePresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    sget v3, Lorg/telegram/messenger/R$string;->common_cancel:I

    invoke-interface {v2, v3}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 90
    iget-object v3, p0, Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPricePresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    sget v4, Lorg/telegram/messenger/R$string;->wallet_crypto_buy_confirm_dialog_action_txt:I

    invoke-interface {v3, v4}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 82
    invoke-direct {v0, v1, p1, v2, v3}, Lcom/smedialink/model/dialog/DialogModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private final isValidInput(Lcom/smedialink/storage/domain/model/crypto/simplex/Currency;Ljava/lang/Float;)Z
    .locals 3

    .line 94
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPricePresenter;->customPriceValidator:Lcom/smedialink/utils/validator/wallet/CustomPriceValidator;

    new-instance v1, Lcom/smedialink/utils/validator/wallet/CustomPriceValidator$CustomPriceArgs;

    iget-object v2, p0, Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPricePresenter;->limits:Lcom/smedialink/storage/domain/model/crypto/simplex/CustomPriceLimits;

    invoke-direct {v1, p1, v2}, Lcom/smedialink/utils/validator/wallet/CustomPriceValidator$CustomPriceArgs;-><init>(Lcom/smedialink/storage/domain/model/crypto/simplex/Currency;Lcom/smedialink/storage/domain/model/crypto/simplex/CustomPriceLimits;)V

    invoke-virtual {v0, p2, v1}, Lcom/smedialink/utils/validator/wallet/CustomPriceValidator;->validate(Ljava/lang/Float;Lcom/smedialink/utils/validator/wallet/CustomPriceValidator$CustomPriceArgs;)Lcom/smedialink/utils/validator/wallet/CustomPriceValidator$State;

    move-result-object p1

    .line 96
    sget-object p2, Lcom/smedialink/utils/validator/wallet/CustomPriceValidator$State$Valid;->INSTANCE:Lcom/smedialink/utils/validator/wallet/CustomPriceValidator$State$Valid;

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceView;

    invoke-interface {v0}, Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceView;->resetInputError()V

    goto :goto_0

    .line 97
    :cond_0
    sget-object v0, Lcom/smedialink/utils/validator/wallet/CustomPriceValidator$State$Invalid$DefaultOrEmpty;->INSTANCE:Lcom/smedialink/utils/validator/wallet/CustomPriceValidator$State$Invalid$DefaultOrEmpty;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceView;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceView;->showExchangedValue(F)V

    goto :goto_0

    .line 98
    :cond_1
    instance-of v0, p1, Lcom/smedialink/utils/validator/wallet/CustomPriceValidator$State$Invalid$AmountLimit;

    if-eqz v0, :cond_2

    .line 99
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceView;

    move-object v1, p1

    check-cast v1, Lcom/smedialink/utils/validator/wallet/CustomPriceValidator$State$Invalid$AmountLimit;

    invoke-virtual {v1}, Lcom/smedialink/utils/validator/wallet/CustomPriceValidator$State$Invalid$AmountLimit;->getAmount()F

    move-result v2

    invoke-interface {v0, v2}, Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceView;->showExchangedValue(F)V

    .line 100
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceView;

    invoke-virtual {v1}, Lcom/smedialink/utils/validator/wallet/CustomPriceValidator$State$Invalid$AmountLimit;->getErrorText()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceView;->showInputError(Ljava/lang/String;)V

    .line 104
    :cond_2
    :goto_0
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public final calculateExchangeValues(Ljava/lang/String;)V
    .locals 1

    const-string v0, "inputValue"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-static {p1}, Lkotlin/text/StringsKt;->toFloatOrNull(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    .line 46
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPricePresenter;->fromCurrency:Lcom/smedialink/storage/domain/model/crypto/simplex/Currency;

    invoke-direct {p0, v0, p1}, Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPricePresenter;->isValidInput(Lcom/smedialink/storage/domain/model/crypto/simplex/Currency;Ljava/lang/Float;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPricePresenter;->fromCurrency:Lcom/smedialink/storage/domain/model/crypto/simplex/Currency;

    .line 49
    instance-of v0, v0, Lcom/smedialink/storage/domain/model/crypto/simplex/DigitalCurrency;

    if-eqz v0, :cond_1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPricePresenter;->minItem:Lcom/smedialink/model/wallet/crypto/buy/CryptoBuyItem;

    invoke-virtual {v0}, Lcom/smedialink/model/wallet/crypto/buy/CryptoBuyItem;->getQuote()Lcom/smedialink/storage/domain/model/crypto/simplex/BuyingCryptoQuote;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/crypto/simplex/BuyingCryptoQuote;->getFiatMoneyAmount()F

    move-result v0

    mul-float/2addr p1, v0

    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPricePresenter;->minItem:Lcom/smedialink/model/wallet/crypto/buy/CryptoBuyItem;

    invoke-virtual {v0}, Lcom/smedialink/model/wallet/crypto/buy/CryptoBuyItem;->getQuote()Lcom/smedialink/storage/domain/model/crypto/simplex/BuyingCryptoQuote;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/crypto/simplex/BuyingCryptoQuote;->getCryptoMoneyAmount()F

    move-result v0

    goto :goto_0

    .line 50
    :cond_1
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPricePresenter;->minItem:Lcom/smedialink/model/wallet/crypto/buy/CryptoBuyItem;

    invoke-virtual {v0}, Lcom/smedialink/model/wallet/crypto/buy/CryptoBuyItem;->getQuote()Lcom/smedialink/storage/domain/model/crypto/simplex/BuyingCryptoQuote;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/crypto/simplex/BuyingCryptoQuote;->getCryptoMoneyAmount()F

    move-result v0

    mul-float/2addr p1, v0

    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPricePresenter;->minItem:Lcom/smedialink/model/wallet/crypto/buy/CryptoBuyItem;

    invoke-virtual {v0}, Lcom/smedialink/model/wallet/crypto/buy/CryptoBuyItem;->getQuote()Lcom/smedialink/storage/domain/model/crypto/simplex/BuyingCryptoQuote;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/crypto/simplex/BuyingCryptoQuote;->getFiatMoneyAmount()F

    move-result v0

    :goto_0
    div-float/2addr p1, v0

    .line 53
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceView;

    invoke-interface {v0, p1}, Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceView;->showExchangedValue(F)V

    return-void
.end method

.method public final changeExchangeCurrency(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "from"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "to"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    invoke-static {p1}, Lkotlin/text/StringsKt;->toFloatOrNull(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    goto :goto_0

    :cond_0
    move p1, v0

    .line 59
    :goto_0
    invoke-static {p2}, Lkotlin/text/StringsKt;->toFloatOrNull(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 62
    :cond_1
    iget-object p2, p0, Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPricePresenter;->toCurrency:Lcom/smedialink/storage/domain/model/crypto/simplex/Currency;

    iget-object v1, p0, Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPricePresenter;->fromCurrency:Lcom/smedialink/storage/domain/model/crypto/simplex/Currency;

    iput-object v1, p0, Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPricePresenter;->toCurrency:Lcom/smedialink/storage/domain/model/crypto/simplex/Currency;

    iput-object p2, p0, Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPricePresenter;->fromCurrency:Lcom/smedialink/storage/domain/model/crypto/simplex/Currency;

    .line 66
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p2

    check-cast p2, Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceView;

    iget-object v1, p0, Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPricePresenter;->fromCurrency:Lcom/smedialink/storage/domain/model/crypto/simplex/Currency;

    iget-object v2, p0, Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPricePresenter;->toCurrency:Lcom/smedialink/storage/domain/model/crypto/simplex/Currency;

    invoke-interface {p2, v0, p1, v1, v2}, Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceView;->configureExchangeState(FFLcom/smedialink/storage/domain/model/crypto/simplex/Currency;Lcom/smedialink/storage/domain/model/crypto/simplex/Currency;)V

    .line 67
    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPricePresenter;->calculateExchangeValues(Ljava/lang/String;)V

    return-void
.end method

.method protected onFirstViewAttach()V
    .locals 4

    .line 75
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceView;

    iget-object v1, p0, Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPricePresenter;->fromCurrency:Lcom/smedialink/storage/domain/model/crypto/simplex/Currency;

    iget-object v2, p0, Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPricePresenter;->toCurrency:Lcom/smedialink/storage/domain/model/crypto/simplex/Currency;

    const/4 v3, 0x0

    invoke-interface {v0, v3, v3, v1, v2}, Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceView;->configureExchangeState(FFLcom/smedialink/storage/domain/model/crypto/simplex/Currency;Lcom/smedialink/storage/domain/model/crypto/simplex/Currency;)V

    return-void
.end method

.method public final validateExchange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "fromAmount"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "toAmount"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-static {p1}, Lkotlin/text/StringsKt;->toFloatOrNull(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    goto :goto_0

    :cond_0
    move p1, v0

    .line 34
    :goto_0
    invoke-static {p2}, Lkotlin/text/StringsKt;->toFloatOrNull(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 36
    :cond_1
    iget-object p2, p0, Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPricePresenter;->simplexInteractor:Lcom/smedialink/storage/domain/interactor/crypto/simplex/SimplexInteractor;

    iget-object v1, p0, Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPricePresenter;->limits:Lcom/smedialink/storage/domain/model/crypto/simplex/CustomPriceLimits;

    iget-object v2, p0, Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPricePresenter;->fromCurrency:Lcom/smedialink/storage/domain/model/crypto/simplex/Currency;

    invoke-virtual {p2, v1, p1, v2}, Lcom/smedialink/storage/domain/interactor/crypto/simplex/SimplexInteractor;->isValidPurchaseAmount(Lcom/smedialink/storage/domain/model/crypto/simplex/CustomPriceLimits;FLcom/smedialink/storage/domain/model/crypto/simplex/Currency;)Z

    move-result p2

    if-nez p2, :cond_2

    return-void

    .line 38
    :cond_2
    iget-object p2, p0, Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPricePresenter;->fromCurrency:Lcom/smedialink/storage/domain/model/crypto/simplex/Currency;

    instance-of p2, p2, Lcom/smedialink/storage/domain/model/crypto/simplex/FiatCurrency;

    if-eqz p2, :cond_3

    goto :goto_1

    :cond_3
    move v0, p1

    .line 40
    :goto_1
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p2

    check-cast p2, Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceView;

    iget-object v1, p0, Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPricePresenter;->fromCurrency:Lcom/smedialink/storage/domain/model/crypto/simplex/Currency;

    invoke-direct {p0, v0}, Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPricePresenter;->getConfirmationDialogModel(F)Lcom/smedialink/model/dialog/DialogModel;

    move-result-object v0

    invoke-interface {p2, p1, v1, v0}, Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceView;->showConfirmDialog(FLcom/smedialink/storage/domain/model/crypto/simplex/Currency;Lcom/smedialink/model/dialog/DialogModel;)V

    return-void
.end method
