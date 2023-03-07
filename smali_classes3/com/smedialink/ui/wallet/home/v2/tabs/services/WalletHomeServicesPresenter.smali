.class public final Lcom/smedialink/ui/wallet/home/v2/tabs/services/WalletHomeServicesPresenter;
.super Lcom/smedialink/ui/base/mvp/base/BasePresenter;
.source "WalletHomeServicesPresenter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/smedialink/ui/base/mvp/base/BasePresenter<",
        "Lcom/smedialink/ui/wallet/home/v2/tabs/services/WalletHomeServicesView;",
        ">;"
    }
.end annotation

.annotation runtime Lmoxy/InjectViewState;
.end annotation


# instance fields
.field private final cryptoAccessManager:Lcom/smedialink/storage/domain/manager/crypto/CryptoAccessManager;

.field private final resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;


# direct methods
.method public constructor <init>(Lcom/smedialink/storage/domain/manager/crypto/CryptoAccessManager;Lcom/smedialink/storage/domain/utils/system/ResourceManager;)V
    .locals 1

    const-string v0, "cryptoAccessManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0}, Lcom/smedialink/ui/base/mvp/base/BasePresenter;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/services/WalletHomeServicesPresenter;->cryptoAccessManager:Lcom/smedialink/storage/domain/manager/crypto/CryptoAccessManager;

    .line 17
    iput-object p2, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/services/WalletHomeServicesPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    return-void
.end method

