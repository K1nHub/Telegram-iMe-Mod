.class public final Lcom/smedialink/ui/wallet/crypto/create/CreateWalletPresenter;
.super Lcom/smedialink/ui/base/mvp/base/BasePresenter;
.source "CreateWalletPresenter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/smedialink/ui/base/mvp/base/BasePresenter<",
        "Lcom/smedialink/ui/wallet/crypto/create/CreateWalletView;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCreateWalletPresenter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CreateWalletPresenter.kt\ncom/smedialink/ui/wallet/crypto/create/CreateWalletPresenter\n+ 2 RxExt.kt\ncom/smedialink/utils/extentions/rx/RxExtKt\n+ 3 ObservableExt.kt\ncom/smedialink/storage/domain/utils/extentions/ObservableExtKt\n*L\n1#1,203:1\n39#2,6:204\n39#2,6:210\n39#2,6:217\n15#3:216\n*S KotlinDebug\n*F\n+ 1 CreateWalletPresenter.kt\ncom/smedialink/ui/wallet/crypto/create/CreateWalletPresenter\n*L\n57#1:204,6\n109#1:210,6\n176#1:217,6\n161#1:216\n*E\n"
.end annotation

.annotation runtime Lmoxy/InjectViewState;
.end annotation


# instance fields
.field private final cryptoAccessManager:Lcom/smedialink/storage/domain/manager/crypto/CryptoAccessManager;

.field private final cryptoPreferenceHelper:Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

.field private final cryptoWalletInteractor:Lcom/smedialink/storage/domain/interactor/crypto/CryptoWalletInteractor;

.field private final resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

.field private final rxEventsBus:Lcom/smedialink/storage/domain/utils/rx/RxEventBus;

.field private final schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

.field private final screenType:Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$ScreenType;

.field private final walletInteractor:Lcom/smedialink/storage/domain/interactor/crypto/CryptoWalletInteractor;


# direct methods
.method public constructor <init>(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$ScreenType;Lcom/smedialink/storage/domain/manager/crypto/CryptoAccessManager;Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;Lcom/smedialink/storage/domain/interactor/crypto/CryptoWalletInteractor;Lcom/smedialink/storage/domain/utils/system/ResourceManager;Lcom/smedialink/storage/domain/utils/rx/RxEventBus;Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;Lcom/smedialink/storage/domain/interactor/crypto/CryptoWalletInteractor;)V
    .locals 1

    const-string v0, "screenType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cryptoAccessManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cryptoPreferenceHelper"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cryptoWalletInteractor"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceManager"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rxEventsBus"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "schedulersProvider"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "walletInteractor"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-direct {p0}, Lcom/smedialink/ui/base/mvp/base/BasePresenter;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletPresenter;->screenType:Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$ScreenType;

    .line 30
    iput-object p2, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletPresenter;->cryptoAccessManager:Lcom/smedialink/storage/domain/manager/crypto/CryptoAccessManager;

    .line 31
    iput-object p3, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletPresenter;->cryptoPreferenceHelper:Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

    .line 32
    iput-object p4, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletPresenter;->cryptoWalletInteractor:Lcom/smedialink/storage/domain/interactor/crypto/CryptoWalletInteractor;

    .line 33
    iput-object p5, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    .line 34
    iput-object p6, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletPresenter;->rxEventsBus:Lcom/smedialink/storage/domain/utils/rx/RxEventBus;

    .line 35
    iput-object p7, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletPresenter;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    .line 36
    iput-object p8, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletPresenter;->walletInteractor:Lcom/smedialink/storage/domain/interactor/crypto/CryptoWalletInteractor;

    return-void
.end method

