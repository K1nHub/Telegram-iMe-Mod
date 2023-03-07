.class public Lorg/telegram/messenger/ScreenReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ScreenReceiver.java"


# instance fields
.field private accessManager:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Lcom/smedialink/storage/domain/manager/crypto/CryptoAccessManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 27
    const-class v0, Lcom/smedialink/storage/domain/manager/crypto/CryptoAccessManager;

    invoke-static {v0}, Lorg/koin/java/KoinJavaComponent;->inject(Ljava/lang/Class;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/ScreenReceiver;->accessManager:Lkotlin/Lazy;

    return-void
.end method

.method private resetWalletSession()V
    .locals 1

    .line 32
    iget-object v0, p0, Lorg/telegram/messenger/ScreenReceiver;->accessManager:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smedialink/storage/domain/manager/crypto/CryptoAccessManager;

    invoke-interface {v0}, Lcom/smedialink/storage/domain/manager/crypto/CryptoAccessManager;->logoutAllWallets()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 41
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    .line 42
    sget-boolean p1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p1, :cond_0

    const-string p1, "screen off"

    .line 43
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 45
    :cond_0
    sget p1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    invoke-virtual {p1, v1, v1}, Lorg/telegram/tgnet/ConnectionsManager;->setAppPaused(ZZ)V

    .line 46
    sput-boolean v0, Lorg/telegram/messenger/ApplicationLoader;->isScreenOn:Z

    .line 47
    invoke-direct {p0}, Lorg/telegram/messenger/ScreenReceiver;->resetWalletSession()V

    goto :goto_0

    .line 48
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.SCREEN_ON"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 49
    sget-boolean p1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p1, :cond_2

    const-string p1, "screen on"

    .line 50
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 52
    :cond_2
    sget p1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/ConnectionsManager;->setAppPaused(ZZ)V

    .line 53
    sput-boolean v1, Lorg/telegram/messenger/ApplicationLoader;->isScreenOn:Z

    .line 55
    :cond_3
    :goto_0
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->screenStateChanged:I

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, p2, v0}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method
