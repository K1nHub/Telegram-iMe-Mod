.class public final Lcom/iMe/ui/wallet/airdrop/dialog/WalletAirdropDialogPresenter;
.super Lcom/iMe/ui/base/mvp/base/BasePresenter;
.source "WalletAirdropDialogPresenter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/iMe/ui/base/mvp/base/BasePresenter<",
        "Lcom/iMe/ui/wallet/airdrop/dialog/WalletAirdropDialogView;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWalletAirdropDialogPresenter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WalletAirdropDialogPresenter.kt\ncom/iMe/ui/wallet/airdrop/dialog/WalletAirdropDialogPresenter\n+ 2 ObservableExt.kt\ncom/iMe/storage/domain/utils/extentions/ObservableExtKt\n+ 3 RxExt.kt\ncom/iMe/utils/extentions/rx/RxExtKt\n*L\n1#1,129:1\n14#2:130\n39#3,8:131\n*S KotlinDebug\n*F\n+ 1 WalletAirdropDialogPresenter.kt\ncom/iMe/ui/wallet/airdrop/dialog/WalletAirdropDialogPresenter\n*L\n53#1:130\n56#1:131,8\n*E\n"
.end annotation

.annotation runtime Lmoxy/InjectViewState;
.end annotation


# instance fields
.field private final airdropInteractor:Lcom/iMe/storage/domain/interactor/crypto/airdrop/AirdropInteractor;

.field private final cryptoAccessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

.field private final preferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

.field private final resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

.field private final schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;


# direct methods
.method public constructor <init>(Lcom/iMe/storage/domain/interactor/crypto/airdrop/AirdropInteractor;Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;Lcom/iMe/storage/domain/utils/system/ResourceManager;Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;)V
    .locals 1

    const-string v0, "airdropInteractor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cryptoAccessManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "preferenceHelper"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceManager"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "schedulersProvider"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-direct {p0}, Lcom/iMe/ui/base/mvp/base/BasePresenter;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/iMe/ui/wallet/airdrop/dialog/WalletAirdropDialogPresenter;->airdropInteractor:Lcom/iMe/storage/domain/interactor/crypto/airdrop/AirdropInteractor;

    .line 29
    iput-object p2, p0, Lcom/iMe/ui/wallet/airdrop/dialog/WalletAirdropDialogPresenter;->cryptoAccessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

    .line 30
    iput-object p3, p0, Lcom/iMe/ui/wallet/airdrop/dialog/WalletAirdropDialogPresenter;->preferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    .line 31
    iput-object p4, p0, Lcom/iMe/ui/wallet/airdrop/dialog/WalletAirdropDialogPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    .line 32
    iput-object p5, p0, Lcom/iMe/ui/wallet/airdrop/dialog/WalletAirdropDialogPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    return-void
.end method

