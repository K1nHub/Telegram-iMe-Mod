.class public Lcom/iMe/ui/wallet/notifications/WalletNotificationsView$$State$OnLoadedNotificationsCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "WalletNotificationsView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/notifications/WalletNotificationsView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OnLoadedNotificationsCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/wallet/notifications/WalletNotificationsView;",
        ">;"
    }
.end annotation


# instance fields
.field public final notifications:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/iMe/model/wallet/notification/NotificationItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/notifications/WalletNotificationsView$$State;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/iMe/model/wallet/notification/NotificationItem;",
            ">;)V"
        }
    .end annotation

    .line 295
    const-class p1, Lmoxy/viewstate/strategy/AddToEndSingleStrategy;

    const-string/jumbo v0, "onLoadedNotifications"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 297
    iput-object p2, p0, Lcom/iMe/ui/wallet/notifications/WalletNotificationsView$$State$OnLoadedNotificationsCommand;->notifications:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/notifications/WalletNotificationsView;)V
    .locals 1

    .line 302
    iget-object v0, p0, Lcom/iMe/ui/wallet/notifications/WalletNotificationsView$$State$OnLoadedNotificationsCommand;->notifications:Ljava/util/List;

    invoke-interface {p1, v0}, Lcom/iMe/ui/wallet/notifications/WalletNotificationsView;->onLoadedNotifications(Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 291
    check-cast p1, Lcom/iMe/ui/wallet/notifications/WalletNotificationsView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/notifications/WalletNotificationsView$$State$OnLoadedNotificationsCommand;->apply(Lcom/iMe/ui/wallet/notifications/WalletNotificationsView;)V

    return-void
.end method
