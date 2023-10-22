.class public final Lcom/iMe/utils/helper/wallet/AnalyticsHelper;
.super Ljava/lang/Object;
.source "AnalyticsHelper.kt"

# interfaces
.implements Lorg/koin/core/component/KoinComponent;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAnalyticsHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AnalyticsHelper.kt\ncom/iMe/utils/helper/wallet/AnalyticsHelper\n+ 2 RxExt.kt\ncom/iMe/utils/extentions/rx/RxExtKt\n+ 3 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n*L\n1#1,102:1\n63#2,12:103\n56#3,6:115\n56#3,6:121\n56#3,6:127\n56#3,6:133\n*S KotlinDebug\n*F\n+ 1 AnalyticsHelper.kt\ncom/iMe/utils/helper/wallet/AnalyticsHelper\n*L\n51#1:103,12\n20#1:115,6\n21#1:121,6\n22#1:127,6\n23#1:133,6\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/iMe/utils/helper/wallet/AnalyticsHelper;

.field private static final analyticsPreference$delegate:Lkotlin/Lazy;

.field private static final schedulersProvider$delegate:Lkotlin/Lazy;

.field private static final subscriptions:Lio/reactivex/disposables/CompositeDisposable;

.field private static final telegramApi$delegate:Lkotlin/Lazy;

