.class public Lcom/iMe/ui/wallet/common/WalletRootView$$State$ShowNotificationItemCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "WalletRootView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/common/WalletRootView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowNotificationItemCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/wallet/common/WalletRootView;",
        ">;"
    }
.end annotation


# instance fields
.field public final show:Z


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/common/WalletRootView$$State;Z)V
    .locals 1

    .line 180
    const-class p1, Lmoxy/viewstate/strategy/AddToEndSingleStrategy;

    const-string v0, "showNotificationItem"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 182
    iput-boolean p2, p0, Lcom/iMe/ui/wallet/common/WalletRootView$$State$ShowNotificationItemCommand;->show:Z

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/common/WalletRootView;)V
    .locals 1

    .line 187
    iget-boolean v0, p0, Lcom/iMe/ui/wallet/common/WalletRootView$$State$ShowNotificationItemCommand;->show:Z

    invoke-interface {p1, v0}, Lcom/iMe/ui/wallet/common/WalletRootView;->showNotificationItem(Z)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 176
    check-cast p1, Lcom/iMe/ui/wallet/common/WalletRootView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/common/WalletRootView$$State$ShowNotificationItemCommand;->apply(Lcom/iMe/ui/wallet/common/WalletRootView;)V

    return-void
.end method
