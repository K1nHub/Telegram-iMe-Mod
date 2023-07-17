.class public final Lcom/iMe/manager/wallet/create/WalletCreateManager;
.super Ljava/lang/Object;
.source "WalletCreateManager.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWalletCreateManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WalletCreateManager.kt\ncom/iMe/manager/wallet/create/WalletCreateManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 4 RxExt.kt\ncom/iMe/utils/extentions/rx/RxExtKt\n*L\n1#1,146:1\n1549#2:147\n1620#2,3:148\n37#3,2:151\n42#4,12:153\n42#4,12:165\n*S KotlinDebug\n*F\n+ 1 WalletCreateManager.kt\ncom/iMe/manager/wallet/create/WalletCreateManager\n*L\n72#1:147\n72#1:148,3\n74#1:151,2\n100#1:153,12\n124#1:165,12\n*E\n"
.end annotation


# instance fields
.field private final cryptoAccessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

.field private final cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

.field private final cryptoWalletInteractor:Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;

.field private linkedWalletAddress:Ljava/lang/String;

.field private final resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

.field private final rxEventBus:Lcom/iMe/storage/domain/utils/rx/RxEventBus;

.field private final schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

.field private final subscriptions:Lio/reactivex/disposables/CompositeDisposable;

.field private viewState:Lcom/iMe/manager/wallet/create/WalletCreateManagerView;


