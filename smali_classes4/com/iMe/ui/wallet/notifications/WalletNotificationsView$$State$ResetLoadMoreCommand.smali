.class public Lcom/iMe/ui/wallet/notifications/WalletNotificationsView$$State$ResetLoadMoreCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "WalletNotificationsView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/notifications/WalletNotificationsView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ResetLoadMoreCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/wallet/notifications/WalletNotificationsView;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/notifications/WalletNotificationsView$$State;)V
    .locals 1

    .line 508
    const-class p1, Lmoxy/viewstate/strategy/AddToEndSingleStrategy;

    const-string/jumbo v0, "resetLoadMore"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/notifications/WalletNotificationsView;)V
    .locals 0

    .line 513
    invoke-interface {p1}, Lcom/iMe/ui/base/mvp/LoadMoreView;->resetLoadMore()V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 506
    check-cast p1, Lcom/iMe/ui/wallet/notifications/WalletNotificationsView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/notifications/WalletNotificationsView$$State$ResetLoadMoreCommand;->apply(Lcom/iMe/ui/wallet/notifications/WalletNotificationsView;)V

    return-void
.end method
