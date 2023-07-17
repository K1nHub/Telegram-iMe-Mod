.class public final Lcom/iMe/ui/wallet/crypto/settings/WalletAccountSettingsPresenter;
.super Lcom/iMe/ui/base/mvp/base/BasePresenter;
.source "WalletAccountSettingsPresenter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/iMe/ui/base/mvp/base/BasePresenter<",
        "Lcom/iMe/ui/wallet/crypto/settings/WalletAccountSettingsView;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWalletAccountSettingsPresenter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WalletAccountSettingsPresenter.kt\ncom/iMe/ui/wallet/crypto/settings/WalletAccountSettingsPresenter\n+ 2 RxEventBus.kt\ncom/iMe/storage/domain/utils/rx/RxEventBus\n+ 3 RxExt.kt\ncom/iMe/utils/extentions/rx/RxExtKt\n*L\n1#1,68:1\n16#2,3:69\n42#3,12:72\n*S KotlinDebug\n*F\n+ 1 WalletAccountSettingsPresenter.kt\ncom/iMe/ui/wallet/crypto/settings/WalletAccountSettingsPresenter\n*L\n44#1:69,3\n45#1:72,12\n*E\n"
.end annotation

.annotation runtime Lmoxy/InjectViewState;
.end annotation


# instance fields
.field private final cryptoAccessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

.field private final cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

.field private final rxEventBus:Lcom/iMe/storage/domain/utils/rx/RxEventBus;


# direct methods
.method public constructor <init>(Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;Lcom/iMe/storage/domain/utils/rx/RxEventBus;)V
    .locals 1

    const-string v0, "cryptoAccessManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cryptoPreferenceHelper"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "rxEventBus"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0}, Lcom/iMe/ui/base/mvp/base/BasePresenter;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/iMe/ui/wallet/crypto/settings/WalletAccountSettingsPresenter;->cryptoAccessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

    .line 16
    iput-object p2, p0, Lcom/iMe/ui/wallet/crypto/settings/WalletAccountSettingsPresenter;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    .line 17
    iput-object p3, p0, Lcom/iMe/ui/wallet/crypto/settings/WalletAccountSettingsPresenter;->rxEventBus:Lcom/iMe/storage/domain/utils/rx/RxEventBus;

    return-void
.end method

.method public static final synthetic access$getCryptoAccessManager$p(Lcom/iMe/ui/wallet/crypto/settings/WalletAccountSettingsPresenter;)Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/iMe/ui/wallet/crypto/settings/WalletAccountSettingsPresenter;->cryptoAccessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

    return-object p0
.end method

