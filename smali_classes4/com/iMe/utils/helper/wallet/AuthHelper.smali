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
    value = "SMAP\nAuthHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AuthHelper.kt\ncom/iMe/utils/helper/wallet/AuthHelper\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 RxExt.kt\ncom/iMe/utils/extentions/rx/RxExtKt\n+ 4 ObservableExt.kt\ncom/iMe/storage/domain/utils/extentions/ObservableExtKt\n+ 5 ResultExt.kt\ncom/iMe/storage/domain/utils/extentions/ResultExtKt\n+ 6 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n*L\n1#1,251:1\n800#2,11:252\n766#2:263\n857#2,2:264\n288#2,2:266\n83#3,8:268\n14#4:276\n9#5:277\n56#6,6:278\n56#6,6:284\n56#6,6:290\n56#6,6:296\n56#6,6:302\n56#6,6:308\n*S KotlinDebug\n*F\n+ 1 AuthHelper.kt\ncom/iMe/utils/helper/wallet/AuthHelper\n*L\n83#1:252,11\n86#1:263\n86#1:264,2\n89#1:266,2\n114#1:268,8\n175#1:276\n99#1:277\n34#1:278,6\n35#1:284,6\n36#1:290,6\n37#1:296,6\n38#1:302,6\n39#1:308,6\n*E\n"
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

.field private static delegate:Lcom/iMe/utils/helper/wallet/AuthHelper$Delegate;

.field private static isAuthVisible:Z

.field private static isBotMutedByOriginal:Z

.field private static final messagesController:Lorg/telegram/messenger/MessagesController;

.field private static final notificationCenter:Lorg/telegram/messenger/NotificationCenter;

.field private static final notificationsController:Lorg/telegram/messenger/NotificationsController;

.field private static final remoteConfigInteractor$delegate:Lkotlin/Lazy;

.field private static final resourceManager$delegate:Lkotlin/Lazy;

.field private static final schedulersProvider$delegate:Lkotlin/Lazy;

.field private static final sendMessagesHelper:Lorg/telegram/messenger/SendMessagesHelper;

.field private static final subscriptions:Lio/reactivex/disposables/CompositeDisposable;

.field private static final telegramApi$delegate:Lkotlin/Lazy;

.field private static final telegramControllersGateway$delegate:Lkotlin/Lazy;

.field private static final walletBotId:J

