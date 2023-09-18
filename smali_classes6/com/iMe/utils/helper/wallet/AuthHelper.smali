.class public final Lcom/iMe/utils/helper/wallet/AuthHelper;
.super Ljava/lang/Object;
.source "AuthHelper.kt"

# interfaces
.implements Lorg/koin/core/component/KoinComponent;
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/utils/helper/wallet/AuthHelper$Delegate;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAuthHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AuthHelper.kt\ncom/iMe/utils/helper/wallet/AuthHelper\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 RxExt.kt\ncom/iMe/utils/extentions/rx/RxExtKt\n+ 4 ObservableExt.kt\ncom/iMe/storage/domain/utils/extentions/ObservableExtKt\n+ 5 ResultExt.kt\ncom/iMe/storage/domain/utils/extentions/ResultExtKt\n+ 6 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n*L\n1#1,293:1\n800#2,11:294\n766#2:305\n857#2,2:306\n288#2,2:308\n106#3,12:310\n14#4:322\n11#5:323\n56#6,6:324\n56#6,6:330\n56#6,6:336\n56#6,6:342\n56#6,6:348\n56#6,6:354\n*S KotlinDebug\n*F\n+ 1 AuthHelper.kt\ncom/iMe/utils/helper/wallet/AuthHelper\n*L\n108#1:294,11\n111#1:305\n111#1:306,2\n114#1:308,2\n126#1:310,12\n215#1:322\n154#1:323\n39#1:324,6\n40#1:330,6\n41#1:336,6\n42#1:342,6\n43#1:348,6\n44#1:354,6\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/iMe/utils/helper/wallet/AuthHelper;

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

.field private static delegate:Lcom/iMe/utils/helper/wallet/AuthHelper$Delegate;

.field private static isAuthVisible:Z

.field private static isBotMutedByOriginal:Z

.field private static final remoteConfigInteractor$delegate:Lkotlin/Lazy;

.field private static final resourceManager$delegate:Lkotlin/Lazy;

.field private static final schedulersProvider$delegate:Lkotlin/Lazy;

.field private static final subscriptions:Lio/reactivex/disposables/CompositeDisposable;

.field private static final telegramApi$delegate:Lkotlin/Lazy;

.field private static final telegramControllersGateway$delegate:Lkotlin/Lazy;

.field private static final walletBotId:J

.field private static final walletSessionInteractor$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$JcDB6JgxuhaedRN5M5eQySL_Fhk()V
    .locals 0

    invoke-static {}, Lcom/iMe/utils/helper/wallet/AuthHelper;->withLoadingDialog$lambda$9()V

    return-void
.end method

