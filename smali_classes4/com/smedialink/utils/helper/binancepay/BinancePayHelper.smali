.class public final Lcom/smedialink/utils/helper/binancepay/BinancePayHelper;
.super Ljava/lang/Object;
.source "BinancePayHelper.kt"

# interfaces
.implements Lorg/koin/core/component/KoinComponent;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBinancePayHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BinancePayHelper.kt\ncom/smedialink/utils/helper/binancepay/BinancePayHelper\n+ 2 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n*L\n1#1,74:1\n56#2,6:75\n56#2,6:81\n56#2,6:87\n*S KotlinDebug\n*F\n+ 1 BinancePayHelper.kt\ncom/smedialink/utils/helper/binancepay/BinancePayHelper\n*L\n26#1:75,6\n27#1:81,6\n28#1:87,6\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/smedialink/utils/helper/binancepay/BinancePayHelper;

.field private static final binancePayManager$delegate:Lkotlin/Lazy;

.field private static final refererHeader$delegate:Lkotlin/Lazy;

.field private static final rxEventBus$delegate:Lkotlin/Lazy;

.field private static final walletFlowCoordinator$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$Ge52XvK6hTa5cGhmUFUvceuPl-o(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/smedialink/utils/helper/binancepay/BinancePayHelper;->runWithCheckIsBinancePayActivated$lambda-1$lambda-0(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZYe9W4j_6C52fOSRrlWNaEJUwDo(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/fork/utils/Callbacks$Callback;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/smedialink/utils/helper/binancepay/BinancePayHelper;->runWithCheckIsBinancePayActivated$lambda-1(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/fork/utils/Callbacks$Callback;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/smedialink/utils/helper/binancepay/BinancePayHelper;

    invoke-direct {v0}, Lcom/smedialink/utils/helper/binancepay/BinancePayHelper;-><init>()V

    sput-object v0, Lcom/smedialink/utils/helper/binancepay/BinancePayHelper;->INSTANCE:Lcom/smedialink/utils/helper/binancepay/BinancePayHelper;

    .line 23
    sget-object v1, Lcom/smedialink/utils/helper/binancepay/BinancePayHelper$refererHeader$2;->INSTANCE:Lcom/smedialink/utils/helper/binancepay/BinancePayHelper$refererHeader$2;

    invoke-static {v1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    sput-object v1, Lcom/smedialink/utils/helper/binancepay/BinancePayHelper;->refererHeader$delegate:Lkotlin/Lazy;

    .line 58
    sget-object v1, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {v1}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object v2

    .line 61
    new-instance v3, Lcom/smedialink/utils/helper/binancepay/BinancePayHelper$special$$inlined$inject$default$1;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4, v4}, Lcom/smedialink/utils/helper/binancepay/BinancePayHelper$special$$inlined$inject$default$1;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {v2, v3}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v2

    .line 26
    sput-object v2, Lcom/smedialink/utils/helper/binancepay/BinancePayHelper;->rxEventBus$delegate:Lkotlin/Lazy;

    .line 58
    invoke-virtual {v1}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object v2

    .line 61
    new-instance v3, Lcom/smedialink/utils/helper/binancepay/BinancePayHelper$special$$inlined$inject$default$2;

    invoke-direct {v3, v0, v4, v4}, Lcom/smedialink/utils/helper/binancepay/BinancePayHelper$special$$inlined$inject$default$2;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {v2, v3}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v2

    .line 27
    sput-object v2, Lcom/smedialink/utils/helper/binancepay/BinancePayHelper;->binancePayManager$delegate:Lkotlin/Lazy;

    .line 58
    invoke-virtual {v1}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object v1

    .line 61
    new-instance v2, Lcom/smedialink/utils/helper/binancepay/BinancePayHelper$special$$inlined$inject$default$3;

    invoke-direct {v2, v0, v4, v4}, Lcom/smedialink/utils/helper/binancepay/BinancePayHelper$special$$inlined$inject$default$3;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {v1, v2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 28
    sput-object v0, Lcom/smedialink/utils/helper/binancepay/BinancePayHelper;->walletFlowCoordinator$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final getBinancePayManager()Lcom/smedialink/storage/domain/manager/binancepay/BinancePayManager;
    .locals 1

    .line 27
    sget-object v0, Lcom/smedialink/utils/helper/binancepay/BinancePayHelper;->binancePayManager$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smedialink/storage/domain/manager/binancepay/BinancePayManager;

    return-object v0
.end method

.method private final getRxEventBus()Lcom/smedialink/storage/domain/utils/rx/RxEventBus;
    .locals 1

    .line 26
    sget-object v0, Lcom/smedialink/utils/helper/binancepay/BinancePayHelper;->rxEventBus$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smedialink/storage/domain/utils/rx/RxEventBus;

    return-object v0
.end method

.method private final getWalletFlowCoordinator()Lcom/smedialink/navigation/wallet/coordinator/WalletFlowCoordinator;
    .locals 1

    .line 28
    sget-object v0, Lcom/smedialink/utils/helper/binancepay/BinancePayHelper;->walletFlowCoordinator$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smedialink/navigation/wallet/coordinator/WalletFlowCoordinator;

    return-object v0
.end method

.method public static final handleIntent(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "intent"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    sget-object v0, Lcom/smedialink/utils/helper/binancepay/BinancePayHelper;->INSTANCE:Lcom/smedialink/utils/helper/binancepay/BinancePayHelper;

    invoke-direct {v0}, Lcom/smedialink/utils/helper/binancepay/BinancePayHelper;->getRxEventBus()Lcom/smedialink/storage/domain/utils/rx/RxEventBus;

    move-result-object v0

    new-instance v1, Lcom/smedialink/common/AppRxEvents$BinanceAuthHandled;

    invoke-direct {v1, p0}, Lcom/smedialink/common/AppRxEvents$BinanceAuthHandled;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Lcom/smedialink/storage/domain/utils/rx/RxEventBus;->publish(Lcom/smedialink/storage/domain/utils/rx/event/RxEvent;)V

    return-void
.end method

.method public static final isBinancePayAuthIntent(Landroid/content/Intent;)Z
    .locals 4

    const-string v0, "intent"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/smedialink/storage/common/AppConfiguration$Binance;->INSTANCE:Lcom/smedialink/storage/common/AppConfiguration$Binance;

    invoke-virtual {v1}, Lcom/smedialink/storage/common/AppConfiguration$Binance;->getAUTH_REDIRECT_URL()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p0, v1, v0, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0
.end method

.method public static final isProcessBinancePayUrl(Ljava/lang/String;)Z
    .locals 4

    const-string v0, "url"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    sget-object v0, Lcom/smedialink/storage/common/AppConfiguration$Binance;->INSTANCE:Lcom/smedialink/storage/common/AppConfiguration$Binance;

    invoke-virtual {v0}, Lcom/smedialink/storage/common/AppConfiguration$Binance;->getProcessPayUrl()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p0, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static final runWithCheckIsBinancePayActivated(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/fork/utils/Callbacks$Callback;Lorg/fork/utils/Callbacks$Callback;)V
    .locals 7

    const-string v0, "fragment"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    sget-object v0, Lcom/smedialink/utils/helper/binancepay/BinancePayHelper;->INSTANCE:Lcom/smedialink/utils/helper/binancepay/BinancePayHelper;

    invoke-direct {v0}, Lcom/smedialink/utils/helper/binancepay/BinancePayHelper;->getBinancePayManager()Lcom/smedialink/storage/domain/manager/binancepay/BinancePayManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/smedialink/storage/domain/manager/binancepay/BinancePayManager;->isAuthorized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    invoke-interface {p2}, Lorg/fork/utils/Callbacks$Callback;->invoke()V

    goto :goto_0

    .line 53
    :cond_0
    new-instance v2, Lcom/smedialink/model/dialog/DialogModel;

    .line 54
    sget p2, Lorg/telegram/messenger/R$string;->wallet_binance_pay_not_activated_dialog_title:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p2

    .line 55
    sget v0, Lorg/telegram/messenger/R$string;->wallet_binance_pay_not_activated_dialog_description:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v0

    .line 56
    sget v1, Lorg/telegram/messenger/R$string;->common_cancel:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v1

    .line 57
    sget v3, Lorg/telegram/messenger/R$string;->wallet_button_auth_dialog_action_btn:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v3

    .line 53
    invoke-direct {v2, p2, v0, v1, v3}, Lcom/smedialink/model/dialog/DialogModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    const-string p2, "fragment.parentActivity"

    invoke-static {v1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lcom/smedialink/utils/helper/binancepay/BinancePayHelper$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, p1}, Lcom/smedialink/utils/helper/binancepay/BinancePayHelper$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/fork/utils/Callbacks$Callback;)V

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/smedialink/utils/dialogs/DialogUtils;->createDialog$default(Landroid/content/Context;Lcom/smedialink/model/dialog/DialogModel;Lorg/fork/utils/Callbacks$Callback;Lorg/fork/utils/Callbacks$Callback;ILjava/lang/Object;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p0

    .line 68
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V

    :goto_0
    return-void
.end method

.method private static final runWithCheckIsBinancePayActivated$lambda-1(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/fork/utils/Callbacks$Callback;)V
    .locals 7

    const-string v0, "$fragment"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    new-instance v4, Lcom/smedialink/utils/helper/binancepay/BinancePayHelper$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lcom/smedialink/utils/helper/binancepay/BinancePayHelper$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lcom/smedialink/utils/helper/wallet/WalletHelper;->safeRunWalletScreen$default(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;Lorg/fork/utils/Callbacks$Callback;Lorg/fork/utils/Callbacks$Callback;ILjava/lang/Object;)V

    if-nez p1, :cond_0

    goto :goto_0

    .line 67
    :cond_0
    invoke-interface {p1}, Lorg/fork/utils/Callbacks$Callback;->invoke()V

    :goto_0
    return-void
.end method

.method private static final runWithCheckIsBinancePayActivated$lambda-1$lambda-0(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 7

    const-string v0, "$fragment"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    sget-object v0, Lcom/smedialink/utils/helper/binancepay/BinancePayHelper;->INSTANCE:Lcom/smedialink/utils/helper/binancepay/BinancePayHelper;

    invoke-direct {v0}, Lcom/smedialink/utils/helper/binancepay/BinancePayHelper;->getWalletFlowCoordinator()Lcom/smedialink/navigation/wallet/coordinator/WalletFlowCoordinator;

    move-result-object v1

    .line 63
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v2

    const-string p0, "fragment.parentLayout"

    invoke-static {v2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    sget-object p0, Lcom/smedialink/ui/wallet/common/WalletRootFragment;->Companion:Lcom/smedialink/ui/wallet/common/WalletRootFragment$Companion;

    invoke-virtual {p0}, Lcom/smedialink/ui/wallet/common/WalletRootFragment$Companion;->newInstance()Lcom/smedialink/ui/wallet/common/WalletRootFragment;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    .line 62
    invoke-static/range {v1 .. v6}, Lcom/smedialink/navigation/wallet/coordinator/WalletFlowCoordinator;->start$default(Lcom/smedialink/navigation/wallet/coordinator/WalletFlowCoordinator;Lorg/telegram/ui/ActionBar/INavigationLayout;Lcom/smedialink/ui/base/WalletAuthFragment;ZILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getKoin()Lorg/koin/core/Koin;
    .locals 1

    .line 20
    invoke-static {p0}, Lorg/koin/core/component/KoinComponent$DefaultImpls;->getKoin(Lorg/koin/core/component/KoinComponent;)Lorg/koin/core/Koin;

    move-result-object v0

    return-object v0
.end method

.method public final getRefererHeader()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 23
    sget-object v0, Lcom/smedialink/utils/helper/binancepay/BinancePayHelper;->refererHeader$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    return-object v0
.end method
