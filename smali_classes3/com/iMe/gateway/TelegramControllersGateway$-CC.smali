.class public final synthetic Lcom/iMe/gateway/TelegramControllersGateway$-CC;
.super Ljava/lang/Object;
.source "TelegramControllersGateway.kt"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/iMe/gateway/TelegramControllersGateway;->Companion:Lcom/iMe/gateway/TelegramControllersGateway$Companion;

    return-void
.end method

.method public static synthetic getConnectionsManager$default(Lcom/iMe/gateway/TelegramControllersGateway;IILjava/lang/Object;)Lorg/telegram/tgnet/ConnectionsManager;
    .locals 0

    if-nez p3, :cond_1

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, -0x1

    .line 28
    :cond_0
    invoke-interface {p0, p1}, Lcom/iMe/gateway/TelegramControllersGateway;->getConnectionsManager(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: getConnectionsManager"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic getMessagesController$default(Lcom/iMe/gateway/TelegramControllersGateway;IILjava/lang/Object;)Lorg/telegram/messenger/MessagesController;
    .locals 0

    if-nez p3, :cond_1

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, -0x1

    .line 13
    :cond_0
    invoke-interface {p0, p1}, Lcom/iMe/gateway/TelegramControllersGateway;->getMessagesController(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: getMessagesController"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic getNotificationCenterInstance$default(Lcom/iMe/gateway/TelegramControllersGateway;IILjava/lang/Object;)Lorg/telegram/messenger/NotificationCenter;
    .locals 0

    if-nez p3, :cond_1

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, -0x1

    .line 22
    :cond_0
    invoke-interface {p0, p1}, Lcom/iMe/gateway/TelegramControllersGateway;->getNotificationCenterInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: getNotificationCenterInstance"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic getSendMessagesHelper$default(Lcom/iMe/gateway/TelegramControllersGateway;IILjava/lang/Object;)Lorg/telegram/messenger/SendMessagesHelper;
    .locals 0

    if-nez p3, :cond_1

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, -0x1

    .line 16
    :cond_0
    invoke-interface {p0, p1}, Lcom/iMe/gateway/TelegramControllersGateway;->getSendMessagesHelper(I)Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: getSendMessagesHelper"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic getWalletFingerprintController$default(Lcom/iMe/gateway/TelegramControllersGateway;IILjava/lang/Object;)Lcom/iMe/fork/controller/WalletFingerprintController;
    .locals 0

    if-nez p3, :cond_1

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, -0x1

    .line 19
    :cond_0
    invoke-interface {p0, p1}, Lcom/iMe/gateway/TelegramControllersGateway;->getWalletFingerprintController(I)Lcom/iMe/fork/controller/WalletFingerprintController;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: getWalletFingerprintController"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