.method private final configureBalancesWithHeaders()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/chad/library/adapter/base/entity/node/BaseNode;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/chad/library/adapter/base/entity/node/BaseNode;

    .line 48
    new-instance v1, Lcom/smedialink/model/wallet/home/HeaderItem;

    iget-object v2, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/services/WalletHomeServicesPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    sget v3, Lorg/telegram/messenger/R$string;->wallet_internal_point_basic_services:I

    invoke-interface {v2, v3}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/smedialink/model/wallet/home/HeaderItem;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 49
    new-instance v1, Lcom/smedialink/model/wallet/home/ServicesBasicItem;

    sget-object v2, Lcom/smedialink/model/wallet/home/ServicesCategory;->STAKING:Lcom/smedialink/model/wallet/home/ServicesCategory;

    sget v3, Lorg/telegram/messenger/R$drawable;->fork_ic_internal_point_staking:I

    sget v4, Lorg/telegram/messenger/R$string;->wallet_internal_point_staking_title:I

    sget v5, Lorg/telegram/messenger/R$string;->wallet_internal_point_staking_subtitle:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/smedialink/model/wallet/home/ServicesBasicItem;-><init>(Lcom/smedialink/model/wallet/home/ServicesCategory;III)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 50
    new-instance v1, Lcom/smedialink/model/wallet/home/ServicesBasicItem;

    sget-object v2, Lcom/smedialink/model/wallet/home/ServicesCategory;->CHANNELS:Lcom/smedialink/model/wallet/home/ServicesCategory;

    sget v3, Lorg/telegram/messenger/R$drawable;->fork_ic_internal_point_channels_catalog:I

    sget v4, Lorg/telegram/messenger/R$string;->wallet_internal_point_channels_catalog_title:I

    sget v5, Lorg/telegram/messenger/R$string;->wallet_internal_point_channels_catalog_subtitle:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/smedialink/model/wallet/home/ServicesBasicItem;-><init>(Lcom/smedialink/model/wallet/home/ServicesCategory;III)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 51
    new-instance v1, Lcom/smedialink/model/wallet/home/ServicesBasicItem;

    sget-object v2, Lcom/smedialink/model/wallet/home/ServicesCategory;->NEUROBOTS:Lcom/smedialink/model/wallet/home/ServicesCategory;

    sget v3, Lorg/telegram/messenger/R$drawable;->fork_ic_internal_point_neurobots_store:I

    sget v4, Lorg/telegram/messenger/R$string;->wallet_internal_point_neurobots_store_title:I

    sget v5, Lorg/telegram/messenger/R$string;->wallet_internal_point_neurobots_store_subtitle:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/smedialink/model/wallet/home/ServicesBasicItem;-><init>(Lcom/smedialink/model/wallet/home/ServicesCategory;III)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 52
    new-instance v1, Lcom/smedialink/model/wallet/home/HeaderItem;

    iget-object v2, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/services/WalletHomeServicesPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    sget v3, Lorg/telegram/messenger/R$string;->wallet_internal_point_subscriptions:I

    invoke-interface {v2, v3}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/smedialink/model/wallet/home/HeaderItem;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 53
    new-instance v1, Lcom/smedialink/model/wallet/home/ServicesBasicItem;

    sget-object v2, Lcom/smedialink/model/wallet/home/ServicesCategory;->PREMIUM:Lcom/smedialink/model/wallet/home/ServicesCategory;

    sget v3, Lorg/telegram/messenger/R$drawable;->fork_ic_internal_point_premium_account:I

    sget v4, Lorg/telegram/messenger/R$string;->wallet_internal_point_premium_account_title:I

    sget v5, Lorg/telegram/messenger/R$string;->wallet_internal_point_premium_account_subtitle:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/smedialink/model/wallet/home/ServicesBasicItem;-><init>(Lcom/smedialink/model/wallet/home/ServicesCategory;III)V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 54
    new-instance v1, Lcom/smedialink/model/wallet/home/ServicesBasicItem;

    sget-object v2, Lcom/smedialink/model/wallet/home/ServicesCategory;->ADS:Lcom/smedialink/model/wallet/home/ServicesCategory;

    sget v3, Lorg/telegram/messenger/R$drawable;->fork_ic_internal_point_ads:I

    sget v4, Lorg/telegram/messenger/R$string;->wallet_internal_point_ads_title:I

    sget v5, Lorg/telegram/messenger/R$string;->wallet_internal_point_ads_subtitle:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/smedialink/model/wallet/home/ServicesBasicItem;-><init>(Lcom/smedialink/model/wallet/home/ServicesCategory;III)V

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 47
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private final initDefaultDashboardState()V
    .locals 2

    .line 44
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/wallet/home/v2/tabs/services/WalletHomeServicesView;

    invoke-direct {p0}, Lcom/smedialink/ui/wallet/home/v2/tabs/services/WalletHomeServicesPresenter;->configureBalancesWithHeaders()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/smedialink/ui/wallet/home/v2/tabs/services/WalletHomeServicesView;->firstScreenInitWithItems(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method protected onFirstViewAttach()V
    .locals 0

    .line 35
    invoke-super {p0}, Lmoxy/MvpPresenter;->onFirstViewAttach()V

    .line 36
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/home/v2/tabs/services/WalletHomeServicesPresenter;->initDefaultDashboardState()V

    return-void
.end method

.method public final onStakingClick()V
    .locals 2

    .line 23
    iget-object v0, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/services/WalletHomeServicesPresenter;->cryptoAccessManager:Lcom/smedialink/storage/domain/manager/crypto/CryptoAccessManager;

    sget-object v1, Lcom/smedialink/storage/domain/model/crypto/BlockchainType;->EVM:Lcom/smedialink/storage/domain/model/crypto/BlockchainType;

    invoke-interface {v0, v1}, Lcom/smedialink/storage/domain/manager/crypto/CryptoAccessManager;->isWalletCreated(Lcom/smedialink/storage/domain/model/crypto/BlockchainType;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/wallet/home/v2/tabs/services/WalletHomeServicesView;

    invoke-interface {v0}, Lcom/smedialink/ui/wallet/home/v2/tabs/services/WalletHomeServicesView;->openStakingScreen()V

    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/wallet/home/v2/tabs/services/WalletHomeServicesView;

    invoke-interface {v0}, Lcom/smedialink/ui/wallet/home/v2/tabs/services/WalletHomeServicesView;->showRequiredWalletCreatedDialog()V

    :goto_0
    return-void
.end method