.field private static final telegramGateway$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/iMe/utils/helper/wallet/AnalyticsHelper;

    invoke-direct {v0}, Lcom/iMe/utils/helper/wallet/AnalyticsHelper;-><init>()V

    sput-object v0, Lcom/iMe/utils/helper/wallet/AnalyticsHelper;->INSTANCE:Lcom/iMe/utils/helper/wallet/AnalyticsHelper;

    .line 58
    sget-object v1, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {v1}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object v2

    .line 61
    new-instance v3, Lcom/iMe/utils/helper/wallet/AnalyticsHelper$special$$inlined$inject$default$1;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4, v4}, Lcom/iMe/utils/helper/wallet/AnalyticsHelper$special$$inlined$inject$default$1;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {v2, v3}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v2

    .line 20
    sput-object v2, Lcom/iMe/utils/helper/wallet/AnalyticsHelper;->schedulersProvider$delegate:Lkotlin/Lazy;

    .line 58
    invoke-virtual {v1}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object v2

    .line 61
    new-instance v3, Lcom/iMe/utils/helper/wallet/AnalyticsHelper$special$$inlined$inject$default$2;

    invoke-direct {v3, v0, v4, v4}, Lcom/iMe/utils/helper/wallet/AnalyticsHelper$special$$inlined$inject$default$2;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {v2, v3}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v2

    .line 21
    sput-object v2, Lcom/iMe/utils/helper/wallet/AnalyticsHelper;->telegramApi$delegate:Lkotlin/Lazy;

    .line 58
    invoke-virtual {v1}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object v2

    .line 61
    new-instance v3, Lcom/iMe/utils/helper/wallet/AnalyticsHelper$special$$inlined$inject$default$3;

    invoke-direct {v3, v0, v4, v4}, Lcom/iMe/utils/helper/wallet/AnalyticsHelper$special$$inlined$inject$default$3;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {v2, v3}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v2

    .line 22
    sput-object v2, Lcom/iMe/utils/helper/wallet/AnalyticsHelper;->analyticsPreference$delegate:Lkotlin/Lazy;

    .line 58
    invoke-virtual {v1}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object v1

    .line 61
    new-instance v2, Lcom/iMe/utils/helper/wallet/AnalyticsHelper$special$$inlined$inject$default$4;

    invoke-direct {v2, v0, v4, v4}, Lcom/iMe/utils/helper/wallet/AnalyticsHelper$special$$inlined$inject$default$4;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {v1, v2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 23
    sput-object v0, Lcom/iMe/utils/helper/wallet/AnalyticsHelper;->telegramGateway$delegate:Lkotlin/Lazy;

    .line 24
    new-instance v0, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    sput-object v0, Lcom/iMe/utils/helper/wallet/AnalyticsHelper;->subscriptions:Lio/reactivex/disposables/CompositeDisposable;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getAnalyticsPreference(Lcom/iMe/utils/helper/wallet/AnalyticsHelper;)Lcom/iMe/storage/domain/storage/AnalyticsPreferenceHelper;
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/iMe/utils/helper/wallet/AnalyticsHelper;->getAnalyticsPreference()Lcom/iMe/storage/domain/storage/AnalyticsPreferenceHelper;

    move-result-object p0

    return-object p0
.end method

.method private final getAnalyticsPreference()Lcom/iMe/storage/domain/storage/AnalyticsPreferenceHelper;
    .locals 1

    .line 22
    sget-object v0, Lcom/iMe/utils/helper/wallet/AnalyticsHelper;->analyticsPreference$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/storage/domain/storage/AnalyticsPreferenceHelper;

    return-object v0
.end method

.method private final getSchedulersProvider()Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;
    .locals 1

    .line 20
    sget-object v0, Lcom/iMe/utils/helper/wallet/AnalyticsHelper;->schedulersProvider$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    return-object v0
.end method

.method private final getTelegramApi()Lcom/iMe/manager/TelegramApi;
    .locals 1

    .line 21
    sget-object v0, Lcom/iMe/utils/helper/wallet/AnalyticsHelper;->telegramApi$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/manager/TelegramApi;

    return-object v0
.end method

.method private final getTelegramGateway()Lcom/iMe/storage/domain/gateway/TelegramGateway;
    .locals 1

    .line 23
    sget-object v0, Lcom/iMe/utils/helper/wallet/AnalyticsHelper;->telegramGateway$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/storage/domain/gateway/TelegramGateway;

    return-object v0
.end method

.method public static final onDestroy()V
    .locals 1

    .line 28
    sget-object v0, Lcom/iMe/utils/helper/wallet/AnalyticsHelper;->subscriptions:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->clear()V

    return-void
.end method

.method public static final trackEventsOnStartup()V
    .locals 1

    .line 33
    sget-object v0, Lcom/iMe/utils/helper/wallet/AnalyticsHelper;->INSTANCE:Lcom/iMe/utils/helper/wallet/AnalyticsHelper;

    invoke-direct {v0}, Lcom/iMe/utils/helper/wallet/AnalyticsHelper;->trackIsPremiumUser()V

    .line 34
    invoke-direct {v0}, Lcom/iMe/utils/helper/wallet/AnalyticsHelper;->trackIsActiveDesktopUser()V

    return-void
.end method

.method private final trackIsActiveDesktopUser()V
    .locals 4

    .line 47
    invoke-direct {p0}, Lcom/iMe/utils/helper/wallet/AnalyticsHelper;->getAnalyticsPreference()Lcom/iMe/storage/domain/storage/AnalyticsPreferenceHelper;

    move-result-object v0

    invoke-interface {v0}, Lcom/iMe/storage/domain/storage/AnalyticsPreferenceHelper;->getActiveDesktopUserLastUpdateTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/iMe/storage/data/utils/extentions/DateExtKt;->isDayAgo(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    invoke-direct {p0}, Lcom/iMe/utils/helper/wallet/AnalyticsHelper;->getTelegramApi()Lcom/iMe/manager/TelegramApi;

    move-result-object v0

    .line 49
    invoke-interface {v0}, Lcom/iMe/manager/TelegramApi;->getAccountSessions()Lio/reactivex/Observable;

    move-result-object v0

    .line 50
    invoke-direct {p0}, Lcom/iMe/utils/helper/wallet/AnalyticsHelper;->getSchedulersProvider()Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    move-result-object v1

    invoke-interface {v1}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    const-string/jumbo v1, "telegramApi\n            \u2026(schedulersProvider.ui())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 68
    new-instance v2, Lcom/iMe/utils/helper/wallet/AnalyticsHelper$trackIsActiveDesktopUser$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v2}, Lcom/iMe/utils/helper/wallet/AnalyticsHelper$trackIsActiveDesktopUser$$inlined$subscribeWithErrorHandle$default$1;-><init>()V

    new-instance v3, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v3, v2}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v2, Lcom/iMe/utils/helper/wallet/AnalyticsHelper$trackIsActiveDesktopUser$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {v2, v1}, Lcom/iMe/utils/helper/wallet/AnalyticsHelper$trackIsActiveDesktopUser$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 70
    new-instance v1, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v1, v2}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 68
    invoke-virtual {v0, v3, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    const-string/jumbo v1, "viewState: BaseView? = n\u2026rror.invoke(error)\n    })"

    .line 70
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    sget-object v1, Lcom/iMe/utils/helper/wallet/AnalyticsHelper;->subscriptions:Lio/reactivex/disposables/CompositeDisposable;

    invoke-static {v0, v1}, Lcom/iMe/storage/data/utils/extentions/RxExtKt;->autoDispose(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;)V

    :cond_0
    return-void
.end method

.method private final trackIsPremiumUser()V
    .locals 3

    .line 38
    invoke-direct {p0}, Lcom/iMe/utils/helper/wallet/AnalyticsHelper;->getAnalyticsPreference()Lcom/iMe/storage/domain/storage/AnalyticsPreferenceHelper;

    move-result-object v0

    invoke-interface {v0}, Lcom/iMe/storage/domain/storage/AnalyticsPreferenceHelper;->getOpenAsPremiumUserLastUpdateTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/iMe/storage/data/utils/extentions/DateExtKt;->isDayAgo(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    invoke-direct {p0}, Lcom/iMe/utils/helper/wallet/AnalyticsHelper;->getTelegramGateway()Lcom/iMe/storage/domain/gateway/TelegramGateway;

    move-result-object v0

    invoke-interface {v0}, Lcom/iMe/storage/domain/gateway/TelegramGateway;->getSelectedAccountIndex()I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    invoke-static {}, Lcom/iMe/storage/data/manager/analytics/AnalyticsManagerKt;->getAnalytics()Lcom/iMe/storage/data/manager/analytics/AnalyticsManager;

    sget-object v0, Lcom/iMe/storage/domain/model/analytics/AnalyticsEvent$OpenAppAsTelegramPremiumUser;->INSTANCE:Lcom/iMe/storage/domain/model/analytics/AnalyticsEvent$OpenAppAsTelegramPremiumUser;

    invoke-static {v0}, Lcom/iMe/storage/data/manager/analytics/AnalyticsManager;->trackEvent(Lcom/iMe/storage/domain/model/analytics/AnalyticsEvent;)V

    .line 41
    invoke-direct {p0}, Lcom/iMe/utils/helper/wallet/AnalyticsHelper;->getAnalyticsPreference()Lcom/iMe/storage/domain/storage/AnalyticsPreferenceHelper;

    move-result-object v0

    invoke-static {}, Lcom/iMe/storage/data/utils/extentions/DateExtKt;->now()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/iMe/storage/domain/storage/AnalyticsPreferenceHelper;->setOpenAsPremiumUserLastUpdateTime(J)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getKoin()Lorg/koin/core/Koin;
    .locals 1

    .line 18
    invoke-static {p0}, Lorg/koin/core/component/KoinComponent$DefaultImpls;->getKoin(Lorg/koin/core/component/KoinComponent;)Lorg/koin/core/Koin;

    move-result-object v0

    return-object v0
.end method
