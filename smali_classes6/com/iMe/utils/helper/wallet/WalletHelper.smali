.class public final Lcom/iMe/utils/helper/wallet/WalletHelper;
.super Ljava/lang/Object;
.source "WalletHelper.kt"

# interfaces
.implements Lorg/koin/core/component/KoinComponent;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWalletHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WalletHelper.kt\ncom/iMe/utils/helper/wallet/WalletHelper\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n*L\n1#1,212:1\n1855#2,2:213\n56#3,6:215\n56#3,6:221\n56#3,6:227\n56#3,6:233\n*S KotlinDebug\n*F\n+ 1 WalletHelper.kt\ncom/iMe/utils/helper/wallet/WalletHelper\n*L\n198#1:213,2\n40#1:215,6\n41#1:221,6\n42#1:227,6\n43#1:233,6\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/iMe/utils/helper/wallet/WalletHelper;

.field private static final authManager$delegate:Lkotlin/Lazy;

.field private static final cryptoAccessManager$delegate:Lkotlin/Lazy;

.field private static final rxEventBus$delegate:Lkotlin/Lazy;

.field private static final walletFlowCoordinator$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$8cVJpAaQU6eVS4GyP8HZ8P7Ljco(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/utils/helper/wallet/WalletHelper;->safeRunWalletScreen$lambda$2(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UQUB8tZOTSG5NMechvRD-ms3dRs(Lorg/telegram/ui/LaunchActivity;Lcom/iMe/fork/utils/Callbacks$Callback;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/utils/helper/wallet/WalletHelper;->showAuthDialog$lambda$6(Lorg/telegram/ui/LaunchActivity;Lcom/iMe/fork/utils/Callbacks$Callback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bRTFiuVMlXWUHblHaFAV6SNS-U8(Lcom/iMe/fork/utils/Callbacks$Callback;Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/utils/helper/wallet/WalletHelper;->runWithCheckIsCryptoWalletCreated$lambda$1$lambda$0(Lcom/iMe/fork/utils/Callbacks$Callback;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rw-DsgUtBVxmStNouQN-QCpvo9s(Lorg/telegram/ui/LaunchActivity;Lcom/iMe/fork/utils/Callbacks$Callback;Lorg/telegram/messenger/MessageObject;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/iMe/utils/helper/wallet/WalletHelper;->showManualAuthDialog$lambda$4(Lorg/telegram/ui/LaunchActivity;Lcom/iMe/fork/utils/Callbacks$Callback;Lorg/telegram/messenger/MessageObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wiGLojuhaja3KWA5kw26YEn6R8U(Lorg/telegram/ui/LaunchActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/utils/helper/wallet/WalletHelper;->showAppUpdateDialog$lambda$5(Lorg/telegram/ui/LaunchActivity;)V

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

    .line 40
    sput-object v2, Lcom/iMe/utils/helper/wallet/WalletHelper;->authManager$delegate:Lkotlin/Lazy;

    .line 58
    invoke-virtual {v1}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object v2

    .line 61
    new-instance v3, Lcom/iMe/utils/helper/wallet/WalletHelper$special$$inlined$inject$default$2;

    invoke-direct {v3, v0, v4, v4}, Lcom/iMe/utils/helper/wallet/WalletHelper$special$$inlined$inject$default$2;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {v2, v3}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v2

    .line 41
    sput-object v2, Lcom/iMe/utils/helper/wallet/WalletHelper;->cryptoAccessManager$delegate:Lkotlin/Lazy;

    .line 58
    invoke-virtual {v1}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object v2

    .line 61
    new-instance v3, Lcom/iMe/utils/helper/wallet/WalletHelper$special$$inlined$inject$default$3;

    invoke-direct {v3, v0, v4, v4}, Lcom/iMe/utils/helper/wallet/WalletHelper$special$$inlined$inject$default$3;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {v2, v3}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v2

    .line 42
    sput-object v2, Lcom/iMe/utils/helper/wallet/WalletHelper;->rxEventBus$delegate:Lkotlin/Lazy;

    .line 58
    invoke-virtual {v1}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object v1

    .line 61
    new-instance v2, Lcom/iMe/utils/helper/wallet/WalletHelper$special$$inlined$inject$default$4;

    invoke-direct {v2, v0, v4, v4}, Lcom/iMe/utils/helper/wallet/WalletHelper$special$$inlined$inject$default$4;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {v1, v2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 43
    sput-object v0, Lcom/iMe/utils/helper/wallet/WalletHelper;->walletFlowCoordinator$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final getAuthManager()Lcom/iMe/storage/domain/manager/auth/AuthManager;
    .locals 1

    .line 40
    sget-object v0, Lcom/iMe/utils/helper/wallet/WalletHelper;->authManager$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/storage/domain/manager/auth/AuthManager;

    return-object v0
.end method

.method private final getAuthSpannableStringBuilder()Landroid/text/SpannableStringBuilder;
    .locals 9

    .line 183
    sget v0, Lorg/telegram/messenger/R$string;->auth_dialog_description:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v0

    .line 184
    new-instance v7, Landroid/text/SpannableStringBuilder;

    invoke-direct {v7, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const-string v1, "descriptionText"

    .line 185
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

    .line 186
    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->lastIndexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v8, v1, :cond_0

    if-eq v0, v1, :cond_0

    if-eq v8, v0, :cond_0

    add-int/lit8 v1, v0, 0x1

    const-string v2, ""

    .line 188
    invoke-virtual {v7, v0, v1, v2}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v1, v8, 0x1

    .line 189
    invoke-virtual {v7, v8, v1, v2}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 191
    new-instance v3, Lorg/telegram/ui/Components/URLSpanNoUnderline;

    .line 194
    sget v4, Lorg/telegram/messenger/R$string;->PrivacyPolicyUrl:I

    const-string v5, "PrivacyPolicyUrl"

    .line 192
    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 191
    invoke-direct {v3, v4}, Lorg/telegram/ui/Components/URLSpanNoUnderline;-><init>(Ljava/lang/String;)V

    aput-object v3, v1, v2

    .line 197
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteLinkText:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 190
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

    .line 199
    invoke-virtual {v7, v2, v8, v4, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    :cond_0
    return-object v7
.end method

.method private final getCryptoAccessManager()Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;
    .locals 1

    .line 41
    sget-object v0, Lcom/iMe/utils/helper/wallet/WalletHelper;->cryptoAccessManager$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

    return-object v0
.end method

.method private final getRxEventBus()Lcom/iMe/storage/domain/utils/rx/RxEventBus;
    .locals 1

    .line 42
    sget-object v0, Lcom/iMe/utils/helper/wallet/WalletHelper;->rxEventBus$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/storage/domain/utils/rx/RxEventBus;

    return-object v0
.end method

.method private final getWalletFlowCoordinator()Lcom/iMe/navigation/wallet/coordinator/WalletFlowCoordinator;
    .locals 1

    .line 43
    sget-object v0, Lcom/iMe/utils/helper/wallet/WalletHelper;->walletFlowCoordinator$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/navigation/wallet/coordinator/WalletFlowCoordinator;

    return-object v0
.end method

.method public static final isAuthorized()Z
    .locals 1

    .line 109
    sget-object v0, Lcom/iMe/utils/helper/wallet/WalletHelper;->INSTANCE:Lcom/iMe/utils/helper/wallet/WalletHelper;

    invoke-direct {v0}, Lcom/iMe/utils/helper/wallet/WalletHelper;->getAuthManager()Lcom/iMe/storage/domain/manager/auth/AuthManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/iMe/storage/domain/manager/auth/AuthManager;->isAuthorized()Z

    move-result v0

    return v0
.end method

.method private final isUpdateRequired()Z
    .locals 2

    .line 149
    sget-object v0, Lcom/iMe/fork/controller/ForkCommonController;->Companion:Lcom/iMe/fork/controller/ForkCommonController$Companion;

    sget v1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-virtual {v0, v1}, Lcom/iMe/fork/controller/ForkCommonController$Companion;->getInstance(I)Lcom/iMe/fork/controller/ForkCommonController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/fork/controller/ForkCommonController;->getAppVersionRequiredUpdate()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 150
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
    .locals 2

    .line 79
    invoke-static {}, Lcom/iMe/storage/common/AppConfiguration$Wallet;->getWalletBotId()J

    move-result-wide v0

    cmp-long p0, p0, v0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final isWalletIntent(Ljava/lang/String;)Z
    .locals 1

    const-string/jumbo v0, "url"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    const-string v0, "imem.app"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static final runWithCheckIsCryptoWalletCreated(Lorg/telegram/ui/ActionBar/BaseFragment;Lcom/iMe/fork/utils/Callbacks$Callback;Lcom/iMe/storage/domain/model/crypto/BlockchainType;Lcom/iMe/fork/utils/Callbacks$Callback;)V
    .locals 1

    const-string v0, "fragment"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "walletCreatedAction"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 55
    sget-object v0, Lcom/iMe/utils/helper/wallet/WalletHelper;->INSTANCE:Lcom/iMe/utils/helper/wallet/WalletHelper;

    invoke-direct {v0}, Lcom/iMe/utils/helper/wallet/WalletHelper;->getCryptoAccessManager()Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;->isWalletCreated(Lcom/iMe/storage/domain/model/crypto/BlockchainType;)Z

    move-result v0

    goto :goto_0

    .line 57
    :cond_0
    sget-object v0, Lcom/iMe/utils/helper/wallet/WalletHelper;->INSTANCE:Lcom/iMe/utils/helper/wallet/WalletHelper;

    invoke-direct {v0}, Lcom/iMe/utils/helper/wallet/WalletHelper;->getCryptoAccessManager()Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;->isCurrentBlockchainWalletCreated()Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_1

    .line 60
    invoke-interface {p3}, Lcom/iMe/fork/utils/Callbacks$Callback;->invoke()V

    goto :goto_1

    .line 64
    :cond_1
    new-instance p3, Lcom/iMe/utils/helper/wallet/WalletHelper$$ExternalSyntheticLambda0;

    invoke-direct {p3, p1, p0}, Lcom/iMe/utils/helper/wallet/WalletHelper$$ExternalSyntheticLambda0;-><init>(Lcom/iMe/fork/utils/Callbacks$Callback;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    invoke-static {p0, p2, p3}, Lcom/iMe/utils/dialogs/DialogsFactoryKt;->createWalletCreatedRequiredDialog(Lorg/telegram/ui/ActionBar/BaseFragment;Lcom/iMe/storage/domain/model/crypto/BlockchainType;Lcom/iMe/fork/utils/Callbacks$Callback;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    .line 63
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    :goto_1
    return-void
.end method

.method private static final runWithCheckIsCryptoWalletCreated$lambda$1$lambda$0(Lcom/iMe/fork/utils/Callbacks$Callback;Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 1

    const-string v0, "$this_with"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p0, :cond_0

    .line 65
    invoke-interface {p0}, Lcom/iMe/fork/utils/Callbacks$Callback;->invoke()V

    :cond_0
    const/4 p0, 0x1

    const/4 v0, 0x0

    .line 66
    invoke-static {p1, v0, p0, v0}, Lcom/iMe/utils/helper/wallet/WalletHelper;->safeRunWalletScreen$default(Lorg/telegram/ui/ActionBar/BaseFragment;Lcom/iMe/fork/utils/Callbacks$Callback;ILjava/lang/Object;)V

    return-void
.end method

.method public static final safeRunWalletScreen(Lorg/telegram/ui/ActionBar/BaseFragment;Lcom/iMe/fork/utils/Callbacks$Callback;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "authorizedAction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    invoke-static {p0, p1}, Lcom/iMe/utils/helper/wallet/WalletHelper;->safeRunWithActivationCheck(Lorg/telegram/ui/ActionBar/BaseFragment;Lcom/iMe/fork/utils/Callbacks$Callback;)V

    return-void
.end method

.method public static synthetic safeRunWalletScreen$default(Lorg/telegram/ui/ActionBar/BaseFragment;Lcom/iMe/fork/utils/Callbacks$Callback;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 83
    new-instance p1, Lcom/iMe/utils/helper/wallet/WalletHelper$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/iMe/utils/helper/wallet/WalletHelper$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 82
    :cond_0
    invoke-static {p0, p1}, Lcom/iMe/utils/helper/wallet/WalletHelper;->safeRunWalletScreen(Lorg/telegram/ui/ActionBar/BaseFragment;Lcom/iMe/fork/utils/Callbacks$Callback;)V

    return-void
.end method

.method private static final safeRunWalletScreen$lambda$2(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 7

    const-string v0, "$this_safeRunWalletScreen"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v0

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object v0

    const-string/jumbo v1, "parentLayout.fragmentStack"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/iMe/ui/wallet/common/WalletRootFragment;

    if-eqz v0, :cond_0

    .line 85
    sget-object p0, Lcom/iMe/utils/helper/wallet/WalletHelper;->INSTANCE:Lcom/iMe/utils/helper/wallet/WalletHelper;

    invoke-direct {p0}, Lcom/iMe/utils/helper/wallet/WalletHelper;->getRxEventBus()Lcom/iMe/storage/domain/utils/rx/RxEventBus;

    move-result-object p0

    sget-object v0, Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents$SelectWalletCryptoTab;->INSTANCE:Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents$SelectWalletCryptoTab;

    invoke-virtual {p0, v0}, Lcom/iMe/storage/domain/utils/rx/RxEventBus;->publish(Lcom/iMe/storage/domain/utils/rx/event/RxEvent;)V

    goto :goto_0

    .line 87
    :cond_0
    sget-object v0, Lcom/iMe/utils/helper/wallet/WalletHelper;->INSTANCE:Lcom/iMe/utils/helper/wallet/WalletHelper;

    invoke-direct {v0}, Lcom/iMe/utils/helper/wallet/WalletHelper;->getWalletFlowCoordinator()Lcom/iMe/navigation/wallet/coordinator/WalletFlowCoordinator;

    move-result-object v1

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v2

    const-string/jumbo p0, "parentLayout"

    invoke-static {v2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/iMe/ui/wallet/common/WalletRootFragment;->Companion:Lcom/iMe/ui/wallet/common/WalletRootFragment$Companion;

    invoke-virtual {p0}, Lcom/iMe/ui/wallet/common/WalletRootFragment$Companion;->newInstance()Lcom/iMe/ui/wallet/common/WalletRootFragment;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/iMe/navigation/wallet/coordinator/WalletFlowCoordinator;->start$default(Lcom/iMe/navigation/wallet/coordinator/WalletFlowCoordinator;Lorg/telegram/ui/ActionBar/INavigationLayout;Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;ZILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static final safeRunWithActivationCheck(Lorg/telegram/ui/ActionBar/BaseFragment;Lcom/iMe/fork/utils/Callbacks$Callback;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "authorizedAction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
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

    .line 102
    sget-object v0, Lcom/iMe/utils/helper/wallet/WalletHelper;->INSTANCE:Lcom/iMe/utils/helper/wallet/WalletHelper;

    invoke-direct {v0}, Lcom/iMe/utils/helper/wallet/WalletHelper;->isUpdateRequired()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {v0, p0}, Lcom/iMe/utils/helper/wallet/WalletHelper;->showAppUpdateDialog(Lorg/telegram/ui/LaunchActivity;)V

    goto :goto_0

    .line 103
    :cond_0
    invoke-static {}, Lcom/iMe/utils/helper/wallet/WalletHelper;->isAuthorized()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Lcom/iMe/fork/utils/Callbacks$Callback;->invoke()V

    goto :goto_0

    .line 104
    :cond_1
    invoke-direct {v0, p0, p1}, Lcom/iMe/utils/helper/wallet/WalletHelper;->showAuthDialog(Lorg/telegram/ui/LaunchActivity;Lcom/iMe/fork/utils/Callbacks$Callback;)V

    :goto_0
    return-void
.end method

.method private final showAppUpdateDialog(Lorg/telegram/ui/LaunchActivity;)V
    .locals 6

    .line 156
    new-instance v1, Lcom/iMe/model/dialog/DialogModel;

    .line 157
    sget v0, Lorg/telegram/messenger/R$string;->wallet_app_update_dialog_title:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v0

    .line 158
    sget v2, Lorg/telegram/messenger/R$string;->wallet_app_update_dialog_description:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v2

    .line 159
    sget v3, Lorg/telegram/messenger/R$string;->common_cancel:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v3

    .line 160
    sget v4, Lorg/telegram/messenger/R$string;->wallet_app_update_dialog_action_btn:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v4

    .line 156
    invoke-direct {v1, v0, v2, v3, v4}, Lcom/iMe/model/dialog/DialogModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    new-instance v2, Lcom/iMe/utils/helper/wallet/WalletHelper$$ExternalSyntheticLambda2;

    invoke-direct {v2, p1}, Lcom/iMe/utils/helper/wallet/WalletHelper$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/LaunchActivity;)V

    const/4 v3, 0x0

    const/16 v4, 0x8

    const/4 v5, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/iMe/utils/dialogs/DialogUtils;->createDialog$default(Landroid/content/Context;Lcom/iMe/model/dialog/DialogModel;Lcom/iMe/fork/utils/Callbacks$Callback;Lcom/iMe/fork/utils/Callbacks$Callback;ILjava/lang/Object;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    .line 163
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V

    return-void
.end method

.method private static final showAppUpdateDialog$lambda$5(Lorg/telegram/ui/LaunchActivity;)V
    .locals 1

    const-string v0, "$activity"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    sget-object v0, Lorg/telegram/messenger/BuildVars;->PLAYSTORE_APP_URL:Ljava/lang/String;

    invoke-static {p0, v0}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private final showAuthDialog(Lorg/telegram/ui/LaunchActivity;Lcom/iMe/fork/utils/Callbacks$Callback;)V
    .locals 6

    .line 168
    new-instance v0, Lcom/iMe/model/dialog/AnimatedSpannableDialogModel;

    .line 169
    sget v1, Lorg/telegram/messenger/R$raw;->fork_auth:I

    .line 170
    sget v2, Lorg/telegram/messenger/R$string;->auth_dialog_title:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "getInternalString(R.string.auth_dialog_title)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 171
    invoke-direct {p0}, Lcom/iMe/utils/helper/wallet/WalletHelper;->getAuthSpannableStringBuilder()Landroid/text/SpannableStringBuilder;

    move-result-object v3

    .line 172
    sget v4, Lorg/telegram/messenger/R$string;->common_next:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "getInternalString(R.string.common_next)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 168
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/iMe/model/dialog/AnimatedSpannableDialogModel;-><init>(ILjava/lang/CharSequence;Landroid/text/SpannableStringBuilder;Ljava/lang/CharSequence;)V

    .line 167
    new-instance v1, Lcom/iMe/utils/helper/wallet/WalletHelper$$ExternalSyntheticLambda3;

    invoke-direct {v1, p1, p2}, Lcom/iMe/utils/helper/wallet/WalletHelper$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/LaunchActivity;Lcom/iMe/fork/utils/Callbacks$Callback;)V

    invoke-static {p1, v0, v1}, Lcom/iMe/utils/dialogs/DialogsFactoryKt;->createDialogWithAnimation(Lorg/telegram/ui/LaunchActivity;Lcom/iMe/model/dialog/AnimatedSpannableDialogModel;Lcom/iMe/fork/utils/Callbacks$Callback;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    .line 179
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V

    return-void
.end method

.method private static final showAuthDialog$lambda$6(Lorg/telegram/ui/LaunchActivity;Lcom/iMe/fork/utils/Callbacks$Callback;)V
    .locals 3

    const-string v0, "$this_showAuthDialog"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$activateClickAction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 176
    invoke-virtual {p0, p1}, Lorg/telegram/ui/LaunchActivity;->getAuthDelegate(Lcom/iMe/fork/utils/Callbacks$Callback;)Lcom/iMe/utils/helper/wallet/AuthHelper$Delegate;

    move-result-object p0

    const-string p1, "getAuthDelegate(activateClickAction)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x4

    const/4 v2, 0x0

    .line 175
    invoke-static {p0, p1, v0, v1, v2}, Lcom/iMe/utils/helper/wallet/AuthHelper;->auth$default(Lcom/iMe/utils/helper/wallet/AuthHelper$Delegate;ZIILjava/lang/Object;)V

    return-void
.end method

.method public static final showManualAuthDialog(Lorg/telegram/ui/LaunchActivity;Lorg/telegram/messenger/MessageObject;Lcom/iMe/fork/utils/Callbacks$Callback;)V
    .locals 6

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "botAuthButtonMessage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activateClickAction"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    new-instance v0, Lcom/iMe/model/dialog/AnimatedSpannableDialogModel;

    .line 129
    sget v1, Lorg/telegram/messenger/R$raw;->fork_auth:I

    .line 130
    sget v2, Lorg/telegram/messenger/R$string;->auth_dialog_title:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "getInternalString(R.string.auth_dialog_title)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    sget-object v3, Lcom/iMe/utils/helper/wallet/WalletHelper;->INSTANCE:Lcom/iMe/utils/helper/wallet/WalletHelper;

    invoke-direct {v3}, Lcom/iMe/utils/helper/wallet/WalletHelper;->getAuthSpannableStringBuilder()Landroid/text/SpannableStringBuilder;

    move-result-object v3

    .line 132
    sget v4, Lorg/telegram/messenger/R$string;->common_next:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "getInternalString(R.string.common_next)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/iMe/model/dialog/AnimatedSpannableDialogModel;-><init>(ILjava/lang/CharSequence;Landroid/text/SpannableStringBuilder;Ljava/lang/CharSequence;)V

    .line 127
    new-instance v1, Lcom/iMe/utils/helper/wallet/WalletHelper$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p2, p1}, Lcom/iMe/utils/helper/wallet/WalletHelper$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/LaunchActivity;Lcom/iMe/fork/utils/Callbacks$Callback;Lorg/telegram/messenger/MessageObject;)V

    invoke-static {p0, v0, v1}, Lcom/iMe/utils/dialogs/DialogsFactoryKt;->createDialogWithAnimation(Lorg/telegram/ui/LaunchActivity;Lcom/iMe/model/dialog/AnimatedSpannableDialogModel;Lcom/iMe/fork/utils/Callbacks$Callback;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p0

    .line 140
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V

    return-void
.end method

.method private static final showManualAuthDialog$lambda$4(Lorg/telegram/ui/LaunchActivity;Lcom/iMe/fork/utils/Callbacks$Callback;Lorg/telegram/messenger/MessageObject;)V
    .locals 7

    const-string v0, "$this_showManualAuthDialog"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$activateClickAction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$botAuthButtonMessage"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    invoke-virtual {p0, p1}, Lorg/telegram/ui/LaunchActivity;->getAuthDelegate(Lcom/iMe/fork/utils/Callbacks$Callback;)Lcom/iMe/utils/helper/wallet/AuthHelper$Delegate;

    move-result-object v1

    const-string p0, "getAuthDelegate(activateClickAction)"

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v4, p2

    .line 135
    invoke-static/range {v1 .. v6}, Lcom/iMe/utils/helper/wallet/AuthHelper;->manualAuth$default(Lcom/iMe/utils/helper/wallet/AuthHelper$Delegate;ZILorg/telegram/messenger/MessageObject;ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getKoin()Lorg/koin/core/Koin;
    .locals 1

    .line 37
    invoke-static {p0}, Lorg/koin/core/component/KoinComponent$DefaultImpls;->getKoin(Lorg/koin/core/component/KoinComponent;)Lorg/koin/core/Koin;

    move-result-object v0

    return-object v0
.end method
