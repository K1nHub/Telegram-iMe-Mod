.class public final Lcom/iMe/storage/domain/interactor/crypto/boost/BoostInteractor;
.super Ljava/lang/Object;
.source "BoostInteractor.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBoostInteractor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BoostInteractor.kt\ncom/iMe/storage/domain/interactor/crypto/boost/BoostInteractor\n+ 2 ObservableExt.kt\ncom/iMe/storage/domain/utils/extentions/ObservableExtKt\n*L\n1#1,36:1\n14#2:37\n*S KotlinDebug\n*F\n+ 1 BoostInteractor.kt\ncom/iMe/storage/domain/interactor/crypto/boost/BoostInteractor\n*L\n19#1:37\n*E\n"
.end annotation


# instance fields
.field private final boostRepository:Lcom/iMe/storage/domain/repository/crypto/boost/BoostRepository;

.field private final schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;


# direct methods
.method public constructor <init>(Lcom/iMe/storage/domain/repository/crypto/boost/BoostRepository;Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;)V
    .locals 1

    const-string v0, "boostRepository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "schedulersProvider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/iMe/storage/domain/interactor/crypto/boost/BoostInteractor;->boostRepository:Lcom/iMe/storage/domain/repository/crypto/boost/BoostRepository;

    .line 11
    iput-object p2, p0, Lcom/iMe/storage/domain/interactor/crypto/boost/BoostInteractor;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    return-void
.end method

.method public static final synthetic access$getBoostRepository$p(Lcom/iMe/storage/domain/interactor/crypto/boost/BoostInteractor;)Lcom/iMe/storage/domain/repository/crypto/boost/BoostRepository;
    .locals 0

    .line 9
    iget-object p0, p0, Lcom/iMe/storage/domain/interactor/crypto/boost/BoostInteractor;->boostRepository:Lcom/iMe/storage/domain/repository/crypto/boost/BoostRepository;

    return-object p0
.end method

.method public static final synthetic access$getSchedulersProvider$p(Lcom/iMe/storage/domain/interactor/crypto/boost/BoostInteractor;)Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;
    .locals 0

    .line 9
    iget-object p0, p0, Lcom/iMe/storage/domain/interactor/crypto/boost/BoostInteractor;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    return-object p0
.end method


# virtual methods
.method public final boostEthTransaction(Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    const-string v0, "txHash"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    iget-object v0, p0, Lcom/iMe/storage/domain/interactor/crypto/boost/BoostInteractor;->boostRepository:Lcom/iMe/storage/domain/repository/crypto/boost/BoostRepository;

    .line 18
    invoke-interface {v0, p1}, Lcom/iMe/storage/domain/repository/crypto/boost/BoostRepository;->getCryptoBoostMetadata(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    .line 14
    new-instance v1, Lcom/iMe/storage/domain/interactor/crypto/boost/BoostInteractor$boostEthTransaction$$inlined$flatMapSuccess$1;

    invoke-direct {v1, p0, p1}, Lcom/iMe/storage/domain/interactor/crypto/boost/BoostInteractor$boostEthTransaction$$inlined$flatMapSuccess$1;-><init>(Lcom/iMe/storage/domain/interactor/crypto/boost/BoostInteractor;Ljava/lang/String;)V

    new-instance p1, Lcom/iMe/storage/domain/utils/extentions/ObservableExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p1, v1}, Lcom/iMe/storage/domain/utils/extentions/ObservableExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, p1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "crossinline body: (T) ->\u2026e.empty()\n        }\n    }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    iget-object v0, p0, Lcom/iMe/storage/domain/interactor/crypto/boost/BoostInteractor;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v0}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 32
    sget-object v0, Lcom/iMe/storage/domain/model/Result;->Companion:Lcom/iMe/storage/domain/model/Result$Companion;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lcom/iMe/storage/domain/model/Result$Companion;->loading$default(Lcom/iMe/storage/domain/model/Result$Companion;Ljava/lang/Object;ILjava/lang/Object;)Lcom/iMe/storage/domain/model/Result;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->startWith(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "boostRepository\n        \u2026artWith(Result.loading())"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
