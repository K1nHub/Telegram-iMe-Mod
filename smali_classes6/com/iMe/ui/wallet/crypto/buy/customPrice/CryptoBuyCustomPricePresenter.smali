.class public final Lcom/iMe/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPricePresenter;
.super Lcom/iMe/ui/base/mvp/base/BasePresenter;
.source "CryptoBuyCustomPricePresenter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/iMe/ui/base/mvp/base/BasePresenter<",
        "Lcom/iMe/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceView;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCryptoBuyCustomPricePresenter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CryptoBuyCustomPricePresenter.kt\ncom/iMe/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPricePresenter\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,107:1\n1#2:108\n*E\n"
.end annotation

.annotation runtime Lmoxy/InjectViewState;
.end annotation


# instance fields
.field private fromCurrency:Lcom/iMe/storage/domain/model/crypto/simplex/Currency;

.field private final minItem:Lcom/iMe/model/wallet/crypto/buy/CryptoBuyItem;

.field private final resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

.field private final simplexInteractor:Lcom/iMe/storage/domain/interactor/crypto/simplex/SimplexInteractor;

.field private toCurrency:Lcom/iMe/storage/domain/model/crypto/simplex/Currency;


# direct methods
.method public constructor <init>(Lcom/iMe/model/wallet/crypto/buy/CryptoBuyItem;Lcom/iMe/storage/domain/interactor/crypto/simplex/SimplexInteractor;Lcom/iMe/storage/domain/utils/system/ResourceManager;Lcom/iMe/utils/validator/wallet/CustomPriceValidator;)V
    .locals 1

    const-string v0, "minItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "simplexInteractor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "resourceManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "customPriceValidator"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0}, Lcom/iMe/ui/base/mvp/base/BasePresenter;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/iMe/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPricePresenter;->minItem:Lcom/iMe/model/wallet/crypto/buy/CryptoBuyItem;

    .line 21
    iput-object p2, p0, Lcom/iMe/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPricePresenter;->simplexInteractor:Lcom/iMe/storage/domain/interactor/crypto/simplex/SimplexInteractor;

    .line 22
    iput-object p3, p0, Lcom/iMe/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPricePresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    .line 26
    invoke-virtual {p1}, Lcom/iMe/model/wallet/crypto/buy/CryptoBuyItem;->getQuote()Lcom/iMe/storage/domain/model/crypto/simplex/BuyingCryptoQuote;

    move-result-object p3

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2, p3}, Lcom/iMe/storage/domain/interactor/crypto/simplex/SimplexInteractor;->calculateCustomPriceLimits(Lcom/iMe/storage/domain/model/crypto/simplex/BuyingCryptoQuote;)Lcom/iMe/storage/domain/model/crypto/simplex/CustomPriceLimits;

    .line 27
    sget-object p2, Lcom/iMe/storage/domain/model/crypto/simplex/FiatCurrency;->USD:Lcom/iMe/storage/domain/model/crypto/simplex/FiatCurrency;

    iput-object p2, p0, Lcom/iMe/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPricePresenter;->fromCurrency:Lcom/iMe/storage/domain/model/crypto/simplex/Currency;

    .line 28
    sget-object p2, Lcom/iMe/storage/domain/model/crypto/simplex/DigitalCurrency;->Companion:Lcom/iMe/storage/domain/model/crypto/simplex/DigitalCurrency$Companion;

    invoke-virtual {p1}, Lcom/iMe/model/wallet/crypto/buy/CryptoBuyItem;->getToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getTicker()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    const-string p1, ""

    :cond_1
    invoke-virtual {p2, p1}, Lcom/iMe/storage/domain/model/crypto/simplex/DigitalCurrency$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/domain/model/crypto/simplex/DigitalCurrency;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPricePresenter;->toCurrency:Lcom/iMe/storage/domain/model/crypto/simplex/Currency;

    return-void
.end method


# virtual methods
.method protected onFirstViewAttach()V
    .locals 4

    .line 73
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceView;

    iget-object v1, p0, Lcom/iMe/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPricePresenter;->fromCurrency:Lcom/iMe/storage/domain/model/crypto/simplex/Currency;

    iget-object v2, p0, Lcom/iMe/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPricePresenter;->toCurrency:Lcom/iMe/storage/domain/model/crypto/simplex/Currency;

    const/4 v3, 0x0

    invoke-interface {v0, v3, v3, v1, v2}, Lcom/iMe/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceView;->configureExchangeState(FFLcom/iMe/storage/domain/model/crypto/simplex/Currency;Lcom/iMe/storage/domain/model/crypto/simplex/Currency;)V

    return-void
.end method