.method public static final synthetic access$enableWalletMenuItem(Lcom/iMe/ui/wallet/airdrop/dialog/WalletAirdropDialogPresenter;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/iMe/ui/wallet/airdrop/dialog/WalletAirdropDialogPresenter;->enableWalletMenuItem()V

    return-void
.end method

.method public static final synthetic access$getAirdropInteractor$p(Lcom/iMe/ui/wallet/airdrop/dialog/WalletAirdropDialogPresenter;)Lcom/iMe/storage/domain/interactor/crypto/airdrop/AirdropInteractor;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/iMe/ui/wallet/airdrop/dialog/WalletAirdropDialogPresenter;->airdropInteractor:Lcom/iMe/storage/domain/interactor/crypto/airdrop/AirdropInteractor;

    return-object p0
.end method

.method public static final synthetic access$getPreferenceHelper$p(Lcom/iMe/ui/wallet/airdrop/dialog/WalletAirdropDialogPresenter;)Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/iMe/ui/wallet/airdrop/dialog/WalletAirdropDialogPresenter;->preferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    return-object p0
.end method

.method public static final synthetic access$getResourceManager$p(Lcom/iMe/ui/wallet/airdrop/dialog/WalletAirdropDialogPresenter;)Lcom/iMe/storage/domain/utils/system/ResourceManager;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/iMe/ui/wallet/airdrop/dialog/WalletAirdropDialogPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    return-object p0
.end method

.method public static final synthetic access$handleErrors(Lcom/iMe/ui/wallet/airdrop/dialog/WalletAirdropDialogPresenter;Lcom/iMe/storage/data/network/model/error/ErrorModel;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/airdrop/dialog/WalletAirdropDialogPresenter;->handleErrors(Lcom/iMe/storage/data/network/model/error/ErrorModel;)V

    return-void
.end method

.method private final configureDialogState()V
    .locals 5

    .line 97
    invoke-direct {p0}, Lcom/iMe/ui/wallet/airdrop/dialog/WalletAirdropDialogPresenter;->isBotActivated()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/iMe/ui/wallet/airdrop/dialog/WalletAirdropDialogPresenter;->isCryptoWalletCreated()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropStep;->CLAIM:Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropStep;

    goto :goto_0

    .line 98
    :cond_0
    invoke-direct {p0}, Lcom/iMe/ui/wallet/airdrop/dialog/WalletAirdropDialogPresenter;->isBotActivated()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/iMe/ui/wallet/airdrop/dialog/WalletAirdropDialogPresenter;->isCryptoWalletCreated()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropStep;->CREATE_WALLET:Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropStep;

    goto :goto_0

    .line 99
    :cond_1
    sget-object v0, Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropStep;->INTRO:Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropStep;

    .line 102
    :goto_0
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    check-cast v1, Lcom/iMe/ui/wallet/airdrop/dialog/WalletAirdropDialogView;

    .line 103
    iget-object v2, p0, Lcom/iMe/ui/wallet/airdrop/dialog/WalletAirdropDialogPresenter;->preferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v2}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->getAirdropMetadata()Lcom/iMe/storage/data/locale/prefs/model/WalletAirdropMetadata;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iMe/storage/data/locale/prefs/model/WalletAirdropMetadata;->getTokenValue()I

    move-result v2

    .line 104
    invoke-direct {p0}, Lcom/iMe/ui/wallet/airdrop/dialog/WalletAirdropDialogPresenter;->isBotActivated()Z

    move-result v3

    .line 105
    invoke-direct {p0}, Lcom/iMe/ui/wallet/airdrop/dialog/WalletAirdropDialogPresenter;->isCryptoWalletCreated()Z

    move-result v4

    .line 102
    invoke-interface {v1, v3, v4, v0, v2}, Lcom/iMe/ui/wallet/airdrop/dialog/WalletAirdropDialogView;->configureDialogState(ZZLcom/iMe/storage/domain/model/crypto/airdrop/AirdropStep;I)V

    return-void
.end method

.method private final enableWalletMenuItem()V
    .locals 3

    .line 87
    sget-object v0, Lorg/telegram/messenger/SharedConfig;->selectedDrawerItems:Ljava/util/Set;

    .line 88
    sget-object v1, Lcom/iMe/ui/drawer/DrawerSwitchableItem;->WALLET:Lcom/iMe/ui/drawer/DrawerSwitchableItem;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 89
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 90
    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->setSelectedDrawerItems(Ljava/util/Set;)V

    .line 91
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->mainUserInfoChanged:I

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static synthetic getTokensByAirdrop$default(Lcom/iMe/ui/wallet/airdrop/dialog/WalletAirdropDialogPresenter;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 50
    iget-object p1, p0, Lcom/iMe/ui/wallet/airdrop/dialog/WalletAirdropDialogPresenter;->preferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {p1}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->getAirdropMetadata()Lcom/iMe/storage/data/locale/prefs/model/WalletAirdropMetadata;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iMe/storage/data/locale/prefs/model/WalletAirdropMetadata;->getAirdropRequestId()Ljava/lang/String;

    move-result-object p1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/airdrop/dialog/WalletAirdropDialogPresenter;->getTokensByAirdrop(Ljava/lang/String;)V

    return-void
.end method

.method private final handleErrors(Lcom/iMe/storage/data/network/model/error/ErrorModel;)V
    .locals 8

    .line 111
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/airdrop/dialog/WalletAirdropDialogView;

    iget-object v1, p0, Lcom/iMe/ui/wallet/airdrop/dialog/WalletAirdropDialogPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    invoke-virtual {p1, v1}, Lcom/iMe/storage/data/network/model/error/ErrorModel;->getMessage(Lcom/iMe/storage/domain/utils/system/ResourceManager;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/iMe/ui/base/mvp/base/BaseView;->showToast(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p1}, Lcom/iMe/storage/data/network/model/error/ErrorModel;->getStatus()Lcom/iMe/storage/data/network/model/error/IErrorStatus;

    move-result-object p1

    .line 113
    sget-object v0, Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$AirdropErrorStatus;->AIRDROP_NO_TOKENS:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$AirdropErrorStatus;

    if-ne p1, v0, :cond_0

    .line 114
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/wallet/airdrop/dialog/WalletAirdropDialogView;

    invoke-interface {p1}, Lcom/iMe/ui/base/mvp/base/BaseView;->finishScreen()V

    goto :goto_1

    .line 116
    :cond_0
    sget-object v0, Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$AirdropErrorStatus;->AIRDROP_NOT_ACTIVE:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$AirdropErrorStatus;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$AirdropErrorStatus;->USER_ALREADY_PARTICIPATED:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$AirdropErrorStatus;

    if-ne p1, v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_3

    .line 117
    iget-object p1, p0, Lcom/iMe/ui/wallet/airdrop/dialog/WalletAirdropDialogPresenter;->preferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {p1}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->getAirdropMetadata()Lcom/iMe/storage/data/locale/prefs/model/WalletAirdropMetadata;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget-object v4, Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropStatus;->FINISHED:Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropStatus;

    const/4 v5, 0x0

    const/16 v6, 0x17

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lcom/iMe/storage/data/locale/prefs/model/WalletAirdropMetadata;->copy$default(Lcom/iMe/storage/data/locale/prefs/model/WalletAirdropMetadata;ZILjava/lang/String;Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropStatus;Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropDisplayStatus;ILjava/lang/Object;)Lcom/iMe/storage/data/locale/prefs/model/WalletAirdropMetadata;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->setAirdropMetadata(Lcom/iMe/storage/data/locale/prefs/model/WalletAirdropMetadata;)V

    .line 118
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/wallet/airdrop/dialog/WalletAirdropDialogView;

    invoke-interface {p1}, Lcom/iMe/ui/base/mvp/base/BaseView;->finishScreen()V

    :cond_3
    :goto_1
    return-void
.end method

.method private final isBotActivated()Z
    .locals 1

    .line 123
    invoke-static {}, Lcom/iMe/utils/helper/wallet/WalletHelper;->isAuthorized()Z

    move-result v0

    return v0
.end method

.method private final isCryptoWalletCreated()Z
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/iMe/ui/wallet/airdrop/dialog/WalletAirdropDialogPresenter;->cryptoAccessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

    invoke-interface {v0}, Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;->isCurrentBlockchainWalletCreated()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final acceptAirdrop()V
    .locals 9

    .line 38
    iget-object v0, p0, Lcom/iMe/ui/wallet/airdrop/dialog/WalletAirdropDialogPresenter;->preferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v0}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->getAirdropMetadata()Lcom/iMe/storage/data/locale/prefs/model/WalletAirdropMetadata;

    move-result-object v1

    sget-object v6, Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropDisplayStatus;->ACCEPTED:Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropDisplayStatus;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v7, 0xf

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Lcom/iMe/storage/data/locale/prefs/model/WalletAirdropMetadata;->copy$default(Lcom/iMe/storage/data/locale/prefs/model/WalletAirdropMetadata;ZILjava/lang/String;Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropStatus;Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropDisplayStatus;ILjava/lang/Object;)Lcom/iMe/storage/data/locale/prefs/model/WalletAirdropMetadata;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->setAirdropMetadata(Lcom/iMe/storage/data/locale/prefs/model/WalletAirdropMetadata;)V

    .line 39
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/airdrop/dialog/WalletAirdropDialogView;

    .line 40
    invoke-interface {v0}, Lcom/iMe/ui/wallet/airdrop/dialog/WalletAirdropDialogView;->onAcceptAirdrop()V

    .line 41
    invoke-interface {v0}, Lcom/iMe/ui/base/mvp/base/BaseView;->finishScreen()V

    return-void
.end method

.method public final getTokensByAirdrop(Ljava/lang/String;)V
    .locals 4

    const-string v0, "requestId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcom/iMe/ui/wallet/airdrop/dialog/WalletAirdropDialogPresenter;->airdropInteractor:Lcom/iMe/storage/domain/interactor/crypto/airdrop/AirdropInteractor;

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 52
    invoke-static {v0, p1, v1, v2, v1}, Lcom/iMe/storage/domain/interactor/crypto/airdrop/AirdropInteractor;->checkAirdropStart$default(Lcom/iMe/storage/domain/interactor/crypto/airdrop/AirdropInteractor;Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropVersion;ILjava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    .line 14
    new-instance v0, Lcom/iMe/ui/wallet/airdrop/dialog/WalletAirdropDialogPresenter$getTokensByAirdrop$$inlined$flatMapSuccess$1;

    invoke-direct {v0, p0}, Lcom/iMe/ui/wallet/airdrop/dialog/WalletAirdropDialogPresenter$getTokensByAirdrop$$inlined$flatMapSuccess$1;-><init>(Lcom/iMe/ui/wallet/airdrop/dialog/WalletAirdropDialogPresenter;)V

    new-instance v3, Lcom/iMe/ui/wallet/airdrop/dialog/WalletAirdropDialogPresenter$inlined$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {v3, v0}, Lcom/iMe/ui/wallet/airdrop/dialog/WalletAirdropDialogPresenter$inlined$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v3}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "crossinline body: (T) ->\u2026e.empty()\n        }\n    }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/iMe/ui/wallet/airdrop/dialog/WalletAirdropDialogPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v0}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "airdropInteractor\n      \u2026(schedulersProvider.ui())"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    const-string v3, "viewState"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/iMe/ui/base/mvp/base/BaseView;

    const/4 v3, 0x0

    invoke-static {p1, v0, v3, v2, v1}, Lcom/iMe/utils/extentions/rx/RxExtKt;->withLoadingDialog$default(Lio/reactivex/Observable;Lcom/iMe/ui/base/mvp/base/BaseView;ZILjava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    .line 56
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/base/mvp/base/BaseView;

    .line 44
    new-instance v2, Lcom/iMe/ui/wallet/airdrop/dialog/WalletAirdropDialogPresenter$getTokensByAirdrop$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v2, p0}, Lcom/iMe/ui/wallet/airdrop/dialog/WalletAirdropDialogPresenter$getTokensByAirdrop$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/ui/wallet/airdrop/dialog/WalletAirdropDialogPresenter;)V

    new-instance v3, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v3, v2}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v2, Lcom/iMe/ui/wallet/airdrop/dialog/WalletAirdropDialogPresenter$getTokensByAirdrop$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {v2, v0}, Lcom/iMe/ui/wallet/airdrop/dialog/WalletAirdropDialogPresenter$getTokensByAirdrop$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 46
    new-instance v0, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v0, v2}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 44
    invoke-virtual {p1, v3, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string v0, "viewState: BaseView? = n\u2026  onError.invoke()\n    })"

    .line 46
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 71
    invoke-static {p0, p1, v1, v0, v1}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/iMe/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method protected onFirstViewAttach()V
    .locals 0

    .line 79
    invoke-direct {p0}, Lcom/iMe/ui/wallet/airdrop/dialog/WalletAirdropDialogPresenter;->configureDialogState()V

    return-void
.end method

.method public final rejectAirdrop()V
    .locals 9

    .line 46
    iget-object v0, p0, Lcom/iMe/ui/wallet/airdrop/dialog/WalletAirdropDialogPresenter;->preferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v0}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->getAirdropMetadata()Lcom/iMe/storage/data/locale/prefs/model/WalletAirdropMetadata;

    move-result-object v1

    sget-object v6, Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropDisplayStatus;->REJECTED:Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropDisplayStatus;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v7, 0xf

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Lcom/iMe/storage/data/locale/prefs/model/WalletAirdropMetadata;->copy$default(Lcom/iMe/storage/data/locale/prefs/model/WalletAirdropMetadata;ZILjava/lang/String;Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropStatus;Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropDisplayStatus;ILjava/lang/Object;)Lcom/iMe/storage/data/locale/prefs/model/WalletAirdropMetadata;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->setAirdropMetadata(Lcom/iMe/storage/data/locale/prefs/model/WalletAirdropMetadata;)V

    .line 47
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/airdrop/dialog/WalletAirdropDialogView;

    invoke-interface {v0}, Lcom/iMe/ui/base/mvp/base/BaseView;->finishScreen()V

    return-void
.end method