.field private static final walletSessionInteractor$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$CE4dNWK2kEcbUjr3Vkky8Q7rDKA(Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_messages_requestUrlAuth;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/utils/helper/wallet/AuthHelper;->didReceivedNotification$lambda$2(Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_messages_requestUrlAuth;)V

    return-void
.end method

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

    .line 34
    sput-object v2, Lcom/iMe/utils/helper/wallet/AuthHelper;->remoteConfigInteractor$delegate:Lkotlin/Lazy;

    .line 58
    invoke-virtual {v1}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object v2

    .line 61
    new-instance v3, Lcom/iMe/utils/helper/wallet/AuthHelper$special$$inlined$inject$default$2;

    invoke-direct {v3, v0, v4, v4}, Lcom/iMe/utils/helper/wallet/AuthHelper$special$$inlined$inject$default$2;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {v2, v3}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v2

    .line 35
    sput-object v2, Lcom/iMe/utils/helper/wallet/AuthHelper;->resourceManager$delegate:Lkotlin/Lazy;

    .line 58
    invoke-virtual {v1}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object v2

    .line 61
    new-instance v3, Lcom/iMe/utils/helper/wallet/AuthHelper$special$$inlined$inject$default$3;

    invoke-direct {v3, v0, v4, v4}, Lcom/iMe/utils/helper/wallet/AuthHelper$special$$inlined$inject$default$3;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {v2, v3}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v2

    .line 36
    sput-object v2, Lcom/iMe/utils/helper/wallet/AuthHelper;->schedulersProvider$delegate:Lkotlin/Lazy;

    .line 58
    invoke-virtual {v1}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object v2

    .line 61
    new-instance v3, Lcom/iMe/utils/helper/wallet/AuthHelper$special$$inlined$inject$default$4;

    invoke-direct {v3, v0, v4, v4}, Lcom/iMe/utils/helper/wallet/AuthHelper$special$$inlined$inject$default$4;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {v2, v3}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v2

    .line 37
    sput-object v2, Lcom/iMe/utils/helper/wallet/AuthHelper;->telegramApi$delegate:Lkotlin/Lazy;

    .line 58
    invoke-virtual {v1}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object v2

    .line 61
    new-instance v3, Lcom/iMe/utils/helper/wallet/AuthHelper$special$$inlined$inject$default$5;

    invoke-direct {v3, v0, v4, v4}, Lcom/iMe/utils/helper/wallet/AuthHelper$special$$inlined$inject$default$5;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {v2, v3}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v2

    .line 38
    sput-object v2, Lcom/iMe/utils/helper/wallet/AuthHelper;->telegramControllersGateway$delegate:Lkotlin/Lazy;

    .line 58
    invoke-virtual {v1}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object v1

    .line 61
    new-instance v2, Lcom/iMe/utils/helper/wallet/AuthHelper$special$$inlined$inject$default$6;

    invoke-direct {v2, v0, v4, v4}, Lcom/iMe/utils/helper/wallet/AuthHelper$special$$inlined$inject$default$6;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {v1, v2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    .line 39
    sput-object v1, Lcom/iMe/utils/helper/wallet/AuthHelper;->walletSessionInteractor$delegate:Lkotlin/Lazy;

    .line 42
    invoke-static {}, Lio/reactivex/subjects/PublishSubject;->create()Lio/reactivex/subjects/PublishSubject;

    move-result-object v1

    const-string v2, "create()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v1, Lcom/iMe/utils/helper/wallet/AuthHelper;->authSubject:Lio/reactivex/subjects/PublishSubject;

    .line 43
    invoke-static {}, Lcom/iMe/storage/common/AppConfiguration$Wallet;->getWalletBotId()J

    move-result-wide v1

    sput-wide v1, Lcom/iMe/utils/helper/wallet/AuthHelper;->walletBotId:J

    .line 44
    invoke-direct {v0}, Lcom/iMe/utils/helper/wallet/AuthHelper;->getTelegramControllersGateway()Lcom/iMe/gateway/TelegramControllersGateway;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, v2, v3, v4}, Lcom/iMe/gateway/TelegramControllersGateway$-CC;->getMessagesController$default(Lcom/iMe/gateway/TelegramControllersGateway;IILjava/lang/Object;)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    sput-object v1, Lcom/iMe/utils/helper/wallet/AuthHelper;->messagesController:Lorg/telegram/messenger/MessagesController;

    .line 45
    invoke-direct {v0}, Lcom/iMe/utils/helper/wallet/AuthHelper;->getTelegramControllersGateway()Lcom/iMe/gateway/TelegramControllersGateway;

    move-result-object v1

    invoke-static {v1, v2, v3, v4}, Lcom/iMe/gateway/TelegramControllersGateway$-CC;->getNotificationCenterInstance$default(Lcom/iMe/gateway/TelegramControllersGateway;IILjava/lang/Object;)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sput-object v1, Lcom/iMe/utils/helper/wallet/AuthHelper;->notificationCenter:Lorg/telegram/messenger/NotificationCenter;

    .line 46
    invoke-direct {v0}, Lcom/iMe/utils/helper/wallet/AuthHelper;->getTelegramControllersGateway()Lcom/iMe/gateway/TelegramControllersGateway;

    move-result-object v1

    invoke-static {v1, v2, v3, v4}, Lcom/iMe/gateway/TelegramControllersGateway$-CC;->getNotificationsController$default(Lcom/iMe/gateway/TelegramControllersGateway;IILjava/lang/Object;)Lorg/telegram/messenger/NotificationsController;

    move-result-object v1

    sput-object v1, Lcom/iMe/utils/helper/wallet/AuthHelper;->notificationsController:Lorg/telegram/messenger/NotificationsController;

    .line 47
    invoke-direct {v0}, Lcom/iMe/utils/helper/wallet/AuthHelper;->getTelegramControllersGateway()Lcom/iMe/gateway/TelegramControllersGateway;

    move-result-object v0

    invoke-static {v0, v2, v3, v4}, Lcom/iMe/gateway/TelegramControllersGateway$-CC;->getSendMessagesHelper$default(Lcom/iMe/gateway/TelegramControllersGateway;IILjava/lang/Object;)Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v0

    sput-object v0, Lcom/iMe/utils/helper/wallet/AuthHelper;->sendMessagesHelper:Lorg/telegram/messenger/SendMessagesHelper;

    .line 48
    new-instance v0, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    sput-object v0, Lcom/iMe/utils/helper/wallet/AuthHelper;->subscriptions:Lio/reactivex/disposables/CompositeDisposable;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getDelegate$p()Lcom/iMe/utils/helper/wallet/AuthHelper$Delegate;
    .locals 1

    .line 31
    sget-object v0, Lcom/iMe/utils/helper/wallet/AuthHelper;->delegate:Lcom/iMe/utils/helper/wallet/AuthHelper$Delegate;

    return-object v0
.end method

.method public static final synthetic access$getTelegramApi(Lcom/iMe/utils/helper/wallet/AuthHelper;)Lcom/iMe/manager/TelegramApi;
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/iMe/utils/helper/wallet/AuthHelper;->getTelegramApi()Lcom/iMe/manager/TelegramApi;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getWalletSessionInteractor(Lcom/iMe/utils/helper/wallet/AuthHelper;)Lcom/iMe/storage/domain/interactor/wallet/WalletSessionInteractor;
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/iMe/utils/helper/wallet/AuthHelper;->getWalletSessionInteractor()Lcom/iMe/storage/domain/interactor/wallet/WalletSessionInteractor;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$onAuthFlowFinished(Lcom/iMe/utils/helper/wallet/AuthHelper;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/iMe/utils/helper/wallet/AuthHelper;->onAuthFlowFinished()V

    return-void
.end method

.method public static final synthetic access$onError(Lcom/iMe/utils/helper/wallet/AuthHelper;Ljava/lang/String;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/iMe/utils/helper/wallet/AuthHelper;->onError(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$prepareAndStartAuthFlow(Lcom/iMe/utils/helper/wallet/AuthHelper;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/iMe/utils/helper/wallet/AuthHelper;->prepareAndStartAuthFlow()V

    return-void
.end method

.method public static final auth(Lcom/iMe/utils/helper/wallet/AuthHelper$Delegate;Z)V
    .locals 1

    const-string v0, "delegate"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    sget-object v0, Lcom/iMe/utils/helper/wallet/AuthHelper;->INSTANCE:Lcom/iMe/utils/helper/wallet/AuthHelper;

    sput-object p0, Lcom/iMe/utils/helper/wallet/AuthHelper;->delegate:Lcom/iMe/utils/helper/wallet/AuthHelper$Delegate;

    .line 60
    sput-boolean p1, Lcom/iMe/utils/helper/wallet/AuthHelper;->isAuthVisible:Z

    .line 62
    invoke-direct {v0}, Lcom/iMe/utils/helper/wallet/AuthHelper;->subscribeToAuthSubject()V

    if-eqz p1, :cond_0

    .line 64
    invoke-direct {v0}, Lcom/iMe/utils/helper/wallet/AuthHelper;->prepareAndStartAuthFlow()V

    goto :goto_0

    .line 66
    :cond_0
    invoke-direct {v0}, Lcom/iMe/utils/helper/wallet/AuthHelper;->runHiddenAuthWithRemoteConfigCheck()V

    :goto_0
    return-void
.end method

.method private static final didReceivedNotification$lambda$2(Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_messages_requestUrlAuth;)V
    .locals 1

    .line 99
    sget-object v0, Lcom/iMe/utils/helper/wallet/AuthHelper;->authSubject:Lio/reactivex/subjects/PublishSubject;

    invoke-static {p0, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    .line 9
    sget-object p1, Lcom/iMe/storage/domain/model/Result;->Companion:Lcom/iMe/storage/domain/model/Result$Companion;

    invoke-virtual {p1, p0}, Lcom/iMe/storage/domain/model/Result$Companion;->success(Ljava/lang/Object;)Lcom/iMe/storage/domain/model/Result;

    move-result-object p0

    .line 99
    invoke-virtual {v0, p0}, Lio/reactivex/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method private final getMessageObjectButton(Lorg/telegram/messenger/MessageObject;)Lorg/telegram/tgnet/TLRPC$KeyboardButton;
    .locals 0

    if-eqz p1, :cond_0

    .line 128
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

.method private final getRemoteConfigInteractor()Lcom/iMe/storage/domain/interactor/firebase/RemoteConfigInteractor;
    .locals 1

    .line 34
    sget-object v0, Lcom/iMe/utils/helper/wallet/AuthHelper;->remoteConfigInteractor$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/storage/domain/interactor/firebase/RemoteConfigInteractor;

    return-object v0
.end method

.method private final getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;
    .locals 1

    .line 35
    sget-object v0, Lcom/iMe/utils/helper/wallet/AuthHelper;->resourceManager$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/storage/domain/utils/system/ResourceManager;

    return-object v0
.end method

.method private final getSchedulersProvider()Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;
    .locals 1

    .line 36
    sget-object v0, Lcom/iMe/utils/helper/wallet/AuthHelper;->schedulersProvider$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    return-object v0
.end method

.method private final getTelegramApi()Lcom/iMe/manager/TelegramApi;
    .locals 1

    .line 37
    sget-object v0, Lcom/iMe/utils/helper/wallet/AuthHelper;->telegramApi$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/manager/TelegramApi;

    return-object v0
.end method

.method private final getTelegramControllersGateway()Lcom/iMe/gateway/TelegramControllersGateway;
    .locals 1

    .line 38
    sget-object v0, Lcom/iMe/utils/helper/wallet/AuthHelper;->telegramControllersGateway$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/gateway/TelegramControllersGateway;

    return-object v0
.end method

.method private final getWalletSessionInteractor()Lcom/iMe/storage/domain/interactor/wallet/WalletSessionInteractor;
    .locals 1

    .line 39
    sget-object v0, Lcom/iMe/utils/helper/wallet/AuthHelper;->walletSessionInteractor$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/storage/domain/interactor/wallet/WalletSessionInteractor;

    return-object v0
.end method

.method private final isAuthBotBlocked()Z
    .locals 3

    .line 50
    sget-object v0, Lcom/iMe/utils/helper/wallet/AuthHelper;->messagesController:Lorg/telegram/messenger/MessagesController;

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

.method private final onAuthFlowFinished()V
    .locals 5

    .line 209
    sget-boolean v0, Lcom/iMe/utils/helper/wallet/AuthHelper;->isBotMutedByOriginal:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 210
    sget-object v0, Lcom/iMe/utils/helper/wallet/AuthHelper;->notificationsController:Lorg/telegram/messenger/NotificationsController;

    sget-wide v2, Lcom/iMe/utils/helper/wallet/AuthHelper;->walletBotId:J

    invoke-virtual {v0, v2, v3, v1, v1}, Lorg/telegram/messenger/NotificationsController;->muteDialog(JIZ)V

    .line 212
    :cond_0
    sget-object v0, Lcom/iMe/utils/helper/wallet/AuthHelper;->messagesController:Lorg/telegram/messenger/MessagesController;

    sget-wide v2, Lcom/iMe/utils/helper/wallet/AuthHelper;->walletBotId:J

    invoke-virtual {v0, v2, v3, v1}, Lorg/telegram/messenger/MessagesController;->deleteDialog(JI)V

    .line 214
    sget-object v0, Lcom/iMe/utils/helper/wallet/AuthHelper;->delegate:Lcom/iMe/utils/helper/wallet/AuthHelper$Delegate;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/iMe/utils/helper/wallet/AuthHelper$Delegate;->hideLoadingDialog()V

    .line 215
    :cond_1
    sget-object v0, Lcom/iMe/utils/helper/wallet/AuthHelper;->subscriptions:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->clear()V

    .line 216
    sget-object v0, Lcom/iMe/utils/helper/wallet/AuthHelper;->notificationCenter:Lorg/telegram/messenger/NotificationCenter;

    sget v2, Lorg/telegram/messenger/NotificationCenter;->updateWalletDialogVisibility:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v4, v3, v1

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method public static final onDestroy()V
    .locals 1

    .line 72
    sget-object v0, Lcom/iMe/utils/helper/wallet/AuthHelper;->subscriptions:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->clear()V

    const/4 v0, 0x0

    .line 73
    sput-object v0, Lcom/iMe/utils/helper/wallet/AuthHelper;->delegate:Lcom/iMe/utils/helper/wallet/AuthHelper$Delegate;

    return-void
.end method

.method private final onError(Ljava/lang/String;)V
    .locals 1

    .line 202
    invoke-direct {p0}, Lcom/iMe/utils/helper/wallet/AuthHelper;->onAuthFlowFinished()V

    .line 203
    sget-boolean v0, Lcom/iMe/utils/helper/wallet/AuthHelper;->isAuthVisible:Z

    if-eqz v0, :cond_0

    .line 204
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

    .line 201
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

    .line 131
    invoke-direct {p0}, Lcom/iMe/utils/helper/wallet/AuthHelper;->getTelegramApi()Lcom/iMe/manager/TelegramApi;

    move-result-object v0

    .line 132
    invoke-static {}, Lcom/iMe/storage/common/AppConfiguration$Wallet;->getWalletBotUsernameLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/iMe/manager/TelegramApi;->getUserInfoByUsername(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    .line 133
    invoke-direct {p0}, Lcom/iMe/utils/helper/wallet/AuthHelper;->getSchedulersProvider()Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    move-result-object v1

    invoke-interface {v1}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "telegramApi\n            \u2026(schedulersProvider.ui())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/iMe/utils/helper/wallet/AuthHelper$$ExternalSyntheticLambda1;->INSTANCE:Lcom/iMe/utils/helper/wallet/AuthHelper$$ExternalSyntheticLambda1;

    .line 134
    invoke-direct {p0, v0, v1}, Lcom/iMe/utils/helper/wallet/AuthHelper;->subscribeWithCommonErrorHandling(Lio/reactivex/Observable;Lcom/iMe/fork/utils/Callbacks$Callback1;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 151
    sget-object v1, Lcom/iMe/utils/helper/wallet/AuthHelper;->subscriptions:Lio/reactivex/disposables/CompositeDisposable;

    invoke-static {v0, v1}, Lcom/iMe/storage/data/utils/extentions/RxExtKt;->autoDispose(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;)V

    return-void
.end method

.method private static final prepareAndStartAuthFlow$lambda$5(Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 3

    if-eqz p0, :cond_1

    .line 136
    sget-object p0, Lcom/iMe/utils/helper/wallet/AuthHelper;->INSTANCE:Lcom/iMe/utils/helper/wallet/AuthHelper;

    invoke-direct {p0}, Lcom/iMe/utils/helper/wallet/AuthHelper;->isAuthBotBlocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    sget-object p0, Lcom/iMe/utils/helper/wallet/AuthHelper;->messagesController:Lorg/telegram/messenger/MessagesController;

    sget-wide v0, Lcom/iMe/utils/helper/wallet/AuthHelper;->walletBotId:J

    sget-object v2, Lcom/iMe/utils/helper/wallet/AuthHelper$$ExternalSyntheticLambda7;->INSTANCE:Lcom/iMe/utils/helper/wallet/AuthHelper$$ExternalSyntheticLambda7;

    invoke-virtual {p0, v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->unblockPeer(JLjava/lang/Runnable;)V

    goto :goto_0

    .line 145
    :cond_0
    invoke-direct {p0}, Lcom/iMe/utils/helper/wallet/AuthHelper;->startAuthFlow()V

    goto :goto_0

    .line 148
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

    .line 138
    sget-object v0, Lcom/iMe/utils/helper/wallet/AuthHelper;->INSTANCE:Lcom/iMe/utils/helper/wallet/AuthHelper;

    invoke-direct {v0}, Lcom/iMe/utils/helper/wallet/AuthHelper;->isAuthBotBlocked()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 139
    invoke-static {v0, v2, v1, v2}, Lcom/iMe/utils/helper/wallet/AuthHelper;->onError$default(Lcom/iMe/utils/helper/wallet/AuthHelper;Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_0

    .line 141
    :cond_0
    invoke-direct {v0}, Lcom/iMe/utils/helper/wallet/AuthHelper;->startAuthFlow()V

    :goto_0
    return-void
.end method

.method private final runHiddenAuthWithRemoteConfigCheck()V
    .locals 4

    .line 111
    invoke-direct {p0}, Lcom/iMe/utils/helper/wallet/AuthHelper;->getRemoteConfigInteractor()Lcom/iMe/storage/domain/interactor/firebase/RemoteConfigInteractor;

    move-result-object v0

    const-string v1, "auto_auth_enabled"

    .line 112
    invoke-virtual {v0, v1}, Lcom/iMe/storage/domain/interactor/firebase/RemoteConfigInteractor;->getBoolean(Ljava/lang/String;)Lio/reactivex/Single;

    move-result-object v0

    .line 113
    invoke-direct {p0}, Lcom/iMe/utils/helper/wallet/AuthHelper;->getSchedulersProvider()Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    move-result-object v1

    invoke-interface {v1}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v0

    const-string v1, "remoteConfigInteractor\n \u2026(schedulersProvider.ui())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    new-instance v1, Lcom/iMe/utils/helper/wallet/AuthHelper$runHiddenAuthWithRemoteConfigCheck$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v1}, Lcom/iMe/utils/helper/wallet/AuthHelper$runHiddenAuthWithRemoteConfigCheck$$inlined$subscribeWithErrorHandle$default$1;-><init>()V

    new-instance v2, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v2, v1}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v1, Lcom/iMe/utils/helper/wallet/AuthHelper$runHiddenAuthWithRemoteConfigCheck$$inlined$subscribeWithErrorHandle$default$2;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/iMe/utils/helper/wallet/AuthHelper$runHiddenAuthWithRemoteConfigCheck$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 90
    new-instance v3, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v3, v1}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 88
    invoke-virtual {v0, v2, v3}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    const-string/jumbo v1, "viewState: BaseView? = n\u2026  onError.invoke()\n    })"

    .line 90
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    sget-object v1, Lcom/iMe/utils/helper/wallet/AuthHelper;->subscriptions:Lio/reactivex/disposables/CompositeDisposable;

    invoke-static {v0, v1}, Lcom/iMe/storage/data/utils/extentions/RxExtKt;->autoDispose(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;)V

    return-void
.end method

.method private final startAuthFlow()V
    .locals 17

    .line 155
    sget-object v0, Lcom/iMe/utils/helper/wallet/AuthHelper;->messagesController:Lorg/telegram/messenger/MessagesController;

    sget-wide v3, Lcom/iMe/utils/helper/wallet/AuthHelper;->walletBotId:J

    const/4 v1, 0x0

    invoke-virtual {v0, v3, v4, v1}, Lorg/telegram/messenger/MessagesController;->isDialogMuted(JI)Z

    move-result v0

    sput-boolean v0, Lcom/iMe/utils/helper/wallet/AuthHelper;->isBotMutedByOriginal:Z

    .line 156
    sget-object v0, Lcom/iMe/utils/helper/wallet/AuthHelper;->notificationsController:Lorg/telegram/messenger/NotificationsController;

    const/4 v2, 0x1

    invoke-virtual {v0, v3, v4, v1, v2}, Lorg/telegram/messenger/NotificationsController;->muteDialog(JIZ)V

    .line 157
    sget-object v0, Lcom/iMe/utils/helper/wallet/AuthHelper;->notificationCenter:Lorg/telegram/messenger/NotificationCenter;

    sget v5, Lorg/telegram/messenger/NotificationCenter;->updateWalletDialogVisibility:I

    new-array v2, v2, [Ljava/lang/Object;

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v6, v2, v1

    invoke-virtual {v0, v5, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 158
    sget v1, Lorg/telegram/messenger/NotificationCenter;->didReceiveNewMessages:I

    move-object/from16 v15, p0

    invoke-virtual {v0, v15, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 160
    sget-object v1, Lcom/iMe/utils/helper/wallet/AuthHelper;->sendMessagesHelper:Lorg/telegram/messenger/SendMessagesHelper;

    const-string v2, "/start"

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

    const/4 v0, 0x0

    const/16 v16, 0x0

    move v15, v0

    invoke-virtual/range {v1 .. v16}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$WebPage;ZLjava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;ZILorg/telegram/messenger/MessageObject$SendAnimationData;ZLjava/lang/String;)V

    return-void
.end method

.method private final subscribeToAuthSubject()V
    .locals 5

    .line 170
    sget-object v0, Lcom/iMe/utils/helper/wallet/AuthHelper;->subscriptions:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->clear()V

    .line 171
    sget-object v1, Lcom/iMe/utils/helper/wallet/AuthHelper;->authSubject:Lio/reactivex/subjects/PublishSubject;

    .line 172
    invoke-virtual {v1}, Lio/reactivex/Observable;->hide()Lio/reactivex/Observable;

    move-result-object v1

    .line 173
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x1e

    invoke-virtual {v1, v3, v4, v2}, Lio/reactivex/Observable;->timeout(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v1

    const-wide/16 v2, 0x1

    .line 174
    invoke-virtual {v1, v2, v3}, Lio/reactivex/Observable;->take(J)Lio/reactivex/Observable;

    move-result-object v1

    const-string v2, "authSubject\n            \u2026\n                .take(1)"

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

    .line 186
    invoke-direct {p0}, Lcom/iMe/utils/helper/wallet/AuthHelper;->getSchedulersProvider()Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    move-result-object v2

    invoke-interface {v2}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v1

    const-string v2, "authSubject\n            \u2026(schedulersProvider.ui())"

    .line 174
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 187
    invoke-direct {p0, v1}, Lcom/iMe/utils/helper/wallet/AuthHelper;->withLoadingDialog(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object v1

    sget-object v2, Lcom/iMe/utils/helper/wallet/AuthHelper$$ExternalSyntheticLambda0;->INSTANCE:Lcom/iMe/utils/helper/wallet/AuthHelper$$ExternalSyntheticLambda0;

    .line 188
    invoke-direct {p0, v1, v2}, Lcom/iMe/utils/helper/wallet/AuthHelper;->subscribeWithCommonErrorHandling(Lio/reactivex/Observable;Lcom/iMe/fork/utils/Callbacks$Callback1;)Lio/reactivex/disposables/Disposable;

    move-result-object v1

    .line 198
    invoke-static {v1, v0}, Lcom/iMe/storage/data/utils/extentions/RxExtKt;->autoDispose(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;)V

    return-void
.end method

.method private static final subscribeToAuthSubject$lambda$7(Lcom/iMe/storage/domain/model/Result;)V
    .locals 2

    .line 190
    instance-of v0, p0, Lcom/iMe/storage/domain/model/Result$Success;

    if-eqz v0, :cond_0

    .line 191
    sget-object p0, Lcom/iMe/utils/helper/wallet/AuthHelper;->INSTANCE:Lcom/iMe/utils/helper/wallet/AuthHelper;

    invoke-direct {p0}, Lcom/iMe/utils/helper/wallet/AuthHelper;->onAuthFlowFinished()V

    .line 192
    sget-object p0, Lcom/iMe/utils/helper/wallet/AuthHelper;->delegate:Lcom/iMe/utils/helper/wallet/AuthHelper$Delegate;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/iMe/utils/helper/wallet/AuthHelper$Delegate;->onAuthSuccess()V

    goto :goto_0

    .line 194
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

    .line 233
    new-instance v0, Lcom/iMe/utils/helper/wallet/AuthHelper$subscribeWithCommonErrorHandling$1;

    invoke-direct {v0, p2}, Lcom/iMe/utils/helper/wallet/AuthHelper$subscribeWithCommonErrorHandling$1;-><init>(Lcom/iMe/fork/utils/Callbacks$Callback1;)V

    .line 234
    new-instance p2, Lcom/iMe/utils/helper/wallet/AuthHelper$$ExternalSyntheticLambda5;

    invoke-direct {p2, v0}, Lcom/iMe/utils/helper/wallet/AuthHelper$$ExternalSyntheticLambda5;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 233
    sget-object v0, Lcom/iMe/utils/helper/wallet/AuthHelper$subscribeWithCommonErrorHandling$2;->INSTANCE:Lcom/iMe/utils/helper/wallet/AuthHelper$subscribeWithCommonErrorHandling$2;

    .line 235
    new-instance v1, Lcom/iMe/utils/helper/wallet/AuthHelper$$ExternalSyntheticLambda6;

    invoke-direct {v1, v0}, Lcom/iMe/utils/helper/wallet/AuthHelper$$ExternalSyntheticLambda6;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 233
    invoke-virtual {p1, p2, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string p2, "onSuccess: Callbacks.Cal\u2026          }\n            )"

    .line 235
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private static final subscribeWithCommonErrorHandling$lambda$10(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 234
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final subscribeWithCommonErrorHandling$lambda$11(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 235
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

    .line 220
    sget-boolean v0, Lcom/iMe/utils/helper/wallet/AuthHelper;->isAuthVisible:Z

    if-eqz v0, :cond_0

    .line 221
    sget-object v0, Lcom/iMe/utils/helper/wallet/AuthHelper$withLoadingDialog$1;->INSTANCE:Lcom/iMe/utils/helper/wallet/AuthHelper$withLoadingDialog$1;

    new-instance v1, Lcom/iMe/utils/helper/wallet/AuthHelper$$ExternalSyntheticLambda4;

    invoke-direct {v1, v0}, Lcom/iMe/utils/helper/wallet/AuthHelper$$ExternalSyntheticLambda4;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v1}, Lio/reactivex/Observable;->doOnSubscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object p1

    sget-object v0, Lcom/iMe/utils/helper/wallet/AuthHelper$$ExternalSyntheticLambda3;->INSTANCE:Lcom/iMe/utils/helper/wallet/AuthHelper$$ExternalSyntheticLambda3;

    .line 227
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->doFinally(Lio/reactivex/functions/Action;)Lio/reactivex/Observable;

    move-result-object p1

    const-string/jumbo v0, "{\n                doOnSu\u2026gDialog() }\n            }"

    .line 221
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    return-object p1
.end method

.method private static final withLoadingDialog$lambda$8(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 221
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final withLoadingDialog$lambda$9()V
    .locals 1

    .line 227
    sget-object v0, Lcom/iMe/utils/helper/wallet/AuthHelper;->delegate:Lcom/iMe/utils/helper/wallet/AuthHelper$Delegate;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/iMe/utils/helper/wallet/AuthHelper$Delegate;->hideLoadingDialog()V

    :cond_0
    return-void
.end method


# virtual methods
.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 10

    const-string p2, "args"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
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

    .line 83
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

    .line 83
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

    .line 87
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

    .line 90
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

    .line 89
    :cond_b
    move-object v4, v1

    check-cast v4, Lorg/telegram/messenger/MessageObject;

    .line 92
    invoke-direct {p0, v4}, Lcom/iMe/utils/helper/wallet/AuthHelper;->getMessageObjectButton(Lorg/telegram/messenger/MessageObject;)Lorg/telegram/tgnet/TLRPC$KeyboardButton;

    move-result-object v5

    if-eqz v5, :cond_c

    .line 94
    sget-object p1, Lcom/iMe/utils/helper/wallet/AuthHelper;->notificationCenter:Lorg/telegram/messenger/NotificationCenter;

    sget p2, Lorg/telegram/messenger/NotificationCenter;->didReceiveNewMessages:I

    invoke-virtual {p1, p0, p2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 95
    sget-object v2, Lcom/iMe/utils/helper/wallet/AuthHelper;->sendMessagesHelper:Lorg/telegram/messenger/SendMessagesHelper;

    const/4 v3, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 97
    sget-object v9, Lcom/iMe/utils/helper/wallet/AuthHelper$$ExternalSyntheticLambda2;->INSTANCE:Lcom/iMe/utils/helper/wallet/AuthHelper$$ExternalSyntheticLambda2;

    .line 95
    invoke-virtual/range {v2 .. v9}, Lorg/telegram/messenger/SendMessagesHelper;->sendCallback(ZLorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$KeyboardButton;Lorg/telegram/tgnet/TLRPC$InputCheckPasswordSRP;Lorg/telegram/ui/TwoStepVerificationActivity;Lorg/telegram/ui/ChatActivity;Lcom/iMe/fork/utils/Callbacks$Callback2;)V

    :cond_c
    :goto_5
    return-void
.end method

.method public getKoin()Lorg/koin/core/Koin;
    .locals 1

    .line 31
    invoke-static {p0}, Lorg/koin/core/component/KoinComponent$DefaultImpls;->getKoin(Lorg/koin/core/component/KoinComponent;)Lorg/koin/core/Koin;

    move-result-object v0

    return-object v0
.end method
