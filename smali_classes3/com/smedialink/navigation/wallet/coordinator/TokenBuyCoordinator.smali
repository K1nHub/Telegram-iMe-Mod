.class public final Lcom/smedialink/navigation/wallet/coordinator/TokenBuyCoordinator;
.super Ljava/lang/Object;
.source "TokenBuyCoordinator.kt"


# instance fields
.field private final cryptoPreferenceHelper:Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

.field private final resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;


# direct methods
.method public static synthetic $r8$lambda$XpqamOpGqIR4nK59zhQudm0uP4E(Lcom/smedialink/navigation/wallet/coordinator/TokenBuyCoordinator;Lorg/telegram/ui/ActionBar/INavigationLayout;Lcom/smedialink/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/smedialink/navigation/wallet/coordinator/TokenBuyCoordinator;->showNoEnoughMoneyDialog$lambda$0(Lcom/smedialink/navigation/wallet/coordinator/TokenBuyCoordinator;Lorg/telegram/ui/ActionBar/INavigationLayout;Lcom/smedialink/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;)V

    return-void
.end method

.method public constructor <init>(Lcom/smedialink/storage/domain/utils/system/ResourceManager;Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;)V
    .locals 1

    const-string v0, "resourceManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cryptoPreferenceHelper"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/smedialink/navigation/wallet/coordinator/TokenBuyCoordinator;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    .line 18
    iput-object p2, p0, Lcom/smedialink/navigation/wallet/coordinator/TokenBuyCoordinator;->cryptoPreferenceHelper:Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

    return-void
.end method

.method private static final showNoEnoughMoneyDialog$lambda$0(Lcom/smedialink/navigation/wallet/coordinator/TokenBuyCoordinator;Lorg/telegram/ui/ActionBar/INavigationLayout;Lcom/smedialink/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;)V
    .locals 7

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$actionBarLayout"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$args"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    .line 41
    invoke-static/range {v1 .. v6}, Lcom/smedialink/navigation/wallet/coordinator/TokenBuyCoordinator;->start$default(Lcom/smedialink/navigation/wallet/coordinator/TokenBuyCoordinator;Lorg/telegram/ui/ActionBar/INavigationLayout;Lcom/smedialink/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;ZILjava/lang/Object;)V

    return-void
.end method

.method public static synthetic start$default(Lcom/smedialink/navigation/wallet/coordinator/TokenBuyCoordinator;Lorg/telegram/ui/ActionBar/INavigationLayout;Lcom/smedialink/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 23
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/smedialink/navigation/wallet/coordinator/TokenBuyCoordinator;->start(Lorg/telegram/ui/ActionBar/INavigationLayout;Lcom/smedialink/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;Z)V

    return-void
.end method


# virtual methods
.method public final showNoEnoughMoneyDialog(Lorg/telegram/ui/ActionBar/INavigationLayout;Lcom/smedialink/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;)V
    .locals 12

    const-string v0, "actionBarLayout"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "args"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    sget-object v0, Lcom/smedialink/manager/common/FeatureAvailableManager$Token;->INSTANCE:Lcom/smedialink/manager/common/FeatureAvailableManager$Token;

    invoke-virtual {p2}, Lcom/smedialink/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;->getTokenCode()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object v1

    iget-object v2, p0, Lcom/smedialink/navigation/wallet/coordinator/TokenBuyCoordinator;->cryptoPreferenceHelper:Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v2}, Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;->getNetworkType()Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/smedialink/manager/common/FeatureAvailableManager$Token;->isPurchaseAvailable(Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Lcom/smedialink/storage/domain/model/crypto/NetworkType;)Z

    move-result v0

    const-string v1, "actionBarLayout.lastFragment"

    if-eqz v0, :cond_0

    .line 37
    invoke-interface {p1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    iget-object v1, p0, Lcom/smedialink/navigation/wallet/coordinator/TokenBuyCoordinator;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    sget v2, Lorg/telegram/messenger/R$string;->wallet_common_error_not_enough_money_title:I

    invoke-interface {v1, v2}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 39
    iget-object v2, p0, Lcom/smedialink/navigation/wallet/coordinator/TokenBuyCoordinator;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    sget v3, Lorg/telegram/messenger/R$string;->wallet_common_error_not_enough_money_description:I

    invoke-interface {v2, v3}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 40
    iget-object v3, p0, Lcom/smedialink/navigation/wallet/coordinator/TokenBuyCoordinator;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    sget v4, Lorg/telegram/messenger/R$string;->wallet_common_error_not_enough_money_btn_txt:I

    invoke-interface {v3, v4}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 37
    new-instance v4, Lcom/smedialink/navigation/wallet/coordinator/TokenBuyCoordinator$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, p1, p2}, Lcom/smedialink/navigation/wallet/coordinator/TokenBuyCoordinator$$ExternalSyntheticLambda0;-><init>(Lcom/smedialink/navigation/wallet/coordinator/TokenBuyCoordinator;Lorg/telegram/ui/ActionBar/INavigationLayout;Lcom/smedialink/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;)V

    invoke-static {v0, v1, v2, v3, v4}, Lcom/smedialink/utils/dialogs/DialogsFactoryKt;->showErrorAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lorg/fork/utils/Callbacks$Callback;)Landroid/app/Dialog;

    goto :goto_0

    .line 44
    :cond_0
    invoke-interface {p1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v5

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    iget-object p1, p0, Lcom/smedialink/navigation/wallet/coordinator/TokenBuyCoordinator;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    sget p2, Lorg/telegram/messenger/R$string;->wallet_common_error_not_enough_money_title:I

    invoke-interface {p1, p2}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 46
    iget-object p1, p0, Lcom/smedialink/navigation/wallet/coordinator/TokenBuyCoordinator;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    sget p2, Lorg/telegram/messenger/R$string;->wallet_common_error_not_enough_money_simple_description:I

    invoke-interface {p1, p2}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 47
    iget-object p1, p0, Lcom/smedialink/navigation/wallet/coordinator/TokenBuyCoordinator;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    sget p2, Lorg/telegram/messenger/R$string;->common_ok:I

    invoke-interface {p1, p2}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/16 v10, 0x8

    const/4 v11, 0x0

    .line 44
    invoke-static/range {v5 .. v11}, Lcom/smedialink/utils/dialogs/DialogsFactoryKt;->showErrorAlert$default(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lorg/fork/utils/Callbacks$Callback;ILjava/lang/Object;)Landroid/app/Dialog;

    :goto_0
    return-void
.end method

.method public final start(Lorg/telegram/ui/ActionBar/INavigationLayout;Lcom/smedialink/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;Z)V
    .locals 8

    const-string v0, "actionBarLayout"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "args"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-virtual {p2}, Lcom/smedialink/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;->getNetworkType()Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/smedialink/navigation/wallet/coordinator/TokenBuyCoordinator;->cryptoPreferenceHelper:Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v0}, Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;->getNetworkType()Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object v0

    .line 26
    :cond_0
    sget-object v1, Lcom/smedialink/manager/common/FeatureAvailableManager$Token;->INSTANCE:Lcom/smedialink/manager/common/FeatureAvailableManager$Token;

    invoke-virtual {p2}, Lcom/smedialink/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;->getTokenCode()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/smedialink/manager/common/FeatureAvailableManager$Token;->isPurchaseViaSimplexAvailable(Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Lcom/smedialink/storage/domain/model/crypto/NetworkType;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 27
    sget-object v0, Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductFragment;->Companion:Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductFragment$Companion;

    invoke-virtual {p2}, Lcom/smedialink/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;->getTokenCode()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductFragment$Companion;->newInstance(Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;)Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductFragment;

    move-result-object p2

    goto :goto_0

    .line 28
    :cond_1
    invoke-virtual {p2}, Lcom/smedialink/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;->getTokenCode()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/smedialink/manager/common/FeatureAvailableManager$Token;->isPurchaseViaSwapAvailable(Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Lcom/smedialink/storage/domain/model/crypto/NetworkType;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 29
    new-instance v0, Lorg/telegram/ui/ActionIntroActivity;

    const/16 v2, 0x67

    invoke-virtual {p2}, Lcom/smedialink/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;->getTokenCode()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object v3

    invoke-virtual {p2}, Lcom/smedialink/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;->getSwapProtocol()Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocol;

    move-result-object v4

    invoke-virtual {p2}, Lcom/smedialink/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;->getNetworkType()Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/ActionIntroActivity;-><init>(ILcom/smedialink/storage/domain/model/wallet/token/TokenCode;Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocol;Lcom/smedialink/storage/domain/model/crypto/NetworkType;Lcom/smedialink/model/wallet/home/BannerSlide;Lorg/fork/enums/LockedSection;)V

    move-object p2, v0

    goto :goto_0

    .line 30
    :cond_2
    sget-object v0, Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductFragment;->Companion:Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductFragment$Companion;

    invoke-virtual {p2}, Lcom/smedialink/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;->getTokenCode()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductFragment$Companion;->newInstance(Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;)Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductFragment;

    move-result-object p2

    .line 32
    :goto_0
    invoke-interface {p1, p2, p3}, Lorg/telegram/ui/ActionBar/INavigationLayout;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    return-void
.end method
