.class public final Lcom/iMe/storage/domain/interactor/crypto/permission/CryptoPermissionInteractor;
.super Ljava/lang/Object;
.source "CryptoPermissionInteractor.kt"


# instance fields
.field private final cryptoPermissionRepository:Lcom/iMe/storage/domain/repository/crypto/permission/CryptoPermissionRepository;

.field private final schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;


# direct methods
.method public constructor <init>(Lcom/iMe/storage/domain/repository/crypto/permission/CryptoPermissionRepository;Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;)V
    .locals 1

    const-string v0, "cryptoPermissionRepository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "schedulersProvider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/iMe/storage/domain/interactor/crypto/permission/CryptoPermissionInteractor;->cryptoPermissionRepository:Lcom/iMe/storage/domain/repository/crypto/permission/CryptoPermissionRepository;

    .line 14
    iput-object p2, p0, Lcom/iMe/storage/domain/interactor/crypto/permission/CryptoPermissionInteractor;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    return-void
.end method


# virtual methods
.method public final getAddressInfo(Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Lcom/iMe/storage/domain/model/crypto/AccountInfo;",
            ">;>;"
        }
    .end annotation

    const-string v0, "userId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    iget-object v0, p0, Lcom/iMe/storage/domain/interactor/crypto/permission/CryptoPermissionInteractor;->cryptoPermissionRepository:Lcom/iMe/storage/domain/repository/crypto/permission/CryptoPermissionRepository;

    .line 32
    invoke-interface {v0, p1}, Lcom/iMe/storage/domain/repository/crypto/permission/CryptoPermissionRepository;->getAccountInfo(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    .line 33
    iget-object v0, p0, Lcom/iMe/storage/domain/interactor/crypto/permission/CryptoPermissionInteractor;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v0}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "cryptoPermissionReposito\u2026(schedulersProvider.io())"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final getCryptoPrivacySettings(Z)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Lcom/iMe/storage/domain/model/crypto/CryptoWalletsInfo;",
            ">;>;"
        }
    .end annotation

    .line 18
    iget-object v0, p0, Lcom/iMe/storage/domain/interactor/crypto/permission/CryptoPermissionInteractor;->cryptoPermissionRepository:Lcom/iMe/storage/domain/repository/crypto/permission/CryptoPermissionRepository;

    .line 19
    invoke-interface {v0, p1}, Lcom/iMe/storage/domain/repository/crypto/permission/CryptoPermissionRepository;->getPermissionSettings(Z)Lio/reactivex/Observable;

    move-result-object p1

    .line 20
    iget-object v0, p0, Lcom/iMe/storage/domain/interactor/crypto/permission/CryptoPermissionInteractor;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v0}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "cryptoPermissionReposito\u2026(schedulersProvider.io())"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final manageCryptoPrivacySettings(ZLjava/util/List;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    const-string v0, "whitelistUsers"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    iget-object v0, p0, Lcom/iMe/storage/domain/interactor/crypto/permission/CryptoPermissionInteractor;->cryptoPermissionRepository:Lcom/iMe/storage/domain/repository/crypto/permission/CryptoPermissionRepository;

    .line 27
    invoke-interface {v0, p1, p2}, Lcom/iMe/storage/domain/repository/crypto/permission/CryptoPermissionRepository;->managePermissionSettings(ZLjava/util/List;)Lio/reactivex/Observable;

    move-result-object p1

    .line 28
    iget-object p2, p0, Lcom/iMe/storage/domain/interactor/crypto/permission/CryptoPermissionInteractor;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {p2}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "cryptoPermissionReposito\u2026(schedulersProvider.io())"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final requestAllAddressesPermission(Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 2
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

    const-string v0, "userId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    iget-object v0, p0, Lcom/iMe/storage/domain/interactor/crypto/permission/CryptoPermissionInteractor;->cryptoPermissionRepository:Lcom/iMe/storage/domain/repository/crypto/permission/CryptoPermissionRepository;

    .line 37
    sget-object v1, Lcom/iMe/storage/domain/model/crypto/permission/PermissionAction;->GET_ETHER_WALLET_ADDRESS:Lcom/iMe/storage/domain/model/crypto/permission/PermissionAction;

    invoke-interface {v0, p1, v1}, Lcom/iMe/storage/domain/repository/crypto/permission/CryptoPermissionRepository;->requestPermission(Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/permission/PermissionAction;)Lio/reactivex/Observable;

    move-result-object p1

    .line 38
    iget-object v0, p0, Lcom/iMe/storage/domain/interactor/crypto/permission/CryptoPermissionInteractor;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v0}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "cryptoPermissionReposito\u2026(schedulersProvider.io())"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
