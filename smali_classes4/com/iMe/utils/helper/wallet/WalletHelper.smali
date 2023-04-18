.class public final Lcom/iMe/utils/helper/wallet/WalletHelper;
.super Ljava/lang/Object;
.source "WalletHelper.kt"

# interfaces
.implements Lorg/koin/core/component/KoinComponent;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWalletHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WalletHelper.kt\ncom/iMe/utils/helper/wallet/WalletHelper\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n*L\n1#1,166:1\n1855#2,2:167\n56#3,6:169\n56#3,6:175\n56#3,6:181\n*S KotlinDebug\n*F\n+ 1 WalletHelper.kt\ncom/iMe/utils/helper/wallet/WalletHelper\n*L\n157#1:167,2\n37#1:169,6\n38#1:175,6\n39#1:181,6\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/iMe/utils/helper/wallet/WalletHelper;

.field private static final authManager$delegate:Lkotlin/Lazy;

.field private static final cryptoAccessManager$delegate:Lkotlin/Lazy;

.field private static final walletFlowCoordinator$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$8cVJpAaQU6eVS4GyP8HZ8P7Ljco(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/utils/helper/wallet/WalletHelper;->safeRunWalletScreen$lambda$2(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$CBLRXQfOIDcknfj4fUf1uuapWZY(Lorg/telegram/ui/LaunchActivity;Lcom/iMe/fork/utils/Callbacks$Callback;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/utils/helper/wallet/WalletHelper;->showAuthDialog$lambda$5(Lorg/telegram/ui/LaunchActivity;Lcom/iMe/fork/utils/Callbacks$Callback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bRTFiuVMlXWUHblHaFAV6SNS-U8(Lcom/iMe/fork/utils/Callbacks$Callback;Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/utils/helper/wallet/WalletHelper;->runWithCheckIsCryptoWalletCreated$lambda$1$lambda$0(Lcom/iMe/fork/utils/Callbacks$Callback;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$q07Y4O68ogQPya4EmQmB_pbh88E(Lorg/telegram/ui/LaunchActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/utils/helper/wallet/WalletHelper;->showAppUpdateDialog$lambda$4(Lorg/telegram/ui/LaunchActivity;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/iMe/utils/helper/wallet/WalletHelper;

    invoke-direct {v0}, Lcom/iMe/utils/helper/wallet/WalletHelper;-><init>()V

    sput-object v0, Lcom/iMe/utils/helper/wallet/WalletHelper;->INSTANCE:Lcom/iMe/utils/helper/wallet/WalletHelper;

    .line 58
    sget-object v1, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {v1}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object v2

    .line 61
    new-instance v3, Lcom/iMe/utils/helper/wallet/WalletHelper$special$$inlined$inject$default$1;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4, v4}, Lcom/iMe/utils/helper/wallet/WalletHelper$special$$inlined$inject$default$1;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {v2, v3}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v2

    .line 37
    sput-object v2, Lcom/iMe/utils/helper/wallet/WalletHelper;->cryptoAccessManager$delegate:Lkotlin/Lazy;

    .line 58
    invoke-virtual {v1}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object v2

    .line 61
    new-instance v3, Lcom/iMe/utils/helper/wallet/WalletHelper$special$$inlined$inject$default$2;

    invoke-direct {v3, v0, v4, v4}, Lcom/iMe/utils/helper/wallet/WalletHelper$special$$inlined$inject$default$2;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {v2, v3}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v2

    .line 38
    sput-object v2, Lcom/iMe/utils/helper/wallet/WalletHelper;->authManager$delegate:Lkotlin/Lazy;

    .line 58
    invoke-virtual {v1}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object v1

    .line 61
    new-instance v2, Lcom/iMe/utils/helper/wallet/WalletHelper$special$$inlined$inject$default$3;

    invoke-direct {v2, v0, v4, v4}, Lcom/iMe/utils/helper/wallet/WalletHelper$special$$inlined$inject$default$3;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {v1, v2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 39
    sput-object v0, Lcom/iMe/utils/helper/wallet/WalletHelper;->walletFlowCoordinator$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final getAuthManager()Lcom/iMe/storage/domain/manager/auth/AuthManager;
    .locals 1

    .line 38
    sget-object v0, Lcom/iMe/utils/helper/wallet/WalletHelper;->authManager$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/storage/domain/manager/auth/AuthManager;

    return-object v0
.end method

.method private final getAuthSpannableStringBuilder()Landroid/text/SpannableStringBuilder;
    .locals 9

    .line 147
    sget v0, Lorg/telegram/messenger/R$string;->auth_dialog_description:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v0

    .line 148
    new-instance v7, Landroid/text/SpannableStringBuilder;

    invoke-direct {v7, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const-string v1, "descriptionText"

    .line 149
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "*"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, v0

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v8

    const-string v2, "*"

    .line 150
    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->lastIndexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v8, v1, :cond_0

    if-eq v0, v1, :cond_0

    if-eq v8, v0, :cond_0

    add-int/lit8 v1, v0, 0x1

    const-string v2, ""

    .line 152
    invoke-virtual {v7, v0, v1, v2}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v1, v8, 0x1

    .line 153
    invoke-virtual {v7, v8, v1, v2}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 155
    new-instance v3, Lorg/telegram/ui/Components/URLSpanNoUnderline;

    sget v4, Lorg/telegram/messenger/R$string;->PrivacyPolicyUrl:I

    const-string v5, "PrivacyPolicyUrl"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/telegram/ui/Components/URLSpanNoUnderline;-><init>(Ljava/lang/String;)V

    aput-object v3, v1, v2

    .line 156
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    const-string/jumbo v3, "windowBackgroundWhiteLinkText"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 154
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 1855
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v4, v0, -0x1

    const/16 v5, 0x21

    .line 158
    invoke-virtual {v7, v2, v8, v4, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    :cond_0
    return-object v7
.end method

.method private final getCryptoAccessManager()Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;
    .locals 1

    .line 37
    sget-object v0, Lcom/iMe/utils/helper/wallet/WalletHelper;->cryptoAccessManager$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

    return-object v0
.end method

.method private final getWalletFlowCoordinator()Lcom/iMe/navigation/wallet/coordinator/WalletFlowCoordinator;
    .locals 1

    .line 39
    sget-object v0, Lcom/iMe/utils/helper/wallet/WalletHelper;->walletFlowCoordinator$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/navigation/wallet/coordinator/WalletFlowCoordinator;

    return-object v0
.end method

.method public static final isAuthorized()Z
    .locals 1

    .line 99
    sget-object v0, Lcom/iMe/utils/helper/wallet/WalletHelper;->INSTANCE:Lcom/iMe/utils/helper/wallet/WalletHelper;

    invoke-direct {v0}, Lcom/iMe/utils/helper/wallet/WalletHelper;->getAuthManager()Lcom/iMe/storage/domain/manager/auth/AuthManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/iMe/storage/domain/manager/auth/AuthManager;->isAuthorized()Z

    move-result v0

    return v0
.end method

.method private final isUpdateRequired()Z
    .locals 2

    .line 113
    sget-object v0, Lcom/iMe/fork/controller/ForkCommonController;->Companion:Lcom/iMe/fork/controller/ForkCommonController$Companion;

    sget v1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-virtual {v0, v1}, Lcom/iMe/fork/controller/ForkCommonController$Companion;->getInstance(I)Lcom/iMe/fork/controller/ForkCommonController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/fork/controller/ForkCommonController;->getAppVersionRequiredUpdate()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 114
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

.method public static final runWithCheckIsCryptoWalletCreated(Lorg/telegram/ui/ActionBar/BaseFragment;Lcom/iMe/fork/utils/Callbacks$Callback;Lcom/iMe/storage/domain/model/crypto/BlockchainType;Lcom/iMe/fork/utils/Callbacks$Callback;)V
    .locals 1

    const-string v0, "fragment"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "walletCreatedAction"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 51
    sget-object v0, Lcom/iMe/utils/helper/wallet/WalletHelper;->INSTANCE:Lcom/iMe/utils/helper/wallet/WalletHelper;

    invoke-direct {v0}, Lcom/iMe/utils/helper/wallet/WalletHelper;->getCryptoAccessManager()Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;->isWalletCreated(Lcom/iMe/storage/domain/model/crypto/BlockchainType;)Z

    move-result v0

    goto :goto_0

    .line 53
    :cond_0
    sget-object v0, Lcom/iMe/utils/helper/wallet/WalletHelper;->INSTANCE:Lcom/iMe/utils/helper/wallet/WalletHelper;

    invoke-direct {v0}, Lcom/iMe/utils/helper/wallet/WalletHelper;->getCryptoAccessManager()Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;->isCurrentBlockchainWalletCreated()Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_1

    .line 56
    invoke-interface {p3}, Lcom/iMe/fork/utils/Callbacks$Callback;->invoke()V

    goto :goto_1

    .line 60
    :cond_1
    new-instance p3, Lcom/iMe/utils/helper/wallet/WalletHelper$$ExternalSyntheticLambda0;

    invoke-direct {p3, p1, p0}, Lcom/iMe/utils/helper/wallet/WalletHelper$$ExternalSyntheticLambda0;-><init>(Lcom/iMe/fork/utils/Callbacks$Callback;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    invoke-static {p0, p2, p3}, Lcom/iMe/utils/dialogs/DialogsFactoryKt;->createWalletCreatedRequiredDialog(Lorg/telegram/ui/ActionBar/BaseFragment;Lcom/iMe/storage/domain/model/crypto/BlockchainType;Lcom/iMe/fork/utils/Callbacks$Callback;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    .line 59
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    :goto_1
    return-void
.end method

.method private static final runWithCheckIsCryptoWalletCreated$lambda$1$lambda$0(Lcom/iMe/fork/utils/Callbacks$Callback;Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 1

    const-string v0, "$this_with"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p0, :cond_0

    .line 61
    invoke-interface {p0}, Lcom/iMe/fork/utils/Callbacks$Callback;->invoke()V

    :cond_0
    const/4 p0, 0x1

    const/4 v0, 0x0

    .line 62
    invoke-static {p1, v0, p0, v0}, Lcom/iMe/utils/helper/wallet/WalletHelper;->safeRunWalletScreen$default(Lorg/telegram/ui/ActionBar/BaseFragment;Lcom/iMe/fork/utils/Callbacks$Callback;ILjava/lang/Object;)V

    return-void
.end method

.method public static final safeRunWalletScreen(Lorg/telegram/ui/ActionBar/BaseFragment;Lcom/iMe/fork/utils/Callbacks$Callback;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "authorizedAction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    invoke-static {p0, p1}, Lcom/iMe/utils/helper/wallet/WalletHelper;->safeRunWithActivationCheck(Lorg/telegram/ui/ActionBar/BaseFragment;Lcom/iMe/fork/utils/Callbacks$Callback;)V

    return-void
.end method

.method public static synthetic safeRunWalletScreen$default(Lorg/telegram/ui/ActionBar/BaseFragment;Lcom/iMe/fork/utils/Callbacks$Callback;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 77
    new-instance p1, Lcom/iMe/utils/helper/wallet/WalletHelper$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/iMe/utils/helper/wallet/WalletHelper$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 76
    :cond_0
    invoke-static {p0, p1}, Lcom/iMe/utils/helper/wallet/WalletHelper;->safeRunWalletScreen(Lorg/telegram/ui/ActionBar/BaseFragment;Lcom/iMe/fork/utils/Callbacks$Callback;)V

    return-void
.end method

.method private static final safeRunWalletScreen$lambda$2(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 7

    const-string v0, "$this_safeRunWalletScreen"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    sget-object v0, Lcom/iMe/utils/helper/wallet/WalletHelper;->INSTANCE:Lcom/iMe/utils/helper/wallet/WalletHelper;

    invoke-direct {v0}, Lcom/iMe/utils/helper/wallet/WalletHelper;->getWalletFlowCoordinator()Lcom/iMe/navigation/wallet/coordinator/WalletFlowCoordinator;

    move-result-object v1

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v2

    const-string p0, "parentLayout"

    invoke-static {v2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/iMe/ui/wallet/common/WalletRootFragment;->Companion:Lcom/iMe/ui/wallet/common/WalletRootFragment$Companion;

    invoke-virtual {p0}, Lcom/iMe/ui/wallet/common/WalletRootFragment$Companion;->newInstance()Lcom/iMe/ui/wallet/common/WalletRootFragment;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/iMe/navigation/wallet/coordinator/WalletFlowCoordinator;->start$default(Lcom/iMe/navigation/wallet/coordinator/WalletFlowCoordinator;Lorg/telegram/ui/ActionBar/INavigationLayout;Lcom/iMe/ui/base/WalletAuthFragment;ZILjava/lang/Object;)V

    return-void
.end method

.method public static final safeRunWithActivationCheck(Lorg/telegram/ui/ActionBar/BaseFragment;Lcom/iMe/fork/utils/Callbacks$Callback;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "authorizedAction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p0

    instance-of v0, p0, Lorg/telegram/ui/LaunchActivity;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/telegram/ui/LaunchActivity;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    invoke-static {p0, p1}, Lcom/iMe/utils/helper/wallet/WalletHelper;->safeRunWithActivationCheck(Lorg/telegram/ui/LaunchActivity;Lcom/iMe/fork/utils/Callbacks$Callback;)V

    :cond_1
    return-void
.end method

.method public static final safeRunWithActivationCheck(Lorg/telegram/ui/LaunchActivity;Lcom/iMe/fork/utils/Callbacks$Callback;)V
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "authorizedAction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    sget-object v0, Lcom/iMe/utils/helper/wallet/WalletHelper;->INSTANCE:Lcom/iMe/utils/helper/wallet/WalletHelper;

    invoke-direct {v0}, Lcom/iMe/utils/helper/wallet/WalletHelper;->isUpdateRequired()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {v0, p0}, Lcom/iMe/utils/helper/wallet/WalletHelper;->showAppUpdateDialog(Lorg/telegram/ui/LaunchActivity;)V

    goto :goto_0

    .line 93
    :cond_0
    invoke-static {}, Lcom/iMe/utils/helper/wallet/WalletHelper;->isAuthorized()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Lcom/iMe/fork/utils/Callbacks$Callback;->invoke()V

    goto :goto_0

    .line 94
    :cond_1
    invoke-direct {v0, p0, p1}, Lcom/iMe/utils/helper/wallet/WalletHelper;->showAuthDialog(Lorg/telegram/ui/LaunchActivity;Lcom/iMe/fork/utils/Callbacks$Callback;)V

    :goto_0
    return-void
.end method

.method private final showAppUpdateDialog(Lorg/telegram/ui/LaunchActivity;)V
    .locals 6

    .line 120
    new-instance v1, Lcom/iMe/model/dialog/DialogModel;

    .line 121
    sget v0, Lorg/telegram/messenger/R$string;->wallet_app_update_dialog_title:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v0

    .line 122
    sget v2, Lorg/telegram/messenger/R$string;->wallet_app_update_dialog_description:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v2

    .line 123
    sget v3, Lorg/telegram/messenger/R$string;->common_cancel:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v3

    .line 124
    sget v4, Lorg/telegram/messenger/R$string;->wallet_app_update_dialog_action_btn:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v4

    .line 120
    invoke-direct {v1, v0, v2, v3, v4}, Lcom/iMe/model/dialog/DialogModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    new-instance v2, Lcom/iMe/utils/helper/wallet/WalletHelper$$ExternalSyntheticLambda2;

    invoke-direct {v2, p1}, Lcom/iMe/utils/helper/wallet/WalletHelper$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/LaunchActivity;)V

    const/4 v3, 0x0

    const/16 v4, 0x8

    const/4 v5, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/iMe/utils/dialogs/DialogUtils;->createDialog$default(Landroid/content/Context;Lcom/iMe/model/dialog/DialogModel;Lcom/iMe/fork/utils/Callbacks$Callback;Lcom/iMe/fork/utils/Callbacks$Callback;ILjava/lang/Object;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    .line 127
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V

    return-void
.end method

.method private static final showAppUpdateDialog$lambda$4(Lorg/telegram/ui/LaunchActivity;)V
    .locals 1

    const-string v0, "$activity"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    sget-object v0, Lorg/telegram/messenger/BuildVars;->PLAYSTORE_APP_URL:Ljava/lang/String;

    invoke-static {p0, v0}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private final showAuthDialog(Lorg/telegram/ui/LaunchActivity;Lcom/iMe/fork/utils/Callbacks$Callback;)V
    .locals 6

    .line 132
    new-instance v0, Lcom/iMe/model/dialog/AnimatedSpannableDialogModel;

    .line 133
    sget v1, Lorg/telegram/messenger/R$raw;->fork_auth:I

    .line 134
    sget v2, Lorg/telegram/messenger/R$string;->auth_dialog_title:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "getInternalString(R.string.auth_dialog_title)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    invoke-direct {p0}, Lcom/iMe/utils/helper/wallet/WalletHelper;->getAuthSpannableStringBuilder()Landroid/text/SpannableStringBuilder;

    move-result-object v3

    .line 136
    sget v4, Lorg/telegram/messenger/R$string;->common_next:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "getInternalString(R.string.common_next)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/iMe/model/dialog/AnimatedSpannableDialogModel;-><init>(ILjava/lang/CharSequence;Landroid/text/SpannableStringBuilder;Ljava/lang/CharSequence;)V

    .line 131
    new-instance v1, Lcom/iMe/utils/helper/wallet/WalletHelper$$ExternalSyntheticLambda3;

    invoke-direct {v1, p1, p2}, Lcom/iMe/utils/helper/wallet/WalletHelper$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/LaunchActivity;Lcom/iMe/fork/utils/Callbacks$Callback;)V

    invoke-static {p1, v0, v1}, Lcom/iMe/utils/dialogs/DialogsFactoryKt;->createDialogWithAnimation(Lorg/telegram/ui/LaunchActivity;Lcom/iMe/model/dialog/AnimatedSpannableDialogModel;Lcom/iMe/fork/utils/Callbacks$Callback;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    .line 143
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V

    return-void
.end method

.method private static final showAuthDialog$lambda$5(Lorg/telegram/ui/LaunchActivity;Lcom/iMe/fork/utils/Callbacks$Callback;)V
    .locals 1

    const-string v0, "$this_showAuthDialog"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$activateClickAction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    invoke-virtual {p0, p1}, Lorg/telegram/ui/LaunchActivity;->getAuthDelegate(Lcom/iMe/fork/utils/Callbacks$Callback;)Lcom/iMe/utils/helper/wallet/AuthHelper$Delegate;

    move-result-object p0

    const-string p1, "getAuthDelegate(activateClickAction)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 139
    invoke-static {p0, p1}, Lcom/iMe/utils/helper/wallet/AuthHelper;->auth(Lcom/iMe/utils/helper/wallet/AuthHelper$Delegate;Z)V

    return-void
.end method


# virtual methods
.method public getKoin()Lorg/koin/core/Koin;
    .locals 1

    .line 34
    invoke-static {p0}, Lorg/koin/core/component/KoinComponent$DefaultImpls;->getKoin(Lorg/koin/core/component/KoinComponent;)Lorg/koin/core/Koin;

    move-result-object v0

    return-object v0
.end method
