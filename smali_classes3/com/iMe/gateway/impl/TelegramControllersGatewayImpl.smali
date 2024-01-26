.class public final Lcom/iMe/gateway/impl/TelegramControllersGatewayImpl;
.super Ljava/lang/Object;
.source "TelegramControllersGatewayImpl.kt"

# interfaces
.implements Lcom/iMe/gateway/TelegramControllersGateway;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTelegramControllersGatewayImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TelegramControllersGatewayImpl.kt\ncom/iMe/gateway/impl/TelegramControllersGatewayImpl\n+ 2 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n*L\n1#1,45:1\n361#2,7:46\n*S KotlinDebug\n*F\n+ 1 TelegramControllersGatewayImpl.kt\ncom/iMe/gateway/impl/TelegramControllersGatewayImpl\n*L\n37#1:46,7\n*E\n"
.end annotation


# instance fields
.field private final instancesCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final telegramGateway:Lcom/iMe/storage/domain/gateway/TelegramGateway;


# direct methods
.method public constructor <init>(Lcom/iMe/storage/domain/gateway/TelegramGateway;)V
    .locals 1

    const-string v0, "telegramGateway"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/iMe/gateway/impl/TelegramControllersGatewayImpl;->telegramGateway:Lcom/iMe/storage/domain/gateway/TelegramGateway;

    .line 16
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/iMe/gateway/impl/TelegramControllersGatewayImpl;->instancesCache:Ljava/util/HashMap;

    return-void
.end method

.method private final generateInstanceKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x5f

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/iMe/gateway/impl/TelegramControllersGatewayImpl;->telegramGateway:Lcom/iMe/storage/domain/gateway/TelegramGateway;

    invoke-interface {p1}, Lcom/iMe/storage/domain/gateway/TelegramGateway;->getSelectedAccountIndex()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final getInstance(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lcom/iMe/gateway/impl/TelegramControllersGatewayImpl;->instancesCache:Ljava/util/HashMap;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "defaultValue!!::class.java.name"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/iMe/gateway/impl/TelegramControllersGatewayImpl;->generateInstanceKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 361
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 364
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    move-object p1, v2

    :goto_0
    return-object p1
.end method

.method private final getSelectedAccount(I)I
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 42
    iget-object p1, p0, Lcom/iMe/gateway/impl/TelegramControllersGatewayImpl;->telegramGateway:Lcom/iMe/storage/domain/gateway/TelegramGateway;

    invoke-interface {p1}, Lcom/iMe/storage/domain/gateway/TelegramGateway;->getSelectedAccountIndex()I

    move-result p1

    :cond_0
    return p1
.end method


# virtual methods
.method public getConnectionsManager(I)Lorg/telegram/tgnet/ConnectionsManager;
    .locals 1

    .line 34
    invoke-direct {p0, p1}, Lcom/iMe/gateway/impl/TelegramControllersGatewayImpl;->getSelectedAccount(I)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/iMe/gateway/impl/TelegramControllersGatewayImpl;->getInstance(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "getInstance(ConnectionsM\u2026ccount(selectedAccount)))"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lorg/telegram/tgnet/ConnectionsManager;

    return-object p1
.end method

.method public getMessagesController(I)Lorg/telegram/messenger/MessagesController;
    .locals 1

    .line 19
    invoke-direct {p0, p1}, Lcom/iMe/gateway/impl/TelegramControllersGatewayImpl;->getSelectedAccount(I)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/iMe/gateway/impl/TelegramControllersGatewayImpl;->getInstance(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "getInstance(MessagesCont\u2026ccount(selectedAccount)))"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lorg/telegram/messenger/MessagesController;

    return-object p1
.end method

.method public getNotificationCenterInstance(I)Lorg/telegram/messenger/NotificationCenter;
    .locals 1

    .line 28
    invoke-direct {p0, p1}, Lcom/iMe/gateway/impl/TelegramControllersGatewayImpl;->getSelectedAccount(I)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/iMe/gateway/impl/TelegramControllersGatewayImpl;->getInstance(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "getInstance(Notification\u2026ccount(selectedAccount)))"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lorg/telegram/messenger/NotificationCenter;

    return-object p1
.end method

.method public getNotificationsController(I)Lorg/telegram/messenger/NotificationsController;
    .locals 1

    .line 31
    invoke-direct {p0, p1}, Lcom/iMe/gateway/impl/TelegramControllersGatewayImpl;->getSelectedAccount(I)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/NotificationsController;->getInstance(I)Lorg/telegram/messenger/NotificationsController;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/iMe/gateway/impl/TelegramControllersGatewayImpl;->getInstance(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "getInstance(Notification\u2026ccount(selectedAccount)))"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lorg/telegram/messenger/NotificationsController;

    return-object p1
.end method

.method public getSendMessagesHelper(I)Lorg/telegram/messenger/SendMessagesHelper;
    .locals 1

    .line 22
    invoke-direct {p0, p1}, Lcom/iMe/gateway/impl/TelegramControllersGatewayImpl;->getSelectedAccount(I)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance(I)Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/iMe/gateway/impl/TelegramControllersGatewayImpl;->getInstance(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "getInstance(SendMessages\u2026ccount(selectedAccount)))"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lorg/telegram/messenger/SendMessagesHelper;

    return-object p1
.end method

.method public getWalletFingerprintController(I)Lcom/iMe/fork/controller/WalletFingerprintController;
    .locals 1

    .line 25
    sget-object v0, Lcom/iMe/fork/controller/WalletFingerprintController;->Companion:Lcom/iMe/fork/controller/WalletFingerprintController$Companion;

    invoke-direct {p0, p1}, Lcom/iMe/gateway/impl/TelegramControllersGatewayImpl;->getSelectedAccount(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/iMe/fork/controller/WalletFingerprintController$Companion;->getInstance(I)Lcom/iMe/fork/controller/WalletFingerprintController;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/iMe/gateway/impl/TelegramControllersGatewayImpl;->getInstance(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/iMe/fork/controller/WalletFingerprintController;

    return-object p1
.end method
