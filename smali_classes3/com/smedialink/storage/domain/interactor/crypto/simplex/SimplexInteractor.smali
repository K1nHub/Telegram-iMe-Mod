.class public final Lcom/smedialink/storage/domain/interactor/crypto/simplex/SimplexInteractor;
.super Ljava/lang/Object;
.source "SimplexInteractor.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smedialink/storage/domain/interactor/crypto/simplex/SimplexInteractor$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSimplexInteractor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SimplexInteractor.kt\ncom/smedialink/storage/domain/interactor/crypto/simplex/SimplexInteractor\n+ 2 ObservableExt.kt\ncom/smedialink/storage/domain/utils/extentions/ObservableExtKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,174:1\n27#2:175\n15#2:176\n49#2:177\n27#2:178\n1549#3:179\n1620#3,3:180\n*S KotlinDebug\n*F\n+ 1 SimplexInteractor.kt\ncom/smedialink/storage/domain/interactor/crypto/simplex/SimplexInteractor\n*L\n51#1:175\n66#1:176\n99#1:177\n133#1:178\n147#1:179\n147#1:180,3\n*E\n"
.end annotation


# instance fields
.field private final schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

.field private final simplexRepository:Lcom/smedialink/storage/domain/repository/crypto/simplex/SimplexRepository;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/smedialink/storage/domain/interactor/crypto/simplex/SimplexInteractor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/smedialink/storage/domain/interactor/crypto/simplex/SimplexInteractor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/smedialink/storage/domain/repository/crypto/simplex/SimplexRepository;Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;)V
    .locals 1

    const-string v0, "simplexRepository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "schedulersProvider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/smedialink/storage/domain/interactor/crypto/simplex/SimplexInteractor;->simplexRepository:Lcom/smedialink/storage/domain/repository/crypto/simplex/SimplexRepository;

    .line 18
    iput-object p2, p0, Lcom/smedialink/storage/domain/interactor/crypto/simplex/SimplexInteractor;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    return-void
.end method