.method public static final synthetic access$renderSettingsItems(Lcom/iMe/ui/wallet/crypto/settings/WalletAccountSettingsPresenter;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/settings/WalletAccountSettingsPresenter;->renderSettingsItems()V

    return-void
.end method

.method private final renderSettingsItems()V
    .locals 4

    .line 60
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/crypto/settings/WalletAccountSettingsView;

    .line 61
    sget-object v1, Lcom/iMe/model/wallet/crypto/settings/WalletSettingsItem$CryptoAccount;->INSTANCE:Lcom/iMe/model/wallet/crypto/settings/WalletSettingsItem$CryptoAccount;

    .line 62
    iget-object v2, p0, Lcom/iMe/ui/wallet/crypto/settings/WalletAccountSettingsPresenter;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v2}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->getCurrentBlockchainType()Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    move-result-object v2

    sget-object v3, Lcom/iMe/storage/domain/model/crypto/BlockchainType;->EVM:Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    if-ne v2, v3, :cond_0

    .line 63
    iget-object v2, p0, Lcom/iMe/ui/wallet/crypto/settings/WalletAccountSettingsPresenter;->cryptoAccessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;->isWalletCreated(Lcom/iMe/storage/domain/model/crypto/BlockchainType;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 61
    :goto_0
    invoke-virtual {v1, v2}, Lcom/iMe/model/wallet/crypto/settings/WalletSettingsItem$CryptoAccount;->getItems(Z)Ljava/util/List;

    move-result-object v1

    .line 60
    invoke-interface {v0, v1}, Lcom/iMe/ui/wallet/crypto/settings/WalletAccountSettingsView;->renderSettingsItems(Ljava/util/List;)V

    return-void
.end method

.method private final subscribeToRxEvents()V
    .locals 5

    .line 43
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/settings/WalletAccountSettingsPresenter;->rxEventBus:Lcom/iMe/storage/domain/utils/rx/RxEventBus;

    .line 16
    invoke-virtual {v0}, Lcom/iMe/storage/domain/utils/rx/RxEventBus;->getPublisher()Lio/reactivex/subjects/PublishSubject;

    move-result-object v1

    const-class v2, Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents$CryptoEvent;

    .line 17
    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->ofType(Ljava/lang/Class;)Lio/reactivex/Observable;

    move-result-object v1

    .line 18
    invoke-virtual {v0}, Lcom/iMe/storage/domain/utils/rx/RxEventBus;->getSchedulersProvider()Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "publisher\n              \u2026(schedulersProvider.ui())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    new-instance v1, Lcom/iMe/ui/wallet/crypto/settings/WalletAccountSettingsPresenter$subscribeToRxEvents$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v1, p0}, Lcom/iMe/ui/wallet/crypto/settings/WalletAccountSettingsPresenter$subscribeToRxEvents$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/ui/wallet/crypto/settings/WalletAccountSettingsPresenter;)V

    new-instance v2, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v2, v1}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v1, Lcom/iMe/ui/wallet/crypto/settings/WalletAccountSettingsPresenter$subscribeToRxEvents$$inlined$subscribeWithErrorHandle$default$2;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/iMe/ui/wallet/crypto/settings/WalletAccountSettingsPresenter$subscribeToRxEvents$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 49
    new-instance v4, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v4, v1}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 47
    invoke-virtual {v0, v2, v4}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    const-string/jumbo v1, "viewState: BaseView? = n\u2026Error.invoke()\n        })"

    .line 49
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 56
    invoke-static {p0, v0, v3, v1, v3}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/iMe/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected onFirstViewAttach()V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/settings/WalletAccountSettingsPresenter;->subscribeToRxEvents()V

    .line 39
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/settings/WalletAccountSettingsPresenter;->renderSettingsItems()V

    return-void
.end method

.method public final resolveItemClick(Lcom/iMe/model/wallet/crypto/settings/WalletSettingsItem;)V
    .locals 1

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    instance-of v0, p1, Lcom/iMe/model/wallet/crypto/settings/WalletSettingsItem$CryptoAccount$Blockchains;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/wallet/crypto/settings/WalletAccountSettingsView;

    invoke-interface {p1}, Lcom/iMe/ui/wallet/crypto/settings/WalletAccountSettingsView;->openBlockchainsScreen()V

    goto :goto_0

    .line 25
    :cond_0
    instance-of v0, p1, Lcom/iMe/model/wallet/crypto/settings/WalletSettingsItem$CryptoAccount$Privacy;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/wallet/crypto/settings/WalletAccountSettingsView;

    invoke-interface {p1}, Lcom/iMe/ui/wallet/crypto/settings/WalletAccountSettingsView;->openPrivacySettingsScreen()V

    goto :goto_0

    .line 26
    :cond_1
    instance-of v0, p1, Lcom/iMe/model/wallet/crypto/settings/WalletSettingsItem$CryptoAccount$WalletConnect;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/wallet/crypto/settings/WalletAccountSettingsView;

    invoke-interface {p1}, Lcom/iMe/ui/wallet/crypto/settings/WalletAccountSettingsView;->openWalletConnectScreen()V

    goto :goto_0

    .line 27
    :cond_2
    instance-of v0, p1, Lcom/iMe/model/wallet/crypto/settings/WalletSettingsItem$CryptoAccount$CustomTokens;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/wallet/crypto/settings/WalletAccountSettingsView;

    invoke-interface {p1}, Lcom/iMe/ui/wallet/crypto/settings/WalletAccountSettingsView;->openCustomTokensScreen()V

    goto :goto_0

    .line 28
    :cond_3
    instance-of p1, p1, Lcom/iMe/model/wallet/crypto/settings/WalletSettingsItem$CryptoAccount$PinCode;

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/wallet/crypto/settings/WalletAccountSettingsView;

    invoke-interface {p1}, Lcom/iMe/ui/wallet/crypto/settings/WalletAccountSettingsView;->openPinCodeSettingsScreen()V

    :cond_4
    :goto_0
    return-void
.end method
