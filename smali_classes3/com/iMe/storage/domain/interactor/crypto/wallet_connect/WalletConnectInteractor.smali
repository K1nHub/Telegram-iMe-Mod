.class public final Lcom/iMe/storage/domain/interactor/crypto/wallet_connect/WalletConnectInteractor;
.super Ljava/lang/Object;
.source "WalletConnectInteractor.kt"


# instance fields
.field private final schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

.field private final walletConnectRepository:Lcom/iMe/storage/domain/repository/crypto/wallet_connect/WalletConnectRepository;


# direct methods
.method public constructor <init>(Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;Lcom/iMe/storage/domain/repository/crypto/wallet_connect/WalletConnectRepository;)V
    .locals 1

    const-string v0, "schedulersProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "walletConnectRepository"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/iMe/storage/domain/interactor/crypto/wallet_connect/WalletConnectInteractor;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    .line 16
    iput-object p2, p0, Lcom/iMe/storage/domain/interactor/crypto/wallet_connect/WalletConnectInteractor;->walletConnectRepository:Lcom/iMe/storage/domain/repository/crypto/wallet_connect/WalletConnectRepository;

    return-void
.end method


# virtual methods
.method public final deleteAllWalletConnectSessions()Lio/reactivex/Completable;
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/iMe/storage/domain/interactor/crypto/wallet_connect/WalletConnectInteractor;->walletConnectRepository:Lcom/iMe/storage/domain/repository/crypto/wallet_connect/WalletConnectRepository;

    .line 52
    invoke-interface {v0}, Lcom/iMe/storage/domain/repository/crypto/wallet_connect/WalletConnectRepository;->deleteAllWalletConnectSessions()Lio/reactivex/Completable;

    move-result-object v0

    .line 53
    iget-object v1, p0, Lcom/iMe/storage/domain/interactor/crypto/wallet_connect/WalletConnectInteractor;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Completable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v0

    const-string v1, "walletConnectRepository\n\u2026(schedulersProvider.io())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final deleteWalletConnectSession(Ljava/lang/String;)Lio/reactivex/Completable;
    .locals 1

    const-string v0, "sessionKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/iMe/storage/domain/interactor/crypto/wallet_connect/WalletConnectInteractor;->walletConnectRepository:Lcom/iMe/storage/domain/repository/crypto/wallet_connect/WalletConnectRepository;

    .line 57
    invoke-interface {v0, p1}, Lcom/iMe/storage/domain/repository/crypto/wallet_connect/WalletConnectRepository;->deleteWalletConnectSession(Ljava/lang/String;)Lio/reactivex/Completable;

    move-result-object p1

    .line 58
    iget-object v0, p0, Lcom/iMe/storage/domain/interactor/crypto/wallet_connect/WalletConnectInteractor;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v0}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Completable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object p1

    const-string v0, "walletConnectRepository\n\u2026(schedulersProvider.io())"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final getWalletConnectParamsForCryptoTransaction(Lcom/iMe/storage/domain/model/crypto/wallet_connect/WalletConnectTransaction;)Lio/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/crypto/wallet_connect/WalletConnectTransaction;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Lcom/iMe/storage/domain/model/crypto/wallet_connect/WalletConnectProcessedTransaction;",
            ">;>;"
        }
    .end annotation

    const-string v0, "transaction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    iget-object v0, p0, Lcom/iMe/storage/domain/interactor/crypto/wallet_connect/WalletConnectInteractor;->walletConnectRepository:Lcom/iMe/storage/domain/repository/crypto/wallet_connect/WalletConnectRepository;

    .line 21
    invoke-interface {v0, p1}, Lcom/iMe/storage/domain/repository/crypto/wallet_connect/WalletConnectRepository;->getWalletConnectParamsForCryptoTransaction(Lcom/iMe/storage/domain/model/crypto/wallet_connect/WalletConnectTransaction;)Lio/reactivex/Observable;

    move-result-object p1

    .line 22
    sget-object v0, Lcom/iMe/storage/domain/model/Result;->Companion:Lcom/iMe/storage/domain/model/Result$Companion;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lcom/iMe/storage/domain/model/Result$Companion;->loading$default(Lcom/iMe/storage/domain/model/Result$Companion;Ljava/lang/Object;ILjava/lang/Object;)Lcom/iMe/storage/domain/model/Result;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->startWith(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    .line 23
    iget-object v0, p0, Lcom/iMe/storage/domain/interactor/crypto/wallet_connect/WalletConnectInteractor;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v0}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "walletConnectRepository\n\u2026(schedulersProvider.io())"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final getWalletConnectSavedSessions()Lio/reactivex/Flowable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Flowable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/util/List<",
            "Lcom/trustwallet/walletconnect/WCSessionStoreItem;",
            ">;>;>;"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/iMe/storage/domain/interactor/crypto/wallet_connect/WalletConnectInteractor;->walletConnectRepository:Lcom/iMe/storage/domain/repository/crypto/wallet_connect/WalletConnectRepository;

    .line 39
    invoke-interface {v0}, Lcom/iMe/storage/domain/repository/crypto/wallet_connect/WalletConnectRepository;->getWalletConnectSavedSessions()Lio/reactivex/Flowable;

    move-result-object v0

    .line 40
    iget-object v1, p0, Lcom/iMe/storage/domain/interactor/crypto/wallet_connect/WalletConnectInteractor;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object v0

    const-string v1, "walletConnectRepository\n\u2026(schedulersProvider.io())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getWalletConnectSavedSessionsFirst()Lio/reactivex/Flowable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Flowable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/util/List<",
            "Lcom/trustwallet/walletconnect/WCSessionStoreItem;",
            ">;>;>;"
        }
    .end annotation

    .line 43
    invoke-virtual {p0}, Lcom/iMe/storage/domain/interactor/crypto/wallet_connect/WalletConnectInteractor;->getWalletConnectSavedSessions()Lio/reactivex/Flowable;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lio/reactivex/Flowable;->take(J)Lio/reactivex/Flowable;

    move-result-object v0

    const-string v1, "getWalletConnectSavedSessions().take(1)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final insertWalletConnectSession(Lcom/trustwallet/walletconnect/WCSessionStoreItem;)Lio/reactivex/Completable;
    .locals 1

    const-string v0, "session"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lcom/iMe/storage/domain/interactor/crypto/wallet_connect/WalletConnectInteractor;->walletConnectRepository:Lcom/iMe/storage/domain/repository/crypto/wallet_connect/WalletConnectRepository;

    .line 47
    invoke-interface {v0, p1}, Lcom/iMe/storage/domain/repository/crypto/wallet_connect/WalletConnectRepository;->insertWalletConnectSession(Lcom/trustwallet/walletconnect/WCSessionStoreItem;)Lio/reactivex/Completable;

    move-result-object p1

    .line 48
    iget-object v0, p0, Lcom/iMe/storage/domain/interactor/crypto/wallet_connect/WalletConnectInteractor;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v0}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Completable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object p1

    const-string v0, "walletConnectRepository\n\u2026(schedulersProvider.io())"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final sendWalletConnectCryptoTransaction(Lcom/iMe/storage/domain/model/crypto/wallet_connect/WalletConnectTransactionArgs;)Lio/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/crypto/wallet_connect/WalletConnectTransactionArgs;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    iget-object v0, p0, Lcom/iMe/storage/domain/interactor/crypto/wallet_connect/WalletConnectInteractor;->walletConnectRepository:Lcom/iMe/storage/domain/repository/crypto/wallet_connect/WalletConnectRepository;

    .line 27
    invoke-interface {v0, p1}, Lcom/iMe/storage/domain/repository/crypto/wallet_connect/WalletConnectRepository;->sendWalletConnectCryptoTransaction(Lcom/iMe/storage/domain/model/crypto/wallet_connect/WalletConnectTransactionArgs;)Lio/reactivex/Observable;

    move-result-object p1

    .line 28
    sget-object v0, Lcom/iMe/storage/domain/model/Result;->Companion:Lcom/iMe/storage/domain/model/Result$Companion;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lcom/iMe/storage/domain/model/Result$Companion;->loading$default(Lcom/iMe/storage/domain/model/Result$Companion;Ljava/lang/Object;ILjava/lang/Object;)Lcom/iMe/storage/domain/model/Result;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->startWith(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    .line 29
    iget-object v0, p0, Lcom/iMe/storage/domain/interactor/crypto/wallet_connect/WalletConnectInteractor;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v0}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "walletConnectRepository\n\u2026(schedulersProvider.io())"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final signWalletConnectCryptoTransaction(Lcom/iMe/storage/domain/model/crypto/wallet_connect/WalletConnectTransactionArgs;)Lio/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/crypto/wallet_connect/WalletConnectTransactionArgs;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    iget-object v0, p0, Lcom/iMe/storage/domain/interactor/crypto/wallet_connect/WalletConnectInteractor;->walletConnectRepository:Lcom/iMe/storage/domain/repository/crypto/wallet_connect/WalletConnectRepository;

    .line 33
    invoke-interface {v0, p1}, Lcom/iMe/storage/domain/repository/crypto/wallet_connect/WalletConnectRepository;->signWalletConnectCryptoTransaction(Lcom/iMe/storage/domain/model/crypto/wallet_connect/WalletConnectTransactionArgs;)Lio/reactivex/Observable;

    move-result-object p1

    .line 34
    sget-object v0, Lcom/iMe/storage/domain/model/Result;->Companion:Lcom/iMe/storage/domain/model/Result$Companion;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lcom/iMe/storage/domain/model/Result$Companion;->loading$default(Lcom/iMe/storage/domain/model/Result$Companion;Ljava/lang/Object;ILjava/lang/Object;)Lcom/iMe/storage/domain/model/Result;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->startWith(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    .line 35
    iget-object v0, p0, Lcom/iMe/storage/domain/interactor/crypto/wallet_connect/WalletConnectInteractor;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v0}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "walletConnectRepository\n\u2026(schedulersProvider.io())"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
