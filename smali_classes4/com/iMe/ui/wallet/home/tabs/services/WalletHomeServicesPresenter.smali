.class public final Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesPresenter;
.super Lcom/iMe/ui/base/mvp/base/BasePresenter;
.source "WalletHomeServicesPresenter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesPresenter$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/iMe/ui/base/mvp/base/BasePresenter<",
        "Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesView;",
        ">;"
    }
.end annotation

.annotation runtime Lmoxy/InjectViewState;
.end annotation


# instance fields
.field private final cryptoAccessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

.field private final resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;


# direct methods
.method public static synthetic $r8$lambda$-rv1lAXKsRJgPn4Yg54zTddFzK8(Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesPresenter;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesPresenter;->onCategoryClick$lambda$1(Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesPresenter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$J29e-xihwe0a9FmEidoPdorNOWE(Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesPresenter;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesPresenter;->onCategoryClick$lambda$3(Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesPresenter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LUzlpKBK_d6SxeTymqbcTykRnZM(Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesPresenter;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesPresenter;->onCategoryClick$lambda$0(Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesPresenter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$iFtNRm9jM5FrCbuBShzN8O36S5s(Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesPresenter;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesPresenter;->onCategoryClick$lambda$2(Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesPresenter;)V

    return-void
.end method

.method public constructor <init>(Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;Lcom/iMe/storage/domain/utils/system/ResourceManager;)V
    .locals 1

    const-string v0, "cryptoAccessManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "resourceManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0}, Lcom/iMe/ui/base/mvp/base/BasePresenter;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesPresenter;->cryptoAccessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

    .line 19
    iput-object p2, p0, Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

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

    const/16 v0, 0xa

    new-array v0, v0, [Lcom/chad/library/adapter/base/entity/node/BaseNode;

    .line 67
    new-instance v1, Lcom/iMe/model/wallet/home/HeaderItem;

    iget-object v2, p0, Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v3, Lorg/telegram/messenger/R$string;->wallet_internal_point_basic_services:I

    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/iMe/model/wallet/home/HeaderItem;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 68
    new-instance v1, Lcom/iMe/model/wallet/home/ServicesBasicItem;

    .line 69
    sget-object v2, Lcom/iMe/model/wallet/home/ServicesCategory;->CRYPTOBOXES:Lcom/iMe/model/wallet/home/ServicesCategory;

    .line 70
    sget v3, Lorg/telegram/messenger/R$drawable;->fork_ic_internal_point_cryptoboxes:I

    .line 71
    sget v4, Lorg/telegram/messenger/R$string;->wallet_internal_point_cryptoboxes_title:I

    .line 72
    sget v5, Lorg/telegram/messenger/R$string;->wallet_internal_point_cryptoboxes_subtitle:I

    .line 68
    invoke-direct {v1, v2, v3, v4, v5}, Lcom/iMe/model/wallet/home/ServicesBasicItem;-><init>(Lcom/iMe/model/wallet/home/ServicesCategory;III)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 74
    new-instance v1, Lcom/iMe/model/wallet/home/ServicesBasicItem;

    .line 75
    sget-object v2, Lcom/iMe/model/wallet/home/ServicesCategory;->STAKING:Lcom/iMe/model/wallet/home/ServicesCategory;

    .line 76
    sget v3, Lorg/telegram/messenger/R$drawable;->fork_ic_internal_point_staking:I

    .line 77
    sget v4, Lorg/telegram/messenger/R$string;->wallet_internal_point_staking_title:I

    .line 78
    sget v5, Lorg/telegram/messenger/R$string;->wallet_internal_point_staking_subtitle:I

    .line 74
    invoke-direct {v1, v2, v3, v4, v5}, Lcom/iMe/model/wallet/home/ServicesBasicItem;-><init>(Lcom/iMe/model/wallet/home/ServicesCategory;III)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 87
    new-instance v1, Lcom/iMe/model/wallet/home/ServicesBasicItem;

    .line 88
    sget-object v2, Lcom/iMe/model/wallet/home/ServicesCategory;->NEUROBOTS:Lcom/iMe/model/wallet/home/ServicesCategory;

    .line 89
    sget v3, Lorg/telegram/messenger/R$drawable;->fork_ic_internal_point_neurobots_store:I

    .line 90
    sget v4, Lorg/telegram/messenger/R$string;->wallet_internal_point_neurobots_store_title:I

    .line 91
    sget v5, Lorg/telegram/messenger/R$string;->wallet_internal_point_neurobots_store_subtitle:I

    .line 87
    invoke-direct {v1, v2, v3, v4, v5}, Lcom/iMe/model/wallet/home/ServicesBasicItem;-><init>(Lcom/iMe/model/wallet/home/ServicesCategory;III)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 93
    new-instance v1, Lcom/iMe/model/wallet/home/HeaderItem;

    iget-object v2, p0, Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v3, Lorg/telegram/messenger/R$string;->wallet_internal_point_ton_services:I

    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/iMe/model/wallet/home/HeaderItem;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 94
    new-instance v1, Lcom/iMe/model/wallet/home/ServicesBasicItem;

    .line 95
    sget-object v2, Lcom/iMe/model/wallet/home/ServicesCategory;->TELEGRAM_PREMIUM:Lcom/iMe/model/wallet/home/ServicesCategory;

    .line 96
    sget v3, Lorg/telegram/messenger/R$drawable;->fork_ic_internal_point_telegram_premium:I

    .line 97
    sget v4, Lorg/telegram/messenger/R$string;->wallet_internal_point_telegram_premium_title:I

    .line 98
    sget v5, Lorg/telegram/messenger/R$string;->wallet_internal_point_telegram_premium_subtitle:I

    .line 94
    invoke-direct {v1, v2, v3, v4, v5}, Lcom/iMe/model/wallet/home/ServicesBasicItem;-><init>(Lcom/iMe/model/wallet/home/ServicesCategory;III)V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 100
    new-instance v1, Lcom/iMe/model/wallet/home/ServicesBasicItem;

    .line 101
    sget-object v2, Lcom/iMe/model/wallet/home/ServicesCategory;->TELEGRAM_USERNAMES:Lcom/iMe/model/wallet/home/ServicesCategory;

    .line 102
    sget v3, Lorg/telegram/messenger/R$drawable;->fork_ic_internal_point_telegram_usernames:I

    .line 103
    sget v4, Lorg/telegram/messenger/R$string;->wallet_internal_point_telegram_usernames_title:I

    .line 104
    sget v5, Lorg/telegram/messenger/R$string;->wallet_internal_point_telegram_usernames_subtitle:I

    .line 100
    invoke-direct {v1, v2, v3, v4, v5}, Lcom/iMe/model/wallet/home/ServicesBasicItem;-><init>(Lcom/iMe/model/wallet/home/ServicesCategory;III)V

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 106
    new-instance v1, Lcom/iMe/model/wallet/home/HeaderItem;

    iget-object v2, p0, Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v3, Lorg/telegram/messenger/R$string;->wallet_internal_point_subscriptions:I

    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/iMe/model/wallet/home/HeaderItem;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 107
    new-instance v1, Lcom/iMe/model/wallet/home/ServicesBasicItem;

    .line 108
    sget-object v2, Lcom/iMe/model/wallet/home/ServicesCategory;->PREMIUM:Lcom/iMe/model/wallet/home/ServicesCategory;

    .line 109
    sget v3, Lorg/telegram/messenger/R$drawable;->fork_ic_internal_point_premium_account:I

    .line 110
    sget v4, Lorg/telegram/messenger/R$string;->wallet_internal_point_premium_account_title:I

    .line 111
    sget v5, Lorg/telegram/messenger/R$string;->wallet_internal_point_premium_account_subtitle:I

    .line 107
    invoke-direct {v1, v2, v3, v4, v5}, Lcom/iMe/model/wallet/home/ServicesBasicItem;-><init>(Lcom/iMe/model/wallet/home/ServicesCategory;III)V

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 113
    new-instance v1, Lcom/iMe/model/wallet/home/ServicesBasicItem;

    .line 114
    sget-object v2, Lcom/iMe/model/wallet/home/ServicesCategory;->ADS:Lcom/iMe/model/wallet/home/ServicesCategory;

    .line 115
    sget v3, Lorg/telegram/messenger/R$drawable;->fork_ic_internal_point_ads:I

    .line 116
    sget v4, Lorg/telegram/messenger/R$string;->wallet_internal_point_ads_title:I

    .line 117
    sget v5, Lorg/telegram/messenger/R$string;->wallet_internal_point_ads_subtitle:I

    .line 113
    invoke-direct {v1, v2, v3, v4, v5}, Lcom/iMe/model/wallet/home/ServicesBasicItem;-><init>(Lcom/iMe/model/wallet/home/ServicesCategory;III)V

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 66
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private final initDefaultDashboardState()V
    .locals 2

    .line 63
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesView;

    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesPresenter;->configureBalancesWithHeaders()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesView;->firstScreenInitWithItems(Ljava/util/List;)V

    return-void
.end method

.method private static final onCategoryClick$lambda$0(Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesPresenter;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p0

    check-cast p0, Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesView;

    invoke-interface {p0}, Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesView;->openCryptoBoxesScreen()V

    return-void
.end method

.method private static final onCategoryClick$lambda$1(Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesPresenter;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p0

    check-cast p0, Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesView;

    invoke-interface {p0}, Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesView;->openStakingScreen()V

    return-void
.end method

.method private static final onCategoryClick$lambda$2(Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesPresenter;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p0

    check-cast p0, Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesView;

    invoke-interface {p0}, Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesView;->openTelegramUsernamesScreen()V

    return-void
.end method

.method private static final onCategoryClick$lambda$3(Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesPresenter;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p0

    check-cast p0, Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesView;

    invoke-interface {p0}, Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesView;->openTelegramPremiumScreen()V

    return-void
.end method

.method private final runWithWalletCheck(Lcom/iMe/storage/domain/model/crypto/BlockchainType;Lcom/iMe/fork/utils/Callbacks$Callback;)V
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesPresenter;->cryptoAccessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

    invoke-interface {v0, p1}, Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;->isWalletCreated(Lcom/iMe/storage/domain/model/crypto/BlockchainType;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    invoke-interface {p2}, Lcom/iMe/fork/utils/Callbacks$Callback;->invoke()V

    goto :goto_0

    .line 128
    :cond_0
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p2

    check-cast p2, Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesView;

    invoke-interface {p2, p1}, Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesView;->showRequiredWalletCreatedDialog(Lcom/iMe/storage/domain/model/crypto/BlockchainType;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public final onCategoryClick(Lcom/iMe/model/wallet/home/ServicesCategory;)V
    .locals 1

    const-string v0, "category"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    sget-object v0, Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesPresenter$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 53
    :pswitch_0
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesView;

    const/16 v0, 0x6b

    invoke-interface {p1, v0}, Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesView;->openActionIntroScreen(I)V

    goto :goto_0

    .line 49
    :pswitch_1
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesView;

    const/16 v0, 0x6a

    invoke-interface {p1, v0}, Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesView;->openActionIntroScreen(I)V

    goto :goto_0

    .line 45
    :pswitch_2
    sget-object p1, Lcom/iMe/storage/domain/model/crypto/BlockchainType;->TON:Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    new-instance v0, Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesPresenter$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesPresenter$$ExternalSyntheticLambda1;-><init>(Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesPresenter;)V

    invoke-direct {p0, p1, v0}, Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesPresenter;->runWithWalletCheck(Lcom/iMe/storage/domain/model/crypto/BlockchainType;Lcom/iMe/fork/utils/Callbacks$Callback;)V

    goto :goto_0

    .line 41
    :pswitch_3
    sget-object p1, Lcom/iMe/storage/domain/model/crypto/BlockchainType;->TON:Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    new-instance v0, Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesPresenter$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesPresenter$$ExternalSyntheticLambda3;-><init>(Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesPresenter;)V

    invoke-direct {p0, p1, v0}, Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesPresenter;->runWithWalletCheck(Lcom/iMe/storage/domain/model/crypto/BlockchainType;Lcom/iMe/fork/utils/Callbacks$Callback;)V

    goto :goto_0

    .line 37
    :pswitch_4
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesView;

    const/16 v0, 0x69

    invoke-interface {p1, v0}, Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesView;->openActionIntroScreen(I)V

    goto :goto_0

    .line 33
    :pswitch_5
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesView;

    invoke-interface {p1}, Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesView;->openChannelsCatalogScreen()V

    goto :goto_0

    .line 29
    :pswitch_6
    sget-object p1, Lcom/iMe/storage/domain/model/crypto/BlockchainType;->EVM:Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    new-instance v0, Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesPresenter$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesPresenter$$ExternalSyntheticLambda0;-><init>(Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesPresenter;)V

    invoke-direct {p0, p1, v0}, Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesPresenter;->runWithWalletCheck(Lcom/iMe/storage/domain/model/crypto/BlockchainType;Lcom/iMe/fork/utils/Callbacks$Callback;)V

    goto :goto_0

    .line 25
    :pswitch_7
    sget-object p1, Lcom/iMe/storage/domain/model/crypto/BlockchainType;->EVM:Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    new-instance v0, Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesPresenter$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesPresenter$$ExternalSyntheticLambda2;-><init>(Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesPresenter;)V

    invoke-direct {p0, p1, v0}, Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesPresenter;->runWithWalletCheck(Lcom/iMe/storage/domain/model/crypto/BlockchainType;Lcom/iMe/fork/utils/Callbacks$Callback;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onFirstViewAttach()V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesPresenter;->initDefaultDashboardState()V

    return-void
.end method
