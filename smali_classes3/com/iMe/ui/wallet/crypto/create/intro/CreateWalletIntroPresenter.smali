.class public final Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroPresenter;
.super Lcom/iMe/ui/base/mvp/base/BasePresenter;
.source "CreateWalletIntroPresenter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/iMe/ui/base/mvp/base/BasePresenter<",
        "Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroView;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCreateWalletIntroPresenter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CreateWalletIntroPresenter.kt\ncom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroPresenter\n+ 2 RxExt.kt\ncom/iMe/utils/extentions/rx/RxExtKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,120:1\n63#2,12:121\n1#3:133\n*S KotlinDebug\n*F\n+ 1 CreateWalletIntroPresenter.kt\ncom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroPresenter\n*L\n68#1:121,12\n*E\n"
.end annotation

.annotation runtime Lmoxy/InjectViewState;
.end annotation


# instance fields
.field private final cryptoAccessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

.field private final cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

.field private final cryptoWalletInteractor:Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;

.field private final linkedWalletAddress:Ljava/lang/String;

.field private final network:Lcom/iMe/storage/domain/model/crypto/Network;

.field private final resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

.field private final rxEventBus:Lcom/iMe/storage/domain/utils/rx/RxEventBus;

.field private final schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

.field private final telegramControllersGateway:Lcom/iMe/gateway/TelegramControllersGateway;

.field private final walletCreationType:Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial;


