.class public interface abstract Lcom/iMe/gateway/TelegramControllersGateway;
.super Ljava/lang/Object;
.source "TelegramControllersGateway.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/gateway/TelegramControllersGateway$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/iMe/gateway/TelegramControllersGateway$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/iMe/gateway/TelegramControllersGateway$Companion;->$$INSTANCE:Lcom/iMe/gateway/TelegramControllersGateway$Companion;

    return-void
.end method


# virtual methods
.method public abstract getConnectionsManager(I)Lorg/telegram/tgnet/ConnectionsManager;
.end method

.method public abstract getMessagesController(I)Lorg/telegram/messenger/MessagesController;
.end method

.method public abstract getNotificationCenterInstance(I)Lorg/telegram/messenger/NotificationCenter;
.end method

.method public abstract getNotificationsController(I)Lorg/telegram/messenger/NotificationsController;
.end method

.method public abstract getSendMessagesHelper(I)Lorg/telegram/messenger/SendMessagesHelper;
.end method

.method public abstract getWalletFingerprintController(I)Lcom/iMe/fork/controller/WalletFingerprintController;
.end method
