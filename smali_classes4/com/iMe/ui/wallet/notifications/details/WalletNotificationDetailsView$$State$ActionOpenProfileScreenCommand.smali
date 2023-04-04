.class public Lcom/iMe/ui/wallet/notifications/details/WalletNotificationDetailsView$$State$ActionOpenProfileScreenCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "WalletNotificationDetailsView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/notifications/details/WalletNotificationDetailsView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ActionOpenProfileScreenCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/wallet/notifications/details/WalletNotificationDetailsView;",
        ">;"
    }
.end annotation


# instance fields
.field public final userId:J


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/notifications/details/WalletNotificationDetailsView$$State;J)V
    .locals 1

    .line 152
    const-class p1, Lmoxy/viewstate/strategy/OneExecutionStateStrategy;

    const-string v0, "actionOpenProfileScreen"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 154
    iput-wide p2, p0, Lcom/iMe/ui/wallet/notifications/details/WalletNotificationDetailsView$$State$ActionOpenProfileScreenCommand;->userId:J

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/notifications/details/WalletNotificationDetailsView;)V
    .locals 2

    .line 159
    iget-wide v0, p0, Lcom/iMe/ui/wallet/notifications/details/WalletNotificationDetailsView$$State$ActionOpenProfileScreenCommand;->userId:J

    invoke-interface {p1, v0, v1}, Lcom/iMe/manager/wallet/WalletLinkClickableView;->actionOpenProfileScreen(J)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 148
    check-cast p1, Lcom/iMe/ui/wallet/notifications/details/WalletNotificationDetailsView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/notifications/details/WalletNotificationDetailsView$$State$ActionOpenProfileScreenCommand;->apply(Lcom/iMe/ui/wallet/notifications/details/WalletNotificationDetailsView;)V

    return-void
.end method
