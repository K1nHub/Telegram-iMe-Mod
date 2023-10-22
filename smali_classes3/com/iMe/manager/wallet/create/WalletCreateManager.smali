.class public final Lcom/iMe/manager/wallet/create/WalletCreateManager;
.super Ljava/lang/Object;
.source "WalletCreateManager.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWalletCreateManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WalletCreateManager.kt\ncom/iMe/manager/wallet/create/WalletCreateManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 4 RxExt.kt\ncom/iMe/utils/extentions/rx/RxExtKt\n*L\n1#1,144:1\n1549#2:145\n1620#2,3:146\n37#3,2:149\n63#4,12:151\n63#4,12:163\n*S KotlinDebug\n*F\n+ 1 WalletCreateManager.kt\ncom/iMe/manager/wallet/create/WalletCreateManager\n*L\n71#1:145\n71#1:146,3\n73#1:149,2\n104#1:151,12\n124#1:163,12\n*E\n"
.end annotation


# instance fields
.field private final cryptoAccessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

.field private final cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

.field private final cryptoWalletInteractor:Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;

.field private linkedWalletsAddresses:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/iMe/storage/domain/model/crypto/BlockchainType;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

.field private final rxEventBus:Lcom/iMe/storage/domain/utils/rx/RxEventBus;

.field private final schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

.field private final subscriptions:Lio/reactivex/disposables/CompositeDisposable;

.field private viewState:Lcom/iMe/manager/wallet/create/WalletCreateManagerView;


