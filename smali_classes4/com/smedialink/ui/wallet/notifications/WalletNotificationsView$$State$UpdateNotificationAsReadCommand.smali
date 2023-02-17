.class public Lcom/smedialink/ui/wallet/notifications/WalletNotificationsView$$State$UpdateNotificationAsReadCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "WalletNotificationsView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/ui/wallet/notifications/WalletNotificationsView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UpdateNotificationAsReadCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/smedialink/ui/wallet/notifications/WalletNotificationsView;",
        ">;"
    }
.end annotation


# instance fields
.field public final notification:Lcom/smedialink/model/wallet/notification/NotificationItem;

.field public final position:I


# direct methods
.method constructor <init>(Lcom/smedialink/ui/wallet/notifications/WalletNotificationsView$$State;ILcom/smedialink/model/wallet/notification/NotificationItem;)V
    .locals 1

    .line 278
    const-class p1, Lmoxy/viewstate/strategy/AddToEndSingleStrategy;

    const-string v0, "updateNotificationAsRead"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 280
    iput p2, p0, Lcom/smedialink/ui/wallet/notifications/WalletNotificationsView$$State$UpdateNotificationAsReadCommand;->position:I

    .line 281
    iput-object p3, p0, Lcom/smedialink/ui/wallet/notifications/WalletNotificationsView$$State$UpdateNotificationAsReadCommand;->notification:Lcom/smedialink/model/wallet/notification/NotificationItem;

    return-void
.end method


# virtual methods
.method public apply(Lcom/smedialink/ui/wallet/notifications/WalletNotificationsView;)V
    .locals 2

    .line 286
    iget v0, p0, Lcom/smedialink/ui/wallet/notifications/WalletNotificationsView$$State$UpdateNotificationAsReadCommand;->position:I

    iget-object v1, p0, Lcom/smedialink/ui/wallet/notifications/WalletNotificationsView$$State$UpdateNotificationAsReadCommand;->notification:Lcom/smedialink/model/wallet/notification/NotificationItem;

    invoke-interface {p1, v0, v1}, Lcom/smedialink/ui/wallet/notifications/WalletNotificationsView;->updateNotificationAsRead(ILcom/smedialink/model/wallet/notification/NotificationItem;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 272
    check-cast p1, Lcom/smedialink/ui/wallet/notifications/WalletNotificationsView;

    invoke-virtual {p0, p1}, Lcom/smedialink/ui/wallet/notifications/WalletNotificationsView$$State$UpdateNotificationAsReadCommand;->apply(Lcom/smedialink/ui/wallet/notifications/WalletNotificationsView;)V

    return-void
.end method