# direct methods
.method public static synthetic $r8$lambda$sYaC_OxpZYEesHQBZReU0YO7Jx8(Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroPresenter;Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroPresenter;->prepareCreateWalletFlow$lambda$0(Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroPresenter;Ljava/lang/Boolean;)V

    return-void
.end method

.method public constructor <init>(Lcom/iMe/storage/domain/model/crypto/BlockchainType;Ljava/lang/String;Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial;Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;Lcom/iMe/storage/domain/utils/system/ResourceManager;Lcom/iMe/storage/domain/utils/rx/RxEventBus;Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;Lcom/iMe/gateway/TelegramControllersGateway;)V
    .locals 1

    const-string v0, "manualBlockchainType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "linkedWalletAddress"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "walletCreationType"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cryptoAccessManager"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cryptoPreferenceHelper"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cryptoWalletInteractor"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceManager"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rxEventBus"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "schedulersProvider"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "telegramControllersGateway"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-direct {p0}, Lcom/iMe/ui/base/mvp/base/BasePresenter;-><init>()V

    .line 28
    iput-object p2, p0, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroPresenter;->linkedWalletAddress:Ljava/lang/String;

    .line 29
    iput-object p3, p0, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroPresenter;->walletCreationType:Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial;

    .line 30
    iput-object p4, p0, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroPresenter;->cryptoAccessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

    .line 31
    iput-object p5, p0, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroPresenter;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    .line 32
    iput-object p6, p0, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroPresenter;->cryptoWalletInteractor:Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;

    .line 33
    iput-object p7, p0, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    .line 34
    iput-object p8, p0, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroPresenter;->rxEventBus:Lcom/iMe/storage/domain/utils/rx/RxEventBus;

    .line 35
    iput-object p9, p0, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    .line 36
    iput-object p10, p0, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroPresenter;->telegramControllersGateway:Lcom/iMe/gateway/TelegramControllersGateway;

    .line 39
    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroPresenter;->initNetwork(Lcom/iMe/storage/domain/model/crypto/BlockchainType;)Lcom/iMe/storage/domain/model/crypto/Network;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroPresenter;->network:Lcom/iMe/storage/domain/model/crypto/Network;

    return-void
.end method

.method public static final synthetic access$getCryptoAccessManager$p(Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroPresenter;)Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroPresenter;->cryptoAccessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

    return-object p0
.end method

.method public static final synthetic access$getResourceManager$p(Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroPresenter;)Lcom/iMe/storage/domain/utils/system/ResourceManager;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    return-object p0
.end method

.method private final initNetwork(Lcom/iMe/storage/domain/model/crypto/BlockchainType;)Lcom/iMe/storage/domain/model/crypto/Network;
    .locals 1

    if-eqz p1, :cond_0

    .line 117
    sget-object v0, Lcom/iMe/storage/data/utils/crypto/NetworksHelper;->INSTANCE:Lcom/iMe/storage/data/utils/crypto/NetworksHelper;

    invoke-virtual {v0, p1}, Lcom/iMe/storage/data/utils/crypto/NetworksHelper;->getNetworksByBlockchain(Lcom/iMe/storage/domain/model/crypto/BlockchainType;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/iMe/storage/domain/model/crypto/Network;

    if-nez p1, :cond_1

    .line 118
    :cond_0
    iget-object p1, p0, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroPresenter;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {p1}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->getNetwork()Lcom/iMe/storage/domain/model/crypto/Network;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method private static final prepareCreateWalletFlow$lambda$0(Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroPresenter;Ljava/lang/Boolean;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p0

    check-cast p0, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroView;

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {p0, p1}, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroView;->updateNextButtonLoadingState(Z)V

    return-void
.end method

.method private final showCreateNewWalletConfirmationDialog()V
    .locals 7

    .line 106
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroView;

    .line 107
    new-instance v1, Lcom/iMe/model/dialog/DialogModel;

    .line 108
    iget-object v2, p0, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v3, Lorg/telegram/messenger/R$string;->wallet_creation_intro_new_wallet_confirmation_title:I

    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 109
    iget-object v3, p0, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v4, Lorg/telegram/messenger/R$string;->wallet_creation_intro_new_wallet_confirmation_description:I

    invoke-interface {v3, v4}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 110
    iget-object v4, p0, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v5, Lorg/telegram/messenger/R$string;->common_cancel:I

    invoke-interface {v4, v5}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 111
    iget-object v5, p0, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    iget-object v6, p0, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroPresenter;->walletCreationType:Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial;

    invoke-virtual {v6}, Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial;->getButtonTextResId()I

    move-result v6

    invoke-interface {v5, v6}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 107
    invoke-direct {v1, v2, v3, v4, v5}, Lcom/iMe/model/dialog/DialogModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    invoke-interface {v0, v1}, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroView;->showCreateNewWalletConfirmationDialog(Lcom/iMe/model/dialog/DialogModel;)V

    return-void
.end method


# virtual methods
.method public final onCopyAddressClick()V
    .locals 3

    .line 46
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroPresenter;->linkedWalletAddress:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v0, v1, v2, v1}, Lcom/iMe/utils/extentions/common/ContextExtKt;->copyToClipboard$default(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method protected onFirstViewAttach()V
    .locals 5

    .line 96
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroPresenter;->linkedWalletAddress:Ljava/lang/String;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    .line 97
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroView;

    .line 98
    iget-object v3, p0, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroPresenter;->telegramControllersGateway:Lcom/iMe/gateway/TelegramControllersGateway;

    const/4 v4, 0x0

    invoke-static {v3, v2, v1, v4}, Lcom/iMe/gateway/TelegramControllersGateway$-CC;->getMessagesController$default(Lcom/iMe/gateway/TelegramControllersGateway;IILjava/lang/Object;)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    const-string v2, "telegramControllersGatew\u2026esController().getUser(0)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    iget-object v2, p0, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroPresenter;->linkedWalletAddress:Ljava/lang/String;

    .line 100
    iget-object v3, p0, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroPresenter;->network:Lcom/iMe/storage/domain/model/crypto/Network;

    invoke-virtual {v3}, Lcom/iMe/storage/domain/model/crypto/Network;->getExplorer()Lcom/iMe/storage/domain/model/crypto/Network$Explorer;

    move-result-object v3

    .line 97
    invoke-interface {v0, v1, v2, v3}, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroView;->setupScreenData(Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/Network$Explorer;)V

    :cond_1
    return-void
.end method

.method public final onNextClick()V
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroPresenter;->linkedWalletAddress:Ljava/lang/String;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroPresenter;->cryptoAccessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

    iget-object v1, p0, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroPresenter;->network:Lcom/iMe/storage/domain/model/crypto/Network;

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/crypto/Network;->getBlockchainType()Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;->getWallet(Lcom/iMe/storage/domain/model/crypto/BlockchainType;)Lcom/iMe/storage/domain/model/crypto/Wallet;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/crypto/Wallet;->getAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroPresenter;->linkedWalletAddress:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 51
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroPresenter;->showCreateNewWalletConfirmationDialog()V

    goto :goto_2

    .line 53
    :cond_2
    invoke-virtual {p0}, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroPresenter;->prepareCreateWalletFlow()V

    :goto_2
    return-void
.end method

.method public final onViewOnScanClick()V
    .locals 3

    .line 42
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroView;

    iget-object v1, p0, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroPresenter;->network:Lcom/iMe/storage/domain/model/crypto/Network;

    iget-object v2, p0, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroPresenter;->linkedWalletAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/iMe/storage/domain/model/crypto/Network;->getAddressUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroView;->openAddressScan(Ljava/lang/String;)V

    return-void
.end method

.method public final prepareCreateWalletFlow()V
    .locals 4

    .line 58
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroPresenter;->cryptoAccessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

    invoke-interface {v0}, Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;->isAnyWalletCreated()Z

    move-result v0

    .line 59
    iget-object v1, p0, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroPresenter;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v1}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->getCurrentBlockchainType()Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    move-result-object v1

    iget-object v2, p0, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroPresenter;->network:Lcom/iMe/storage/domain/model/crypto/Network;

    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/crypto/Network;->getBlockchainType()Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    move-result-object v2

    if-eq v1, v2, :cond_0

    .line 60
    iget-object v1, p0, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroPresenter;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    iget-object v2, p0, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroPresenter;->network:Lcom/iMe/storage/domain/model/crypto/Network;

    invoke-interface {v1, v2}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->setNetwork(Lcom/iMe/storage/domain/model/crypto/Network;)V

    .line 61
    iget-object v1, p0, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroPresenter;->rxEventBus:Lcom/iMe/storage/domain/utils/rx/RxEventBus;

    sget-object v2, Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents$NetworkUpdated;->INSTANCE:Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents$NetworkUpdated;

    invoke-virtual {v1, v2}, Lcom/iMe/storage/domain/utils/rx/RxEventBus;->publish(Lcom/iMe/storage/domain/utils/rx/event/RxEvent;)V

    .line 63
    :cond_0
    iget-object v1, p0, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroPresenter;->walletCreationType:Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial;

    .line 64
    sget-object v2, Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial$Create;->INSTANCE:Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial$Create;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v1, p0, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroPresenter;->cryptoWalletInteractor:Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;

    .line 65
    iget-object v2, p0, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroPresenter;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v2}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->getCurrentBlockchainType()Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;->createLocalWallet(Lcom/iMe/storage/domain/model/crypto/BlockchainType;)Lio/reactivex/Observable;

    move-result-object v1

    .line 66
    iget-object v2, p0, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v2}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v1

    const-string v2, "cryptoWalletInteractor\n \u2026(schedulersProvider.ui())"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    new-instance v2, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroPresenter$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroPresenter$$ExternalSyntheticLambda0;-><init>(Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroPresenter;)V

    invoke-static {v1, v2}, Lcom/iMe/utils/extentions/rx/RxExtKt;->withLoadingUpdate(Lio/reactivex/Observable;Lcom/iMe/fork/utils/Callbacks$Callback1;)Lio/reactivex/Observable;

    move-result-object v1

    .line 68
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v2

    check-cast v2, Lcom/iMe/ui/base/mvp/base/BaseView;

    .line 68
    new-instance v3, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroPresenter$prepareCreateWalletFlow$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v3, v0, p0}, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroPresenter$prepareCreateWalletFlow$$inlined$subscribeWithErrorHandle$default$1;-><init>(ZLcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroPresenter;)V

    new-instance v0, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v0, v3}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v3, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroPresenter$prepareCreateWalletFlow$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {v3, v2}, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroPresenter$prepareCreateWalletFlow$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 70
    new-instance v2, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v2, v3}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 68
    invoke-virtual {v1, v0, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    const-string v1, "viewState: BaseView? = n\u2026rror.invoke(error)\n    })"

    .line 70
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 85
    invoke-static {p0, v0, v2, v1, v2}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/iMe/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    goto :goto_1

    .line 87
    :cond_1
    sget-object v2, Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial$Import;->INSTANCE:Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial$Import;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    check-cast v1, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroView;

    if-eqz v0, :cond_2

    .line 88
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroPresenter;->cryptoAccessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

    invoke-interface {v0}, Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;->getWalletPassword()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 89
    :cond_2
    invoke-static {}, Lcom/iMe/storage/data/utils/extentions/CryptoExtKt;->randomString()Ljava/lang/String;

    move-result-object v0

    .line 90
    :goto_0
    iget-object v2, p0, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroPresenter;->linkedWalletAddress:Ljava/lang/String;

    .line 87
    invoke-interface {v1, v0, v2}, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroView;->openImportWalletScreen(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method
