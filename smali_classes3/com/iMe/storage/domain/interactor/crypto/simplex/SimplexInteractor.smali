.class public final Lcom/iMe/storage/domain/interactor/crypto/simplex/SimplexInteractor;
.super Ljava/lang/Object;
.source "SimplexInteractor.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/storage/domain/interactor/crypto/simplex/SimplexInteractor$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSimplexInteractor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SimplexInteractor.kt\ncom/iMe/storage/domain/interactor/crypto/simplex/SimplexInteractor\n+ 2 ObservableExt.kt\ncom/iMe/storage/domain/utils/extensions/ObservableExtKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,178:1\n29#2,7:179\n16#2,7:186\n54#2,11:193\n29#2,7:204\n1549#3:211\n1620#3,3:212\n*S KotlinDebug\n*F\n+ 1 SimplexInteractor.kt\ncom/iMe/storage/domain/interactor/crypto/simplex/SimplexInteractor\n*L\n54#1:179,7\n68#1:186,7\n100#1:193,11\n138#1:204,7\n151#1:211\n151#1:212,3\n*E\n"
.end annotation


# instance fields
.field private final schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

.field private final simplexRepository:Lcom/iMe/storage/domain/repository/crypto/simplex/SimplexRepository;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/iMe/storage/domain/interactor/crypto/simplex/SimplexInteractor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/storage/domain/interactor/crypto/simplex/SimplexInteractor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/iMe/storage/domain/repository/crypto/simplex/SimplexRepository;Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;)V
    .locals 1

    const-string v0, "simplexRepository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "schedulersProvider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/iMe/storage/domain/interactor/crypto/simplex/SimplexInteractor;->simplexRepository:Lcom/iMe/storage/domain/repository/crypto/simplex/SimplexRepository;

    .line 23
    iput-object p2, p0, Lcom/iMe/storage/domain/interactor/crypto/simplex/SimplexInteractor;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    return-void
.end method

