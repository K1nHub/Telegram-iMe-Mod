.class public interface abstract Lcom/smedialink/gateway/TelegramControllersGateway;
.super Ljava/lang/Object;
.source "TelegramControllersGateway.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smedialink/gateway/TelegramControllersGateway$DefaultImpls;
    }
.end annotation


# virtual methods
.method public abstract getMessagesController(I)Lorg/telegram/messenger/MessagesController;
.end method

.method public abstract getNotificationCenterInstance(I)Lorg/telegram/messenger/NotificationCenter;
.end method

.method public abstract getSendMessagesHelper(I)Lorg/telegram/messenger/SendMessagesHelper;
.end method

.method public abstract getWalletFingerprintController(I)Lorg/fork/controller/WalletFingerprintController;
.end method
