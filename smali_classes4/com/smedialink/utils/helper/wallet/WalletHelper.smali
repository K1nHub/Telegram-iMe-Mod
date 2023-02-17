.class public final Lcom/smedialink/utils/helper/wallet/WalletHelper;
.super Ljava/lang/Object;
.source "WalletHelper.kt"

# interfaces
.implements Lorg/koin/core/component/KoinComponent;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWalletHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WalletHelper.kt\ncom/smedialink/utils/helper/wallet/WalletHelper\n+ 2 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n*L\n1#1,141:1\n56#2,6:142\n56#2,6:148\n56#2,6:154\n*S KotlinDebug\n*F\n+ 1 WalletHelper.kt\ncom/smedialink/utils/helper/wallet/WalletHelper\n*L\n29#1:142,6\n30#1:148,6\n31#1:154,6\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/smedialink/utils/helper/wallet/WalletHelper;

.field private static final authManager$delegate:Lkotlin/Lazy;

.field private static final cryptoAccessManager$delegate:Lkotlin/Lazy;

.field private static final walletFlowCoordinator$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$1Ur9DmnvKX9rh1dAneC84pwU1Nk(Lorg/fork/utils/Callbacks$Callback;Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/smedialink/utils/helper/wallet/WalletHelper;->runWithCheckIsCryptoWalletCreated$lambda-2$lambda-1(Lorg/fork/utils/Callbacks$Callback;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$IWbgu1Y8owowfT-R6nD4CYeeyFQ(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/smedialink/utils/helper/wallet/WalletHelper;->runWithCheckIsCryptoWalletCreated$lambda-2$lambda-1$lambda-0(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$STojUuMbJ5mtRapoVFfMk0B1nxQ(Lorg/telegram/ui/LaunchActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/smedialink/utils/helper/wallet/WalletHelper;->showAppUpdateDialog$lambda-6(Lorg/telegram/ui/LaunchActivity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$X1V6hjCEkT12eJ0qfdxMez3zvCY()V
    .locals 0

    invoke-static {}, Lcom/smedialink/utils/helper/wallet/WalletHelper;->safeRunWalletScreen$lambda-3()V

    return-void
.end method

.method public static synthetic $r8$lambda$pafWwrZ2f7P2ghraid2lYf6yacc()V
    .locals 0

    invoke-static {}, Lcom/smedialink/utils/helper/wallet/WalletHelper;->safeRunWalletScreen$lambda-4()V

    return-void
.end method

.method public static synthetic $r8$lambda$tNQsAQeaQv8tAZD8lD1hTP0mRFw(Lorg/telegram/ui/LaunchActivity;Lorg/fork/utils/Callbacks$Callback;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/smedialink/utils/helper/wallet/WalletHelper;->showWalletAuthDialog$lambda-7(Lorg/telegram/ui/LaunchActivity;Lorg/fork/utils/Callbacks$Callback;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/smedialink/utils/helper/wallet/WalletHelper;

    invoke-direct {v0}, Lcom/smedialink/utils/helper/wallet/WalletHelper;-><init>()V

    sput-object v0, Lcom/smedialink/utils/helper/wallet/WalletHelper;->INSTANCE:Lcom/smedialink/utils/helper/wallet/WalletHelper;

    .line 58
    sget-object v1, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {v1}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object v2

    .line 61
    new-instance v3, Lcom/smedialink/utils/helper/wallet/WalletHelper$special$$inlined$inject$default$1;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4, v4}, Lcom/smedialink/utils/helper/wallet/WalletHelper$special$$inlined$inject$default$1;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {v2, v3}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v2

    .line 29
    sput-object v2, Lcom/smedialink/utils/helper/wallet/WalletHelper;->cryptoAccessManager$delegate:Lkotlin/Lazy;

    .line 58
    invoke-virtual {v1}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object v2

    .line 61
    new-instance v3, Lcom/smedialink/utils/helper/wallet/WalletHelper$special$$inlined$inject$default$2;

    invoke-direct {v3, v0, v4, v4}, Lcom/smedialink/utils/helper/wallet/WalletHelper$special$$inlined$inject$default$2;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {v2, v3}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v2

    .line 30
    sput-object v2, Lcom/smedialink/utils/helper/wallet/WalletHelper;->authManager$delegate:Lkotlin/Lazy;

    .line 58
    invoke-virtual {v1}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object v1

    .line 61
    new-instance v2, Lcom/smedialink/utils/helper/wallet/WalletHelper$special$$inlined$inject$default$3;

    invoke-direct {v2, v0, v4, v4}, Lcom/smedialink/utils/helper/wallet/WalletHelper$special$$inlined$inject$default$3;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {v1, v2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 31
    sput-object v0, Lcom/smedialink/utils/helper/wallet/WalletHelper;->walletFlowCoordinator$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final getAuthManager()Lcom/smedialink/storage/domain/manager/auth/AuthManager;
    .locals 1

    .line 30
    sget-object v0, Lcom/smedialink/utils/helper/wallet/WalletHelper;->authManager$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smedialink/storage/domain/manager/auth/AuthManager;

    return-object v0
.end method

.method private final getCryptoAccessManager()Lcom/smedialink/storage/domain/manager/crypto/CryptoAccessManager;
    .locals 1

    .line 29
    sget-object v0, Lcom/smedialink/utils/helper/wallet/WalletHelper;->cryptoAccessManager$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smedialink/storage/domain/manager/crypto/CryptoAccessManager;

    return-object v0
.end method

.method private final getWalletFlowCoordinator()Lcom/smedialink/navigation/wallet/coordinator/WalletFlowCoordinator;
    .locals 1

    .line 31
    sget-object v0, Lcom/smedialink/utils/helper/wallet/WalletHelper;->walletFlowCoordinator$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smedialink/navigation/wallet/coordinator/WalletFlowCoordinator;

    return-object v0
.end method

.method private final isNeedUpdateApp()Z
    .locals 2

    .line 106
    sget-object v0, Lorg/fork/controller/ForkCommonController;->Companion:Lorg/fork/controller/ForkCommonController$Companion;

    sget v1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-virtual {v0, v1}, Lorg/fork/controller/ForkCommonController$Companion;->getInstance(I)Lorg/fork/controller/ForkCommonController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/fork/controller/ForkCommonController;->getAppVersionRequiredUpdate()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 107
    sget-object v1, Lorg/telegram/messenger/BuildVars;->BUILD_VERSION_STRING:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final isWalletAuthBot(J)Z
    .locals 3

    const-wide/32 v0, 0x3b591fa2

    cmp-long v2, p0, v0

    if-eqz v2, :cond_1

    const-wide/32 v0, 0x40254d83

    cmp-long v2, p0, v0

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static final isWalletAuthorized()Z
    .locals 1

    .line 92
    sget-object v0, Lcom/smedialink/utils/helper/wallet/WalletHelper;->INSTANCE:Lcom/smedialink/utils/helper/wallet/WalletHelper;

    invoke-direct {v0}, Lcom/smedialink/utils/helper/wallet/WalletHelper;->getAuthManager()Lcom/smedialink/storage/domain/manager/auth/AuthManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/smedialink/storage/domain/manager/auth/AuthManager;->isAuthorized()Z

    move-result v0

    return v0
.end method

.method public static final isWalletIntent(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "url"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    const-string v0, "ime_wallet"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static final openAuthBotChat(Lorg/telegram/ui/LaunchActivity;)V
    .locals 3

    const-string v0, "activity"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    invoke-virtual {p0}, Lorg/telegram/ui/LaunchActivity;->getActionBarLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object p0

    invoke-interface {p0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p0

    .line 97
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static {}, Lcom/smedialink/storage/common/AppConfiguration$Wallet;->getWalletBotUsernameLowerCase()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x63

    invoke-virtual {v0, v1, p0, v2}, Lorg/telegram/messenger/MessagesController;->openByUserName(Ljava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;I)V

    return-void
.end method

.method public static final runWithCheckIsCryptoWalletCreated(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/fork/utils/Callbacks$Callback;Lcom/smedialink/storage/domain/model/crypto/BlockchainType;Lorg/fork/utils/Callbacks$Callback;)V
    .locals 1

    const-string v0, "fragment"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "walletCreatedAction"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 43
    sget-object v0, Lcom/smedialink/utils/helper/wallet/WalletHelper;->INSTANCE:Lcom/smedialink/utils/helper/wallet/WalletHelper;

    invoke-direct {v0}, Lcom/smedialink/utils/helper/wallet/WalletHelper;->getCryptoAccessManager()Lcom/smedialink/storage/domain/manager/crypto/CryptoAccessManager;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/smedialink/storage/domain/manager/crypto/CryptoAccessManager;->isWalletCreated(Lcom/smedialink/storage/domain/model/crypto/BlockchainType;)Z

    move-result v0

    goto :goto_0

    .line 45
    :cond_0
    sget-object v0, Lcom/smedialink/utils/helper/wallet/WalletHelper;->INSTANCE:Lcom/smedialink/utils/helper/wallet/WalletHelper;

    invoke-direct {v0}, Lcom/smedialink/utils/helper/wallet/WalletHelper;->getCryptoAccessManager()Lcom/smedialink/storage/domain/manager/crypto/CryptoAccessManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/smedialink/storage/domain/manager/crypto/CryptoAccessManager;->isCurrentBlockchainWalletCreated()Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_1

    .line 48
    invoke-interface {p3}, Lorg/fork/utils/Callbacks$Callback;->invoke()V

    goto :goto_1

    .line 52
    :cond_1
    new-instance p3, Lcom/smedialink/utils/helper/wallet/WalletHelper$$ExternalSyntheticLambda0;

    invoke-direct {p3, p1, p0}, Lcom/smedialink/utils/helper/wallet/WalletHelper$$ExternalSyntheticLambda0;-><init>(Lorg/fork/utils/Callbacks$Callback;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    invoke-static {p0, p2, p3}, Lcom/smedialink/utils/dialogs/DialogsFactoryKt;->createWalletCreatedRequiredDialog(Lorg/telegram/ui/ActionBar/BaseFragment;Lcom/smedialink/storage/domain/model/crypto/BlockchainType;Lorg/fork/utils/Callbacks$Callback;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    .line 51
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    :goto_1
    return-void
.end method

.method private static final runWithCheckIsCryptoWalletCreated$lambda-2$lambda-1(Lorg/fork/utils/Callbacks$Callback;Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 7

    const-string v0, "$this_with"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p0, :cond_0

    goto :goto_0

    .line 53
    :cond_0
    invoke-interface {p0}, Lorg/fork/utils/Callbacks$Callback;->invoke()V

    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 54
    new-instance v4, Lcom/smedialink/utils/helper/wallet/WalletHelper$$ExternalSyntheticLambda1;

    invoke-direct {v4, p1}, Lcom/smedialink/utils/helper/wallet/WalletHelper$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lcom/smedialink/utils/helper/wallet/WalletHelper;->safeRunWalletScreen$default(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;Lorg/fork/utils/Callbacks$Callback;Lorg/fork/utils/Callbacks$Callback;ILjava/lang/Object;)V

    return-void
.end method

.method private static final runWithCheckIsCryptoWalletCreated$lambda-2$lambda-1$lambda-0(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 7

    const-string v0, "$this_with"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    sget-object v0, Lcom/smedialink/utils/helper/wallet/WalletHelper;->INSTANCE:Lcom/smedialink/utils/helper/wallet/WalletHelper;

    invoke-direct {v0}, Lcom/smedialink/utils/helper/wallet/WalletHelper;->getWalletFlowCoordinator()Lcom/smedialink/navigation/wallet/coordinator/WalletFlowCoordinator;

    move-result-object v1

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v2

    const-string p0, "parentLayout"

    invoke-static {v2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/smedialink/ui/wallet/common/WalletRootFragment;->Companion:Lcom/smedialink/ui/wallet/common/WalletRootFragment$Companion;

    invoke-virtual {p0}, Lcom/smedialink/ui/wallet/common/WalletRootFragment$Companion;->newInstance()Lcom/smedialink/ui/wallet/common/WalletRootFragment;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/smedialink/navigation/wallet/coordinator/WalletFlowCoordinator;->start$default(Lcom/smedialink/navigation/wallet/coordinator/WalletFlowCoordinator;Lorg/telegram/ui/ActionBar/INavigationLayout;Lcom/smedialink/ui/base/WalletAuthFragment;ZILjava/lang/Object;)V

    return-void
.end method

.method public static final safeRunWalletScreen(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;Lorg/fork/utils/Callbacks$Callback;Lorg/fork/utils/Callbacks$Callback;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dialogMessage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activateClickAction"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "walletAuthorizedAction"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p0

    instance-of v0, p0, Lorg/telegram/ui/LaunchActivity;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/telegram/ui/LaunchActivity;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lcom/smedialink/utils/helper/wallet/WalletHelper;->safeRunWalletScreen(Lorg/telegram/ui/LaunchActivity;Ljava/lang/String;Lorg/fork/utils/Callbacks$Callback;Lorg/fork/utils/Callbacks$Callback;)V

    :goto_1
    return-void
.end method

.method public static final safeRunWalletScreen(Lorg/telegram/ui/LaunchActivity;Ljava/lang/String;Lorg/fork/utils/Callbacks$Callback;Lorg/fork/utils/Callbacks$Callback;)V
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dialogMessage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activateClickAction"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "walletAuthorizedAction"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    sget-object v0, Lcom/smedialink/utils/helper/wallet/WalletHelper;->INSTANCE:Lcom/smedialink/utils/helper/wallet/WalletHelper;

    invoke-direct {v0}, Lcom/smedialink/utils/helper/wallet/WalletHelper;->isNeedUpdateApp()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {v0, p0}, Lcom/smedialink/utils/helper/wallet/WalletHelper;->showAppUpdateDialog(Lorg/telegram/ui/LaunchActivity;)V

    goto :goto_0

    .line 86
    :cond_0
    invoke-static {}, Lcom/smedialink/utils/helper/wallet/WalletHelper;->isWalletAuthorized()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p3}, Lorg/fork/utils/Callbacks$Callback;->invoke()V

    goto :goto_0

    .line 87
    :cond_1
    invoke-direct {v0, p0, p1, p2}, Lcom/smedialink/utils/helper/wallet/WalletHelper;->showWalletAuthDialog(Lorg/telegram/ui/LaunchActivity;Ljava/lang/String;Lorg/fork/utils/Callbacks$Callback;)V

    :goto_0
    return-void
.end method

.method public static synthetic safeRunWalletScreen$default(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;Lorg/fork/utils/Callbacks$Callback;Lorg/fork/utils/Callbacks$Callback;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    .line 71
    sget p1, Lorg/telegram/messenger/R$string;->wallet_auth_dialog_description:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p1

    const-string p5, "getInternalString(R.stri\u2026_auth_dialog_description)"

    invoke-static {p1, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    .line 72
    sget-object p2, Lcom/smedialink/utils/helper/wallet/WalletHelper$$ExternalSyntheticLambda4;->INSTANCE:Lcom/smedialink/utils/helper/wallet/WalletHelper$$ExternalSyntheticLambda4;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    .line 73
    sget-object p3, Lcom/smedialink/utils/helper/wallet/WalletHelper$$ExternalSyntheticLambda5;->INSTANCE:Lcom/smedialink/utils/helper/wallet/WalletHelper$$ExternalSyntheticLambda5;

    .line 70
    :cond_2
    invoke-static {p0, p1, p2, p3}, Lcom/smedialink/utils/helper/wallet/WalletHelper;->safeRunWalletScreen(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;Lorg/fork/utils/Callbacks$Callback;Lorg/fork/utils/Callbacks$Callback;)V

    return-void
.end method

.method private static final safeRunWalletScreen$lambda-3()V
    .locals 0

    return-void
.end method

.method private static final safeRunWalletScreen$lambda-4()V
    .locals 0

    return-void
.end method

.method private final showAppUpdateDialog(Lorg/telegram/ui/LaunchActivity;)V
    .locals 6

    .line 113
    new-instance v1, Lcom/smedialink/model/dialog/DialogModel;

    .line 114
    sget v0, Lorg/telegram/messenger/R$string;->wallet_app_update_dialog_title:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v0

    .line 115
    sget v2, Lorg/telegram/messenger/R$string;->wallet_app_update_dialog_description:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v2

    .line 116
    sget v3, Lorg/telegram/messenger/R$string;->common_cancel:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v3

    .line 117
    sget v4, Lorg/telegram/messenger/R$string;->wallet_app_update_dialog_action_btn:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v4

    .line 113
    invoke-direct {v1, v0, v2, v3, v4}, Lcom/smedialink/model/dialog/DialogModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    new-instance v2, Lcom/smedialink/utils/helper/wallet/WalletHelper$$ExternalSyntheticLambda2;

    invoke-direct {v2, p1}, Lcom/smedialink/utils/helper/wallet/WalletHelper$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/LaunchActivity;)V

    const/4 v3, 0x0

    const/16 v4, 0x8

    const/4 v5, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/smedialink/utils/dialogs/DialogUtils;->createDialog$default(Landroid/content/Context;Lcom/smedialink/model/dialog/DialogModel;Lorg/fork/utils/Callbacks$Callback;Lorg/fork/utils/Callbacks$Callback;ILjava/lang/Object;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    .line 120
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V

    return-void
.end method

.method private static final showAppUpdateDialog$lambda-6(Lorg/telegram/ui/LaunchActivity;)V
    .locals 1

    const-string v0, "$activity"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    sget-object v0, Lorg/telegram/messenger/BuildVars;->PLAYSTORE_APP_URL:Ljava/lang/String;

    invoke-static {p0, v0}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private final showWalletAuthDialog(Lorg/telegram/ui/LaunchActivity;Ljava/lang/String;Lorg/fork/utils/Callbacks$Callback;)V
    .locals 6

    .line 126
    new-instance v1, Lcom/smedialink/model/dialog/DialogModel;

    .line 127
    sget v0, Lorg/telegram/messenger/R$string;->wallet_auth_dialog_title:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v0

    .line 129
    sget v2, Lorg/telegram/messenger/R$string;->wallet_auth_dialog_cancel_btn:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v2

    .line 130
    sget v3, Lorg/telegram/messenger/R$string;->wallet_auth_dialog_action_btn:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v3

    .line 126
    invoke-direct {v1, v0, p2, v2, v3}, Lcom/smedialink/model/dialog/DialogModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    new-instance v2, Lcom/smedialink/utils/helper/wallet/WalletHelper$$ExternalSyntheticLambda3;

    invoke-direct {v2, p1, p3}, Lcom/smedialink/utils/helper/wallet/WalletHelper$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/LaunchActivity;Lorg/fork/utils/Callbacks$Callback;)V

    const/4 v3, 0x0

    const/16 v4, 0x8

    const/4 v5, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/smedialink/utils/dialogs/DialogUtils;->createDialog$default(Landroid/content/Context;Lcom/smedialink/model/dialog/DialogModel;Lorg/fork/utils/Callbacks$Callback;Lorg/fork/utils/Callbacks$Callback;ILjava/lang/Object;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    .line 136
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V

    return-void
.end method

.method private static final showWalletAuthDialog$lambda-7(Lorg/telegram/ui/LaunchActivity;Lorg/fork/utils/Callbacks$Callback;)V
    .locals 1

    const-string v0, "$activity"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$activateClickAction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    invoke-static {p0}, Lcom/smedialink/utils/helper/wallet/WalletHelper;->openAuthBotChat(Lorg/telegram/ui/LaunchActivity;)V

    .line 134
    invoke-interface {p1}, Lorg/fork/utils/Callbacks$Callback;->invoke()V

    return-void
.end method


# virtual methods
.method public getKoin()Lorg/koin/core/Koin;
    .locals 1

    .line 26
    invoke-static {p0}, Lorg/koin/core/component/KoinComponent$DefaultImpls;->getKoin(Lorg/koin/core/component/KoinComponent;)Lorg/koin/core/Koin;

    move-result-object v0

    return-object v0
.end method
