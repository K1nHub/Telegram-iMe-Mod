.class public Lcom/iMe/ui/wallet/notifications/WalletNotificationsView$$State$OnEmptyStateCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "WalletNotificationsView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/notifications/WalletNotificationsView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OnEmptyStateCommand"
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

    .line 460
    const-class p1, Lmoxy/viewstate/strategy/AddToEndSingleStrategy;

    const-string/jumbo v0, "onEmptyState"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/notifications/WalletNotificationsView;)V
    .locals 0

    .line 465
    invoke-interface {p1}, Lcom/iMe/ui/custom/state/GlobalStateView;->onEmptyState()V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 458
    check-cast p1, Lcom/iMe/ui/wallet/notifications/WalletNotificationsView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/notifications/WalletNotificationsView$$State$OnEmptyStateCommand;->apply(Lcom/iMe/ui/wallet/notifications/WalletNotificationsView;)V

    return-void
.end method
