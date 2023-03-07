.class public interface abstract Lcom/smedialink/ui/wallet/notifications/WalletNotificationsView;
.super Ljava/lang/Object;
.source "WalletNotificationsView.kt"

# interfaces
.implements Lcom/smedialink/ui/base/mvp/base/BaseView;
.implements Lcom/smedialink/ui/custom/state/GlobalStateView;
.implements Lcom/smedialink/ui/base/mvp/LoadMoreView;
.implements Lcom/smedialink/ui/base/mvp/SwipeRefreshView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/smedialink/ui/base/mvp/base/BaseView;",
        "Lcom/smedialink/ui/custom/state/GlobalStateView;",
        "Lcom/smedialink/ui/base/mvp/LoadMoreView<",
        "Lcom/smedialink/model/wallet/notification/NotificationItem;",
        ">;",
        "Lcom/smedialink/ui/base/mvp/SwipeRefreshView;"
    }
.end annotation

.annotation runtime Lmoxy/viewstate/strategy/alias/AddToEndSingle;
.end annotation


# virtual methods
.method public abstract onLoadedNotifications(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/smedialink/model/wallet/notification/NotificationItem;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract updateNotificationAsRead(ILcom/smedialink/model/wallet/notification/NotificationItem;)V
.end method
