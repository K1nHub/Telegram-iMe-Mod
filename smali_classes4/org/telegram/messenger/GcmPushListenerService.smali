.class public Lorg/telegram/messenger/GcmPushListenerService;
.super Lcom/google/firebase/messaging/FirebaseMessagingService;
.source "GcmPushListenerService.java"


# instance fields
.field private final pushNotificationsManager:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Lcom/iMe/manager/notifications/PushNotificationsManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$Ueup95ie29euFGh8AnULobxbHcM(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lorg/telegram/messenger/GcmPushListenerService;->lambda$onNewToken$0(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Lcom/google/firebase/messaging/FirebaseMessagingService;-><init>()V

    .line 30
    const-class v0, Lcom/iMe/manager/notifications/PushNotificationsManager;

    invoke-static {v0}, Lorg/koin/java/KoinJavaComponent;->inject(Ljava/lang/Class;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/GcmPushListenerService;->pushNotificationsManager:Lkotlin/Lazy;

    return-void
.end method

.method private static synthetic lambda$onNewToken$0(Ljava/lang/String;)V
    .locals 2

    .line 64
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_0

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Refreshed FCM token: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 67
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->postInitApplication()V

    const/4 v0, 0x2

    .line 68
    invoke-static {v0, p0}, Lorg/telegram/messenger/PushListenerController;->sendRegistrationToServer(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onDestroy()V
    .locals 1

    .line 37
    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/GcmPushListenerService;->pushNotificationsManager:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/manager/notifications/PushNotificationsManager;

    invoke-virtual {v0}, Lcom/iMe/manager/notifications/PushNotificationsManager;->onDestroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 39
    invoke-static {v0}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;)V

    .line 41
    :goto_0
    invoke-super {p0}, Lcom/google/firebase/messaging/EnhancedIntentService;->onDestroy()V

    return-void
.end method

.method public onMessageReceived(Lcom/google/firebase/messaging/RemoteMessage;)V
    .locals 5

    .line 50
    invoke-virtual {p1}, Lcom/google/firebase/messaging/RemoteMessage;->getFrom()Ljava/lang/String;

    move-result-object v0

    .line 51
    invoke-virtual {p1}, Lcom/google/firebase/messaging/RemoteMessage;->getData()Ljava/util/Map;

    move-result-object v1

    .line 52
    invoke-virtual {p1}, Lcom/google/firebase/messaging/RemoteMessage;->getSentTime()J

    move-result-wide v2

    .line 54
    sget-boolean p1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p1, :cond_0

    .line 55
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FCM received data: "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " from: "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x2

    const-string v0, "p"

    .line 58
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p1, v0, v2, v3, v1}, Lorg/telegram/messenger/PushListenerController;->processRemoteMessage(ILjava/lang/String;JLjava/util/Map;)V

    return-void
.end method

.method public onNewToken(Ljava/lang/String;)V
    .locals 1

    .line 63
    new-instance v0, Lorg/telegram/messenger/GcmPushListenerService$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lorg/telegram/messenger/GcmPushListenerService$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method
