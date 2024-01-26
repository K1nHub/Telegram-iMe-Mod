.class public interface abstract Lcom/iMe/ui/wallet/notifications/WalletNotificationsView;
.super Ljava/lang/Object;
.source "WalletNotificationsView.kt"

# interfaces
.implements Lcom/iMe/ui/base/mvp/base/BaseView;
.implements Lcom/iMe/ui/custom/state/GlobalStateView;
.implements Lcom/iMe/ui/base/mvp/LoadMoreView;
.implements Lcom/iMe/ui/base/mvp/SwipeRefreshView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/iMe/ui/base/mvp/base/BaseView;",
        "Lcom/iMe/ui/custom/state/GlobalStateView;",
        "Lcom/iMe/ui/base/mvp/LoadMoreView<",
        "Lcom/iMe/model/wallet/notification/NotificationItem;",
        ">;",
        "Lcom/iMe/ui/base/mvp/SwipeRefreshView;"
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
            "Lcom/iMe/model/wallet/notification/NotificationItem;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract updateNotificationAsRead(ILcom/iMe/model/wallet/notification/NotificationItem;)V
.end method
