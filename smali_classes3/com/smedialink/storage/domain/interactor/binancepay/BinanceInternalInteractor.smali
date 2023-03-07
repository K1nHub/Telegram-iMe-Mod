.class public final Lcom/smedialink/storage/domain/interactor/binancepay/BinanceInternalInteractor;
.super Ljava/lang/Object;
.source "BinanceInternalInteractor.kt"


# instance fields
.field private final binanceInternalRepository:Lcom/smedialink/storage/domain/repository/binancepay/BinanceInternalRepository;

.field private final schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;


# direct methods
.method public constructor <init>(Lcom/smedialink/storage/domain/repository/binancepay/BinanceInternalRepository;Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;)V
    .locals 1

    const-string v0, "binanceInternalRepository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "schedulersProvider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/smedialink/storage/domain/interactor/binancepay/BinanceInternalInteractor;->binanceInternalRepository:Lcom/smedialink/storage/domain/repository/binancepay/BinanceInternalRepository;

    .line 14
    iput-object p2, p0, Lcom/smedialink/storage/domain/interactor/binancepay/BinanceInternalInteractor;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    return-void
.end method

.method public static synthetic getTransactionHistory$default(Lcom/smedialink/storage/domain/interactor/binancepay/BinanceInternalInteractor;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lio/reactivex/Observable;
    .locals 0

    and-int/lit8 p4, p4, 0x1

    if-eqz p4, :cond_0

    const/16 p1, 0x1e

    .line 40
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/smedialink/storage/domain/interactor/binancepay/BinanceInternalInteractor;->getTransactionHistory(ILjava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final confirmConvertQuote(Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/smedialink/storage/domain/interactor/binancepay/BinanceInternalInteractor;->binanceInternalRepository:Lcom/smedialink/storage/domain/repository/binancepay/BinanceInternalRepository;

    .line 98
    invoke-interface {v0, p1}, Lcom/smedialink/storage/domain/repository/binancepay/BinanceInternalRepository;->confirmConvertQuote(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    .line 99
    iget-object v0, p0, Lcom/smedialink/storage/domain/interactor/binancepay/BinanceInternalInteractor;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v0}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "binanceInternalRepositor\u2026(schedulersProvider.io())"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final createCollection(JDLjava/lang/String;)Lio/reactivex/Observable;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JD",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Lcom/smedialink/storage/domain/model/binancepay/BinanceCollectionOrder;",
            ">;>;"
        }
    .end annotation

    const-string v0, "currency"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    iget-object v1, p0, Lcom/smedialink/storage/domain/interactor/binancepay/BinanceInternalInteractor;->binanceInternalRepository:Lcom/smedialink/storage/domain/repository/binancepay/BinanceInternalRepository;

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    .line 80
    invoke-interface/range {v1 .. v6}, Lcom/smedialink/storage/domain/repository/binancepay/BinanceInternalRepository;->createCollection(JDLjava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    .line 81
    iget-object p2, p0, Lcom/smedialink/storage/domain/interactor/binancepay/BinanceInternalInteractor;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {p2}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "binanceInternalRepositor\u2026(schedulersProvider.io())"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final getAddressForTokenReplenish(Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Lcom/smedialink/storage/domain/model/crypto/NetworkType;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;",
            "Lcom/smedialink/storage/domain/model/crypto/NetworkType;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    const-string v0, "tokenCode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/smedialink/storage/domain/interactor/binancepay/BinanceInternalInteractor;->binanceInternalRepository:Lcom/smedialink/storage/domain/repository/binancepay/BinanceInternalRepository;

    .line 86
    invoke-interface {v0, p1, p2}, Lcom/smedialink/storage/domain/repository/binancepay/BinanceInternalRepository;->getAddressForTokenReplenish(Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Lcom/smedialink/storage/domain/model/crypto/NetworkType;)Lio/reactivex/Observable;

    move-result-object p1

    .line 87
    iget-object p2, p0, Lcom/smedialink/storage/domain/interactor/binancepay/BinanceInternalInteractor;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {p2}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "binanceInternalRepositor\u2026(schedulersProvider.io())"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final getAuthTokens(Lcom/smedialink/storage/domain/model/binancepay/BinancePayAuthType;Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smedialink/storage/domain/model/binancepay/BinancePayAuthType;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Lcom/smedialink/storage/domain/model/binancepay/BinanceAuthTokens;",
            ">;>;"
        }
    .end annotation

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    iget-object v0, p0, Lcom/smedialink/storage/domain/interactor/binancepay/BinanceInternalInteractor;->binanceInternalRepository:Lcom/smedialink/storage/domain/repository/binancepay/BinanceInternalRepository;

    .line 21
    invoke-interface {v0, p1, p2}, Lcom/smedialink/storage/domain/repository/binancepay/BinanceInternalRepository;->getAuthTokens(Lcom/smedialink/storage/domain/model/binancepay/BinancePayAuthType;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    .line 22
    iget-object p2, p0, Lcom/smedialink/storage/domain/interactor/binancepay/BinanceInternalInteractor;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {p2}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 23
    sget-object p2, Lcom/smedialink/storage/domain/model/Result;->Companion:Lcom/smedialink/storage/domain/model/Result$Companion;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p2, v0, v1, v0}, Lcom/smedialink/storage/domain/model/Result$Companion;->loading$default(Lcom/smedialink/storage/domain/model/Result$Companion;Ljava/lang/Object;ILjava/lang/Object;)Lcom/smedialink/storage/domain/model/Result;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->startWith(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "binanceInternalRepositor\u2026artWith(Result.loading())"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final getAvailablePaymentTokens()Lio/reactivex/Observable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Ljava/util/List<",
            "Lcom/smedialink/storage/domain/model/binancepay/BinanceTokenInfo;",
            ">;>;>;"
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lcom/smedialink/storage/domain/interactor/binancepay/BinanceInternalInteractor;->binanceInternalRepository:Lcom/smedialink/storage/domain/repository/binancepay/BinanceInternalRepository;

    .line 69
    invoke-interface {v0}, Lcom/smedialink/storage/domain/repository/binancepay/BinanceInternalRepository;->getAvailablePaymentTokens()Lio/reactivex/Observable;

    move-result-object v0

    .line 70
    iget-object v1, p0, Lcom/smedialink/storage/domain/interactor/binancepay/BinanceInternalInteractor;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 71
    sget-object v1, Lcom/smedialink/storage/domain/model/Result;->Companion:Lcom/smedialink/storage/domain/model/Result$Companion;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, v2, v3, v2}, Lcom/smedialink/storage/domain/model/Result$Companion;->loading$default(Lcom/smedialink/storage/domain/model/Result$Companion;Ljava/lang/Object;ILjava/lang/Object;)Lcom/smedialink/storage/domain/model/Result;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->startWith(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "binanceInternalRepositor\u2026artWith(Result.loading())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getConvertQuote(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Lcom/smedialink/storage/domain/model/binancepay/BinanceConvertQuote;",
            ">;>;"
        }
    .end annotation

    const-string v0, "inputToken"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "outputToken"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "amount"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/smedialink/storage/domain/interactor/binancepay/BinanceInternalInteractor;->binanceInternalRepository:Lcom/smedialink/storage/domain/repository/binancepay/BinanceInternalRepository;

    .line 104
    invoke-interface {v0, p1, p2, p3}, Lcom/smedialink/storage/domain/repository/binancepay/BinanceInternalRepository;->getConvertQuote(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    .line 105
    iget-object p2, p0, Lcom/smedialink/storage/domain/interactor/binancepay/BinanceInternalInteractor;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {p2}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "binanceInternalRepositor\u2026(schedulersProvider.io())"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final getOppositeTokensForConvertByToken(Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Ljava/util/List<",
            "Lcom/smedialink/storage/domain/model/binancepay/OutputConvertToken;",
            ">;>;>;"
        }
    .end annotation

    const-string v0, "token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/smedialink/storage/domain/interactor/binancepay/BinanceInternalInteractor;->binanceInternalRepository:Lcom/smedialink/storage/domain/repository/binancepay/BinanceInternalRepository;

    .line 116
    invoke-interface {v0, p1}, Lcom/smedialink/storage/domain/repository/binancepay/BinanceInternalRepository;->getOppositeTokensForConvertByToken(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    .line 117
    iget-object v0, p0, Lcom/smedialink/storage/domain/interactor/binancepay/BinanceInternalInteractor;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v0}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "binanceInternalRepositor\u2026(schedulersProvider.io())"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final getTokensForConvert()Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Ljava/util/List<",
            "Lcom/smedialink/storage/domain/model/binancepay/BinanceTokenInfo;",
            ">;>;>;"
        }
    .end annotation

    .line 109
    iget-object v0, p0, Lcom/smedialink/storage/domain/interactor/binancepay/BinanceInternalInteractor;->binanceInternalRepository:Lcom/smedialink/storage/domain/repository/binancepay/BinanceInternalRepository;

    .line 110
    invoke-interface {v0}, Lcom/smedialink/storage/domain/repository/binancepay/BinanceInternalRepository;->getTokensForConvert()Lio/reactivex/Observable;

    move-result-object v0

    .line 111
    iget-object v1, p0, Lcom/smedialink/storage/domain/interactor/binancepay/BinanceInternalInteractor;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "binanceInternalRepositor\u2026(schedulersProvider.io())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getTokensForReplenish(Lcom/smedialink/storage/domain/model/crypto/NetworkType;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smedialink/storage/domain/model/crypto/NetworkType;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Ljava/util/List<",
            "Lcom/smedialink/storage/domain/model/binancepay/BinanceTokenInfo;",
            ">;>;>;"
        }
    .end annotation

    const-string v0, "networkType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/smedialink/storage/domain/interactor/binancepay/BinanceInternalInteractor;->binanceInternalRepository:Lcom/smedialink/storage/domain/repository/binancepay/BinanceInternalRepository;

    .line 92
    invoke-interface {v0, p1}, Lcom/smedialink/storage/domain/repository/binancepay/BinanceInternalRepository;->getTokensForReplenish(Lcom/smedialink/storage/domain/model/crypto/NetworkType;)Lio/reactivex/Observable;

    move-result-object p1

    .line 93
    iget-object v0, p0, Lcom/smedialink/storage/domain/interactor/binancepay/BinanceInternalInteractor;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v0}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "binanceInternalRepositor\u2026(schedulersProvider.io())"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final getTransaction(Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Lcom/smedialink/storage/domain/model/binancepay/BinanceTransaction;",
            ">;>;"
        }
    .end annotation

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/smedialink/storage/domain/interactor/binancepay/BinanceInternalInteractor;->binanceInternalRepository:Lcom/smedialink/storage/domain/repository/binancepay/BinanceInternalRepository;

    .line 55
    invoke-interface {v0, p1}, Lcom/smedialink/storage/domain/repository/binancepay/BinanceInternalRepository;->getTransaction(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    .line 56
    iget-object v0, p0, Lcom/smedialink/storage/domain/interactor/binancepay/BinanceInternalInteractor;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v0}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 57
    sget-object v0, Lcom/smedialink/storage/domain/model/Result;->Companion:Lcom/smedialink/storage/domain/model/Result$Companion;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lcom/smedialink/storage/domain/model/Result$Companion;->loading$default(Lcom/smedialink/storage/domain/model/Result$Companion;Ljava/lang/Object;ILjava/lang/Object;)Lcom/smedialink/storage/domain/model/Result;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->startWith(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "binanceInternalRepositor\u2026artWith(Result.loading())"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final getTransactionHistory(ILjava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Ljava/util/List<",
            "Lcom/smedialink/storage/domain/model/binancepay/BinanceTransaction;",
            ">;>;>;"
        }
    .end annotation

    const/4 v0, 0x1

    if-eqz p3, :cond_1

    .line 45
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    const/4 v2, 0x0

    if-eqz v1, :cond_2

    move-object p3, v2

    .line 47
    :cond_2
    iget-object v1, p0, Lcom/smedialink/storage/domain/interactor/binancepay/BinanceInternalInteractor;->binanceInternalRepository:Lcom/smedialink/storage/domain/repository/binancepay/BinanceInternalRepository;

    .line 48
    invoke-interface {v1, p1, p2, p3}, Lcom/smedialink/storage/domain/repository/binancepay/BinanceInternalRepository;->getTransactionHistory(ILjava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    .line 49
    iget-object p2, p0, Lcom/smedialink/storage/domain/interactor/binancepay/BinanceInternalInteractor;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {p2}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 50
    sget-object p2, Lcom/smedialink/storage/domain/model/Result;->Companion:Lcom/smedialink/storage/domain/model/Result$Companion;

    invoke-static {p2, v2, v0, v2}, Lcom/smedialink/storage/domain/model/Result$Companion;->loading$default(Lcom/smedialink/storage/domain/model/Result$Companion;Ljava/lang/Object;ILjava/lang/Object;)Lcom/smedialink/storage/domain/model/Result;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->startWith(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "binanceInternalRepositor\u2026artWith(Result.loading())"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final getUserBalance()Lio/reactivex/Observable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Ljava/util/List<",
            "Lcom/smedialink/storage/domain/model/binancepay/BinanceTokenBalanceInfo;",
            ">;>;>;"
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lcom/smedialink/storage/domain/interactor/binancepay/BinanceInternalInteractor;->binanceInternalRepository:Lcom/smedialink/storage/domain/repository/binancepay/BinanceInternalRepository;

    .line 62
    invoke-interface {v0}, Lcom/smedialink/storage/domain/repository/binancepay/BinanceInternalRepository;->getUserBalance()Lio/reactivex/Observable;

    move-result-object v0

    .line 63
    iget-object v1, p0, Lcom/smedialink/storage/domain/interactor/binancepay/BinanceInternalInteractor;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 64
    sget-object v1, Lcom/smedialink/storage/domain/model/Result;->Companion:Lcom/smedialink/storage/domain/model/Result$Companion;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, v2, v3, v2}, Lcom/smedialink/storage/domain/model/Result$Companion;->loading$default(Lcom/smedialink/storage/domain/model/Result$Companion;Ljava/lang/Object;ILjava/lang/Object;)Lcom/smedialink/storage/domain/model/Result;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->startWith(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "binanceInternalRepositor\u2026artWith(Result.loading())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getUserInfo(Z)Lio/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Lcom/smedialink/storage/domain/model/binancepay/BinanceUserInfo;",
            ">;>;"
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/smedialink/storage/domain/interactor/binancepay/BinanceInternalInteractor;->binanceInternalRepository:Lcom/smedialink/storage/domain/repository/binancepay/BinanceInternalRepository;

    .line 35
    invoke-interface {v0, p1}, Lcom/smedialink/storage/domain/repository/binancepay/BinanceInternalRepository;->getUserInfo(Z)Lio/reactivex/Observable;

    move-result-object p1

    .line 36
    iget-object v0, p0, Lcom/smedialink/storage/domain/interactor/binancepay/BinanceInternalInteractor;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v0}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 37
    sget-object v0, Lcom/smedialink/storage/domain/model/Result;->Companion:Lcom/smedialink/storage/domain/model/Result$Companion;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lcom/smedialink/storage/domain/model/Result$Companion;->loading$default(Lcom/smedialink/storage/domain/model/Result$Companion;Ljava/lang/Object;ILjava/lang/Object;)Lcom/smedialink/storage/domain/model/Result;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->startWith(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "binanceInternalRepositor\u2026artWith(Result.loading())"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final logout(Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    const-string v0, "accessToken"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    iget-object v0, p0, Lcom/smedialink/storage/domain/interactor/binancepay/BinanceInternalInteractor;->binanceInternalRepository:Lcom/smedialink/storage/domain/repository/binancepay/BinanceInternalRepository;

    .line 28
    invoke-interface {v0, p1}, Lcom/smedialink/storage/domain/repository/binancepay/BinanceInternalRepository;->logout(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    .line 29
    iget-object v0, p0, Lcom/smedialink/storage/domain/interactor/binancepay/BinanceInternalInteractor;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v0}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 30
    sget-object v0, Lcom/smedialink/storage/domain/model/Result;->Companion:Lcom/smedialink/storage/domain/model/Result$Companion;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lcom/smedialink/storage/domain/model/Result$Companion;->loading$default(Lcom/smedialink/storage/domain/model/Result$Companion;Ljava/lang/Object;ILjava/lang/Object;)Lcom/smedialink/storage/domain/model/Result;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->startWith(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "binanceInternalRepositor\u2026artWith(Result.loading())"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
