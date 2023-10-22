.class public final Lcom/iMe/utils/helper/NewsAndUserActivityHelper;
.super Ljava/lang/Object;
.source "NewsAndUserActivityHelper.kt"

# interfaces
.implements Lorg/koin/core/component/KoinComponent;
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNewsAndUserActivityHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NewsAndUserActivityHelper.kt\ncom/iMe/utils/helper/NewsAndUserActivityHelper\n+ 2 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n*L\n1#1,206:1\n56#2,6:207\n56#2,6:213\n56#2,6:219\n56#2,6:225\n56#2,6:231\n*S KotlinDebug\n*F\n+ 1 NewsAndUserActivityHelper.kt\ncom/iMe/utils/helper/NewsAndUserActivityHelper\n*L\n32#1:207,6\n33#1:213,6\n34#1:219,6\n35#1:225,6\n36#1:231,6\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/iMe/utils/helper/NewsAndUserActivityHelper;

.field private static final activatingBotEvents:[I

.field private static final classGuid:I

.field private static currentAccountIndex:I

.field private static isBotMutedByOriginal:Z

.field private static isPreparationRunning:Z

.field private static isSubscribeRunning:Z

.field private static final loadingMessagesEvents:[I

.field private static final newsBotId:J

.field private static final notificationInteractor$delegate:Lkotlin/Lazy;

.field private static final preferenceHelper$delegate:Lkotlin/Lazy;

.field private static final schedulersProvider$delegate:Lkotlin/Lazy;

.field private static final subscriptions:Lio/reactivex/disposables/CompositeDisposable;

.field private static final telegramApi$delegate:Lkotlin/Lazy;

.field private static final telegramControllersGateway$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$-kMvqD1GeDplXtZKpDPj-xrJVvM()V
    .locals 0

    invoke-static {}, Lcom/iMe/utils/helper/NewsAndUserActivityHelper;->onSubscribeFlowFinished$lambda$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$43XdFOno86xd7CAb1-IgQEX0CwU(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/utils/helper/NewsAndUserActivityHelper;->subscribeWithCommonErrorHandling$lambda$3(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QLhLbEEFeAWtpEIbHegn46S-z70(Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/utils/helper/NewsAndUserActivityHelper;->prepareAndStartSubscribeFlow$lambda$0(Lorg/telegram/tgnet/TLRPC$User;)V

    return-void
.end method

.method public static synthetic $r8$lambda$y1zm7pNPuh4X8F9u4KQwE0BKXm4(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/utils/helper/NewsAndUserActivityHelper;->subscribeWithCommonErrorHandling$lambda$4(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/iMe/utils/helper/NewsAndUserActivityHelper;

    invoke-direct {v0}, Lcom/iMe/utils/helper/NewsAndUserActivityHelper;-><init>()V

    sput-object v0, Lcom/iMe/utils/helper/NewsAndUserActivityHelper;->INSTANCE:Lcom/iMe/utils/helper/NewsAndUserActivityHelper;

    .line 58
    sget-object v1, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {v1}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object v2

    .line 61
    new-instance v3, Lcom/iMe/utils/helper/NewsAndUserActivityHelper$special$$inlined$inject$default$1;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4, v4}, Lcom/iMe/utils/helper/NewsAndUserActivityHelper$special$$inlined$inject$default$1;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {v2, v3}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v2

    .line 32
    sput-object v2, Lcom/iMe/utils/helper/NewsAndUserActivityHelper;->notificationInteractor$delegate:Lkotlin/Lazy;

    .line 58
    invoke-virtual {v1}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object v2

    .line 61
    new-instance v3, Lcom/iMe/utils/helper/NewsAndUserActivityHelper$special$$inlined$inject$default$2;

    invoke-direct {v3, v0, v4, v4}, Lcom/iMe/utils/helper/NewsAndUserActivityHelper$special$$inlined$inject$default$2;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {v2, v3}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v2

    .line 33
    sput-object v2, Lcom/iMe/utils/helper/NewsAndUserActivityHelper;->preferenceHelper$delegate:Lkotlin/Lazy;

    .line 58
    invoke-virtual {v1}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object v2

    .line 61
    new-instance v3, Lcom/iMe/utils/helper/NewsAndUserActivityHelper$special$$inlined$inject$default$3;

    invoke-direct {v3, v0, v4, v4}, Lcom/iMe/utils/helper/NewsAndUserActivityHelper$special$$inlined$inject$default$3;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {v2, v3}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v2

    .line 34
    sput-object v2, Lcom/iMe/utils/helper/NewsAndUserActivityHelper;->schedulersProvider$delegate:Lkotlin/Lazy;

    .line 58
    invoke-virtual {v1}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object v2

    .line 61
    new-instance v3, Lcom/iMe/utils/helper/NewsAndUserActivityHelper$special$$inlined$inject$default$4;

    invoke-direct {v3, v0, v4, v4}, Lcom/iMe/utils/helper/NewsAndUserActivityHelper$special$$inlined$inject$default$4;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {v2, v3}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v2

    .line 35
    sput-object v2, Lcom/iMe/utils/helper/NewsAndUserActivityHelper;->telegramApi$delegate:Lkotlin/Lazy;

    .line 58
    invoke-virtual {v1}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object v1

    .line 61
    new-instance v2, Lcom/iMe/utils/helper/NewsAndUserActivityHelper$special$$inlined$inject$default$5;

    invoke-direct {v2, v0, v4, v4}, Lcom/iMe/utils/helper/NewsAndUserActivityHelper$special$$inlined$inject$default$5;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {v1, v2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 36
    sput-object v0, Lcom/iMe/utils/helper/NewsAndUserActivityHelper;->telegramControllersGateway$delegate:Lkotlin/Lazy;

    .line 38
    invoke-static {}, Lcom/iMe/storage/common/AppConfiguration$Bots;->getNewsBotId()J

    move-result-wide v0

    sput-wide v0, Lcom/iMe/utils/helper/NewsAndUserActivityHelper;->newsBotId:J

    .line 39
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->generateClassGuid()I

    move-result v0

    sput v0, Lcom/iMe/utils/helper/NewsAndUserActivityHelper;->classGuid:I

    .line 40
    new-instance v0, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    sput-object v0, Lcom/iMe/utils/helper/NewsAndUserActivityHelper;->subscriptions:Lio/reactivex/disposables/CompositeDisposable;

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 50
    sget v2, Lorg/telegram/messenger/NotificationCenter;->messagesDidLoad:I

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 51
    sget v2, Lorg/telegram/messenger/NotificationCenter;->loadingMessagesFailed:I

    const/4 v4, 0x1

    aput v2, v1, v4

    .line 49
    sput-object v1, Lcom/iMe/utils/helper/NewsAndUserActivityHelper;->loadingMessagesEvents:[I

    new-array v0, v0, [I

    .line 54
    sget v1, Lorg/telegram/messenger/NotificationCenter;->didReceiveNewMessages:I

    aput v1, v0, v3

    .line 55
    sget v1, Lorg/telegram/messenger/NotificationCenter;->messageSendError:I

    aput v1, v0, v4

    .line 53
    sput-object v0, Lcom/iMe/utils/helper/NewsAndUserActivityHelper;->activatingBotEvents:[I

    const/4 v0, -0x1

    .line 61
    sput v0, Lcom/iMe/utils/helper/NewsAndUserActivityHelper;->currentAccountIndex:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$onSubscribeFlowFinished(Lcom/iMe/utils/helper/NewsAndUserActivityHelper;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/iMe/utils/helper/NewsAndUserActivityHelper;->onSubscribeFlowFinished()V

    return-void
.end method

.method private final getMessagesController()Lorg/telegram/messenger/MessagesController;
    .locals 2

    .line 42
    invoke-direct {p0}, Lcom/iMe/utils/helper/NewsAndUserActivityHelper;->getTelegramControllersGateway()Lcom/iMe/gateway/TelegramControllersGateway;

    move-result-object v0

    sget v1, Lcom/iMe/utils/helper/NewsAndUserActivityHelper;->currentAccountIndex:I

    invoke-interface {v0, v1}, Lcom/iMe/gateway/TelegramControllersGateway;->getMessagesController(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    return-object v0
.end method

.method private final getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;
    .locals 2

    .line 44
    invoke-direct {p0}, Lcom/iMe/utils/helper/NewsAndUserActivityHelper;->getTelegramControllersGateway()Lcom/iMe/gateway/TelegramControllersGateway;

    move-result-object v0

    sget v1, Lcom/iMe/utils/helper/NewsAndUserActivityHelper;->currentAccountIndex:I

    invoke-interface {v0, v1}, Lcom/iMe/gateway/TelegramControllersGateway;->getNotificationCenterInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    return-object v0
.end method

.method private final getNotificationInteractor()Lcom/iMe/storage/domain/interactor/notification/PushNotificationInteractor;
    .locals 1

    .line 32
    sget-object v0, Lcom/iMe/utils/helper/NewsAndUserActivityHelper;->notificationInteractor$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/storage/domain/interactor/notification/PushNotificationInteractor;

    return-object v0
.end method

.method private final getNotificationsController()Lorg/telegram/messenger/NotificationsController;
    .locals 2

    .line 46
    invoke-direct {p0}, Lcom/iMe/utils/helper/NewsAndUserActivityHelper;->getTelegramControllersGateway()Lcom/iMe/gateway/TelegramControllersGateway;

    move-result-object v0

    sget v1, Lcom/iMe/utils/helper/NewsAndUserActivityHelper;->currentAccountIndex:I

    invoke-interface {v0, v1}, Lcom/iMe/gateway/TelegramControllersGateway;->getNotificationsController(I)Lorg/telegram/messenger/NotificationsController;

    move-result-object v0

    return-object v0
.end method

.method private final getPreferenceHelper()Lcom/iMe/storage/domain/storage/PreferenceHelper;
    .locals 1

    .line 33
    sget-object v0, Lcom/iMe/utils/helper/NewsAndUserActivityHelper;->preferenceHelper$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/storage/domain/storage/PreferenceHelper;

    return-object v0
.end method

.method private final getSchedulersProvider()Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;
    .locals 1

    .line 34
    sget-object v0, Lcom/iMe/utils/helper/NewsAndUserActivityHelper;->schedulersProvider$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    return-object v0
.end method

.method private final getSendMessagesHelper()Lorg/telegram/messenger/SendMessagesHelper;
    .locals 2

    .line 48
    invoke-direct {p0}, Lcom/iMe/utils/helper/NewsAndUserActivityHelper;->getTelegramControllersGateway()Lcom/iMe/gateway/TelegramControllersGateway;

    move-result-object v0

    sget v1, Lcom/iMe/utils/helper/NewsAndUserActivityHelper;->currentAccountIndex:I

    invoke-interface {v0, v1}, Lcom/iMe/gateway/TelegramControllersGateway;->getSendMessagesHelper(I)Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v0

    return-object v0
.end method

.method private final getTelegramApi()Lcom/iMe/manager/TelegramApi;
    .locals 1

    .line 35
    sget-object v0, Lcom/iMe/utils/helper/NewsAndUserActivityHelper;->telegramApi$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/manager/TelegramApi;

    return-object v0
.end method

.method private final getTelegramControllersGateway()Lcom/iMe/gateway/TelegramControllersGateway;
    .locals 1

    .line 36
    sget-object v0, Lcom/iMe/utils/helper/NewsAndUserActivityHelper;->telegramControllersGateway$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/gateway/TelegramControllersGateway;

    return-object v0
.end method

.method private final loadBotMessages()V
    .locals 22

    .line 135
    invoke-direct/range {p0 .. p0}, Lcom/iMe/utils/helper/NewsAndUserActivityHelper;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget-object v1, Lcom/iMe/utils/helper/NewsAndUserActivityHelper;->loadingMessagesEvents:[I

    move-object/from16 v2, p0

    invoke-virtual {v0, v2, v1}, Lorg/telegram/messenger/NotificationCenter;->addObservers(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;[I)V

    .line 136
    invoke-direct/range {p0 .. p0}, Lcom/iMe/utils/helper/NewsAndUserActivityHelper;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    .line 137
    sget-wide v4, Lcom/iMe/utils/helper/NewsAndUserActivityHelper;->newsBotId:J

    .line 139
    sget v14, Lcom/iMe/utils/helper/NewsAndUserActivityHelper;->classGuid:I

    const-wide/16 v6, 0x0

    const/4 v8, 0x1

    const/16 v9, 0xa

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    .line 136
    invoke-virtual/range {v3 .. v21}, Lorg/telegram/messenger/MessagesController;->loadMessages(JJZIIIZIIIIIIIIZ)V

    return-void
.end method

.method public static final markActivity()V
    .locals 4

    .line 90
    sget-object v0, Lcom/iMe/utils/helper/NewsAndUserActivityHelper;->INSTANCE:Lcom/iMe/utils/helper/NewsAndUserActivityHelper;

    invoke-direct {v0}, Lcom/iMe/utils/helper/NewsAndUserActivityHelper;->getPreferenceHelper()Lcom/iMe/storage/domain/storage/PreferenceHelper;

    move-result-object v1

    invoke-interface {v1}, Lcom/iMe/storage/domain/storage/PreferenceHelper;->getLastMarkActivityTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/iMe/storage/data/utils/extentions/DateExtKt;->isDayAgo(J)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 91
    invoke-direct {v0}, Lcom/iMe/utils/helper/NewsAndUserActivityHelper;->getPreferenceHelper()Lcom/iMe/storage/domain/storage/PreferenceHelper;

    move-result-object v1

    invoke-static {}, Lcom/iMe/storage/data/utils/extentions/DateExtKt;->now()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lcom/iMe/storage/domain/storage/PreferenceHelper;->setLastMarkActivityTime(J)V

    .line 92
    invoke-direct {v0}, Lcom/iMe/utils/helper/NewsAndUserActivityHelper;->getNotificationInteractor()Lcom/iMe/storage/domain/interactor/notification/PushNotificationInteractor;

    move-result-object v1

    .line 93
    invoke-virtual {v1}, Lcom/iMe/storage/domain/interactor/notification/PushNotificationInteractor;->sendActivityMark()Lio/reactivex/Completable;

    move-result-object v1

    .line 94
    invoke-direct {v0}, Lcom/iMe/utils/helper/NewsAndUserActivityHelper;->getSchedulersProvider()Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/reactivex/Completable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v0

    .line 95
    invoke-virtual {v0}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    move-result-object v0

    const-string/jumbo v1, "notificationInteractor\n \u2026             .subscribe()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    sget-object v1, Lcom/iMe/utils/helper/NewsAndUserActivityHelper;->subscriptions:Lio/reactivex/disposables/CompositeDisposable;

    invoke-static {v0, v1}, Lcom/iMe/storage/data/utils/extentions/RxExtKt;->autoDispose(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;)V

    :cond_0
    return-void
.end method

.method public static final onDestroy()V
    .locals 4

    .line 83
    sget-object v0, Lcom/iMe/utils/helper/NewsAndUserActivityHelper;->subscriptions:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->clear()V

    .line 84
    sget-object v0, Lcom/iMe/utils/helper/NewsAndUserActivityHelper;->INSTANCE:Lcom/iMe/utils/helper/NewsAndUserActivityHelper;

    invoke-direct {v0}, Lcom/iMe/utils/helper/NewsAndUserActivityHelper;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget-object v2, Lcom/iMe/utils/helper/NewsAndUserActivityHelper;->loadingMessagesEvents:[I

    sget-object v3, Lcom/iMe/utils/helper/NewsAndUserActivityHelper;->activatingBotEvents:[I

    invoke-static {v2, v3}, Lkotlin/collections/ArraysKt;->plus([I[I)[I

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObservers(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;[I)V

    return-void
.end method

.method private final onSubscribeFlowFinished()V
    .locals 5

    .line 181
    invoke-direct {p0}, Lcom/iMe/utils/helper/NewsAndUserActivityHelper;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget-object v1, Lcom/iMe/utils/helper/NewsAndUserActivityHelper;->activatingBotEvents:[I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObservers(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;[I)V

    .line 182
    sget-boolean v0, Lcom/iMe/utils/helper/NewsAndUserActivityHelper;->isBotMutedByOriginal:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 183
    invoke-direct {p0}, Lcom/iMe/utils/helper/NewsAndUserActivityHelper;->getNotificationsController()Lorg/telegram/messenger/NotificationsController;

    move-result-object v0

    sget-wide v2, Lcom/iMe/utils/helper/NewsAndUserActivityHelper;->newsBotId:J

    invoke-virtual {v0, v2, v3, v1, v1}, Lorg/telegram/messenger/NotificationsController;->muteDialog(JIZ)V

    :cond_0
    sget-object v0, Lcom/iMe/utils/helper/NewsAndUserActivityHelper$$ExternalSyntheticLambda3;->INSTANCE:Lcom/iMe/utils/helper/NewsAndUserActivityHelper$$ExternalSyntheticLambda3;

    .line 192
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0xa

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    .line 185
    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 194
    sput-boolean v1, Lcom/iMe/utils/helper/NewsAndUserActivityHelper;->isSubscribeRunning:Z

    return-void
.end method

.method private static final onSubscribeFlowFinished$lambda$2()V
    .locals 4

    .line 187
    sget-object v0, Lcom/iMe/utils/helper/NewsAndUserActivityHelper;->INSTANCE:Lcom/iMe/utils/helper/NewsAndUserActivityHelper;

    invoke-direct {v0}, Lcom/iMe/utils/helper/NewsAndUserActivityHelper;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    .line 188
    sget-wide v1, Lcom/iMe/utils/helper/NewsAndUserActivityHelper;->newsBotId:J

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->deleteDialog(JI)V

    .line 189
    invoke-virtual {v0, v3}, Lorg/telegram/messenger/MessagesController;->setNewsBotHidden(Z)V

    return-void
.end method

.method private final prepareAndStartSubscribeFlow()V
    .locals 2

    .line 145
    invoke-direct {p0}, Lcom/iMe/utils/helper/NewsAndUserActivityHelper;->getTelegramApi()Lcom/iMe/manager/TelegramApi;

    move-result-object v0

    .line 146
    invoke-static {}, Lcom/iMe/storage/common/AppConfiguration$Bots;->getNewsBotUsername()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/iMe/manager/TelegramApi;->getUserInfoByUsername(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    .line 147
    invoke-direct {p0}, Lcom/iMe/utils/helper/NewsAndUserActivityHelper;->getSchedulersProvider()Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    move-result-object v1

    invoke-interface {v1}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    const-string/jumbo v1, "telegramApi\n            \u2026(schedulersProvider.ui())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/iMe/utils/helper/NewsAndUserActivityHelper$$ExternalSyntheticLambda0;->INSTANCE:Lcom/iMe/utils/helper/NewsAndUserActivityHelper$$ExternalSyntheticLambda0;

    .line 148
    invoke-direct {p0, v0, v1}, Lcom/iMe/utils/helper/NewsAndUserActivityHelper;->subscribeWithCommonErrorHandling(Lio/reactivex/Observable;Lcom/iMe/fork/utils/Callbacks$Callback1;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 155
    sget-object v1, Lcom/iMe/utils/helper/NewsAndUserActivityHelper;->subscriptions:Lio/reactivex/disposables/CompositeDisposable;

    invoke-static {v0, v1}, Lcom/iMe/storage/data/utils/extentions/RxExtKt;->autoDispose(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;)V

    return-void
.end method

.method private static final prepareAndStartSubscribeFlow$lambda$0(Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 150
    sget-object p0, Lcom/iMe/utils/helper/NewsAndUserActivityHelper;->INSTANCE:Lcom/iMe/utils/helper/NewsAndUserActivityHelper;

    invoke-direct {p0}, Lcom/iMe/utils/helper/NewsAndUserActivityHelper;->startAuthFlow()V

    goto :goto_0

    .line 152
    :cond_0
    sget-object p0, Lcom/iMe/utils/helper/NewsAndUserActivityHelper;->INSTANCE:Lcom/iMe/utils/helper/NewsAndUserActivityHelper;

    invoke-direct {p0}, Lcom/iMe/utils/helper/NewsAndUserActivityHelper;->onSubscribeFlowFinished()V

    :goto_0
    return-void
.end method

.method private final startAuthFlow()V
    .locals 17

    .line 159
    sget-boolean v0, Lcom/iMe/utils/helper/NewsAndUserActivityHelper;->isSubscribeRunning:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 162
    sput-boolean v0, Lcom/iMe/utils/helper/NewsAndUserActivityHelper;->isSubscribeRunning:Z

    .line 164
    invoke-direct/range {p0 .. p0}, Lcom/iMe/utils/helper/NewsAndUserActivityHelper;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    sget-wide v3, Lcom/iMe/utils/helper/NewsAndUserActivityHelper;->newsBotId:J

    const/4 v2, 0x0

    invoke-virtual {v1, v3, v4, v2}, Lorg/telegram/messenger/MessagesController;->isDialogMuted(JI)Z

    move-result v1

    sput-boolean v1, Lcom/iMe/utils/helper/NewsAndUserActivityHelper;->isBotMutedByOriginal:Z

    .line 165
    invoke-direct/range {p0 .. p0}, Lcom/iMe/utils/helper/NewsAndUserActivityHelper;->getNotificationsController()Lorg/telegram/messenger/NotificationsController;

    move-result-object v1

    invoke-virtual {v1, v3, v4, v2, v0}, Lorg/telegram/messenger/NotificationsController;->muteDialog(JIZ)V

    .line 166
    invoke-direct/range {p0 .. p0}, Lcom/iMe/utils/helper/NewsAndUserActivityHelper;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/MessagesController;->setNewsBotHidden(Z)V

    .line 167
    invoke-direct/range {p0 .. p0}, Lcom/iMe/utils/helper/NewsAndUserActivityHelper;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget-object v1, Lcom/iMe/utils/helper/NewsAndUserActivityHelper;->activatingBotEvents:[I

    move-object/from16 v15, p0

    invoke-virtual {v0, v15, v1}, Lorg/telegram/messenger/NotificationCenter;->addObservers(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;[I)V

    .line 169
    invoke-direct/range {p0 .. p0}, Lcom/iMe/utils/helper/NewsAndUserActivityHelper;->getSendMessagesHelper()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v1, 0x0

    const/16 v16, 0x0

    const-string v2, "/start"

    move v15, v1

    .line 170
    invoke-static/range {v2 .. v16}, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->of(Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$WebPage;ZLjava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;ZILorg/telegram/messenger/MessageObject$SendAnimationData;ZLjava/lang/String;)Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;

    move-result-object v1

    .line 169
    invoke-virtual {v0, v1}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;)V

    return-void
.end method

.method public static final subscribeToBot(I)V
    .locals 3

    .line 67
    sget-object v0, Lcom/iMe/utils/helper/NewsAndUserActivityHelper;->INSTANCE:Lcom/iMe/utils/helper/NewsAndUserActivityHelper;

    sput p0, Lcom/iMe/utils/helper/NewsAndUserActivityHelper;->currentAccountIndex:I

    .line 68
    invoke-direct {v0}, Lcom/iMe/utils/helper/NewsAndUserActivityHelper;->getPreferenceHelper()Lcom/iMe/storage/domain/storage/PreferenceHelper;

    move-result-object p0

    invoke-interface {p0}, Lcom/iMe/storage/domain/storage/PreferenceHelper;->isNewsBotActivated()Z

    move-result p0

    if-nez p0, :cond_1

    .line 69
    sget-boolean p0, Lcom/iMe/utils/helper/NewsAndUserActivityHelper;->isPreparationRunning:Z

    if-nez p0, :cond_1

    .line 70
    sget-object p0, Lcom/iMe/utils/helper/AuthHelper;->INSTANCE:Lcom/iMe/utils/helper/AuthHelper;

    invoke-virtual {p0}, Lcom/iMe/utils/helper/AuthHelper;->isAuthProcessing()Z

    move-result p0

    if-nez p0, :cond_1

    .line 72
    invoke-direct {v0}, Lcom/iMe/utils/helper/NewsAndUserActivityHelper;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p0

    iget-object p0, p0, Lorg/telegram/messenger/MessagesController;->blockePeers:Lorg/telegram/messenger/support/LongSparseIntArray;

    sget-wide v1, Lcom/iMe/utils/helper/NewsAndUserActivityHelper;->newsBotId:J

    invoke-virtual {p0, v1, v2}, Lorg/telegram/messenger/support/LongSparseIntArray;->indexOfKey(J)I

    move-result p0

    const/4 v1, 0x1

    if-ltz p0, :cond_0

    .line 73
    invoke-direct {v0}, Lcom/iMe/utils/helper/NewsAndUserActivityHelper;->getPreferenceHelper()Lcom/iMe/storage/domain/storage/PreferenceHelper;

    move-result-object p0

    invoke-interface {p0, v1}, Lcom/iMe/storage/domain/storage/PreferenceHelper;->setNewsBotActivated(Z)V

    goto :goto_0

    .line 75
    :cond_0
    sput-boolean v1, Lcom/iMe/utils/helper/NewsAndUserActivityHelper;->isPreparationRunning:Z

    .line 76
    invoke-direct {v0}, Lcom/iMe/utils/helper/NewsAndUserActivityHelper;->loadBotMessages()V

    :cond_1
    :goto_0
    return-void
.end method

.method private final subscribeWithCommonErrorHandling(Lio/reactivex/Observable;Lcom/iMe/fork/utils/Callbacks$Callback1;)Lio/reactivex/disposables/Disposable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/Observable<",
            "TT;>;",
            "Lcom/iMe/fork/utils/Callbacks$Callback1<",
            "TT;>;)",
            "Lio/reactivex/disposables/Disposable;"
        }
    .end annotation

    .line 198
    new-instance v0, Lcom/iMe/utils/helper/NewsAndUserActivityHelper$subscribeWithCommonErrorHandling$1;

    invoke-direct {v0, p2}, Lcom/iMe/utils/helper/NewsAndUserActivityHelper$subscribeWithCommonErrorHandling$1;-><init>(Lcom/iMe/fork/utils/Callbacks$Callback1;)V

    .line 199
    new-instance p2, Lcom/iMe/utils/helper/NewsAndUserActivityHelper$$ExternalSyntheticLambda1;

    invoke-direct {p2, v0}, Lcom/iMe/utils/helper/NewsAndUserActivityHelper$$ExternalSyntheticLambda1;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 198
    sget-object v0, Lcom/iMe/utils/helper/NewsAndUserActivityHelper$subscribeWithCommonErrorHandling$2;->INSTANCE:Lcom/iMe/utils/helper/NewsAndUserActivityHelper$subscribeWithCommonErrorHandling$2;

    .line 200
    new-instance v1, Lcom/iMe/utils/helper/NewsAndUserActivityHelper$$ExternalSyntheticLambda2;

    invoke-direct {v1, v0}, Lcom/iMe/utils/helper/NewsAndUserActivityHelper$$ExternalSyntheticLambda2;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 198
    invoke-virtual {p1, p2, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string/jumbo p2, "onSuccess: Callbacks.Cal\u2026)\n            }\n        )"

    .line 200
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private static final subscribeWithCommonErrorHandling$lambda$3(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 199
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final subscribeWithCommonErrorHandling$lambda$4(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 200
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 3

    const-string p2, "args"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    sget p2, Lorg/telegram/messenger/NotificationCenter;->didReceiveNewMessages:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p2, :cond_1

    .line 103
    aget-object p1, p3, v1

    check-cast p1, Ljava/lang/Long;

    sget-wide p2, Lcom/iMe/utils/helper/NewsAndUserActivityHelper;->newsBotId:J

    if-nez p1, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long p1, v1, p2

    if-nez p1, :cond_d

    .line 104
    invoke-direct {p0}, Lcom/iMe/utils/helper/NewsAndUserActivityHelper;->getPreferenceHelper()Lcom/iMe/storage/domain/storage/PreferenceHelper;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/iMe/storage/domain/storage/PreferenceHelper;->setNewsBotActivated(Z)V

    .line 105
    invoke-direct {p0}, Lcom/iMe/utils/helper/NewsAndUserActivityHelper;->onSubscribeFlowFinished()V

    goto/16 :goto_1

    .line 109
    :cond_1
    sget p2, Lorg/telegram/messenger/NotificationCenter;->messageSendError:I

    if-ne p1, p2, :cond_3

    .line 110
    aget-object p1, p3, v1

    check-cast p1, Ljava/lang/Long;

    sget-wide p2, Lcom/iMe/utils/helper/NewsAndUserActivityHelper;->newsBotId:J

    if-nez p1, :cond_2

    goto/16 :goto_1

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long p1, v0, p2

    if-nez p1, :cond_d

    .line 111
    invoke-direct {p0}, Lcom/iMe/utils/helper/NewsAndUserActivityHelper;->onSubscribeFlowFinished()V

    goto :goto_1

    .line 115
    :cond_3
    sget p2, Lorg/telegram/messenger/NotificationCenter;->messagesDidLoad:I

    const/4 v2, 0x0

    if-ne p1, p2, :cond_a

    const/16 p1, 0xa

    .line 116
    aget-object p1, p3, p1

    instance-of p2, p1, Ljava/lang/Integer;

    if-eqz p2, :cond_4

    check-cast p1, Ljava/lang/Integer;

    goto :goto_0

    :cond_4
    move-object p1, v2

    :goto_0
    sget p2, Lcom/iMe/utils/helper/NewsAndUserActivityHelper;->classGuid:I

    if-nez p1, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, p2, :cond_d

    .line 117
    invoke-direct {p0}, Lcom/iMe/utils/helper/NewsAndUserActivityHelper;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget-object p2, Lcom/iMe/utils/helper/NewsAndUserActivityHelper;->loadingMessagesEvents:[I

    invoke-virtual {p1, p0, p2}, Lorg/telegram/messenger/NotificationCenter;->removeObservers(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;[I)V

    const/4 p1, 0x2

    .line 118
    aget-object p1, p3, p1

    instance-of p2, p1, Ljava/util/List;

    if-eqz p2, :cond_6

    move-object v2, p1

    check-cast v2, Ljava/util/List;

    :cond_6
    if-eqz v2, :cond_7

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_8

    :cond_7
    move v1, v0

    :cond_8
    if-eqz v1, :cond_9

    .line 119
    invoke-direct {p0}, Lcom/iMe/utils/helper/NewsAndUserActivityHelper;->prepareAndStartSubscribeFlow()V

    goto :goto_1

    .line 121
    :cond_9
    invoke-direct {p0}, Lcom/iMe/utils/helper/NewsAndUserActivityHelper;->getPreferenceHelper()Lcom/iMe/storage/domain/storage/PreferenceHelper;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/iMe/storage/domain/storage/PreferenceHelper;->setNewsBotActivated(Z)V

    goto :goto_1

    .line 126
    :cond_a
    sget p2, Lorg/telegram/messenger/NotificationCenter;->loadingMessagesFailed:I

    if-ne p1, p2, :cond_d

    .line 127
    aget-object p1, p3, v1

    instance-of p2, p1, Ljava/lang/Integer;

    if-eqz p2, :cond_b

    move-object v2, p1

    check-cast v2, Ljava/lang/Integer;

    :cond_b
    sget p1, Lcom/iMe/utils/helper/NewsAndUserActivityHelper;->classGuid:I

    if-nez v2, :cond_c

    goto :goto_1

    :cond_c
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ne p2, p1, :cond_d

    .line 128
    invoke-direct {p0}, Lcom/iMe/utils/helper/NewsAndUserActivityHelper;->prepareAndStartSubscribeFlow()V

    :cond_d
    :goto_1
    return-void
.end method

.method public getKoin()Lorg/koin/core/Koin;
    .locals 1

    .line 30
    invoke-static {p0}, Lorg/koin/core/component/KoinComponent$DefaultImpls;->getKoin(Lorg/koin/core/component/KoinComponent;)Lorg/koin/core/Koin;

    move-result-object v0

    return-object v0
.end method