.method public static final synthetic access$confirmBackUpCreated(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletPresenter;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletPresenter;->confirmBackUpCreated()V

    return-void
.end method

.method public static final synthetic access$getCryptoPreferenceHelper$p(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletPresenter;)Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletPresenter;->cryptoPreferenceHelper:Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

    return-object p0
.end method

.method public static final synthetic access$getCryptoWalletInteractor$p(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletPresenter;)Lcom/smedialink/storage/domain/interactor/crypto/CryptoWalletInteractor;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletPresenter;->cryptoWalletInteractor:Lcom/smedialink/storage/domain/interactor/crypto/CryptoWalletInteractor;

    return-object p0
.end method

.method public static final synthetic access$getResourceManager$p(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletPresenter;)Lcom/smedialink/storage/domain/utils/system/ResourceManager;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    return-object p0
.end method

.method public static final synthetic access$getSchedulersProvider$p(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletPresenter;)Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletPresenter;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    return-object p0
.end method

.method public static final synthetic access$getScreenType$p(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletPresenter;)Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$ScreenType;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletPresenter;->screenType:Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$ScreenType;

    return-object p0
.end method

.method private final confirmBackUpCreated()V
    .locals 2

    .line 197
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletPresenter;->rxEventsBus:Lcom/smedialink/storage/domain/utils/rx/RxEventBus;

    sget-object v1, Lcom/smedialink/storage/domain/utils/rx/event/DomainRxEvents$SuccessSaveBackup;->INSTANCE:Lcom/smedialink/storage/domain/utils/rx/event/DomainRxEvents$SuccessSaveBackup;

    invoke-virtual {v0, v1}, Lcom/smedialink/storage/domain/utils/rx/RxEventBus;->publish(Lcom/smedialink/storage/domain/utils/rx/event/RxEvent;)V

    .line 198
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletView;

    invoke-interface {v0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletView;->onSuccessConfirmBackUp()V

    return-void
.end method

.method private final loadCryptoData()V
    .locals 3

    .line 137
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletPresenter;->screenType:Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$ScreenType;

    .line 138
    instance-of v1, v0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$ScreenType$SecretWords;

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletView;

    .line 140
    iget-object v1, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletPresenter;->screenType:Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$ScreenType;

    check-cast v1, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$ScreenType$SecretWords;

    invoke-virtual {v1}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$ScreenType$SecretWords;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletPresenter;->screenType:Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$ScreenType;

    check-cast v1, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$ScreenType$SecretWords;

    invoke-virtual {v1}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$ScreenType$SecretWords;->getAddress()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 141
    :cond_1
    iget-object v1, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletPresenter;->screenType:Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$ScreenType;

    check-cast v1, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$ScreenType$SecretWords;

    invoke-virtual {v1}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$ScreenType$SecretWords;->getSecretWords()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/2addr v1, v2

    if-eqz v1, :cond_2

    .line 142
    sget-object v1, Lcom/smedialink/storage/data/utils/crypto/CryptoWalletUtils;->INSTANCE:Lcom/smedialink/storage/data/utils/crypto/CryptoWalletUtils;

    iget-object v2, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletPresenter;->screenType:Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$ScreenType;

    check-cast v2, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$ScreenType$SecretWords;

    invoke-virtual {v2}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$ScreenType$SecretWords;->getSecretWords()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/smedialink/storage/data/utils/extentions/StringExtKt;->joinBySpace(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/smedialink/storage/data/utils/crypto/CryptoWalletUtils;->createBip44Wallet(Ljava/lang/String;)Lorg/web3j/crypto/Credentials;

    move-result-object v1

    invoke-virtual {v1}, Lorg/web3j/crypto/Credentials;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 141
    invoke-static {v1}, Lorg/web3j/crypto/Keys;->toChecksumAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    const-string v1, ""

    :goto_1
    const-string v2, "when {\n                 \u2026ING\n                    }"

    .line 142
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    invoke-interface {v0, v1}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletView;->setWalletAddress(Ljava/lang/String;)V

    goto :goto_3

    .line 147
    :cond_3
    instance-of v1, v0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$ScreenType$WordsCheck;

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    instance-of v2, v0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$ScreenType$Import;

    :goto_2
    if-eqz v2, :cond_5

    .line 148
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletView;

    invoke-static {}, Lorg/web3j/crypto/MnemonicUtils;->getWords()Ljava/util/List;

    move-result-object v1

    const-string v2, "getWords()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletView;->setHintWords(Ljava/util/List;)V

    :cond_5
    :goto_3
    return-void
.end method

.method private final validateSeedInternal(Lio/reactivex/Observable;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Ljava/lang/Boolean;",
            ">;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 158
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletPresenter;->screenType:Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$ScreenType;

    instance-of v0, v0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$ScreenType$Import;

    if-nez v0, :cond_0

    return-void

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletPresenter;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v0}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "validationObservable\n   \u2026(schedulersProvider.ui())"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    new-instance v0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletPresenter$validateSeedInternal$$inlined$flatMapSuccess$1;

    invoke-direct {v0, p4, p0, p2}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletPresenter$validateSeedInternal$$inlined$flatMapSuccess$1;-><init>(ZLcom/smedialink/ui/wallet/crypto/create/CreateWalletPresenter;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "crossinline body: (T) ->\u2026e.empty()\n        }\n    }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 175
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    const-string v1, "viewState"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/smedialink/ui/base/mvp/base/BaseView;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lcom/smedialink/utils/extentions/rx/RxExtKt;->withLoadingDialog$default(Lio/reactivex/Observable;Lcom/smedialink/ui/base/mvp/base/BaseView;ZILjava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    .line 176
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/base/mvp/base/BaseView;

    .line 44
    new-instance v1, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletPresenter$validateSeedInternal$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v1, p0, p4, p2, p3}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletPresenter$validateSeedInternal$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletPresenter;ZLjava/lang/String;Ljava/lang/String;)V

    new-instance p2, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletPresenter$validateSeedInternal$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {p2, v0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletPresenter$validateSeedInternal$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/smedialink/ui/base/mvp/base/BaseView;)V

    invoke-virtual {p1, v1, p2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string p2, "viewState: BaseView? = n\u2026  onError.invoke()\n    })"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x1

    .line 193
    invoke-static {p0, p1, v3, p2, v3}, Lcom/smedialink/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/smedialink/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final onCreateNewEmptyWalletClick()V
    .locals 7

    .line 98
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletPresenter;->cryptoAccessManager:Lcom/smedialink/storage/domain/manager/crypto/CryptoAccessManager;

    invoke-interface {v0}, Lcom/smedialink/storage/domain/manager/crypto/CryptoAccessManager;->getWalletPassword()Ljava/lang/String;

    move-result-object v0

    .line 99
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 100
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletView;

    invoke-interface {v0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletView;->createNewWallet()V

    goto :goto_1

    .line 102
    :cond_1
    iget-object v1, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletPresenter;->cryptoWalletInteractor:Lcom/smedialink/storage/domain/interactor/crypto/CryptoWalletInteractor;

    .line 104
    iget-object v4, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletPresenter;->cryptoAccessManager:Lcom/smedialink/storage/domain/manager/crypto/CryptoAccessManager;

    invoke-interface {v4}, Lcom/smedialink/storage/domain/manager/crypto/CryptoAccessManager;->getLastLoggedInGuid()Ljava/lang/String;

    move-result-object v4

    .line 103
    invoke-virtual {v1, v4, v0}, Lcom/smedialink/storage/domain/interactor/crypto/CryptoWalletInteractor;->generateMnemonic(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v1

    .line 107
    iget-object v4, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletPresenter;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v4}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v4

    invoke-virtual {v1, v4}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v1

    const-string v4, "cryptoWalletInteractor\n \u2026(schedulersProvider.ui())"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v4

    const-string v5, "viewState"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Lcom/smedialink/ui/base/mvp/base/BaseView;

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static {v1, v4, v3, v5, v6}, Lcom/smedialink/utils/extentions/rx/RxExtKt;->withLoadingDialog$default(Lio/reactivex/Observable;Lcom/smedialink/ui/base/mvp/base/BaseView;ZILjava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v1

    .line 109
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v3

    check-cast v3, Lcom/smedialink/ui/base/mvp/base/BaseView;

    .line 44
    new-instance v4, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletPresenter$onCreateNewEmptyWalletClick$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v4, p0, v0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletPresenter$onCreateNewEmptyWalletClick$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletPresenter;Ljava/lang/String;)V

    new-instance v0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletPresenter$onCreateNewEmptyWalletClick$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {v0, v3}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletPresenter$onCreateNewEmptyWalletClick$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/smedialink/ui/base/mvp/base/BaseView;)V

    invoke-virtual {v1, v4, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    const-string v1, "viewState: BaseView? = n\u2026  onError.invoke()\n    })"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    invoke-static {p0, v0, v6, v2, v6}, Lcom/smedialink/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/smedialink/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    :goto_1
    return-void
.end method

.method protected onFirstViewAttach()V
    .locals 0

    .line 129
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletPresenter;->loadCryptoData()V

    return-void
.end method

.method public final onSecretWordsCheckCompleted()V
    .locals 9

    .line 42
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletPresenter;->screenType:Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$ScreenType;

    instance-of v1, v0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$ScreenType$WordsCheck;

    if-nez v1, :cond_0

    return-void

    .line 45
    :cond_0
    check-cast v0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$ScreenType$WordsCheck;

    invoke-virtual {v0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$ScreenType$WordsCheck;->getPassword()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    .line 46
    iget-object v3, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletPresenter;->cryptoWalletInteractor:Lcom/smedialink/storage/domain/interactor/crypto/CryptoWalletInteractor;

    .line 48
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletPresenter;->screenType:Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$ScreenType;

    check-cast v0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$ScreenType$WordsCheck;

    invoke-virtual {v0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$ScreenType$WordsCheck;->getPassword()Ljava/lang/String;

    move-result-object v4

    .line 49
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletPresenter;->cryptoAccessManager:Lcom/smedialink/storage/domain/manager/crypto/CryptoAccessManager;

    invoke-interface {v0}, Lcom/smedialink/storage/domain/manager/crypto/CryptoAccessManager;->isAnyWalletCreated()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, ""

    goto :goto_1

    .line 50
    :cond_2
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletPresenter;->screenType:Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$ScreenType;

    check-cast v0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$ScreenType$WordsCheck;

    invoke-virtual {v0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$ScreenType$WordsCheck;->getPin()Ljava/lang/String;

    move-result-object v0

    :goto_1
    move-object v5, v0

    .line 52
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletPresenter;->screenType:Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$ScreenType;

    check-cast v0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$ScreenType$WordsCheck;

    invoke-virtual {v0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$ScreenType$WordsCheck;->getSecretWords()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/smedialink/storage/data/utils/extentions/StringExtKt;->joinBySpace(Ljava/util/List;)Ljava/lang/String;

    move-result-object v7

    .line 53
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletPresenter;->cryptoPreferenceHelper:Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v0}, Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;->getCurrentBlockchainType()Lcom/smedialink/storage/domain/model/crypto/BlockchainType;

    move-result-object v8

    const-string v6, ""

    .line 47
    invoke-virtual/range {v3 .. v8}, Lcom/smedialink/storage/domain/interactor/crypto/CryptoWalletInteractor;->createWallet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/smedialink/storage/domain/model/crypto/BlockchainType;)Lio/reactivex/Observable;

    move-result-object v0

    .line 55
    iget-object v3, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletPresenter;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v3}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v3

    invoke-virtual {v0, v3}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v3, "cryptoWalletInteractor\n \u2026(schedulersProvider.ui())"

    .line 52
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v3

    const-string v4, "viewState"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lcom/smedialink/ui/base/mvp/base/BaseView;

    invoke-static {v0, v3, v2}, Lcom/smedialink/utils/extentions/rx/RxExtKt;->withLoadingDialog(Lio/reactivex/Observable;Lcom/smedialink/ui/base/mvp/base/BaseView;Z)Lio/reactivex/Observable;

    move-result-object v0

    .line 57
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v2

    check-cast v2, Lcom/smedialink/ui/base/mvp/base/BaseView;

    .line 44
    new-instance v3, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletPresenter$onSecretWordsCheckCompleted$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v3, p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletPresenter$onSecretWordsCheckCompleted$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletPresenter;)V

    new-instance v4, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletPresenter$onSecretWordsCheckCompleted$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {v4, v2}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletPresenter$onSecretWordsCheckCompleted$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/smedialink/ui/base/mvp/base/BaseView;)V

    invoke-virtual {v0, v3, v4}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    const-string v2, "viewState: BaseView? = n\u2026  onError.invoke()\n    })"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 63
    invoke-static {p0, v0, v2, v1, v2}, Lcom/smedialink/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/smedialink/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    goto :goto_2

    .line 65
    :cond_3
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletPresenter;->confirmBackUpCreated()V

    :goto_2
    return-void
.end method

.method public final validateSeed(Ljava/lang/String;)V
    .locals 5

    const-string v0, "seed"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletPresenter;->screenType:Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$ScreenType;

    instance-of v1, v0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$ScreenType$Import;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$ScreenType$Import;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    goto :goto_3

    .line 71
    :cond_1
    invoke-virtual {v0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$ScreenType$Import;->getPassword()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 72
    :goto_1
    invoke-virtual {v0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$ScreenType$Import;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_3

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    :goto_2
    if-eqz v2, :cond_4

    .line 74
    iget-object v2, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletPresenter;->walletInteractor:Lcom/smedialink/storage/domain/interactor/crypto/CryptoWalletInteractor;

    .line 76
    invoke-virtual {v0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$ScreenType$Import;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 77
    iget-object v3, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletPresenter;->cryptoPreferenceHelper:Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v3}, Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;->getCurrentBlockchainType()Lcom/smedialink/storage/domain/model/crypto/BlockchainType;

    move-result-object v3

    .line 74
    invoke-virtual {v2, p1, v0, v3}, Lcom/smedialink/storage/domain/interactor/crypto/CryptoWalletInteractor;->isValidRestoredAddress(Ljava/lang/String;Ljava/lang/String;Lcom/smedialink/storage/domain/model/crypto/BlockchainType;)Lio/reactivex/Observable;

    move-result-object v0

    .line 80
    iget-object v2, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    sget v3, Lorg/telegram/messenger/R$string;->wallet_restore_address_eth_error:I

    invoke-interface {v2, v3}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 73
    invoke-direct {p0, v0, p1, v2, v1}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletPresenter;->validateSeedInternal(Lio/reactivex/Observable;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_3

    .line 85
    :cond_4
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletPresenter;->walletInteractor:Lcom/smedialink/storage/domain/interactor/crypto/CryptoWalletInteractor;

    .line 87
    iget-object v2, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletPresenter;->cryptoPreferenceHelper:Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v2}, Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;->getCurrentBlockchainType()Lcom/smedialink/storage/domain/model/crypto/BlockchainType;

    move-result-object v2

    .line 85
    invoke-virtual {v0, p1, v2}, Lcom/smedialink/storage/domain/interactor/crypto/CryptoWalletInteractor;->isValidSeed(Ljava/lang/String;Lcom/smedialink/storage/domain/model/crypto/BlockchainType;)Lio/reactivex/Observable;

    move-result-object v0

    .line 90
    iget-object v2, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    sget v3, Lorg/telegram/messenger/R$string;->wallet_restore_eth_error:I

    invoke-interface {v2, v3}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 84
    invoke-direct {p0, v0, p1, v2, v1}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletPresenter;->validateSeedInternal(Lio/reactivex/Observable;Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_3
    return-void
.end method