.method public static final synthetic access$withDefaultCustomQuote(Lcom/iMe/storage/domain/interactor/crypto/simplex/SimplexInteractor;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/iMe/storage/domain/interactor/crypto/simplex/SimplexInteractor;->withDefaultCustomQuote(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private final formatQuotesArgs(Lcom/iMe/storage/domain/model/crypto/simplex/FiatCurrency;Lcom/iMe/storage/domain/model/crypto/simplex/Currency;Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/crypto/simplex/FiatCurrency;",
            "Lcom/iMe/storage/domain/model/crypto/simplex/Currency;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/crypto/simplex/BuyingCryptoQuoteArgs;",
            ">;"
        }
    .end annotation

    .line 151
    sget-object v0, Lcom/iMe/storage/domain/model/billing/CryptoProduct;->Companion:Lcom/iMe/storage/domain/model/billing/CryptoProduct$Companion;

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/billing/CryptoProduct$Companion;->getAllAvailableProducts()Ljava/util/List;

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
    check-cast v2, Lcom/iMe/storage/domain/model/billing/CryptoProduct;

    .line 155
    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/billing/CryptoProduct;->getPriceInDollars()F

    move-result v7

    .line 152
    new-instance v2, Lcom/iMe/storage/domain/model/crypto/simplex/BuyingCryptoQuoteArgs;

    move-object v3, v2

    move-object v4, p2

    move-object v5, p1

    move-object v6, p1

    move-object v8, p3

    invoke-direct/range {v3 .. v8}, Lcom/iMe/storage/domain/model/crypto/simplex/BuyingCryptoQuoteArgs;-><init>(Lcom/iMe/storage/domain/model/crypto/simplex/Currency;Lcom/iMe/storage/domain/model/crypto/simplex/Currency;Lcom/iMe/storage/domain/model/crypto/simplex/Currency;FLjava/lang/String;)V

    .line 1621
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static synthetic getAllAvailablePurchasesQuotes$default(Lcom/iMe/storage/domain/interactor/crypto/simplex/SimplexInteractor;Lcom/iMe/storage/domain/model/crypto/simplex/FiatCurrency;Lcom/iMe/storage/domain/model/crypto/simplex/Currency;Ljava/lang/String;ILjava/lang/Object;)Lio/reactivex/Observable;
    .locals 0

    and-int/lit8 p4, p4, 0x1

    if-eqz p4, :cond_0

    .line 48
    sget-object p1, Lcom/iMe/storage/domain/model/crypto/simplex/FiatCurrency;->USD:Lcom/iMe/storage/domain/model/crypto/simplex/FiatCurrency;

    .line 47
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/iMe/storage/domain/interactor/crypto/simplex/SimplexInteractor;->getAllAvailablePurchasesQuotes(Lcom/iMe/storage/domain/model/crypto/simplex/FiatCurrency;Lcom/iMe/storage/domain/model/crypto/simplex/Currency;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method private final withDefaultCustomQuote(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/crypto/simplex/BuyingCryptoQuote;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/crypto/simplex/BuyingCryptoQuote;",
            ">;"
        }
    .end annotation

    .line 163
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    .line 165
    sget-object v0, Lcom/iMe/storage/domain/model/crypto/simplex/BuyingCryptoQuote;->Companion:Lcom/iMe/storage/domain/model/crypto/simplex/BuyingCryptoQuote$Companion;

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/crypto/simplex/BuyingCryptoQuote$Companion;->getCUSTOM_QUOTE()Lcom/iMe/storage/domain/model/crypto/simplex/BuyingCryptoQuote;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method


# virtual methods
.method public final calculateCustomPriceLimits(Lcom/iMe/storage/domain/model/crypto/simplex/BuyingCryptoQuote;)Lcom/iMe/storage/domain/model/crypto/simplex/CustomPriceLimits;
    .locals 4

    const-string v0, "minCalcQuote"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/simplex/BuyingCryptoQuote;->getCryptoMoneyAmount()F

    move-result v0

    const v1, 0x469c4000    # 20000.0f

    mul-float/2addr v0, v1

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/simplex/BuyingCryptoQuote;->getFiatMoneyAmount()F

    move-result v2

    div-float/2addr v0, v2

    .line 44
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/simplex/BuyingCryptoQuote;->getCryptoMoneyAmount()F

    move-result v2

    const/high16 v3, 0x42480000    # 50.0f

    mul-float/2addr v2, v3

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/simplex/BuyingCryptoQuote;->getFiatMoneyAmount()F

    move-result p1

    div-float/2addr v2, p1

    .line 40
    new-instance p1, Lcom/iMe/storage/domain/model/crypto/simplex/CustomPriceLimits;

    invoke-direct {p1, v3, v2, v1, v0}, Lcom/iMe/storage/domain/model/crypto/simplex/CustomPriceLimits;-><init>(FFFF)V

    return-object p1
.end method

.method public final getAllAvailablePurchasesQuotes(Lcom/iMe/storage/domain/model/crypto/simplex/FiatCurrency;Lcom/iMe/storage/domain/model/crypto/simplex/Currency;Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/crypto/simplex/FiatCurrency;",
            "Lcom/iMe/storage/domain/model/crypto/simplex/Currency;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/crypto/simplex/BuyingCryptoQuote;",
            ">;>;>;"
        }
    .end annotation

    const-string v0, "fiatCurrency"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "digitalCurrency"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lcom/iMe/storage/domain/interactor/crypto/simplex/SimplexInteractor;->simplexRepository:Lcom/iMe/storage/domain/repository/crypto/simplex/SimplexRepository;

    .line 53
    invoke-direct {p0, p1, p2, p3}, Lcom/iMe/storage/domain/interactor/crypto/simplex/SimplexInteractor;->formatQuotesArgs(Lcom/iMe/storage/domain/model/crypto/simplex/FiatCurrency;Lcom/iMe/storage/domain/model/crypto/simplex/Currency;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/iMe/storage/domain/repository/crypto/simplex/SimplexRepository;->getBuyingCryptoQuote(Ljava/util/List;)Lio/reactivex/Observable;

    move-result-object p1

    .line 29
    new-instance p2, Lcom/iMe/storage/domain/interactor/crypto/simplex/SimplexInteractor$getAllAvailablePurchasesQuotes$$inlined$mapSuccess$1;

    invoke-direct {p2, p0}, Lcom/iMe/storage/domain/interactor/crypto/simplex/SimplexInteractor$getAllAvailablePurchasesQuotes$$inlined$mapSuccess$1;-><init>(Lcom/iMe/storage/domain/interactor/crypto/simplex/SimplexInteractor;)V

    new-instance p3, Lcom/iMe/storage/domain/utils/extensions/ObservableExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p3, p2}, Lcom/iMe/storage/domain/utils/extensions/ObservableExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p3}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "crossinline body: (T) ->\u2026ult as? R\n        }\n    }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    iget-object p2, p0, Lcom/iMe/storage/domain/interactor/crypto/simplex/SimplexInteractor;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {p2}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 58
    sget-object p2, Lcom/iMe/storage/domain/model/Result;->Companion:Lcom/iMe/storage/domain/model/Result$Companion;

    const/4 p3, 0x0

    const/4 v0, 0x1

    invoke-static {p2, p3, v0, p3}, Lcom/iMe/storage/domain/model/Result$Companion;->loading$default(Lcom/iMe/storage/domain/model/Result$Companion;Ljava/lang/Object;ILjava/lang/Object;)Lcom/iMe/storage/domain/model/Result;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->startWith(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "simplexRepository\n      \u2026artWith(Result.loading())"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