# direct methods
.method public static synthetic $r8$lambda$8-qA5GOlv_EBoPlDkZUj16T2N-U(Lcom/iMe/manager/wallet/create/WalletCreateManager;Lcom/iMe/model/wallet/crypto/create/WalletCreationType;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/manager/wallet/create/WalletCreateManager;->startWalletCreationFlow$lambda$1(Lcom/iMe/manager/wallet/create/WalletCreateManager;Lcom/iMe/model/wallet/crypto/create/WalletCreationType;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Iq8vAV1fo7o6l1d42NiTQH4mLxM(Lcom/iMe/manager/wallet/create/WalletCreateManager;Ljava/util/List;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/iMe/manager/wallet/create/WalletCreateManager;->startChooseWalletOptionsFlow$lambda$3(Lcom/iMe/manager/wallet/create/WalletCreateManager;Ljava/util/List;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$RK-8K7i_DRrGT4Hb97-wiGeDNe4(Lcom/iMe/manager/wallet/create/WalletCreateManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/iMe/manager/wallet/create/WalletCreateManager;->activateBib39BasedWallet()V

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

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/iMe/manager/wallet/create/WalletCreateManager;->cryptoAccessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

    .line 24
    iput-object p2, p0, Lcom/iMe/manager/wallet/create/WalletCreateManager;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    .line 25
    iput-object p3, p0, Lcom/iMe/manager/wallet/create/WalletCreateManager;->cryptoWalletInteractor:Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;

    .line 26
    iput-object p4, p0, Lcom/iMe/manager/wallet/create/WalletCreateManager;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    .line 27
    iput-object p5, p0, Lcom/iMe/manager/wallet/create/WalletCreateManager;->rxEventBus:Lcom/iMe/storage/domain/utils/rx/RxEventBus;

    .line 28
    iput-object p6, p0, Lcom/iMe/manager/wallet/create/WalletCreateManager;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    .line 35
    new-instance p1, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {p1}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object p1, p0, Lcom/iMe/manager/wallet/create/WalletCreateManager;->subscriptions:Lio/reactivex/disposables/CompositeDisposable;

    return-void
.end method

.method public static final synthetic access$getResourceManager$p(Lcom/iMe/manager/wallet/create/WalletCreateManager;)Lcom/iMe/storage/domain/utils/system/ResourceManager;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/iMe/manager/wallet/create/WalletCreateManager;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    return-object p0
.end method

.method public static final synthetic access$getRxEventBus$p(Lcom/iMe/manager/wallet/create/WalletCreateManager;)Lcom/iMe/storage/domain/utils/rx/RxEventBus;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/iMe/manager/wallet/create/WalletCreateManager;->rxEventBus:Lcom/iMe/storage/domain/utils/rx/RxEventBus;

    return-object p0
.end method

.method public static final synthetic access$getViewState(Lcom/iMe/manager/wallet/create/WalletCreateManager;)Lcom/iMe/manager/wallet/create/WalletCreateManagerView;
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/iMe/manager/wallet/create/WalletCreateManager;->getViewState()Lcom/iMe/manager/wallet/create/WalletCreateManagerView;

    move-result-object p0

    return-object p0
.end method

.method private final activateBib39BasedWallet()V
    .locals 4

    .line 120
    iget-object v0, p0, Lcom/iMe/manager/wallet/create/WalletCreateManager;->cryptoWalletInteractor:Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;

    .line 121
    invoke-direct {p0}, Lcom/iMe/manager/wallet/create/WalletCreateManager;->getCurrentBlockchainType()Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;->activateBip39BasedWallet(Lcom/iMe/storage/domain/model/crypto/BlockchainType;)Lio/reactivex/Observable;

    move-result-object v0

    .line 122
    iget-object v1, p0, Lcom/iMe/manager/wallet/create/WalletCreateManager;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "cryptoWalletInteractor\n \u2026(schedulersProvider.ui())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    invoke-direct {p0}, Lcom/iMe/manager/wallet/create/WalletCreateManager;->getViewState()Lcom/iMe/manager/wallet/create/WalletCreateManagerView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/iMe/utils/extentions/rx/RxExtKt;->withLoadingDialog(Lio/reactivex/Observable;Lcom/iMe/ui/base/mvp/base/BaseView;Z)Lio/reactivex/Observable;

    move-result-object v0

    .line 124
    iget-object v1, p0, Lcom/iMe/manager/wallet/create/WalletCreateManager;->viewState:Lcom/iMe/manager/wallet/create/WalletCreateManagerView;

    .line 47
    new-instance v2, Lcom/iMe/manager/wallet/create/WalletCreateManager$activateBib39BasedWallet$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v2, p0}, Lcom/iMe/manager/wallet/create/WalletCreateManager$activateBib39BasedWallet$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/manager/wallet/create/WalletCreateManager;)V

    new-instance v3, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v3, v2}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v2, Lcom/iMe/manager/wallet/create/WalletCreateManager$activateBib39BasedWallet$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {v2, v1}, Lcom/iMe/manager/wallet/create/WalletCreateManager$activateBib39BasedWallet$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 49
    new-instance v1, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v1, v2}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 47
    invoke-virtual {v0, v3, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    const-string v1, "viewState: BaseView? = n\u2026Error.invoke()\n        })"

    .line 49
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

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

    .line 37
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

.method private static final startChooseWalletOptionsFlow$lambda$3(Lcom/iMe/manager/wallet/create/WalletCreateManager;Ljava/util/List;Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$walletCreationTypes"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/iMe/model/wallet/crypto/create/WalletCreationType;

    .line 78
    instance-of p2, p1, Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Activate;

    if-eqz p2, :cond_0

    goto :goto_0

    .line 79
    :cond_0
    sget-object p1, Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial;->Companion:Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial$Companion;

    invoke-virtual {p1, p3}, Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial$Companion;->getByIndex(I)Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial;

    move-result-object p1

    .line 76
    :goto_0
    invoke-virtual {p0, p1}, Lcom/iMe/manager/wallet/create/WalletCreateManager;->startWalletCreationFlow(Lcom/iMe/model/wallet/crypto/create/WalletCreationType;)V

    return-void
.end method

.method private static final startWalletCreationFlow$lambda$1(Lcom/iMe/manager/wallet/create/WalletCreateManager;Lcom/iMe/model/wallet/crypto/create/WalletCreationType;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$walletCreationType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-direct {p0}, Lcom/iMe/manager/wallet/create/WalletCreateManager;->getViewState()Lcom/iMe/manager/wallet/create/WalletCreateManagerView;

    move-result-object v0

    .line 54
    instance-of v1, p1, Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial;

    if-eqz v1, :cond_1

    .line 55
    invoke-virtual {p0}, Lcom/iMe/manager/wallet/create/WalletCreateManager;->getLinkedWalletAddress()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, ""

    .line 56
    :cond_0
    check-cast p1, Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial;

    .line 54
    invoke-interface {v0, p0, p1}, Lcom/iMe/manager/wallet/create/WalletCreateManagerView;->openCreateWalletIntroScreen(Ljava/lang/String;Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial;)V

    goto :goto_0

    .line 59
    :cond_1
    instance-of p1, p1, Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Activate;

    if-eqz p1, :cond_2

    .line 60
    invoke-direct {p0}, Lcom/iMe/manager/wallet/create/WalletCreateManager;->getActivationConfirmationDialogModel()Lcom/iMe/model/dialog/DialogModel;

    move-result-object p1

    .line 61
    new-instance v1, Lcom/iMe/manager/wallet/create/WalletCreateManager$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/iMe/manager/wallet/create/WalletCreateManager$$ExternalSyntheticLambda1;-><init>(Lcom/iMe/manager/wallet/create/WalletCreateManager;)V

    .line 59
    invoke-interface {v0, p1, v1}, Lcom/iMe/manager/wallet/create/WalletCreateManagerView;->showActivationConfirmationDialog(Lcom/iMe/model/dialog/DialogModel;Lcom/iMe/fork/utils/Callbacks$Callback;)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public attachViewState(Lcom/iMe/manager/wallet/create/WalletCreateManagerView;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    iput-object p1, p0, Lcom/iMe/manager/wallet/create/WalletCreateManager;->viewState:Lcom/iMe/manager/wallet/create/WalletCreateManagerView;

    return-void
.end method

.method public getAvailableWalletCreationTypes()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/iMe/model/wallet/crypto/create/WalletCreationType;",
            ">;"
        }
    .end annotation

    .line 86
    invoke-direct {p0}, Lcom/iMe/manager/wallet/create/WalletCreateManager;->getCurrentBlockchainType()Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/crypto/BlockchainType;->isBip39PhraseBased()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iMe/manager/wallet/create/WalletCreateManager;->cryptoAccessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

    invoke-interface {v0}, Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;->isAnyBip39PhraseBasedWalletCreated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    new-instance v0, Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Activate;

    invoke-direct {p0}, Lcom/iMe/manager/wallet/create/WalletCreateManager;->getCurrentBlockchainType()Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Activate;-><init>(Lcom/iMe/storage/domain/model/crypto/BlockchainType;)V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 89
    :cond_0
    sget-object v0, Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial;->Companion:Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial$Companion;

    invoke-virtual {v0}, Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial$Companion;->getValuesOrdered()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getLinkedWalletAddress()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/iMe/manager/wallet/create/WalletCreateManager;->linkedWalletAddress:Ljava/lang/String;

    return-object v0
.end method

.method public onDetachViewState()V
    .locals 1

    const/4 v0, 0x0

    .line 47
    iput-object v0, p0, Lcom/iMe/manager/wallet/create/WalletCreateManager;->viewState:Lcom/iMe/manager/wallet/create/WalletCreateManagerView;

    return-void
.end method

.method public runWithCryptoInformationCheck(Lcom/iMe/fork/utils/Callbacks$Callback;)V
    .locals 5

    const-string v0, "endAction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    invoke-virtual {p0}, Lcom/iMe/manager/wallet/create/WalletCreateManager;->getLinkedWalletAddress()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 94
    invoke-interface {p1}, Lcom/iMe/fork/utils/Callbacks$Callback;->invoke()V

    goto :goto_0

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/iMe/manager/wallet/create/WalletCreateManager;->cryptoWalletInteractor:Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;

    .line 97
    invoke-direct {p0}, Lcom/iMe/manager/wallet/create/WalletCreateManager;->getCurrentBlockchainType()Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;->getLinkedCryptoWalletAddress(Lcom/iMe/storage/domain/model/crypto/BlockchainType;)Lio/reactivex/Observable;

    move-result-object v0

    .line 98
    iget-object v1, p0, Lcom/iMe/manager/wallet/create/WalletCreateManager;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "cryptoWalletInteractor\n \u2026(schedulersProvider.ui())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    invoke-direct {p0}, Lcom/iMe/manager/wallet/create/WalletCreateManager;->getViewState()Lcom/iMe/manager/wallet/create/WalletCreateManagerView;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/iMe/utils/extentions/rx/RxExtKt;->withLoadingDialog$default(Lio/reactivex/Observable;Lcom/iMe/ui/base/mvp/base/BaseView;ZILjava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    .line 100
    invoke-direct {p0}, Lcom/iMe/manager/wallet/create/WalletCreateManager;->getViewState()Lcom/iMe/manager/wallet/create/WalletCreateManagerView;

    move-result-object v1

    .line 47
    new-instance v2, Lcom/iMe/manager/wallet/create/WalletCreateManager$runWithCryptoInformationCheck$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v2, p0, p1}, Lcom/iMe/manager/wallet/create/WalletCreateManager$runWithCryptoInformationCheck$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/manager/wallet/create/WalletCreateManager;Lcom/iMe/fork/utils/Callbacks$Callback;)V

    new-instance p1, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {p1, v2}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v2, Lcom/iMe/manager/wallet/create/WalletCreateManager$runWithCryptoInformationCheck$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {v2, v1}, Lcom/iMe/manager/wallet/create/WalletCreateManager$runWithCryptoInformationCheck$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 49
    new-instance v1, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v1, v2}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 47
    invoke-virtual {v0, p1, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string v0, "viewState: BaseView? = n\u2026Error.invoke()\n        })"

    .line 49
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/iMe/manager/wallet/create/WalletCreateManager;->subscriptions:Lio/reactivex/disposables/CompositeDisposable;

    invoke-static {p1, v0}, Lcom/iMe/storage/data/utils/extentions/RxExtKt;->autoDispose(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;)V

    :goto_0
    return-void
.end method

.method public setLinkedWalletAddress(Ljava/lang/String;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/iMe/manager/wallet/create/WalletCreateManager;->linkedWalletAddress:Ljava/lang/String;

    return-void
.end method

.method public startChooseWalletOptionsFlow(Lcom/iMe/storage/domain/model/crypto/BlockchainType;)V
    .locals 6

    const-string v0, "blockchainType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0}, Lcom/iMe/manager/wallet/create/WalletCreateManager;->getAvailableWalletCreationTypes()Ljava/util/List;

    move-result-object p1

    .line 70
    invoke-direct {p0}, Lcom/iMe/manager/wallet/create/WalletCreateManager;->getViewState()Lcom/iMe/manager/wallet/create/WalletCreateManagerView;

    move-result-object v0

    .line 71
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

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 1621
    check-cast v4, Lcom/iMe/model/wallet/crypto/create/WalletCreationType;

    .line 73
    iget-object v5, p0, Lcom/iMe/manager/wallet/create/WalletCreateManager;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    invoke-virtual {v4}, Lcom/iMe/model/wallet/crypto/create/WalletCreationType;->getButtonTextResId()I

    move-result v4

    invoke-interface {v5, v4}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1621
    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    .line 38
    invoke-interface {v2, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 70
    new-instance v3, Lcom/iMe/manager/wallet/create/WalletCreateManager$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p1}, Lcom/iMe/manager/wallet/create/WalletCreateManager$$ExternalSyntheticLambda0;-><init>(Lcom/iMe/manager/wallet/create/WalletCreateManager;Ljava/util/List;)V

    invoke-interface {v0, v1, v2, v3}, Lcom/iMe/manager/wallet/create/WalletCreateManagerView;->showSelectOptionsDialog(Ljava/lang/String;[Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public startWalletCreationFlow(Lcom/iMe/model/wallet/crypto/create/WalletCreationType;)V
    .locals 1

    const-string v0, "walletCreationType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    new-instance v0, Lcom/iMe/manager/wallet/create/WalletCreateManager$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lcom/iMe/manager/wallet/create/WalletCreateManager$$ExternalSyntheticLambda2;-><init>(Lcom/iMe/manager/wallet/create/WalletCreateManager;Lcom/iMe/model/wallet/crypto/create/WalletCreationType;)V

    invoke-virtual {p0, v0}, Lcom/iMe/manager/wallet/create/WalletCreateManager;->runWithCryptoInformationCheck(Lcom/iMe/fork/utils/Callbacks$Callback;)V

    return-void
.end method