.method public static final synthetic access$withDefaultCustomQuote(Lcom/smedialink/storage/domain/interactor/crypto/simplex/SimplexInteractor;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/smedialink/storage/domain/interactor/crypto/simplex/SimplexInteractor;->withDefaultCustomQuote(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private final formatQuotesArgs(Lcom/smedialink/storage/domain/model/crypto/simplex/FiatCurrency;Lcom/smedialink/storage/domain/model/crypto/simplex/Currency;Lcom/smedialink/storage/domain/model/crypto/NetworkType;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smedialink/storage/domain/model/crypto/simplex/FiatCurrency;",
            "Lcom/smedialink/storage/domain/model/crypto/simplex/Currency;",
            "Lcom/smedialink/storage/domain/model/crypto/NetworkType;",
            ")",
            "Ljava/util/List<",
            "Lcom/smedialink/storage/domain/model/crypto/simplex/BuyingCryptoQuoteArgs;",
            ">;"
        }
    .end annotation

    .line 147
    sget-object v0, Lcom/smedialink/storage/domain/model/billing/CryptoProduct;->Companion:Lcom/smedialink/storage/domain/model/billing/CryptoProduct$Companion;

    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/billing/CryptoProduct$Companion;->getAllAvailableProducts()Ljava/util/List;

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
    check-cast v2, Lcom/smedialink/storage/domain/model/billing/CryptoProduct;

    .line 151
    invoke-virtual {v2}, Lcom/smedialink/storage/domain/model/billing/CryptoProduct;->getPriceInDollars()F

    move-result v7

    .line 148
    new-instance v2, Lcom/smedialink/storage/domain/model/crypto/simplex/BuyingCryptoQuoteArgs;

    move-object v3, v2

    move-object v4, p2

    move-object v5, p1

    move-object v6, p1

    move-object v8, p3

    invoke-direct/range {v3 .. v8}, Lcom/smedialink/storage/domain/model/crypto/simplex/BuyingCryptoQuoteArgs;-><init>(Lcom/smedialink/storage/domain/model/crypto/simplex/Currency;Lcom/smedialink/storage/domain/model/crypto/simplex/Currency;Lcom/smedialink/storage/domain/model/crypto/simplex/Currency;FLcom/smedialink/storage/domain/model/crypto/NetworkType;)V

    .line 1621
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static synthetic getAllAvailablePurchasesQuotes$default(Lcom/smedialink/storage/domain/interactor/crypto/simplex/SimplexInteractor;Lcom/smedialink/storage/domain/model/crypto/simplex/FiatCurrency;Lcom/smedialink/storage/domain/model/crypto/simplex/Currency;Lcom/smedialink/storage/domain/model/crypto/NetworkType;ILjava/lang/Object;)Lio/reactivex/Observable;
    .locals 0

    and-int/lit8 p4, p4, 0x1

    if-eqz p4, :cond_0

    .line 45
    sget-object p1, Lcom/smedialink/storage/domain/model/crypto/simplex/FiatCurrency;->USD:Lcom/smedialink/storage/domain/model/crypto/simplex/FiatCurrency;

    .line 44
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/smedialink/storage/domain/interactor/crypto/simplex/SimplexInteractor;->getAllAvailablePurchasesQuotes(Lcom/smedialink/storage/domain/model/crypto/simplex/FiatCurrency;Lcom/smedialink/storage/domain/model/crypto/simplex/Currency;Lcom/smedialink/storage/domain/model/crypto/NetworkType;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic purchase$default(Lcom/smedialink/storage/domain/interactor/crypto/simplex/SimplexInteractor;Lcom/smedialink/storage/domain/model/crypto/simplex/FiatCurrency;Lcom/smedialink/storage/domain/model/crypto/simplex/Currency;FILjava/lang/String;Lcom/smedialink/storage/domain/model/crypto/NetworkType;ILjava/lang/Object;)Lio/reactivex/Observable;
    .locals 7

    and-int/lit8 p7, p7, 0x1

    if-eqz p7, :cond_0

    .line 83
    sget-object p1, Lcom/smedialink/storage/domain/model/crypto/simplex/FiatCurrency;->USD:Lcom/smedialink/storage/domain/model/crypto/simplex/FiatCurrency;

    :cond_0
    move-object v1, p1

    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 82
    invoke-virtual/range {v0 .. v6}, Lcom/smedialink/storage/domain/interactor/crypto/simplex/SimplexInteractor;->purchase(Lcom/smedialink/storage/domain/model/crypto/simplex/FiatCurrency;Lcom/smedialink/storage/domain/model/crypto/simplex/Currency;FILjava/lang/String;Lcom/smedialink/storage/domain/model/crypto/NetworkType;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic purchase$default(Lcom/smedialink/storage/domain/interactor/crypto/simplex/SimplexInteractor;Lcom/smedialink/storage/domain/model/crypto/simplex/FiatCurrency;Lcom/smedialink/storage/domain/model/crypto/simplex/DigitalCurrency;FLcom/smedialink/storage/domain/model/crypto/simplex/Currency;Lcom/smedialink/storage/domain/model/crypto/NetworkType;ILjava/lang/Object;)Lio/reactivex/Observable;
    .locals 6

    and-int/lit8 p6, p6, 0x1

    if-eqz p6, :cond_0

    .line 59
    sget-object p1, Lcom/smedialink/storage/domain/model/crypto/simplex/FiatCurrency;->USD:Lcom/smedialink/storage/domain/model/crypto/simplex/FiatCurrency;

    :cond_0
    move-object v1, p1

    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 58
    invoke-virtual/range {v0 .. v5}, Lcom/smedialink/storage/domain/interactor/crypto/simplex/SimplexInteractor;->purchase(Lcom/smedialink/storage/domain/model/crypto/simplex/FiatCurrency;Lcom/smedialink/storage/domain/model/crypto/simplex/DigitalCurrency;FLcom/smedialink/storage/domain/model/crypto/simplex/Currency;Lcom/smedialink/storage/domain/model/crypto/NetworkType;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method private final withDefaultCustomQuote(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/smedialink/storage/domain/model/crypto/simplex/BuyingCryptoQuote;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/smedialink/storage/domain/model/crypto/simplex/BuyingCryptoQuote;",
            ">;"
        }
    .end annotation

    .line 159
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    .line 161
    sget-object v0, Lcom/smedialink/storage/domain/model/crypto/simplex/BuyingCryptoQuote;->Companion:Lcom/smedialink/storage/domain/model/crypto/simplex/BuyingCryptoQuote$Companion;

    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/crypto/simplex/BuyingCryptoQuote$Companion;->getCUSTOM_QUOTE()Lcom/smedialink/storage/domain/model/crypto/simplex/BuyingCryptoQuote;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method


# virtual methods
.method public final calculateCustomPriceLimits(Lcom/smedialink/storage/domain/model/crypto/simplex/BuyingCryptoQuote;)Lcom/smedialink/storage/domain/model/crypto/simplex/CustomPriceLimits;
    .locals 4

    const-string v0, "minCalcQuote"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/crypto/simplex/BuyingCryptoQuote;->getCryptoMoneyAmount()F

    move-result v0

    const v1, 0x469c4000    # 20000.0f

    mul-float/2addr v0, v1

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/crypto/simplex/BuyingCryptoQuote;->getFiatMoneyAmount()F

    move-result v2

    div-float/2addr v0, v2

    .line 40
    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/crypto/simplex/BuyingCryptoQuote;->getCryptoMoneyAmount()F

    move-result v2

    const/high16 v3, 0x42480000    # 50.0f

    mul-float/2addr v2, v3

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/crypto/simplex/BuyingCryptoQuote;->getFiatMoneyAmount()F

    move-result p1

    div-float/2addr v2, p1

    .line 36
    new-instance p1, Lcom/smedialink/storage/domain/model/crypto/simplex/CustomPriceLimits;

    invoke-direct {p1, v3, v2, v1, v0}, Lcom/smedialink/storage/domain/model/crypto/simplex/CustomPriceLimits;-><init>(FFFF)V

    return-object p1
.end method

.method public final getAllAvailablePurchasesQuotes(Lcom/smedialink/storage/domain/model/crypto/simplex/FiatCurrency;Lcom/smedialink/storage/domain/model/crypto/simplex/Currency;Lcom/smedialink/storage/domain/model/crypto/NetworkType;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smedialink/storage/domain/model/crypto/simplex/FiatCurrency;",
            "Lcom/smedialink/storage/domain/model/crypto/simplex/Currency;",
            "Lcom/smedialink/storage/domain/model/crypto/NetworkType;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Ljava/util/List<",
            "Lcom/smedialink/storage/domain/model/crypto/simplex/BuyingCryptoQuote;",
            ">;>;>;"
        }
    .end annotation

    const-string v0, "fiatCurrency"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "digitalCurrency"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkType"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/smedialink/storage/domain/interactor/crypto/simplex/SimplexInteractor;->simplexRepository:Lcom/smedialink/storage/domain/repository/crypto/simplex/SimplexRepository;

    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcom/smedialink/storage/domain/interactor/crypto/simplex/SimplexInteractor;->formatQuotesArgs(Lcom/smedialink/storage/domain/model/crypto/simplex/FiatCurrency;Lcom/smedialink/storage/domain/model/crypto/simplex/Currency;Lcom/smedialink/storage/domain/model/crypto/NetworkType;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/smedialink/storage/domain/repository/crypto/simplex/SimplexRepository;->getBuyingCryptoQuote(Ljava/util/List;)Lio/reactivex/Observable;

    move-result-object p1

    .line 27
    new-instance p2, Lcom/smedialink/storage/domain/interactor/crypto/simplex/SimplexInteractor$getAllAvailablePurchasesQuotes$$inlined$mapSuccess$1;

    invoke-direct {p2, p0}, Lcom/smedialink/storage/domain/interactor/crypto/simplex/SimplexInteractor$getAllAvailablePurchasesQuotes$$inlined$mapSuccess$1;-><init>(Lcom/smedialink/storage/domain/interactor/crypto/simplex/SimplexInteractor;)V

    new-instance p3, Lcom/smedialink/storage/domain/utils/extentions/ObservableExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p3, p2}, Lcom/smedialink/storage/domain/utils/extentions/ObservableExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p3}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "crossinline body: (T) ->\u2026ult as? R\n        }\n    }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    iget-object p2, p0, Lcom/smedialink/storage/domain/interactor/crypto/simplex/SimplexInteractor;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {p2}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 55
    sget-object p2, Lcom/smedialink/storage/domain/model/Result;->Companion:Lcom/smedialink/storage/domain/model/Result$Companion;

    const/4 p3, 0x0

    const/4 v0, 0x1

    invoke-static {p2, p3, v0, p3}, Lcom/smedialink/storage/domain/model/Result$Companion;->loading$default(Lcom/smedialink/storage/domain/model/Result$Companion;Ljava/lang/Object;ILjava/lang/Object;)Lcom/smedialink/storage/domain/model/Result;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->startWith(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "simplexRepository\n      \u2026artWith(Result.loading())"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final getBuyingCryptoQuote(Lcom/smedialink/storage/domain/model/crypto/simplex/Currency;Lcom/smedialink/storage/domain/model/crypto/simplex/Currency;FLcom/smedialink/storage/domain/model/crypto/NetworkType;)Lio/reactivex/Observable;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smedialink/storage/domain/model/crypto/simplex/Currency;",
            "Lcom/smedialink/storage/domain/model/crypto/simplex/Currency;",
            "F",
            "Lcom/smedialink/storage/domain/model/crypto/NetworkType;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Lcom/smedialink/storage/domain/model/crypto/simplex/BuyingCryptoQuote;",
            ">;>;"
        }
    .end annotation

    const-string v0, "digitalCurrency"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestedCurrency"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkType"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/smedialink/storage/domain/interactor/crypto/simplex/SimplexInteractor;->simplexRepository:Lcom/smedialink/storage/domain/repository/crypto/simplex/SimplexRepository;

    const/4 v1, 0x1

    new-array v2, v1, [Lcom/smedialink/storage/domain/model/crypto/simplex/BuyingCryptoQuoteArgs;

    .line 125
    sget-object v5, Lcom/smedialink/storage/domain/model/crypto/simplex/FiatCurrency;->USD:Lcom/smedialink/storage/domain/model/crypto/simplex/FiatCurrency;

    .line 124
    new-instance v9, Lcom/smedialink/storage/domain/model/crypto/simplex/BuyingCryptoQuoteArgs;

    move-object v3, v9

    move-object v4, p1

    move-object v6, p2

    move v7, p3

    move-object v8, p4

    invoke-direct/range {v3 .. v8}, Lcom/smedialink/storage/domain/model/crypto/simplex/BuyingCryptoQuoteArgs;-><init>(Lcom/smedialink/storage/domain/model/crypto/simplex/Currency;Lcom/smedialink/storage/domain/model/crypto/simplex/Currency;Lcom/smedialink/storage/domain/model/crypto/simplex/Currency;FLcom/smedialink/storage/domain/model/crypto/NetworkType;)V

    const/4 p1, 0x0

    aput-object v9, v2, p1

    .line 123
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 122
    invoke-interface {v0, p1}, Lcom/smedialink/storage/domain/repository/crypto/simplex/SimplexRepository;->getBuyingCryptoQuote(Ljava/util/List;)Lio/reactivex/Observable;

    move-result-object p1

    .line 27
    new-instance p2, Lcom/smedialink/storage/domain/interactor/crypto/simplex/SimplexInteractor$getBuyingCryptoQuote$$inlined$mapSuccess$1;

    invoke-direct {p2}, Lcom/smedialink/storage/domain/interactor/crypto/simplex/SimplexInteractor$getBuyingCryptoQuote$$inlined$mapSuccess$1;-><init>()V

    new-instance p3, Lcom/smedialink/storage/domain/utils/extentions/ObservableExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p3, p2}, Lcom/smedialink/storage/domain/utils/extentions/ObservableExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p3}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "crossinline body: (T) ->\u2026ult as? R\n        }\n    }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    iget-object p2, p0, Lcom/smedialink/storage/domain/interactor/crypto/simplex/SimplexInteractor;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {p2}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 135
    sget-object p2, Lcom/smedialink/storage/domain/model/Result;->Companion:Lcom/smedialink/storage/domain/model/Result$Companion;

    const/4 p3, 0x0

    invoke-static {p2, p3, v1, p3}, Lcom/smedialink/storage/domain/model/Result$Companion;->loading$default(Lcom/smedialink/storage/domain/model/Result$Companion;Ljava/lang/Object;ILjava/lang/Object;)Lcom/smedialink/storage/domain/model/Result;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->startWith(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "simplexRepository\n      \u2026artWith(Result.loading())"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final isValidPurchaseAmount(Lcom/smedialink/storage/domain/model/crypto/simplex/CustomPriceLimits;FLcom/smedialink/storage/domain/model/crypto/simplex/Currency;)Z
    .locals 3

    const-string v0, "limits"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "currency"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    instance-of v0, p3, Lcom/smedialink/storage/domain/model/crypto/simplex/FiatCurrency;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/crypto/simplex/CustomPriceLimits;->getMinFiatAmount()F

    move-result p3

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/crypto/simplex/CustomPriceLimits;->getMaxFiatAmount()F

    move-result p1

    cmpg-float p1, p2, p1

    if-gtz p1, :cond_1

    cmpg-float p1, p3, p2

    if-gtz p1, :cond_1

    goto :goto_0

    .line 30
    :cond_0
    instance-of p3, p3, Lcom/smedialink/storage/domain/model/crypto/simplex/DigitalCurrency;

    if-eqz p3, :cond_1

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/crypto/simplex/CustomPriceLimits;->getMinCryptoAmount()F

    move-result p3

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/crypto/simplex/CustomPriceLimits;->getMaxCryptoAmount()F

    move-result p1

    cmpg-float p1, p2, p1

    if-gtz p1, :cond_1

    cmpg-float p1, p3, p2

    if-gtz p1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    return v1
.end method

.method public final purchase(Lcom/smedialink/storage/domain/model/crypto/simplex/FiatCurrency;Lcom/smedialink/storage/domain/model/crypto/simplex/Currency;FILjava/lang/String;Lcom/smedialink/storage/domain/model/crypto/NetworkType;)Lio/reactivex/Observable;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smedialink/storage/domain/model/crypto/simplex/FiatCurrency;",
            "Lcom/smedialink/storage/domain/model/crypto/simplex/Currency;",
            "FI",
            "Ljava/lang/String;",
            "Lcom/smedialink/storage/domain/model/crypto/NetworkType;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Lcom/smedialink/storage/domain/model/crypto/simplex/BuyingCryptoPayment;",
            ">;>;"
        }
    .end annotation

    const-string v0, "fiatCurrency"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "digitalCurrency"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "quoteId"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkType"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    iget-object v1, p0, Lcom/smedialink/storage/domain/interactor/crypto/simplex/SimplexInteractor;->simplexRepository:Lcom/smedialink/storage/domain/repository/crypto/simplex/SimplexRepository;

    move-object v2, p2

    move-object v3, p1

    move v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    .line 91
    invoke-interface/range {v1 .. v7}, Lcom/smedialink/storage/domain/repository/crypto/simplex/SimplexRepository;->createBuyingCryptoPayment(Lcom/smedialink/storage/domain/model/crypto/simplex/Currency;Lcom/smedialink/storage/domain/model/crypto/simplex/Currency;FILjava/lang/String;Lcom/smedialink/storage/domain/model/crypto/NetworkType;)Lio/reactivex/Observable;

    move-result-object p3

    const/4 p5, 0x1

    new-array v1, p5, [Lcom/smedialink/storage/data/network/model/error/IErrorStatus;

    .line 99
    sget-object p5, Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$CryptoErrorStatus;->SIMPLEX_QUOTE_ALREADY_USED:Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$CryptoErrorStatus;

    const/4 v0, 0x0

    aput-object p5, v1, v0

    .line 49
    new-instance p5, Lcom/smedialink/storage/domain/interactor/crypto/simplex/SimplexInteractor$purchase$$inlined$flatMapError$1;

    move-object v0, p5

    move-object v2, p0

    move-object v3, p2

    move v4, p4

    move-object v5, p6

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/smedialink/storage/domain/interactor/crypto/simplex/SimplexInteractor$purchase$$inlined$flatMapError$1;-><init>([Lcom/smedialink/storage/data/network/model/error/IErrorStatus;Lcom/smedialink/storage/domain/interactor/crypto/simplex/SimplexInteractor;Lcom/smedialink/storage/domain/model/crypto/simplex/Currency;ILcom/smedialink/storage/domain/model/crypto/NetworkType;Lcom/smedialink/storage/domain/model/crypto/simplex/FiatCurrency;)V

    new-instance p1, Lcom/smedialink/storage/domain/utils/extentions/ObservableExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p1, p5}, Lcom/smedialink/storage/domain/utils/extentions/ObservableExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p3, p1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "vararg errorStatus: IErr\u2026e.empty()\n        }\n    }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    iget-object p2, p0, Lcom/smedialink/storage/domain/interactor/crypto/simplex/SimplexInteractor;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {p2}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "simplexRepository\n      \u2026(schedulersProvider.io())"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final purchase(Lcom/smedialink/storage/domain/model/crypto/simplex/FiatCurrency;Lcom/smedialink/storage/domain/model/crypto/simplex/DigitalCurrency;FLcom/smedialink/storage/domain/model/crypto/simplex/Currency;Lcom/smedialink/storage/domain/model/crypto/NetworkType;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smedialink/storage/domain/model/crypto/simplex/FiatCurrency;",
            "Lcom/smedialink/storage/domain/model/crypto/simplex/DigitalCurrency;",
            "F",
            "Lcom/smedialink/storage/domain/model/crypto/simplex/Currency;",
            "Lcom/smedialink/storage/domain/model/crypto/NetworkType;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Lcom/smedialink/storage/domain/model/crypto/simplex/BuyingCryptoPayment;",
            ">;>;"
        }
    .end annotation

    const-string v0, "fiatCurrency"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "digitalCurrency"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestedCurrency"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkType"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    invoke-virtual {p0, p2, p4, p3, p5}, Lcom/smedialink/storage/domain/interactor/crypto/simplex/SimplexInteractor;->getBuyingCryptoQuote(Lcom/smedialink/storage/domain/model/crypto/simplex/Currency;Lcom/smedialink/storage/domain/model/crypto/simplex/Currency;FLcom/smedialink/storage/domain/model/crypto/NetworkType;)Lio/reactivex/Observable;

    move-result-object p3

    .line 15
    new-instance p4, Lcom/smedialink/storage/domain/interactor/crypto/simplex/SimplexInteractor$purchase$$inlined$flatMapSuccess$1;

    invoke-direct {p4, p0, p1, p2, p5}, Lcom/smedialink/storage/domain/interactor/crypto/simplex/SimplexInteractor$purchase$$inlined$flatMapSuccess$1;-><init>(Lcom/smedialink/storage/domain/interactor/crypto/simplex/SimplexInteractor;Lcom/smedialink/storage/domain/model/crypto/simplex/FiatCurrency;Lcom/smedialink/storage/domain/model/crypto/simplex/DigitalCurrency;Lcom/smedialink/storage/domain/model/crypto/NetworkType;)V

    new-instance p1, Lcom/smedialink/storage/domain/utils/extentions/ObservableExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p1, p4}, Lcom/smedialink/storage/domain/utils/extentions/ObservableExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p3, p1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "crossinline body: (T) ->\u2026e.empty()\n        }\n    }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    iget-object p2, p0, Lcom/smedialink/storage/domain/interactor/crypto/simplex/SimplexInteractor;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {p2}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 79
    sget-object p2, Lcom/smedialink/storage/domain/model/Result;->Companion:Lcom/smedialink/storage/domain/model/Result$Companion;

    const/4 p3, 0x0

    const/4 p4, 0x1

    invoke-static {p2, p3, p4, p3}, Lcom/smedialink/storage/domain/model/Result$Companion;->loading$default(Lcom/smedialink/storage/domain/model/Result$Companion;Ljava/lang/Object;ILjava/lang/Object;)Lcom/smedialink/storage/domain/model/Result;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->startWith(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "getBuyingCryptoQuote(dig\u2026artWith(Result.loading())"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