.method public static synthetic $r8$lambda$QyKvemmDv-7zT-Xj09VwEyx2ag8(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/utils/helper/wallet/AuthHelper;->withLoadingDialog$lambda$8(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Xou10528g4uIJUJcBxf7FGqOUQw(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/utils/helper/wallet/AuthHelper;->subscribeWithCommonErrorHandling$lambda$10(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$eNjid9074EwzLGnlOiFc7DRdsGg(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/utils/helper/wallet/AuthHelper;->subscribeWithCommonErrorHandling$lambda$11(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$eR3XeVJpfX_9TTorBuGNrtPbcaM(Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_messages_requestUrlAuth;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/utils/helper/wallet/AuthHelper;->runAuthButtonAction$lambda$3(Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_messages_requestUrlAuth;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ip_nz0BHDGfak5TsDeSN38gxxU4(Lcom/iMe/storage/domain/model/Result;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/utils/helper/wallet/AuthHelper;->subscribeToAuthSubject$lambda$7(Lcom/iMe/storage/domain/model/Result;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sH8wwf2Y0OlmVrG6N6VKzFe49gg(Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/utils/helper/wallet/AuthHelper;->prepareAndStartAuthFlow$lambda$5(Lorg/telegram/tgnet/TLRPC$User;)V

    return-void
.end method

.method public static synthetic $r8$lambda$v7M8DVsDlRnXZsxeK3lUl1lWPbg()V
    .locals 0

    invoke-static {}, Lcom/iMe/utils/helper/wallet/AuthHelper;->prepareAndStartAuthFlow$lambda$5$lambda$4()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/iMe/utils/helper/wallet/AuthHelper;

    invoke-direct {v0}, Lcom/iMe/utils/helper/wallet/AuthHelper;-><init>()V

    sput-object v0, Lcom/iMe/utils/helper/wallet/AuthHelper;->INSTANCE:Lcom/iMe/utils/helper/wallet/AuthHelper;

    .line 58
    sget-object v1, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {v1}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object v2

    .line 61
    new-instance v3, Lcom/iMe/utils/helper/wallet/AuthHelper$special$$inlined$inject$default$1;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4, v4}, Lcom/iMe/utils/helper/wallet/AuthHelper$special$$inlined$inject$default$1;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {v2, v3}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v2

    .line 39
    sput-object v2, Lcom/iMe/utils/helper/wallet/AuthHelper;->remoteConfigInteractor$delegate:Lkotlin/Lazy;

    .line 58
    invoke-virtual {v1}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object v2

    .line 61
    new-instance v3, Lcom/iMe/utils/helper/wallet/AuthHelper$special$$inlined$inject$default$2;

    invoke-direct {v3, v0, v4, v4}, Lcom/iMe/utils/helper/wallet/AuthHelper$special$$inlined$inject$default$2;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {v2, v3}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v2

    .line 40
    sput-object v2, Lcom/iMe/utils/helper/wallet/AuthHelper;->resourceManager$delegate:Lkotlin/Lazy;

    .line 58
    invoke-virtual {v1}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object v2

    .line 61
    new-instance v3, Lcom/iMe/utils/helper/wallet/AuthHelper$special$$inlined$inject$default$3;

    invoke-direct {v3, v0, v4, v4}, Lcom/iMe/utils/helper/wallet/AuthHelper$special$$inlined$inject$default$3;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {v2, v3}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v2

    .line 41
    sput-object v2, Lcom/iMe/utils/helper/wallet/AuthHelper;->schedulersProvider$delegate:Lkotlin/Lazy;

    .line 58
    invoke-virtual {v1}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object v2

    .line 61
    new-instance v3, Lcom/iMe/utils/helper/wallet/AuthHelper$special$$inlined$inject$default$4;

    invoke-direct {v3, v0, v4, v4}, Lcom/iMe/utils/helper/wallet/AuthHelper$special$$inlined$inject$default$4;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {v2, v3}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v2

    .line 42
    sput-object v2, Lcom/iMe/utils/helper/wallet/AuthHelper;->telegramApi$delegate:Lkotlin/Lazy;

    .line 58
    invoke-virtual {v1}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object v2

    .line 61
    new-instance v3, Lcom/iMe/utils/helper/wallet/AuthHelper$special$$inlined$inject$default$5;

    invoke-direct {v3, v0, v4, v4}, Lcom/iMe/utils/helper/wallet/AuthHelper$special$$inlined$inject$default$5;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {v2, v3}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v2

    .line 43
    sput-object v2, Lcom/iMe/utils/helper/wallet/AuthHelper;->telegramControllersGateway$delegate:Lkotlin/Lazy;

    .line 58
    invoke-virtual {v1}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object v1

    .line 61
    new-instance v2, Lcom/iMe/utils/helper/wallet/AuthHelper$special$$inlined$inject$default$6;

    invoke-direct {v2, v0, v4, v4}, Lcom/iMe/utils/helper/wallet/AuthHelper$special$$inlined$inject$default$6;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {v1, v2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 44
    sput-object v0, Lcom/iMe/utils/helper/wallet/AuthHelper;->walletSessionInteractor$delegate:Lkotlin/Lazy;

    .line 47
    invoke-static {}, Lio/reactivex/subjects/PublishSubject;->create()Lio/reactivex/subjects/PublishSubject;

    move-result-object v0

    const-string v1, "create()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/iMe/utils/helper/wallet/AuthHelper;->authSubject:Lio/reactivex/subjects/PublishSubject;

    .line 48
    invoke-static {}, Lcom/iMe/storage/common/AppConfiguration$Wallet;->getWalletBotId()J

    move-result-wide v0

    sput-wide v0, Lcom/iMe/utils/helper/wallet/AuthHelper;->walletBotId:J

    .line 49
    new-instance v0, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    sput-object v0, Lcom/iMe/utils/helper/wallet/AuthHelper;->subscriptions:Lio/reactivex/disposables/CompositeDisposable;

    const/4 v0, -0x1

    .line 63
    sput v0, Lcom/iMe/utils/helper/wallet/AuthHelper;->currentAccountIndex:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getDelegate$p()Lcom/iMe/utils/helper/wallet/AuthHelper$Delegate;
    .locals 1

    .line 37
    sget-object v0, Lcom/iMe/utils/helper/wallet/AuthHelper;->delegate:Lcom/iMe/utils/helper/wallet/AuthHelper$Delegate;

    return-object v0
.end method

.method public static final synthetic access$getTelegramApi(Lcom/iMe/utils/helper/wallet/AuthHelper;)Lcom/iMe/manager/TelegramApi;
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/iMe/utils/helper/wallet/AuthHelper;->getTelegramApi()Lcom/iMe/manager/TelegramApi;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getWalletSessionInteractor(Lcom/iMe/utils/helper/wallet/AuthHelper;)Lcom/iMe/storage/domain/interactor/wallet/WalletSessionInteractor;
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/iMe/utils/helper/wallet/AuthHelper;->getWalletSessionInteractor()Lcom/iMe/storage/domain/interactor/wallet/WalletSessionInteractor;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$onAuthFlowFinished(Lcom/iMe/utils/helper/wallet/AuthHelper;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/iMe/utils/helper/wallet/AuthHelper;->onAuthFlowFinished()V

    return-void
.end method

.method public static final synthetic access$onError(Lcom/iMe/utils/helper/wallet/AuthHelper;Ljava/lang/String;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/iMe/utils/helper/wallet/AuthHelper;->onError(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$prepareAndStartAuthFlow(Lcom/iMe/utils/helper/wallet/AuthHelper;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/iMe/utils/helper/wallet/AuthHelper;->prepareAndStartAuthFlow()V

    return-void
.end method

.method public static final auth(Lcom/iMe/utils/helper/wallet/AuthHelper$Delegate;ZI)V
    .locals 1

    const-string v0, "delegate"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    sget-object v0, Lcom/iMe/utils/helper/wallet/AuthHelper;->INSTANCE:Lcom/iMe/utils/helper/wallet/AuthHelper;

    sput-object p0, Lcom/iMe/utils/helper/wallet/AuthHelper;->delegate:Lcom/iMe/utils/helper/wallet/AuthHelper$Delegate;

    .line 72
    sput-boolean p1, Lcom/iMe/utils/helper/wallet/AuthHelper;->isAuthVisible:Z

    .line 73
    sput p2, Lcom/iMe/utils/helper/wallet/AuthHelper;->currentAccountIndex:I

    .line 75
    invoke-direct {v0}, Lcom/iMe/utils/helper/wallet/AuthHelper;->subscribeToAuthSubject()V

    if-eqz p1, :cond_0

    .line 77
    invoke-direct {v0}, Lcom/iMe/utils/helper/wallet/AuthHelper;->prepareAndStartAuthFlow()V

    goto :goto_0

    .line 79
    :cond_0
    invoke-direct {v0}, Lcom/iMe/utils/helper/wallet/AuthHelper;->runHiddenAuthWithRemoteConfigCheck()V

    :goto_0
    return-void
.end method

.method public static synthetic auth$default(Lcom/iMe/utils/helper/wallet/AuthHelper$Delegate;ZIILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_0

    const/4 p2, -0x1

    .line 66
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/iMe/utils/helper/wallet/AuthHelper;->auth(Lcom/iMe/utils/helper/wallet/AuthHelper$Delegate;ZI)V

    return-void
.end method

.method private final getMessageObjectButton(Lorg/telegram/messenger/MessageObject;)Lorg/telegram/tgnet/TLRPC$KeyboardButton;
    .locals 0

    if-eqz p1, :cond_0

    .line 163
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

    .line 51
    invoke-direct {p0}, Lcom/iMe/utils/helper/wallet/AuthHelper;->getTelegramControllersGateway()Lcom/iMe/gateway/TelegramControllersGateway;

    move-result-object v0

    sget v1, Lcom/iMe/utils/helper/wallet/AuthHelper;->currentAccountIndex:I

    invoke-interface {v0, v1}, Lcom/iMe/gateway/TelegramControllersGateway;->getMessagesController(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    return-object v0
.end method

.method private final getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;
    .locals 2

    .line 53
    invoke-direct {p0}, Lcom/iMe/utils/helper/wallet/AuthHelper;->getTelegramControllersGateway()Lcom/iMe/gateway/TelegramControllersGateway;

    move-result-object v0

    sget v1, Lcom/iMe/utils/helper/wallet/AuthHelper;->currentAccountIndex:I

    invoke-interface {v0, v1}, Lcom/iMe/gateway/TelegramControllersGateway;->getNotificationCenterInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    return-object v0
.end method

.method private final getNotificationsController()Lorg/telegram/messenger/NotificationsController;
    .locals 2

    .line 55
    invoke-direct {p0}, Lcom/iMe/utils/helper/wallet/AuthHelper;->getTelegramControllersGateway()Lcom/iMe/gateway/TelegramControllersGateway;

    move-result-object v0

    sget v1, Lcom/iMe/utils/helper/wallet/AuthHelper;->currentAccountIndex:I

    invoke-interface {v0, v1}, Lcom/iMe/gateway/TelegramControllersGateway;->getNotificationsController(I)Lorg/telegram/messenger/NotificationsController;

    move-result-object v0

    return-object v0
.end method

.method private final getRemoteConfigInteractor()Lcom/iMe/storage/domain/interactor/firebase/RemoteConfigInteractor;
    .locals 1

    .line 39
    sget-object v0, Lcom/iMe/utils/helper/wallet/AuthHelper;->remoteConfigInteractor$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/storage/domain/interactor/firebase/RemoteConfigInteractor;

    return-object v0
.end method

.method private final getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;
    .locals 1

    .line 40
    sget-object v0, Lcom/iMe/utils/helper/wallet/AuthHelper;->resourceManager$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/storage/domain/utils/system/ResourceManager;

    return-object v0
.end method

.method private final getSchedulersProvider()Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;
    .locals 1

    .line 41
    sget-object v0, Lcom/iMe/utils/helper/wallet/AuthHelper;->schedulersProvider$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    return-object v0
.end method

.method private final getSendMessagesHelper()Lorg/telegram/messenger/SendMessagesHelper;
    .locals 2

    .line 57
    invoke-direct {p0}, Lcom/iMe/utils/helper/wallet/AuthHelper;->getTelegramControllersGateway()Lcom/iMe/gateway/TelegramControllersGateway;

    move-result-object v0

    sget v1, Lcom/iMe/utils/helper/wallet/AuthHelper;->currentAccountIndex:I

    invoke-interface {v0, v1}, Lcom/iMe/gateway/TelegramControllersGateway;->getSendMessagesHelper(I)Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v0

    return-object v0
.end method

.method private final getTelegramApi()Lcom/iMe/manager/TelegramApi;
    .locals 1

    .line 42
    sget-object v0, Lcom/iMe/utils/helper/wallet/AuthHelper;->telegramApi$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/manager/TelegramApi;

    return-object v0
.end method

.method private final getTelegramControllersGateway()Lcom/iMe/gateway/TelegramControllersGateway;
    .locals 1

    .line 43
    sget-object v0, Lcom/iMe/utils/helper/wallet/AuthHelper;->telegramControllersGateway$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/gateway/TelegramControllersGateway;

    return-object v0
.end method

.method private final getWalletSessionInteractor()Lcom/iMe/storage/domain/interactor/wallet/WalletSessionInteractor;
    .locals 1

    .line 44
    sget-object v0, Lcom/iMe/utils/helper/wallet/AuthHelper;->walletSessionInteractor$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/storage/domain/interactor/wallet/WalletSessionInteractor;

    return-object v0
.end method

.method private final isAuthBotBlocked()Z
    .locals 3

    .line 59
    invoke-direct {p0}, Lcom/iMe/utils/helper/wallet/AuthHelper;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->blockePeers:Lorg/telegram/messenger/support/LongSparseIntArray;

    sget-wide v1, Lcom/iMe/utils/helper/wallet/AuthHelper;->walletBotId:J

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

.method public static final manualAuth(Lcom/iMe/utils/helper/wallet/AuthHelper$Delegate;ZILorg/telegram/messenger/MessageObject;)V
    .locals 1

    const-string v0, "delegate"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "botAuthButtonMessage"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    sget-object v0, Lcom/iMe/utils/helper/wallet/AuthHelper;->INSTANCE:Lcom/iMe/utils/helper/wallet/AuthHelper;

    sput-object p0, Lcom/iMe/utils/helper/wallet/AuthHelper;->delegate:Lcom/iMe/utils/helper/wallet/AuthHelper$Delegate;

    .line 97
    sput-boolean p1, Lcom/iMe/utils/helper/wallet/AuthHelper;->isAuthVisible:Z

    .line 98
    sput p2, Lcom/iMe/utils/helper/wallet/AuthHelper;->currentAccountIndex:I

    .line 100
    invoke-direct {v0}, Lcom/iMe/utils/helper/wallet/AuthHelper;->subscribeToAuthSubject()V

    const/4 p0, 0x1

    .line 101
    invoke-direct {v0, p3, p0}, Lcom/iMe/utils/helper/wallet/AuthHelper;->runAuthButtonAction(Lorg/telegram/messenger/MessageObject;Z)V

    return-void
.end method

.method public static synthetic manualAuth$default(Lcom/iMe/utils/helper/wallet/AuthHelper$Delegate;ZILorg/telegram/messenger/MessageObject;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p2, -0x1

    .line 90
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/iMe/utils/helper/wallet/AuthHelper;->manualAuth(Lcom/iMe/utils/helper/wallet/AuthHelper$Delegate;ZILorg/telegram/messenger/MessageObject;)V

    return-void
.end method

.method private final onAuthFlowFinished()V
    .locals 5

    .line 250
    sget-boolean v0, Lcom/iMe/utils/helper/wallet/AuthHelper;->isBotMutedByOriginal:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 251
    invoke-direct {p0}, Lcom/iMe/utils/helper/wallet/AuthHelper;->getNotificationsController()Lorg/telegram/messenger/NotificationsController;

    move-result-object v0

    sget-wide v2, Lcom/iMe/utils/helper/wallet/AuthHelper;->walletBotId:J

    invoke-virtual {v0, v2, v3, v1, v1}, Lorg/telegram/messenger/NotificationsController;->muteDialog(JIZ)V

    .line 253
    :cond_0
    invoke-direct {p0}, Lcom/iMe/utils/helper/wallet/AuthHelper;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    sget-wide v2, Lcom/iMe/utils/helper/wallet/AuthHelper;->walletBotId:J

    invoke-virtual {v0, v2, v3, v1}, Lorg/telegram/messenger/MessagesController;->deleteDialog(JI)V

    .line 255
    sget-object v0, Lcom/iMe/utils/helper/wallet/AuthHelper;->delegate:Lcom/iMe/utils/helper/wallet/AuthHelper$Delegate;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/iMe/utils/helper/wallet/AuthHelper$Delegate;->hideLoadingDialog()V

    .line 256
    :cond_1
    sget-object v0, Lcom/iMe/utils/helper/wallet/AuthHelper;->subscriptions:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->clear()V

    .line 257
    invoke-direct {p0}, Lcom/iMe/utils/helper/wallet/AuthHelper;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    .line 258
    sget v2, Lorg/telegram/messenger/NotificationCenter;->updateWalletDialogVisibility:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 259
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v4, v3, v1

    .line 257
    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method public static final onDestroy()V
    .locals 1

    .line 85
    sget-object v0, Lcom/iMe/utils/helper/wallet/AuthHelper;->subscriptions:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->clear()V

    const/4 v0, 0x0

    .line 86
    sput-object v0, Lcom/iMe/utils/helper/wallet/AuthHelper;->delegate:Lcom/iMe/utils/helper/wallet/AuthHelper$Delegate;

    return-void
.end method

.method private final onError(Ljava/lang/String;)V
    .locals 1

    .line 243
    invoke-direct {p0}, Lcom/iMe/utils/helper/wallet/AuthHelper;->onAuthFlowFinished()V

    .line 244
    sget-boolean v0, Lcom/iMe/utils/helper/wallet/AuthHelper;->isAuthVisible:Z

    if-eqz v0, :cond_0

    .line 245
    sget-object v0, Lcom/iMe/utils/helper/wallet/AuthHelper;->delegate:Lcom/iMe/utils/helper/wallet/AuthHelper$Delegate;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/iMe/utils/helper/wallet/AuthHelper$Delegate;->showToast(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic onError$default(Lcom/iMe/utils/helper/wallet/AuthHelper;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 242
    invoke-direct {p0}, Lcom/iMe/utils/helper/wallet/AuthHelper;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$string;->common_error_unexpected:I

    invoke-interface {p1, p2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object p1

    :cond_0
    invoke-direct {p0, p1}, Lcom/iMe/utils/helper/wallet/AuthHelper;->onError(Ljava/lang/String;)V

    return-void
.end method

.method private final prepareAndStartAuthFlow()V
    .locals 2

    .line 166
    invoke-direct {p0}, Lcom/iMe/utils/helper/wallet/AuthHelper;->getTelegramApi()Lcom/iMe/manager/TelegramApi;

    move-result-object v0

    .line 167
    invoke-static {}, Lcom/iMe/storage/common/AppConfiguration$Wallet;->getWalletBotUsernameLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/iMe/manager/TelegramApi;->getUserInfoByUsername(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    .line 168
    invoke-direct {p0}, Lcom/iMe/utils/helper/wallet/AuthHelper;->getSchedulersProvider()Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    move-result-object v1

    invoke-interface {v1}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    const-string/jumbo v1, "telegramApi\n            \u2026(schedulersProvider.ui())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/iMe/utils/helper/wallet/AuthHelper$$ExternalSyntheticLambda1;->INSTANCE:Lcom/iMe/utils/helper/wallet/AuthHelper$$ExternalSyntheticLambda1;

    .line 169
    invoke-direct {p0, v0, v1}, Lcom/iMe/utils/helper/wallet/AuthHelper;->subscribeWithCommonErrorHandling(Lio/reactivex/Observable;Lcom/iMe/fork/utils/Callbacks$Callback1;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 186
    sget-object v1, Lcom/iMe/utils/helper/wallet/AuthHelper;->subscriptions:Lio/reactivex/disposables/CompositeDisposable;

    invoke-static {v0, v1}, Lcom/iMe/storage/data/utils/extentions/RxExtKt;->autoDispose(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;)V

    return-void
.end method

.method private static final prepareAndStartAuthFlow$lambda$5(Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 3

    if-eqz p0, :cond_1

    .line 171
    sget-object p0, Lcom/iMe/utils/helper/wallet/AuthHelper;->INSTANCE:Lcom/iMe/utils/helper/wallet/AuthHelper;

    invoke-direct {p0}, Lcom/iMe/utils/helper/wallet/AuthHelper;->isAuthBotBlocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    invoke-direct {p0}, Lcom/iMe/utils/helper/wallet/AuthHelper;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p0

    sget-wide v0, Lcom/iMe/utils/helper/wallet/AuthHelper;->walletBotId:J

    sget-object v2, Lcom/iMe/utils/helper/wallet/AuthHelper$$ExternalSyntheticLambda7;->INSTANCE:Lcom/iMe/utils/helper/wallet/AuthHelper$$ExternalSyntheticLambda7;

    invoke-virtual {p0, v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->unblockPeer(JLjava/lang/Runnable;)V

    goto :goto_0

    .line 180
    :cond_0
    invoke-direct {p0}, Lcom/iMe/utils/helper/wallet/AuthHelper;->startAuthFlow()V

    goto :goto_0

    .line 183
    :cond_1
    sget-object p0, Lcom/iMe/utils/helper/wallet/AuthHelper;->INSTANCE:Lcom/iMe/utils/helper/wallet/AuthHelper;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1}, Lcom/iMe/utils/helper/wallet/AuthHelper;->onError$default(Lcom/iMe/utils/helper/wallet/AuthHelper;Ljava/lang/String;ILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private static final prepareAndStartAuthFlow$lambda$5$lambda$4()V
    .locals 3

    .line 173
    sget-object v0, Lcom/iMe/utils/helper/wallet/AuthHelper;->INSTANCE:Lcom/iMe/utils/helper/wallet/AuthHelper;

    invoke-direct {v0}, Lcom/iMe/utils/helper/wallet/AuthHelper;->isAuthBotBlocked()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 174
    invoke-static {v0, v2, v1, v2}, Lcom/iMe/utils/helper/wallet/AuthHelper;->onError$default(Lcom/iMe/utils/helper/wallet/AuthHelper;Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_0

    .line 176
    :cond_0
    invoke-direct {v0}, Lcom/iMe/utils/helper/wallet/AuthHelper;->startAuthFlow()V

    :goto_0
    return-void
.end method

.method private final runAuthButtonAction(Lorg/telegram/messenger/MessageObject;Z)V
    .locals 8

    .line 141
    invoke-direct {p0, p1}, Lcom/iMe/utils/helper/wallet/AuthHelper;->getMessageObjectButton(Lorg/telegram/messenger/MessageObject;)Lorg/telegram/tgnet/TLRPC$KeyboardButton;

    move-result-object v3

    if-eqz v3, :cond_1

    if-nez p2, :cond_0

    .line 145
    invoke-direct {p0}, Lcom/iMe/utils/helper/wallet/AuthHelper;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p2

    .line 147
    sget v0, Lorg/telegram/messenger/NotificationCenter;->didReceiveNewMessages:I

    .line 145
    invoke-virtual {p2, p0, v0}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 150
    :cond_0
    invoke-direct {p0}, Lcom/iMe/utils/helper/wallet/AuthHelper;->getSendMessagesHelper()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 152
    sget-object v7, Lcom/iMe/utils/helper/wallet/AuthHelper$$ExternalSyntheticLambda2;->INSTANCE:Lcom/iMe/utils/helper/wallet/AuthHelper$$ExternalSyntheticLambda2;

    move-object v2, p1

    .line 150
    invoke-virtual/range {v0 .. v7}, Lorg/telegram/messenger/SendMessagesHelper;->sendCallback(ZLorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$KeyboardButton;Lorg/telegram/tgnet/TLRPC$InputCheckPasswordSRP;Lorg/telegram/ui/TwoStepVerificationActivity;Lorg/telegram/ui/ChatActivity;Lcom/iMe/fork/utils/Callbacks$Callback2;)V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    const/4 p1, 0x1

    const/4 p2, 0x0

    .line 158
    invoke-static {p0, p2, p1, p2}, Lcom/iMe/utils/helper/wallet/AuthHelper;->onError$default(Lcom/iMe/utils/helper/wallet/AuthHelper;Ljava/lang/String;ILjava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private static final runAuthButtonAction$lambda$3(Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_messages_requestUrlAuth;)V
    .locals 1

    .line 154
    sget-object v0, Lcom/iMe/utils/helper/wallet/AuthHelper;->authSubject:Lio/reactivex/subjects/PublishSubject;

    invoke-static {p0, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    .line 11
    sget-object p1, Lcom/iMe/storage/domain/model/Result;->Companion:Lcom/iMe/storage/domain/model/Result$Companion;

    invoke-virtual {p1, p0}, Lcom/iMe/storage/domain/model/Result$Companion;->success(Ljava/lang/Object;)Lcom/iMe/storage/domain/model/Result;

    move-result-object p0

    .line 154
    invoke-virtual {v0, p0}, Lio/reactivex/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method private final runHiddenAuthWithRemoteConfigCheck()V
    .locals 4

    .line 123
    invoke-direct {p0}, Lcom/iMe/utils/helper/wallet/AuthHelper;->getRemoteConfigInteractor()Lcom/iMe/storage/domain/interactor/firebase/RemoteConfigInteractor;

    move-result-object v0

    const-string v1, "auto_auth_enabled"

    .line 124
    invoke-virtual {v0, v1}, Lcom/iMe/storage/domain/interactor/firebase/RemoteConfigInteractor;->getBoolean(Ljava/lang/String;)Lio/reactivex/Single;

    move-result-object v0

    .line 125
    invoke-direct {p0}, Lcom/iMe/utils/helper/wallet/AuthHelper;->getSchedulersProvider()Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    move-result-object v1

    invoke-interface {v1}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v0

    const-string/jumbo v1, "remoteConfigInteractor\n \u2026(schedulersProvider.ui())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    new-instance v1, Lcom/iMe/utils/helper/wallet/AuthHelper$runHiddenAuthWithRemoteConfigCheck$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v1}, Lcom/iMe/utils/helper/wallet/AuthHelper$runHiddenAuthWithRemoteConfigCheck$$inlined$subscribeWithErrorHandle$default$1;-><init>()V

    new-instance v2, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v2, v1}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v1, Lcom/iMe/utils/helper/wallet/AuthHelper$runHiddenAuthWithRemoteConfigCheck$$inlined$subscribeWithErrorHandle$default$2;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/iMe/utils/helper/wallet/AuthHelper$runHiddenAuthWithRemoteConfigCheck$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 113
    new-instance v3, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v3, v1}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 111
    invoke-virtual {v0, v2, v3}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    const-string/jumbo v1, "viewState: BaseView? = n\u2026  onError.invoke()\n    })"

    .line 113
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    sget-object v1, Lcom/iMe/utils/helper/wallet/AuthHelper;->subscriptions:Lio/reactivex/disposables/CompositeDisposable;

    invoke-static {v0, v1}, Lcom/iMe/storage/data/utils/extentions/RxExtKt;->autoDispose(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;)V

    return-void
.end method

.method private final startAuthFlow()V
    .locals 17

    .line 190
    invoke-direct/range {p0 .. p0}, Lcom/iMe/utils/helper/wallet/AuthHelper;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    sget-wide v2, Lcom/iMe/utils/helper/wallet/AuthHelper;->walletBotId:J

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lorg/telegram/messenger/MessagesController;->isDialogMuted(JI)Z

    move-result v0

    sput-boolean v0, Lcom/iMe/utils/helper/wallet/AuthHelper;->isBotMutedByOriginal:Z

    .line 191
    invoke-direct/range {p0 .. p0}, Lcom/iMe/utils/helper/wallet/AuthHelper;->getNotificationsController()Lorg/telegram/messenger/NotificationsController;

    move-result-object v0

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v3, v1, v4}, Lorg/telegram/messenger/NotificationsController;->muteDialog(JIZ)V

    .line 192
    invoke-direct/range {p0 .. p0}, Lcom/iMe/utils/helper/wallet/AuthHelper;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    .line 193
    sget v5, Lorg/telegram/messenger/NotificationCenter;->updateWalletDialogVisibility:I

    new-array v4, v4, [Ljava/lang/Object;

    .line 194
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v6, v4, v1

    .line 192
    invoke-virtual {v0, v5, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 196
    invoke-direct/range {p0 .. p0}, Lcom/iMe/utils/helper/wallet/AuthHelper;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didReceiveNewMessages:I

    move-object/from16 v15, p0

    invoke-virtual {v0, v15, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 198
    invoke-direct/range {p0 .. p0}, Lcom/iMe/utils/helper/wallet/AuthHelper;->getSendMessagesHelper()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v0

    const-string v1, "/start"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    move-object/from16 v15, v16

    .line 199
    invoke-static/range {v1 .. v15}, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->of(Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$WebPage;ZLjava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;ZILorg/telegram/messenger/MessageObject$SendAnimationData;ZLjava/lang/String;)Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;

    move-result-object v1

    .line 198
    invoke-virtual {v0, v1}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;)V

    return-void
.end method

.method private final subscribeToAuthSubject()V
    .locals 5

    .line 210
    sget-object v0, Lcom/iMe/utils/helper/wallet/AuthHelper;->subscriptions:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->clear()V

    .line 211
    sget-object v1, Lcom/iMe/utils/helper/wallet/AuthHelper;->authSubject:Lio/reactivex/subjects/PublishSubject;

    .line 212
    invoke-virtual {v1}, Lio/reactivex/Observable;->hide()Lio/reactivex/Observable;

    move-result-object v1

    .line 213
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x3c

    invoke-virtual {v1, v3, v4, v2}, Lio/reactivex/Observable;->timeout(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v1

    const-wide/16 v2, 0x1

    .line 214
    invoke-virtual {v1, v2, v3}, Lio/reactivex/Observable;->take(J)Lio/reactivex/Observable;

    move-result-object v1

    const-string v2, "authSubject\n            \u2026NDS)\n            .take(1)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    new-instance v2, Lcom/iMe/utils/helper/wallet/AuthHelper$subscribeToAuthSubject$$inlined$flatMapSuccess$1;

    invoke-direct {v2}, Lcom/iMe/utils/helper/wallet/AuthHelper$subscribeToAuthSubject$$inlined$flatMapSuccess$1;-><init>()V

    new-instance v3, Lcom/iMe/utils/helper/wallet/AuthHelper$inlined$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {v3, v2}, Lcom/iMe/utils/helper/wallet/AuthHelper$inlined$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v1, v3}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v1

    const-string v2, "crossinline body: (T) ->\u2026e.empty()\n        }\n    }"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 226
    invoke-direct {p0}, Lcom/iMe/utils/helper/wallet/AuthHelper;->getSchedulersProvider()Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    move-result-object v2

    invoke-interface {v2}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v1

    const-string v2, "authSubject\n            \u2026(schedulersProvider.ui())"

    .line 214
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 227
    invoke-direct {p0, v1}, Lcom/iMe/utils/helper/wallet/AuthHelper;->withLoadingDialog(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object v1

    sget-object v2, Lcom/iMe/utils/helper/wallet/AuthHelper$$ExternalSyntheticLambda0;->INSTANCE:Lcom/iMe/utils/helper/wallet/AuthHelper$$ExternalSyntheticLambda0;

    .line 228
    invoke-direct {p0, v1, v2}, Lcom/iMe/utils/helper/wallet/AuthHelper;->subscribeWithCommonErrorHandling(Lio/reactivex/Observable;Lcom/iMe/fork/utils/Callbacks$Callback1;)Lio/reactivex/disposables/Disposable;

    move-result-object v1

    .line 239
    invoke-static {v1, v0}, Lcom/iMe/storage/data/utils/extentions/RxExtKt;->autoDispose(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;)V

    return-void
.end method

.method private static final subscribeToAuthSubject$lambda$7(Lcom/iMe/storage/domain/model/Result;)V
    .locals 2

    .line 230
    instance-of v0, p0, Lcom/iMe/storage/domain/model/Result$Success;

    if-eqz v0, :cond_0

    .line 231
    sget-object p0, Lcom/iMe/utils/helper/wallet/AuthHelper;->INSTANCE:Lcom/iMe/utils/helper/wallet/AuthHelper;

    invoke-direct {p0}, Lcom/iMe/utils/helper/wallet/AuthHelper;->onAuthFlowFinished()V

    .line 232
    sget-object p0, Lcom/iMe/utils/helper/wallet/AuthHelper;->delegate:Lcom/iMe/utils/helper/wallet/AuthHelper$Delegate;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/iMe/utils/helper/wallet/AuthHelper$Delegate;->onAuthSuccess()V

    goto :goto_0

    .line 235
    :cond_0
    instance-of v0, p0, Lcom/iMe/storage/domain/model/Result$Error;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/iMe/utils/helper/wallet/AuthHelper;->INSTANCE:Lcom/iMe/utils/helper/wallet/AuthHelper;

    check-cast p0, Lcom/iMe/storage/domain/model/Result$Error;

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/Result$Error;->getError()Lcom/iMe/storage/data/network/model/error/ErrorModel;

    move-result-object p0

    invoke-direct {v0}, Lcom/iMe/utils/helper/wallet/AuthHelper;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/iMe/storage/data/network/model/error/ErrorModel;->getMessage(Lcom/iMe/storage/domain/utils/system/ResourceManager;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/iMe/utils/helper/wallet/AuthHelper;->onError(Ljava/lang/String;)V

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

    .line 277
    new-instance v0, Lcom/iMe/utils/helper/wallet/AuthHelper$subscribeWithCommonErrorHandling$1;

    invoke-direct {v0, p2}, Lcom/iMe/utils/helper/wallet/AuthHelper$subscribeWithCommonErrorHandling$1;-><init>(Lcom/iMe/fork/utils/Callbacks$Callback1;)V

    .line 278
    new-instance p2, Lcom/iMe/utils/helper/wallet/AuthHelper$$ExternalSyntheticLambda5;

    invoke-direct {p2, v0}, Lcom/iMe/utils/helper/wallet/AuthHelper$$ExternalSyntheticLambda5;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 277
    sget-object v0, Lcom/iMe/utils/helper/wallet/AuthHelper$subscribeWithCommonErrorHandling$2;->INSTANCE:Lcom/iMe/utils/helper/wallet/AuthHelper$subscribeWithCommonErrorHandling$2;

    .line 279
    new-instance v1, Lcom/iMe/utils/helper/wallet/AuthHelper$$ExternalSyntheticLambda6;

    invoke-direct {v1, v0}, Lcom/iMe/utils/helper/wallet/AuthHelper$$ExternalSyntheticLambda6;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 277
    invoke-virtual {p1, p2, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string/jumbo p2, "onSuccess: Callbacks.Cal\u2026)\n            }\n        )"

    .line 279
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private static final subscribeWithCommonErrorHandling$lambda$10(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 278
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final subscribeWithCommonErrorHandling$lambda$11(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 279
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

    .line 264
    sget-boolean v0, Lcom/iMe/utils/helper/wallet/AuthHelper;->isAuthVisible:Z

    if-eqz v0, :cond_0

    .line 265
    sget-object v0, Lcom/iMe/utils/helper/wallet/AuthHelper$withLoadingDialog$1;->INSTANCE:Lcom/iMe/utils/helper/wallet/AuthHelper$withLoadingDialog$1;

    new-instance v1, Lcom/iMe/utils/helper/wallet/AuthHelper$$ExternalSyntheticLambda4;

    invoke-direct {v1, v0}, Lcom/iMe/utils/helper/wallet/AuthHelper$$ExternalSyntheticLambda4;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v1}, Lio/reactivex/Observable;->doOnSubscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object p1

    sget-object v0, Lcom/iMe/utils/helper/wallet/AuthHelper$$ExternalSyntheticLambda3;->INSTANCE:Lcom/iMe/utils/helper/wallet/AuthHelper$$ExternalSyntheticLambda3;

    .line 271
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->doFinally(Lio/reactivex/functions/Action;)Lio/reactivex/Observable;

    move-result-object p1

    const-string/jumbo v0, "{\n            doOnSubscr\u2026adingDialog() }\n        }"

    .line 265
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    return-object p1
.end method

.method private static final withLoadingDialog$lambda$8(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 265
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final withLoadingDialog$lambda$9()V
    .locals 1

    .line 271
    sget-object v0, Lcom/iMe/utils/helper/wallet/AuthHelper;->delegate:Lcom/iMe/utils/helper/wallet/AuthHelper$Delegate;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/iMe/utils/helper/wallet/AuthHelper$Delegate;->hideLoadingDialog()V

    :cond_0
    return-void
.end method


# virtual methods
.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 7

    const-string p2, "args"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    sget p2, Lorg/telegram/messenger/NotificationCenter;->didReceiveNewMessages:I

    if-ne p1, p2, :cond_c

    const/4 p1, 0x0

    aget-object p2, p3, p1

    check-cast p2, Ljava/lang/Long;

    sget-wide v0, Lcom/iMe/utils/helper/wallet/AuthHelper;->walletBotId:J

    if-nez p2, :cond_0

    goto/16 :goto_5

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long p2, v2, v0

    if-nez p2, :cond_c

    const/4 p2, 0x1

    .line 108
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

    .line 108
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

    .line 112
    iget-object v3, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v3, v3, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    sget-wide v5, Lcom/iMe/utils/helper/wallet/AuthHelper;->walletBotId:J

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

    .line 115
    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->botButtonsLayout:Ljava/lang/StringBuilder;

    const-string v3, "messageObject.botButtonsLayout"

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

    .line 114
    :cond_b
    check-cast v1, Lorg/telegram/messenger/MessageObject;

    .line 117
    invoke-direct {p0, v1, p1}, Lcom/iMe/utils/helper/wallet/AuthHelper;->runAuthButtonAction(Lorg/telegram/messenger/MessageObject;Z)V

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
