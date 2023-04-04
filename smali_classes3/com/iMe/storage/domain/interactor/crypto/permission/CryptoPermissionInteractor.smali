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

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/iMe/storage/domain/interactor/crypto/permission/CryptoPermissionInteractor;->cryptoPermissionRepository:Lcom/iMe/storage/domain/repository/crypto/permission/CryptoPermissionRepository;

    .line 15
    iput-object p2, p0, Lcom/iMe/storage/domain/interactor/crypto/permission/CryptoPermissionInteractor;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    return-void
.end method

.method public static synthetic manageCryptoPrivacySettings$default(Lcom/iMe/storage/domain/interactor/crypto/permission/CryptoPermissionInteractor;Lcom/iMe/storage/domain/model/wallet/token/TokenCode;ZLjava/util/List;ILjava/lang/Object;)Lio/reactivex/Observable;
    .locals 0

    and-int/lit8 p4, p4, 0x1

    if-eqz p4, :cond_0

    .line 24
    sget-object p1, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->ETHER:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    .line 23
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/iMe/storage/domain/interactor/crypto/permission/CryptoPermissionInteractor;->manageCryptoPrivacySettings(Lcom/iMe/storage/domain/model/wallet/token/TokenCode;ZLjava/util/List;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
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

    .line 33
    iget-object v0, p0, Lcom/iMe/storage/domain/interactor/crypto/permission/CryptoPermissionInteractor;->cryptoPermissionRepository:Lcom/iMe/storage/domain/repository/crypto/permission/CryptoPermissionRepository;

    .line 34
    invoke-interface {v0, p1}, Lcom/iMe/storage/domain/repository/crypto/permission/CryptoPermissionRepository;->getAccountInfo(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    .line 35
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
            "Lcom/iMe/storage/domain/model/crypto/CryptoWalletInfo;",
            ">;>;"
        }
    .end annotation

    .line 19
    iget-object v0, p0, Lcom/iMe/storage/domain/interactor/crypto/permission/CryptoPermissionInteractor;->cryptoPermissionRepository:Lcom/iMe/storage/domain/repository/crypto/permission/CryptoPermissionRepository;

    .line 20
    invoke-interface {v0, p1}, Lcom/iMe/storage/domain/repository/crypto/permission/CryptoPermissionRepository;->getPermissionSettings(Z)Lio/reactivex/Observable;

    move-result-object p1

    .line 21
    iget-object v0, p0, Lcom/iMe/storage/domain/interactor/crypto/permission/CryptoPermissionInteractor;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v0}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "cryptoPermissionReposito\u2026(schedulersProvider.io())"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final manageCryptoPrivacySettings(Lcom/iMe/storage/domain/model/wallet/token/TokenCode;ZLjava/util/List;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/wallet/token/TokenCode;",
            "Z",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "whitelistUsers"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    iget-object v0, p0, Lcom/iMe/storage/domain/interactor/crypto/permission/CryptoPermissionInteractor;->cryptoPermissionRepository:Lcom/iMe/storage/domain/repository/crypto/permission/CryptoPermissionRepository;

    .line 29
    invoke-interface {v0, p1, p2, p3}, Lcom/iMe/storage/domain/repository/crypto/permission/CryptoPermissionRepository;->managePermissionSettings(Lcom/iMe/storage/domain/model/wallet/token/TokenCode;ZLjava/util/List;)Lio/reactivex/Observable;

    move-result-object p1

    .line 30
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

    .line 38
    iget-object v0, p0, Lcom/iMe/storage/domain/interactor/crypto/permission/CryptoPermissionInteractor;->cryptoPermissionRepository:Lcom/iMe/storage/domain/repository/crypto/permission/CryptoPermissionRepository;

    .line 39
    sget-object v1, Lcom/iMe/storage/domain/model/crypto/permission/PermissionAction;->GET_ETHER_WALLET_ADDRESS:Lcom/iMe/storage/domain/model/crypto/permission/PermissionAction;

    invoke-interface {v0, p1, v1}, Lcom/iMe/storage/domain/repository/crypto/permission/CryptoPermissionRepository;->requestPermission(Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/permission/PermissionAction;)Lio/reactivex/Observable;

    move-result-object p1

    .line 40
    iget-object v0, p0, Lcom/iMe/storage/domain/interactor/crypto/permission/CryptoPermissionInteractor;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v0}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "cryptoPermissionReposito\u2026(schedulersProvider.io())"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