# direct methods
.method public static synthetic $r8$lambda$2E9EwP8HAckdROis77JLWmVHE8o(Lcom/iMe/manager/wallet/create/WalletCreateManager;Lcom/iMe/model/wallet/crypto/create/WalletCreationType;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/manager/wallet/create/WalletCreateManager;->startWalletCreationFlow$lambda$2(Lcom/iMe/manager/wallet/create/WalletCreateManager;Lcom/iMe/model/wallet/crypto/create/WalletCreationType;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bv9yk9cI0ra2leM_ySySoGIi0xk(Lcom/iMe/manager/wallet/create/WalletCreateManager;Lcom/iMe/model/wallet/crypto/create/WalletCreationType;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/manager/wallet/create/WalletCreateManager;->startWalletCreationFlow$lambda$2$lambda$1$lambda$0(Lcom/iMe/manager/wallet/create/WalletCreateManager;Lcom/iMe/model/wallet/crypto/create/WalletCreationType;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zlJ-6Aa-wkhUQWworQT9p9E26-w(Lcom/iMe/manager/wallet/create/WalletCreateManager;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/iMe/manager/wallet/create/WalletCreateManager;->startChooseWalletOptionsFlow$lambda$4(Lcom/iMe/manager/wallet/create/WalletCreateManager;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public constructor <init>(Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;Lcom/iMe/storage/domain/utils/system/ResourceManager;Lcom/iMe/storage/domain/utils/rx/RxEventBus;Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;)V
    .locals 1

    const-string v0, "cryptoAccessManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cryptoPreferenceHelper"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cryptoWalletInteractor"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceManager"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rxEventBus"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "schedulersProvider"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/iMe/manager/wallet/create/WalletCreateManager;->cryptoAccessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

    .line 25
    iput-object p2, p0, Lcom/iMe/manager/wallet/create/WalletCreateManager;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    .line 26
    iput-object p3, p0, Lcom/iMe/manager/wallet/create/WalletCreateManager;->cryptoWalletInteractor:Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;

    .line 27
    iput-object p4, p0, Lcom/iMe/manager/wallet/create/WalletCreateManager;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    .line 28
    iput-object p5, p0, Lcom/iMe/manager/wallet/create/WalletCreateManager;->rxEventBus:Lcom/iMe/storage/domain/utils/rx/RxEventBus;

    .line 29
    iput-object p6, p0, Lcom/iMe/manager/wallet/create/WalletCreateManager;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    .line 32
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/manager/wallet/create/WalletCreateManager;->linkedWalletsAddresses:Ljava/util/Map;

    .line 34
    new-instance p1, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {p1}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object p1, p0, Lcom/iMe/manager/wallet/create/WalletCreateManager;->subscriptions:Lio/reactivex/disposables/CompositeDisposable;

    return-void
.end method

.method public static final synthetic access$getResourceManager$p(Lcom/iMe/manager/wallet/create/WalletCreateManager;)Lcom/iMe/storage/domain/utils/system/ResourceManager;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/iMe/manager/wallet/create/WalletCreateManager;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    return-object p0
.end method

.method public static final synthetic access$getRxEventBus$p(Lcom/iMe/manager/wallet/create/WalletCreateManager;)Lcom/iMe/storage/domain/utils/rx/RxEventBus;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/iMe/manager/wallet/create/WalletCreateManager;->rxEventBus:Lcom/iMe/storage/domain/utils/rx/RxEventBus;

    return-object p0
.end method

.method public static final synthetic access$getViewState(Lcom/iMe/manager/wallet/create/WalletCreateManager;)Lcom/iMe/manager/wallet/create/WalletCreateManagerView;
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/iMe/manager/wallet/create/WalletCreateManager;->getViewState()Lcom/iMe/manager/wallet/create/WalletCreateManagerView;

    move-result-object p0

    return-object p0
.end method

.method private final activateBib39BasedWallet(Lcom/iMe/storage/domain/model/crypto/BlockchainType;)V
    .locals 3

    .line 120
    iget-object v0, p0, Lcom/iMe/manager/wallet/create/WalletCreateManager;->cryptoWalletInteractor:Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;

    .line 121
    invoke-virtual {v0, p1}, Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;->activateBip39BasedWallet(Lcom/iMe/storage/domain/model/crypto/BlockchainType;)Lio/reactivex/Observable;

    move-result-object p1

    .line 122
    iget-object v0, p0, Lcom/iMe/manager/wallet/create/WalletCreateManager;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v0}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "cryptoWalletInteractor\n \u2026(schedulersProvider.ui())"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    invoke-direct {p0}, Lcom/iMe/manager/wallet/create/WalletCreateManager;->getViewState()Lcom/iMe/manager/wallet/create/WalletCreateManagerView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/iMe/utils/extentions/rx/RxExtKt;->withLoadingDialog(Lio/reactivex/Observable;Lcom/iMe/ui/base/mvp/base/BaseView;Z)Lio/reactivex/Observable;

    move-result-object p1

    .line 124
    iget-object v0, p0, Lcom/iMe/manager/wallet/create/WalletCreateManager;->viewState:Lcom/iMe/manager/wallet/create/WalletCreateManagerView;

    .line 68
    new-instance v1, Lcom/iMe/manager/wallet/create/WalletCreateManager$activateBib39BasedWallet$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v1, p0}, Lcom/iMe/manager/wallet/create/WalletCreateManager$activateBib39BasedWallet$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/manager/wallet/create/WalletCreateManager;)V

    new-instance v2, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v2, v1}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v1, Lcom/iMe/manager/wallet/create/WalletCreateManager$activateBib39BasedWallet$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {v1, v0}, Lcom/iMe/manager/wallet/create/WalletCreateManager$activateBib39BasedWallet$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 70
    new-instance v0, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v0, v1}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 68
    invoke-virtual {p1, v2, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string v0, "viewState: BaseView? = n\u2026rror.invoke(error)\n    })"

    .line 70
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private final getActivationConfirmationDialogModel()Lcom/iMe/model/dialog/DialogModel;
    .locals 6

    .line 137
    new-instance v0, Lcom/iMe/model/dialog/DialogModel;

    .line 138
    iget-object v1, p0, Lcom/iMe/manager/wallet/create/WalletCreateManager;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v2, Lorg/telegram/messenger/R$string;->wallet_activation_confirmation_title:I

    invoke-interface {v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 139
    iget-object v2, p0, Lcom/iMe/manager/wallet/create/WalletCreateManager;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v3, Lorg/telegram/messenger/R$string;->wallet_activation_confirmation_description:I

    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 140
    iget-object v3, p0, Lcom/iMe/manager/wallet/create/WalletCreateManager;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v4, Lorg/telegram/messenger/R$string;->common_cancel:I

    invoke-interface {v3, v4}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 141
    iget-object v4, p0, Lcom/iMe/manager/wallet/create/WalletCreateManager;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v5, Lorg/telegram/messenger/R$string;->common_ok:I

    invoke-interface {v4, v5}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 137
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/iMe/model/dialog/DialogModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private final getCurrentBlockchainType()Lcom/iMe/storage/domain/model/crypto/BlockchainType;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/iMe/manager/wallet/create/WalletCreateManager;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v0}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->getCurrentBlockchainType()Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    move-result-object v0

    return-object v0
.end method

.method private final getViewState()Lcom/iMe/manager/wallet/create/WalletCreateManagerView;
    .locals 2

    .line 134
    iget-object v0, p0, Lcom/iMe/manager/wallet/create/WalletCreateManager;->viewState:Lcom/iMe/manager/wallet/create/WalletCreateManagerView;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Please call attachViewState(view: ViewManagerDelegate<T>) first!"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static final startChooseWalletOptionsFlow$lambda$4(Lcom/iMe/manager/wallet/create/WalletCreateManager;Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    sget-object p1, Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial;->Companion:Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial$Companion;

    invoke-virtual {p1, p2}, Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial$Companion;->getByIndex(I)Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/iMe/manager/wallet/create/WalletCreateManager;->startWalletCreationFlow(Lcom/iMe/model/wallet/crypto/create/WalletCreationType;)V

    return-void
.end method

.method private static final startWalletCreationFlow$lambda$2(Lcom/iMe/manager/wallet/create/WalletCreateManager;Lcom/iMe/model/wallet/crypto/create/WalletCreationType;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$walletCreationType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-direct {p0}, Lcom/iMe/manager/wallet/create/WalletCreateManager;->getViewState()Lcom/iMe/manager/wallet/create/WalletCreateManagerView;

    move-result-object v0

    .line 51
    instance-of v1, p1, Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial;

    if-eqz v1, :cond_1

    .line 52
    invoke-virtual {p0}, Lcom/iMe/manager/wallet/create/WalletCreateManager;->getLinkedWalletsAddresses()Ljava/util/Map;

    move-result-object v1

    invoke-direct {p0}, Lcom/iMe/manager/wallet/create/WalletCreateManager;->getCurrentBlockchainType()Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_0

    const-string p0, ""

    .line 53
    :cond_0
    check-cast p1, Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial;

    .line 51
    invoke-interface {v0, p0, p1}, Lcom/iMe/manager/wallet/create/WalletCreateManagerView;->openCreateWalletIntroScreen(Ljava/lang/String;Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial;)V

    goto :goto_0

    .line 56
    :cond_1
    instance-of v1, p1, Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Activate;

    if-eqz v1, :cond_2

    .line 57
    invoke-direct {p0}, Lcom/iMe/manager/wallet/create/WalletCreateManager;->getActivationConfirmationDialogModel()Lcom/iMe/model/dialog/DialogModel;

    move-result-object v1

    .line 56
    new-instance v2, Lcom/iMe/manager/wallet/create/WalletCreateManager$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, p1}, Lcom/iMe/manager/wallet/create/WalletCreateManager$$ExternalSyntheticLambda2;-><init>(Lcom/iMe/manager/wallet/create/WalletCreateManager;Lcom/iMe/model/wallet/crypto/create/WalletCreationType;)V

    invoke-interface {v0, v1, v2}, Lcom/iMe/manager/wallet/create/WalletCreateManagerView;->showActivationConfirmationDialog(Lcom/iMe/model/dialog/DialogModel;Lcom/iMe/fork/utils/Callbacks$Callback;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private static final startWalletCreationFlow$lambda$2$lambda$1$lambda$0(Lcom/iMe/manager/wallet/create/WalletCreateManager;Lcom/iMe/model/wallet/crypto/create/WalletCreationType;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$walletCreationType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    check-cast p1, Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Activate;

    invoke-virtual {p1}, Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Activate;->getBlockchainType()Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/iMe/manager/wallet/create/WalletCreateManager;->activateBib39BasedWallet(Lcom/iMe/storage/domain/model/crypto/BlockchainType;)V

    return-void
.end method


# virtual methods
.method public attachViewState(Lcom/iMe/manager/wallet/create/WalletCreateManagerView;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    iput-object p1, p0, Lcom/iMe/manager/wallet/create/WalletCreateManager;->viewState:Lcom/iMe/manager/wallet/create/WalletCreateManagerView;

    return-void
.end method

.method public getAvailableWalletCreationTypes(Lcom/iMe/storage/domain/model/crypto/BlockchainType;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/crypto/BlockchainType;",
            ")",
            "Ljava/util/List<",
            "Lcom/iMe/model/wallet/crypto/create/WalletCreationType;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 82
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/BlockchainType;->isBip39PhraseBased()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/iMe/manager/wallet/create/WalletCreateManager;->cryptoAccessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

    invoke-interface {v0}, Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;->isAnyBip39PhraseBasedWalletCreated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    new-instance v0, Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Activate;

    invoke-direct {v0, p1}, Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Activate;-><init>(Lcom/iMe/storage/domain/model/crypto/BlockchainType;)V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 87
    invoke-direct {p0}, Lcom/iMe/manager/wallet/create/WalletCreateManager;->getCurrentBlockchainType()Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/BlockchainType;->isBip39PhraseBased()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 88
    iget-object p1, p0, Lcom/iMe/manager/wallet/create/WalletCreateManager;->cryptoAccessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

    invoke-interface {p1}, Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;->isAnyBip39PhraseBasedWalletCreated()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 89
    iget-object p1, p0, Lcom/iMe/manager/wallet/create/WalletCreateManager;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {p1}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->isAllNetworksSelected()Z

    move-result p1

    if-nez p1, :cond_1

    .line 91
    new-instance p1, Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Activate;

    invoke-direct {p0}, Lcom/iMe/manager/wallet/create/WalletCreateManager;->getCurrentBlockchainType()Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Activate;-><init>(Lcom/iMe/storage/domain/model/crypto/BlockchainType;)V

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 93
    :cond_1
    sget-object p1, Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial;->Companion:Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial$Companion;

    invoke-virtual {p1}, Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial$Companion;->getValuesOrdered()Ljava/util/List;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getLinkedWalletsAddresses()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/iMe/storage/domain/model/crypto/BlockchainType;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lcom/iMe/manager/wallet/create/WalletCreateManager;->linkedWalletsAddresses:Ljava/util/Map;

    return-object v0
.end method

.method public onDetachViewState()V
    .locals 1

    const/4 v0, 0x0

    .line 44
    iput-object v0, p0, Lcom/iMe/manager/wallet/create/WalletCreateManager;->viewState:Lcom/iMe/manager/wallet/create/WalletCreateManagerView;

    return-void
.end method

.method public runWithCryptoInformationCheck(Lcom/iMe/fork/utils/Callbacks$Callback;)V
    .locals 5

    const-string v0, "endAction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    invoke-virtual {p0}, Lcom/iMe/manager/wallet/create/WalletCreateManager;->getLinkedWalletsAddresses()Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0}, Lcom/iMe/manager/wallet/create/WalletCreateManager;->getCurrentBlockchainType()Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 98
    invoke-interface {p1}, Lcom/iMe/fork/utils/Callbacks$Callback;->invoke()V

    goto :goto_0

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/iMe/manager/wallet/create/WalletCreateManager;->cryptoWalletInteractor:Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;

    .line 101
    invoke-virtual {v0}, Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;->getLinkedWalletsAddresses()Lio/reactivex/Observable;

    move-result-object v0

    .line 102
    iget-object v1, p0, Lcom/iMe/manager/wallet/create/WalletCreateManager;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "cryptoWalletInteractor\n \u2026(schedulersProvider.ui())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    invoke-direct {p0}, Lcom/iMe/manager/wallet/create/WalletCreateManager;->getViewState()Lcom/iMe/manager/wallet/create/WalletCreateManagerView;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/iMe/utils/extentions/rx/RxExtKt;->withLoadingDialog$default(Lio/reactivex/Observable;Lcom/iMe/ui/base/mvp/base/BaseView;ZILjava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    .line 104
    invoke-direct {p0}, Lcom/iMe/manager/wallet/create/WalletCreateManager;->getViewState()Lcom/iMe/manager/wallet/create/WalletCreateManagerView;

    move-result-object v1

    .line 68
    new-instance v2, Lcom/iMe/manager/wallet/create/WalletCreateManager$runWithCryptoInformationCheck$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v2, p0, p1}, Lcom/iMe/manager/wallet/create/WalletCreateManager$runWithCryptoInformationCheck$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/manager/wallet/create/WalletCreateManager;Lcom/iMe/fork/utils/Callbacks$Callback;)V

    new-instance p1, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {p1, v2}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v2, Lcom/iMe/manager/wallet/create/WalletCreateManager$runWithCryptoInformationCheck$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {v2, v1}, Lcom/iMe/manager/wallet/create/WalletCreateManager$runWithCryptoInformationCheck$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 70
    new-instance v1, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v1, v2}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 68
    invoke-virtual {v0, p1, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string v0, "viewState: BaseView? = n\u2026rror.invoke(error)\n    })"

    .line 70
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/iMe/manager/wallet/create/WalletCreateManager;->subscriptions:Lio/reactivex/disposables/CompositeDisposable;

    invoke-static {p1, v0}, Lcom/iMe/storage/data/utils/extentions/RxExtKt;->autoDispose(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;)V

    :goto_0
    return-void
.end method

.method public setLinkedWalletsAddresses(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/iMe/storage/domain/model/crypto/BlockchainType;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    iput-object p1, p0, Lcom/iMe/manager/wallet/create/WalletCreateManager;->linkedWalletsAddresses:Ljava/util/Map;

    return-void
.end method

.method public startChooseWalletOptionsFlow(Lcom/iMe/storage/domain/model/crypto/BlockchainType;)V
    .locals 5

    const-string v0, "blockchainType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    invoke-virtual {p0, p1}, Lcom/iMe/manager/wallet/create/WalletCreateManager;->getAvailableWalletCreationTypes(Lcom/iMe/storage/domain/model/crypto/BlockchainType;)Ljava/util/List;

    move-result-object p1

    .line 66
    invoke-static {p1}, Lcom/iMe/storage/data/utils/extentions/CollectionExtKt;->isSingletonList(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/iMe/model/wallet/crypto/create/WalletCreationType;

    invoke-virtual {p0, p1}, Lcom/iMe/manager/wallet/create/WalletCreateManager;->startWalletCreationFlow(Lcom/iMe/model/wallet/crypto/create/WalletCreationType;)V

    goto :goto_1

    .line 69
    :cond_0
    invoke-direct {p0}, Lcom/iMe/manager/wallet/create/WalletCreateManager;->getViewState()Lcom/iMe/manager/wallet/create/WalletCreateManagerView;

    move-result-object v0

    .line 70
    iget-object v1, p0, Lcom/iMe/manager/wallet/create/WalletCreateManager;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v2, Lorg/telegram/messenger/R$string;->wallet_dashboard_create_start_dialog_title:I

    invoke-interface {v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1549
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {p1, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 1621
    check-cast v3, Lcom/iMe/model/wallet/crypto/create/WalletCreationType;

    .line 72
    iget-object v4, p0, Lcom/iMe/manager/wallet/create/WalletCreateManager;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    invoke-virtual {v3}, Lcom/iMe/model/wallet/crypto/create/WalletCreationType;->getButtonTextResId()I

    move-result v3

    invoke-interface {v4, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1621
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    .line 38
    invoke-interface {v2, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    .line 69
    new-instance v2, Lcom/iMe/manager/wallet/create/WalletCreateManager$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/iMe/manager/wallet/create/WalletCreateManager$$ExternalSyntheticLambda0;-><init>(Lcom/iMe/manager/wallet/create/WalletCreateManager;)V

    invoke-interface {v0, v1, p1, v2}, Lcom/iMe/manager/wallet/create/WalletCreateManagerView;->showSelectOptionsDialog(Ljava/lang/String;[Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    :goto_1
    return-void
.end method

.method public startWalletCreationFlow(Lcom/iMe/model/wallet/crypto/create/WalletCreationType;)V
    .locals 1

    const-string v0, "walletCreationType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    new-instance v0, Lcom/iMe/manager/wallet/create/WalletCreateManager$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/iMe/manager/wallet/create/WalletCreateManager$$ExternalSyntheticLambda1;-><init>(Lcom/iMe/manager/wallet/create/WalletCreateManager;Lcom/iMe/model/wallet/crypto/create/WalletCreationType;)V

    invoke-virtual {p0, v0}, Lcom/iMe/manager/wallet/create/WalletCreateManager;->runWithCryptoInformationCheck(Lcom/iMe/fork/utils/Callbacks$Callback;)V

    return-void
.end method
