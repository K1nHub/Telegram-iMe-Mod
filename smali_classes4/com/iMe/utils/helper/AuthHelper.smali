.class public final Lcom/iMe/utils/helper/AuthHelper;
.super Ljava/lang/Object;
.source "AuthHelper.kt"

# interfaces
.implements Lorg/koin/core/component/KoinComponent;
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/utils/helper/AuthHelper$Delegate;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAuthHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AuthHelper.kt\ncom/iMe/utils/helper/AuthHelper\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 RxExt.kt\ncom/iMe/utils/extentions/rx/RxExtKt\n+ 4 ObservableExt.kt\ncom/iMe/storage/domain/utils/extensions/ObservableExtKt\n+ 5 ResultExt.kt\ncom/iMe/storage/domain/utils/extensions/ResultExtKt\n+ 6 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n*L\n1#1,297:1\n800#2,11:298\n766#2:309\n857#2,2:310\n288#2,2:312\n106#3,12:314\n16#4,7:326\n15#5:333\n56#6,6:334\n56#6,6:340\n56#6,6:346\n56#6,6:352\n56#6,6:358\n56#6,6:364\n*S KotlinDebug\n*F\n+ 1 AuthHelper.kt\ncom/iMe/utils/helper/AuthHelper\n*L\n112#1:298,11\n115#1:309\n115#1:310,2\n118#1:312,2\n130#1:314,12\n218#1:326,7\n160#1:333\n42#1:334,6\n43#1:340,6\n44#1:346,6\n45#1:352,6\n46#1:358,6\n47#1:364,6\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/iMe/utils/helper/AuthHelper;

.field private static final authBotId:J

.field private static final authSubject:Lio/reactivex/subjects/PublishSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/PublishSubject<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Lorg/telegram/tgnet/TLRPC$TL_messages_requestUrlAuth;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private static currentAccountIndex:I

.field private static delegate:Lcom/iMe/utils/helper/AuthHelper$Delegate;

.field private static isAuthProcessing:Z

.field private static isAuthVisible:Z

.field private static isBotMutedByOriginal:Z

.field private static final remoteConfigInteractor$delegate:Lkotlin/Lazy;

.field private static final resourceManager$delegate:Lkotlin/Lazy;

.field private static final schedulersProvider$delegate:Lkotlin/Lazy;

.field private static final sessionInteractor$delegate:Lkotlin/Lazy;

.field private static final subscriptions:Lio/reactivex/disposables/CompositeDisposable;

.field private static final telegramApi$delegate:Lkotlin/Lazy;

.field private static final telegramControllersGateway$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$2-EHAr5N5adHaT6JJbgHOFXgJjY(Lcom/iMe/storage/domain/model/Result;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/utils/helper/AuthHelper;->subscribeToAuthSubject$lambda$7(Lcom/iMe/storage/domain/model/Result;)V

    return-void
.end method

.method public static synthetic $r8$lambda$2KxAneimD1NwkqiFlUGmSZiYqOA()V
    .locals 0

    invoke-static {}, Lcom/iMe/utils/helper/AuthHelper;->withLoadingDialog$lambda$10()V

    return-void
.end method

.method public static synthetic $r8$lambda$Uiw5q3jWyNCETMO4Muz8R_BAhIA()V
    .locals 0

    invoke-static {}, Lcom/iMe/utils/helper/AuthHelper;->prepareAndStartAuthFlow$lambda$5$lambda$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$VPwwAdYAd0KtkRsUb9NgG7m0j_E(Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_messages_requestUrlAuth;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/utils/helper/AuthHelper;->runAuthButtonAction$lambda$3(Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_messages_requestUrlAuth;)V

    return-void
.end method

.method public static synthetic $r8$lambda$t1TWGpfh9V2CpbxSU7lbOCyrmWw(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/utils/helper/AuthHelper;->subscribeWithCommonErrorHandling$lambda$11(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tICeL47sbtHGkhDsTKp4qijh9X4(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/utils/helper/AuthHelper;->withLoadingDialog$lambda$9(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xhhSSYZVT38YRLOSsxI7w2zuY5U(Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/utils/helper/AuthHelper;->prepareAndStartAuthFlow$lambda$5(Lorg/telegram/tgnet/TLRPC$User;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yfuG5zyIl7a0EquD45lHYwcT2QI(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/utils/helper/AuthHelper;->subscribeWithCommonErrorHandling$lambda$12(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/iMe/utils/helper/AuthHelper;

    invoke-direct {v0}, Lcom/iMe/utils/helper/AuthHelper;-><init>()V

    sput-object v0, Lcom/iMe/utils/helper/AuthHelper;->INSTANCE:Lcom/iMe/utils/helper/AuthHelper;

    .line 58
    sget-object v1, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {v1}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object v2

    .line 61
    new-instance v3, Lcom/iMe/utils/helper/AuthHelper$special$$inlined$inject$default$1;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4, v4}, Lcom/iMe/utils/helper/AuthHelper$special$$inlined$inject$default$1;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {v2, v3}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v2

    .line 42
    sput-object v2, Lcom/iMe/utils/helper/AuthHelper;->remoteConfigInteractor$delegate:Lkotlin/Lazy;

    .line 58
    invoke-virtual {v1}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object v2

    .line 61
    new-instance v3, Lcom/iMe/utils/helper/AuthHelper$special$$inlined$inject$default$2;

    invoke-direct {v3, v0, v4, v4}, Lcom/iMe/utils/helper/AuthHelper$special$$inlined$inject$default$2;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {v2, v3}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v2

    .line 43
    sput-object v2, Lcom/iMe/utils/helper/AuthHelper;->resourceManager$delegate:Lkotlin/Lazy;

    .line 58
    invoke-virtual {v1}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object v2

    .line 61
    new-instance v3, Lcom/iMe/utils/helper/AuthHelper$special$$inlined$inject$default$3;

    invoke-direct {v3, v0, v4, v4}, Lcom/iMe/utils/helper/AuthHelper$special$$inlined$inject$default$3;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {v2, v3}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v2

    .line 44
    sput-object v2, Lcom/iMe/utils/helper/AuthHelper;->schedulersProvider$delegate:Lkotlin/Lazy;

    .line 58
    invoke-virtual {v1}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object v2

    .line 61
    new-instance v3, Lcom/iMe/utils/helper/AuthHelper$special$$inlined$inject$default$4;

    invoke-direct {v3, v0, v4, v4}, Lcom/iMe/utils/helper/AuthHelper$special$$inlined$inject$default$4;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {v2, v3}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v2

    .line 45
    sput-object v2, Lcom/iMe/utils/helper/AuthHelper;->telegramApi$delegate:Lkotlin/Lazy;

    .line 58
    invoke-virtual {v1}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object v2

    .line 61
    new-instance v3, Lcom/iMe/utils/helper/AuthHelper$special$$inlined$inject$default$5;

    invoke-direct {v3, v0, v4, v4}, Lcom/iMe/utils/helper/AuthHelper$special$$inlined$inject$default$5;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {v2, v3}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v2

    .line 46
    sput-object v2, Lcom/iMe/utils/helper/AuthHelper;->telegramControllersGateway$delegate:Lkotlin/Lazy;

    .line 58
    invoke-virtual {v1}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object v1

    .line 61
    new-instance v2, Lcom/iMe/utils/helper/AuthHelper$special$$inlined$inject$default$6;

    invoke-direct {v2, v0, v4, v4}, Lcom/iMe/utils/helper/AuthHelper$special$$inlined$inject$default$6;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {v1, v2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 47
    sput-object v0, Lcom/iMe/utils/helper/AuthHelper;->sessionInteractor$delegate:Lkotlin/Lazy;

    .line 50
    invoke-static {}, Lio/reactivex/subjects/PublishSubject;->create()Lio/reactivex/subjects/PublishSubject;

    move-result-object v0

    const-string v1, "create()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/iMe/utils/helper/AuthHelper;->authSubject:Lio/reactivex/subjects/PublishSubject;

    .line 51
    invoke-static {}, Lcom/iMe/storage/common/AppConfiguration$Bots;->getAuthBotId()J

    move-result-wide v0

    sput-wide v0, Lcom/iMe/utils/helper/AuthHelper;->authBotId:J

    .line 52
    new-instance v0, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    sput-object v0, Lcom/iMe/utils/helper/AuthHelper;->subscriptions:Lio/reactivex/disposables/CompositeDisposable;

    const/4 v0, -0x1

    .line 66
    sput v0, Lcom/iMe/utils/helper/AuthHelper;->currentAccountIndex:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getDelegate$p()Lcom/iMe/utils/helper/AuthHelper$Delegate;
    .locals 1

    .line 37
    sget-object v0, Lcom/iMe/utils/helper/AuthHelper;->delegate:Lcom/iMe/utils/helper/AuthHelper$Delegate;

    return-object v0
.end method

.method public static final synthetic access$getSessionInteractor(Lcom/iMe/utils/helper/AuthHelper;)Lcom/iMe/storage/domain/interactor/wallet/SessionInteractor;
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/iMe/utils/helper/AuthHelper;->getSessionInteractor()Lcom/iMe/storage/domain/interactor/wallet/SessionInteractor;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getTelegramApi(Lcom/iMe/utils/helper/AuthHelper;)Lcom/iMe/manager/TelegramApi;
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/iMe/utils/helper/AuthHelper;->getTelegramApi()Lcom/iMe/manager/TelegramApi;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$onAuthFlowFinished(Lcom/iMe/utils/helper/AuthHelper;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/iMe/utils/helper/AuthHelper;->onAuthFlowFinished()V

    return-void
.end method

.method public static final synthetic access$onError(Lcom/iMe/utils/helper/AuthHelper;Ljava/lang/String;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/iMe/utils/helper/AuthHelper;->onError(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$prepareAndStartAuthFlow(Lcom/iMe/utils/helper/AuthHelper;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/iMe/utils/helper/AuthHelper;->prepareAndStartAuthFlow()V

    return-void
.end method

.method public static final synthetic access$setAuthProcessing$p(Z)V
    .locals 0

    .line 37
    sput-boolean p0, Lcom/iMe/utils/helper/AuthHelper;->isAuthProcessing:Z

    return-void
.end method

.method public static final auth(Lcom/iMe/utils/helper/AuthHelper$Delegate;ZI)V
    .locals 1

    const-string v0, "delegate"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    sget-object v0, Lcom/iMe/utils/helper/AuthHelper;->INSTANCE:Lcom/iMe/utils/helper/AuthHelper;

    sput-object p0, Lcom/iMe/utils/helper/AuthHelper;->delegate:Lcom/iMe/utils/helper/AuthHelper$Delegate;

    .line 75
    sput-boolean p1, Lcom/iMe/utils/helper/AuthHelper;->isAuthVisible:Z

    .line 76
    sput p2, Lcom/iMe/utils/helper/AuthHelper;->currentAccountIndex:I

    const/4 p0, 0x1

    .line 77
    sput-boolean p0, Lcom/iMe/utils/helper/AuthHelper;->isAuthProcessing:Z

    .line 79
    invoke-direct {v0}, Lcom/iMe/utils/helper/AuthHelper;->subscribeToAuthSubject()V

    if-eqz p1, :cond_0

    .line 81
    invoke-direct {v0}, Lcom/iMe/utils/helper/AuthHelper;->prepareAndStartAuthFlow()V

    goto :goto_0

    .line 83
    :cond_0
    invoke-direct {v0}, Lcom/iMe/utils/helper/AuthHelper;->runHiddenAuthWithRemoteConfigCheck()V

    :goto_0
    return-void
.end method

.method public static synthetic auth$default(Lcom/iMe/utils/helper/AuthHelper$Delegate;ZIILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_0

    const/4 p2, -0x1

    .line 69
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/iMe/utils/helper/AuthHelper;->auth(Lcom/iMe/utils/helper/AuthHelper$Delegate;ZI)V

    return-void
.end method

.method private final getMessageObjectButton(Lorg/telegram/messenger/MessageObject;)Lorg/telegram/tgnet/TLRPC$KeyboardButton;
    .locals 0

    if-eqz p1, :cond_0

    .line 169
    iget-object p1, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Message;->reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$ReplyMarkup;->rows:Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonRow;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonRow;->buttons:Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$KeyboardButton;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private final getMessagesController()Lorg/telegram/messenger/MessagesController;
    .locals 2

    .line 54
    invoke-direct {p0}, Lcom/iMe/utils/helper/AuthHelper;->getTelegramControllersGateway()Lcom/iMe/gateway/TelegramControllersGateway;

    move-result-object v0

    sget v1, Lcom/iMe/utils/helper/AuthHelper;->currentAccountIndex:I

    invoke-interface {v0, v1}, Lcom/iMe/gateway/TelegramControllersGateway;->getMessagesController(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    return-object v0
.end method

.method private final getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;
    .locals 2

    .line 56
    invoke-direct {p0}, Lcom/iMe/utils/helper/AuthHelper;->getTelegramControllersGateway()Lcom/iMe/gateway/TelegramControllersGateway;

    move-result-object v0

    sget v1, Lcom/iMe/utils/helper/AuthHelper;->currentAccountIndex:I

    invoke-interface {v0, v1}, Lcom/iMe/gateway/TelegramControllersGateway;->getNotificationCenterInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    return-object v0
.end method

.method private final getNotificationsController()Lorg/telegram/messenger/NotificationsController;
    .locals 2

    .line 58
    invoke-direct {p0}, Lcom/iMe/utils/helper/AuthHelper;->getTelegramControllersGateway()Lcom/iMe/gateway/TelegramControllersGateway;

    move-result-object v0

    sget v1, Lcom/iMe/utils/helper/AuthHelper;->currentAccountIndex:I

    invoke-interface {v0, v1}, Lcom/iMe/gateway/TelegramControllersGateway;->getNotificationsController(I)Lorg/telegram/messenger/NotificationsController;

    move-result-object v0

    return-object v0
.end method

.method private final getRemoteConfigInteractor()Lcom/iMe/storage/domain/interactor/firebase/RemoteConfigInteractor;
    .locals 1

    .line 42
    sget-object v0, Lcom/iMe/utils/helper/AuthHelper;->remoteConfigInteractor$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/storage/domain/interactor/firebase/RemoteConfigInteractor;

    return-object v0
.end method

.method private final getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;
    .locals 1

    .line 43
    sget-object v0, Lcom/iMe/utils/helper/AuthHelper;->resourceManager$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/storage/domain/utils/system/ResourceManager;

    return-object v0
.end method

.method private final getSchedulersProvider()Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;
    .locals 1

    .line 44
    sget-object v0, Lcom/iMe/utils/helper/AuthHelper;->schedulersProvider$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    return-object v0
.end method

.method private final getSendMessagesHelper()Lorg/telegram/messenger/SendMessagesHelper;
    .locals 2

    .line 60
    invoke-direct {p0}, Lcom/iMe/utils/helper/AuthHelper;->getTelegramControllersGateway()Lcom/iMe/gateway/TelegramControllersGateway;

    move-result-object v0

    sget v1, Lcom/iMe/utils/helper/AuthHelper;->currentAccountIndex:I

    invoke-interface {v0, v1}, Lcom/iMe/gateway/TelegramControllersGateway;->getSendMessagesHelper(I)Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v0

    return-object v0
.end method

.method private final getSessionInteractor()Lcom/iMe/storage/domain/interactor/wallet/SessionInteractor;
    .locals 1

    .line 47
    sget-object v0, Lcom/iMe/utils/helper/AuthHelper;->sessionInteractor$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/storage/domain/interactor/wallet/SessionInteractor;

    return-object v0
.end method

.method private final getTelegramApi()Lcom/iMe/manager/TelegramApi;
    .locals 1

    .line 45
    sget-object v0, Lcom/iMe/utils/helper/AuthHelper;->telegramApi$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/manager/TelegramApi;

    return-object v0
.end method

.method private final getTelegramControllersGateway()Lcom/iMe/gateway/TelegramControllersGateway;
    .locals 1

    .line 46
    sget-object v0, Lcom/iMe/utils/helper/AuthHelper;->telegramControllersGateway$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/gateway/TelegramControllersGateway;

    return-object v0
.end method

.method private final isAuthBotBlocked()Z
    .locals 3

    .line 62
    invoke-direct {p0}, Lcom/iMe/utils/helper/AuthHelper;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->blockePeers:Lorg/telegram/messenger/support/LongSparseIntArray;

    sget-wide v1, Lcom/iMe/utils/helper/AuthHelper;->authBotId:J

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/support/LongSparseIntArray;->indexOfKey(J)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final manualAuth(Lcom/iMe/utils/helper/AuthHelper$Delegate;ZILorg/telegram/messenger/MessageObject;)V
    .locals 1

    const-string v0, "delegate"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "botAuthButtonMessage"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    sget-object v0, Lcom/iMe/utils/helper/AuthHelper;->INSTANCE:Lcom/iMe/utils/helper/AuthHelper;

    sput-object p0, Lcom/iMe/utils/helper/AuthHelper;->delegate:Lcom/iMe/utils/helper/AuthHelper$Delegate;

    .line 101
    sput-boolean p1, Lcom/iMe/utils/helper/AuthHelper;->isAuthVisible:Z

    .line 102
    sput p2, Lcom/iMe/utils/helper/AuthHelper;->currentAccountIndex:I

    .line 104
    invoke-direct {v0}, Lcom/iMe/utils/helper/AuthHelper;->subscribeToAuthSubject()V

    const/4 p0, 0x1

    .line 105
    invoke-direct {v0, p3, p0}, Lcom/iMe/utils/helper/AuthHelper;->runAuthButtonAction(Lorg/telegram/messenger/MessageObject;Z)V

    return-void
.end method

.method public static synthetic manualAuth$default(Lcom/iMe/utils/helper/AuthHelper$Delegate;ZILorg/telegram/messenger/MessageObject;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p2, -0x1

    .line 94
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/iMe/utils/helper/AuthHelper;->manualAuth(Lcom/iMe/utils/helper/AuthHelper$Delegate;ZILorg/telegram/messenger/MessageObject;)V

    return-void
.end method

.method private final onAuthFlowFinished()V
    .locals 7

    .line 255
    sget-boolean v0, Lcom/iMe/utils/helper/AuthHelper;->isBotMutedByOriginal:Z

    if-nez v0, :cond_0

    .line 256
    invoke-direct {p0}, Lcom/iMe/utils/helper/AuthHelper;->getNotificationsController()Lorg/telegram/messenger/NotificationsController;

    move-result-object v1

    sget-wide v2, Lcom/iMe/utils/helper/AuthHelper;->authBotId:J

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/messenger/NotificationsController;->muteDialog(JJZ)V

    .line 258
    :cond_0
    invoke-direct {p0}, Lcom/iMe/utils/helper/AuthHelper;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    .line 259
    sget-wide v1, Lcom/iMe/utils/helper/AuthHelper;->authBotId:J

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->deleteDialog(JI)V

    .line 260
    invoke-virtual {v0, v3}, Lorg/telegram/messenger/MessagesController;->setAuthBotHidden(Z)V

    .line 263
    sget-object v0, Lcom/iMe/utils/helper/AuthHelper;->delegate:Lcom/iMe/utils/helper/AuthHelper$Delegate;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/iMe/utils/helper/AuthHelper$Delegate;->hideLoadingDialog()V

    .line 264
    :cond_1
    sget-object v0, Lcom/iMe/utils/helper/AuthHelper;->subscriptions:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->clear()V

    return-void
.end method

.method public static final onDestroy()V
    .locals 1

    .line 89
    sget-object v0, Lcom/iMe/utils/helper/AuthHelper;->subscriptions:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->clear()V

    const/4 v0, 0x0

    .line 90
    sput-object v0, Lcom/iMe/utils/helper/AuthHelper;->delegate:Lcom/iMe/utils/helper/AuthHelper$Delegate;

    return-void
.end method

.method private final onError(Ljava/lang/String;)V
    .locals 1

    .line 247
    invoke-direct {p0}, Lcom/iMe/utils/helper/AuthHelper;->onAuthFlowFinished()V

    const/4 v0, 0x0

    .line 248
    sput-boolean v0, Lcom/iMe/utils/helper/AuthHelper;->isAuthProcessing:Z

    .line 249
    sget-boolean v0, Lcom/iMe/utils/helper/AuthHelper;->isAuthVisible:Z

    if-eqz v0, :cond_0

    .line 250
    sget-object v0, Lcom/iMe/utils/helper/AuthHelper;->delegate:Lcom/iMe/utils/helper/AuthHelper$Delegate;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/iMe/utils/helper/AuthHelper$Delegate;->showToast(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic onError$default(Lcom/iMe/utils/helper/AuthHelper;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 246
    invoke-direct {p0}, Lcom/iMe/utils/helper/AuthHelper;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$string;->common_error_unexpected:I

    invoke-interface {p1, p2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object p1

    :cond_0
    invoke-direct {p0, p1}, Lcom/iMe/utils/helper/AuthHelper;->onError(Ljava/lang/String;)V

    return-void
.end method

.method private final prepareAndStartAuthFlow()V
    .locals 2

    .line 172
    invoke-direct {p0}, Lcom/iMe/utils/helper/AuthHelper;->getTelegramApi()Lcom/iMe/manager/TelegramApi;

    move-result-object v0

    .line 173
    invoke-static {}, Lcom/iMe/storage/common/AppConfiguration$Bots;->getAuthBotUsername()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/iMe/manager/TelegramApi;->getUserInfoByUsername(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    .line 174
    invoke-direct {p0}, Lcom/iMe/utils/helper/AuthHelper;->getSchedulersProvider()Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    move-result-object v1

    invoke-interface {v1}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    const-string/jumbo v1, "telegramApi\n            \u2026(schedulersProvider.ui())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/iMe/utils/helper/AuthHelper$$ExternalSyntheticLambda1;->INSTANCE:Lcom/iMe/utils/helper/AuthHelper$$ExternalSyntheticLambda1;

    .line 175
    invoke-direct {p0, v0, v1}, Lcom/iMe/utils/helper/AuthHelper;->subscribeWithCommonErrorHandling(Lio/reactivex/Observable;Lcom/iMe/fork/utils/Callbacks$Callback1;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 192
    sget-object v1, Lcom/iMe/utils/helper/AuthHelper;->subscriptions:Lio/reactivex/disposables/CompositeDisposable;

    invoke-static {v0, v1}, Lcom/iMe/storage/data/utils/extentions/RxExtKt;->autoDispose(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;)V

    return-void
.end method

.method private static final prepareAndStartAuthFlow$lambda$5(Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 3

    if-eqz p0, :cond_1

    .line 177
    sget-object p0, Lcom/iMe/utils/helper/AuthHelper;->INSTANCE:Lcom/iMe/utils/helper/AuthHelper;

    invoke-direct {p0}, Lcom/iMe/utils/helper/AuthHelper;->isAuthBotBlocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    invoke-direct {p0}, Lcom/iMe/utils/helper/AuthHelper;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p0

    sget-wide v0, Lcom/iMe/utils/helper/AuthHelper;->authBotId:J

    sget-object v2, Lcom/iMe/utils/helper/AuthHelper$$ExternalSyntheticLambda7;->INSTANCE:Lcom/iMe/utils/helper/AuthHelper$$ExternalSyntheticLambda7;

    invoke-virtual {p0, v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->unblockPeer(JLjava/lang/Runnable;)V

    goto :goto_0

    .line 186
    :cond_0
    invoke-direct {p0}, Lcom/iMe/utils/helper/AuthHelper;->startAuthFlow()V

    goto :goto_0

    .line 189
    :cond_1
    sget-object p0, Lcom/iMe/utils/helper/AuthHelper;->INSTANCE:Lcom/iMe/utils/helper/AuthHelper;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1}, Lcom/iMe/utils/helper/AuthHelper;->onError$default(Lcom/iMe/utils/helper/AuthHelper;Ljava/lang/String;ILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private static final prepareAndStartAuthFlow$lambda$5$lambda$4()V
    .locals 3

    .line 179
    sget-object v0, Lcom/iMe/utils/helper/AuthHelper;->INSTANCE:Lcom/iMe/utils/helper/AuthHelper;

    invoke-direct {v0}, Lcom/iMe/utils/helper/AuthHelper;->isAuthBotBlocked()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 180
    invoke-static {v0, v2, v1, v2}, Lcom/iMe/utils/helper/AuthHelper;->onError$default(Lcom/iMe/utils/helper/AuthHelper;Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_0

    .line 182
    :cond_0
    invoke-direct {v0}, Lcom/iMe/utils/helper/AuthHelper;->startAuthFlow()V

    :goto_0
    return-void
.end method

.method private final runAuthButtonAction(Lorg/telegram/messenger/MessageObject;Z)V
    .locals 8

    .line 147
    invoke-direct {p0, p1}, Lcom/iMe/utils/helper/AuthHelper;->getMessageObjectButton(Lorg/telegram/messenger/MessageObject;)Lorg/telegram/tgnet/TLRPC$KeyboardButton;

    move-result-object v3

    if-eqz v3, :cond_1

    if-nez p2, :cond_0

    .line 151
    invoke-direct {p0}, Lcom/iMe/utils/helper/AuthHelper;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p2

    .line 153
    sget v0, Lorg/telegram/messenger/NotificationCenter;->didReceiveNewMessages:I

    .line 151
    invoke-virtual {p2, p0, v0}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 156
    :cond_0
    invoke-direct {p0}, Lcom/iMe/utils/helper/AuthHelper;->getSendMessagesHelper()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 158
    sget-object v7, Lcom/iMe/utils/helper/AuthHelper$$ExternalSyntheticLambda2;->INSTANCE:Lcom/iMe/utils/helper/AuthHelper$$ExternalSyntheticLambda2;

    move-object v2, p1

    .line 156
    invoke-virtual/range {v0 .. v7}, Lorg/telegram/messenger/SendMessagesHelper;->sendCallback(ZLorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$KeyboardButton;Lorg/telegram/tgnet/TLRPC$InputCheckPasswordSRP;Lorg/telegram/ui/TwoStepVerificationActivity;Lorg/telegram/ui/ChatActivity;Lcom/iMe/fork/utils/Callbacks$Callback2;)V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    const/4 p1, 0x1

    const/4 p2, 0x0

    .line 164
    invoke-static {p0, p2, p1, p2}, Lcom/iMe/utils/helper/AuthHelper;->onError$default(Lcom/iMe/utils/helper/AuthHelper;Ljava/lang/String;ILjava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private static final runAuthButtonAction$lambda$3(Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_messages_requestUrlAuth;)V
    .locals 1

    .line 160
    sget-object v0, Lcom/iMe/utils/helper/AuthHelper;->authSubject:Lio/reactivex/subjects/PublishSubject;

    invoke-static {p0, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    .line 15
    sget-object p1, Lcom/iMe/storage/domain/model/Result;->Companion:Lcom/iMe/storage/domain/model/Result$Companion;

    invoke-virtual {p1, p0}, Lcom/iMe/storage/domain/model/Result$Companion;->success(Ljava/lang/Object;)Lcom/iMe/storage/domain/model/Result;

    move-result-object p0

    .line 160
    invoke-virtual {v0, p0}, Lio/reactivex/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method private final runHiddenAuthWithRemoteConfigCheck()V
    .locals 4

    .line 127
    invoke-direct {p0}, Lcom/iMe/utils/helper/AuthHelper;->getRemoteConfigInteractor()Lcom/iMe/storage/domain/interactor/firebase/RemoteConfigInteractor;

    move-result-object v0

    const-string v1, "auto_auth_enabled"

    .line 128
    invoke-virtual {v0, v1}, Lcom/iMe/storage/domain/interactor/firebase/RemoteConfigInteractor;->getBoolean(Ljava/lang/String;)Lio/reactivex/Single;

    move-result-object v0

    .line 129
    invoke-direct {p0}, Lcom/iMe/utils/helper/AuthHelper;->getSchedulersProvider()Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    move-result-object v1

    invoke-interface {v1}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v0

    const-string/jumbo v1, "remoteConfigInteractor\n \u2026(schedulersProvider.ui())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    new-instance v1, Lcom/iMe/utils/helper/AuthHelper$runHiddenAuthWithRemoteConfigCheck$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v1}, Lcom/iMe/utils/helper/AuthHelper$runHiddenAuthWithRemoteConfigCheck$$inlined$subscribeWithErrorHandle$default$1;-><init>()V

    new-instance v2, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v2, v1}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v1, Lcom/iMe/utils/helper/AuthHelper$runHiddenAuthWithRemoteConfigCheck$$inlined$subscribeWithErrorHandle$default$2;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/iMe/utils/helper/AuthHelper$runHiddenAuthWithRemoteConfigCheck$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 113
    new-instance v3, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v3, v1}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 111
    invoke-virtual {v0, v2, v3}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    const-string/jumbo v1, "viewState: BaseView? = n\u2026  onError.invoke()\n    })"

    .line 113
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    sget-object v1, Lcom/iMe/utils/helper/AuthHelper;->subscriptions:Lio/reactivex/disposables/CompositeDisposable;

    invoke-static {v0, v1}, Lcom/iMe/storage/data/utils/extentions/RxExtKt;->autoDispose(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;)V

    return-void
.end method

.method private final startAuthFlow()V
    .locals 19

    .line 196
    invoke-direct/range {p0 .. p0}, Lcom/iMe/utils/helper/AuthHelper;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    sget-wide v7, Lcom/iMe/utils/helper/AuthHelper;->authBotId:J

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v7, v8, v1, v2}, Lorg/telegram/messenger/MessagesController;->isDialogMuted(JJ)Z

    move-result v0

    sput-boolean v0, Lcom/iMe/utils/helper/AuthHelper;->isBotMutedByOriginal:Z

    .line 197
    invoke-direct/range {p0 .. p0}, Lcom/iMe/utils/helper/AuthHelper;->getNotificationsController()Lorg/telegram/messenger/NotificationsController;

    move-result-object v1

    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    move-wide v2, v7

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/messenger/NotificationsController;->muteDialog(JJZ)V

    .line 198
    invoke-direct/range {p0 .. p0}, Lcom/iMe/utils/helper/AuthHelper;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->setAuthBotHidden(Z)V

    .line 199
    invoke-direct/range {p0 .. p0}, Lcom/iMe/utils/helper/AuthHelper;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didReceiveNewMessages:I

    move-object/from16 v15, p0

    invoke-virtual {v0, v15, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 201
    invoke-direct/range {p0 .. p0}, Lcom/iMe/utils/helper/AuthHelper;->getSendMessagesHelper()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v0

    const-string v1, "/start"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move v7, v9

    move-object v8, v10

    move-object v9, v11

    move-object v10, v12

    move v11, v13

    move v12, v14

    move-object/from16 v13, v16

    move/from16 v14, v17

    move-object/from16 v15, v18

    .line 202
    invoke-static/range {v1 .. v15}, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->of(Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$WebPage;ZLjava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;ZILorg/telegram/messenger/MessageObject$SendAnimationData;ZLjava/lang/String;)Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;

    move-result-object v1

    .line 201
    invoke-virtual {v0, v1}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;)V

    return-void
.end method

.method private final subscribeToAuthSubject()V
    .locals 5

    .line 213
    sget-object v0, Lcom/iMe/utils/helper/AuthHelper;->subscriptions:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->clear()V

    .line 214
    sget-object v1, Lcom/iMe/utils/helper/AuthHelper;->authSubject:Lio/reactivex/subjects/PublishSubject;

    .line 215
    invoke-virtual {v1}, Lio/reactivex/Observable;->hide()Lio/reactivex/Observable;

    move-result-object v1

    .line 216
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x3c

    invoke-virtual {v1, v3, v4, v2}, Lio/reactivex/Observable;->timeout(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v1

    const-wide/16 v2, 0x1

    .line 217
    invoke-virtual {v1, v2, v3}, Lio/reactivex/Observable;->take(J)Lio/reactivex/Observable;

    move-result-object v1

    const-string v2, "authSubject\n            \u2026NDS)\n            .take(1)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    new-instance v2, Lcom/iMe/utils/helper/AuthHelper$subscribeToAuthSubject$$inlined$flatMapSuccess$1;

    invoke-direct {v2}, Lcom/iMe/utils/helper/AuthHelper$subscribeToAuthSubject$$inlined$flatMapSuccess$1;-><init>()V

    new-instance v3, Lcom/iMe/utils/helper/AuthHelper$inlined$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {v3, v2}, Lcom/iMe/utils/helper/AuthHelper$inlined$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v1, v3}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v1

    const-string v2, "crossinline body: (T) ->\u2026e.empty()\n        }\n    }"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 229
    invoke-direct {p0}, Lcom/iMe/utils/helper/AuthHelper;->getSchedulersProvider()Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    move-result-object v2

    invoke-interface {v2}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v1

    const-string v2, "authSubject\n            \u2026(schedulersProvider.ui())"

    .line 217
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 230
    invoke-direct {p0, v1}, Lcom/iMe/utils/helper/AuthHelper;->withLoadingDialog(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object v1

    sget-object v2, Lcom/iMe/utils/helper/AuthHelper$$ExternalSyntheticLambda0;->INSTANCE:Lcom/iMe/utils/helper/AuthHelper$$ExternalSyntheticLambda0;

    .line 231
    invoke-direct {p0, v1, v2}, Lcom/iMe/utils/helper/AuthHelper;->subscribeWithCommonErrorHandling(Lio/reactivex/Observable;Lcom/iMe/fork/utils/Callbacks$Callback1;)Lio/reactivex/disposables/Disposable;

    move-result-object v1

    .line 243
    invoke-static {v1, v0}, Lcom/iMe/storage/data/utils/extentions/RxExtKt;->autoDispose(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;)V

    return-void
.end method

.method private static final subscribeToAuthSubject$lambda$7(Lcom/iMe/storage/domain/model/Result;)V
    .locals 2

    .line 233
    instance-of v0, p0, Lcom/iMe/storage/domain/model/Result$Success;

    if-eqz v0, :cond_0

    .line 234
    sget-object p0, Lcom/iMe/utils/helper/AuthHelper;->INSTANCE:Lcom/iMe/utils/helper/AuthHelper;

    invoke-direct {p0}, Lcom/iMe/utils/helper/AuthHelper;->onAuthFlowFinished()V

    const/4 p0, 0x0

    .line 235
    sput-boolean p0, Lcom/iMe/utils/helper/AuthHelper;->isAuthProcessing:Z

    .line 236
    sget-object p0, Lcom/iMe/utils/helper/AuthHelper;->delegate:Lcom/iMe/utils/helper/AuthHelper$Delegate;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/iMe/utils/helper/AuthHelper$Delegate;->onAuthSuccess()V

    goto :goto_0

    .line 239
    :cond_0
    instance-of v0, p0, Lcom/iMe/storage/domain/model/Result$Error;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/iMe/utils/helper/AuthHelper;->INSTANCE:Lcom/iMe/utils/helper/AuthHelper;

    check-cast p0, Lcom/iMe/storage/domain/model/Result$Error;

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/Result$Error;->getError()Lcom/iMe/storage/data/network/model/error/ErrorModel;

    move-result-object p0

    invoke-direct {v0}, Lcom/iMe/utils/helper/AuthHelper;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/iMe/storage/data/network/model/error/ErrorModel;->getMessage(Lcom/iMe/storage/domain/utils/system/ResourceManager;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/iMe/utils/helper/AuthHelper;->onError(Ljava/lang/String;)V

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

    .line 281
    new-instance v0, Lcom/iMe/utils/helper/AuthHelper$subscribeWithCommonErrorHandling$1;

    invoke-direct {v0, p2}, Lcom/iMe/utils/helper/AuthHelper$subscribeWithCommonErrorHandling$1;-><init>(Lcom/iMe/fork/utils/Callbacks$Callback1;)V

    .line 282
    new-instance p2, Lcom/iMe/utils/helper/AuthHelper$$ExternalSyntheticLambda4;

    invoke-direct {p2, v0}, Lcom/iMe/utils/helper/AuthHelper$$ExternalSyntheticLambda4;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 281
    sget-object v0, Lcom/iMe/utils/helper/AuthHelper$subscribeWithCommonErrorHandling$2;->INSTANCE:Lcom/iMe/utils/helper/AuthHelper$subscribeWithCommonErrorHandling$2;

    .line 283
    new-instance v1, Lcom/iMe/utils/helper/AuthHelper$$ExternalSyntheticLambda6;

    invoke-direct {v1, v0}, Lcom/iMe/utils/helper/AuthHelper$$ExternalSyntheticLambda6;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 281
    invoke-virtual {p1, p2, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string/jumbo p2, "onSuccess: Callbacks.Cal\u2026)\n            }\n        )"

    .line 283
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private static final subscribeWithCommonErrorHandling$lambda$11(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 282
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final subscribeWithCommonErrorHandling$lambda$12(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 283
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final withLoadingDialog(Lio/reactivex/Observable;)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/Observable<",
            "TT;>;)",
            "Lio/reactivex/Observable<",
            "TT;>;"
        }
    .end annotation

    .line 268
    sget-boolean v0, Lcom/iMe/utils/helper/AuthHelper;->isAuthVisible:Z

    if-eqz v0, :cond_0

    .line 269
    sget-object v0, Lcom/iMe/utils/helper/AuthHelper$withLoadingDialog$1;->INSTANCE:Lcom/iMe/utils/helper/AuthHelper$withLoadingDialog$1;

    new-instance v1, Lcom/iMe/utils/helper/AuthHelper$$ExternalSyntheticLambda5;

    invoke-direct {v1, v0}, Lcom/iMe/utils/helper/AuthHelper$$ExternalSyntheticLambda5;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v1}, Lio/reactivex/Observable;->doOnSubscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object p1

    sget-object v0, Lcom/iMe/utils/helper/AuthHelper$$ExternalSyntheticLambda3;->INSTANCE:Lcom/iMe/utils/helper/AuthHelper$$ExternalSyntheticLambda3;

    .line 275
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->doFinally(Lio/reactivex/functions/Action;)Lio/reactivex/Observable;

    move-result-object p1

    const-string/jumbo v0, "{\n            doOnSubscr\u2026adingDialog() }\n        }"

    .line 269
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    return-object p1
.end method

.method private static final withLoadingDialog$lambda$10()V
    .locals 1

    .line 275
    sget-object v0, Lcom/iMe/utils/helper/AuthHelper;->delegate:Lcom/iMe/utils/helper/AuthHelper$Delegate;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/iMe/utils/helper/AuthHelper$Delegate;->hideLoadingDialog()V

    :cond_0
    return-void
.end method

.method private static final withLoadingDialog$lambda$9(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 269
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 7

    const-string p2, "args"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    sget p2, Lorg/telegram/messenger/NotificationCenter;->didReceiveNewMessages:I

    if-ne p1, p2, :cond_c

    const/4 p1, 0x0

    aget-object p2, p3, p1

    check-cast p2, Ljava/lang/Long;

    sget-wide v0, Lcom/iMe/utils/helper/AuthHelper;->authBotId:J

    if-nez p2, :cond_0

    goto/16 :goto_5

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long p2, v2, v0

    if-nez p2, :cond_c

    const/4 p2, 0x1

    .line 112
    aget-object p3, p3, p2

    instance-of v0, p3, Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    check-cast p3, Ljava/util/ArrayList;

    goto :goto_0

    :cond_1
    move-object p3, v1

    :goto_0
    if-eqz p3, :cond_3

    .line 800
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 809
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_2
    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lorg/telegram/messenger/MessageObject;

    if-eqz v3, :cond_2

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    move-object v0, v1

    :cond_4
    if-nez v0, :cond_5

    .line 112
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 766
    :cond_5
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 857
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lorg/telegram/messenger/MessageObject;

    .line 116
    iget-object v3, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v3, v3, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    sget-wide v5, Lcom/iMe/utils/helper/AuthHelper;->authBotId:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_7

    move v3, p2

    goto :goto_3

    :cond_7
    move v3, p1

    :goto_3
    if-eqz v3, :cond_6

    .line 857
    invoke-interface {p3, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 288
    :cond_8
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_9
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    .line 119
    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->botButtonsLayout:Ljava/lang/StringBuilder;

    const-string/jumbo v3, "messageObject.botButtonsLayout"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_a

    move v2, p2

    goto :goto_4

    :cond_a
    move v2, p1

    :goto_4
    if-eqz v2, :cond_9

    move-object v1, v0

    .line 118
    :cond_b
    check-cast v1, Lorg/telegram/messenger/MessageObject;

    .line 121
    invoke-direct {p0, v1, p1}, Lcom/iMe/utils/helper/AuthHelper;->runAuthButtonAction(Lorg/telegram/messenger/MessageObject;Z)V

    :cond_c
    :goto_5
    return-void
.end method

.method public getKoin()Lorg/koin/core/Koin;
    .locals 1

    .line 37
    invoke-static {p0}, Lorg/koin/core/component/KoinComponent$DefaultImpls;->getKoin(Lorg/koin/core/component/KoinComponent;)Lorg/koin/core/Koin;

    move-result-object v0

    return-object v0
.end method

.method public final isAuthProcessing()Z
    .locals 1

    .line 39
    sget-boolean v0, Lcom/iMe/utils/helper/AuthHelper;->isAuthProcessing:Z

    return v0
.end method
