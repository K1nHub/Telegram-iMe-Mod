.class public Lcom/iMe/ui/wallet/notifications/details/WalletNotificationDetailsView$$State$ActionCopyToClipboardCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "WalletNotificationDetailsView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/notifications/details/WalletNotificationDetailsView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ActionCopyToClipboardCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/wallet/notifications/details/WalletNotificationDetailsView;",
        ">;"
    }
.end annotation


# instance fields
.field public final data:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/notifications/details/WalletNotificationDetailsView$$State;Ljava/lang/String;)V
    .locals 1

    .line 137
    const-class p1, Lmoxy/viewstate/strategy/OneExecutionStateStrategy;

    const-string v0, "actionCopyToClipboard"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 139
    iput-object p2, p0, Lcom/iMe/ui/wallet/notifications/details/WalletNotificationDetailsView$$State$ActionCopyToClipboardCommand;->data:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/notifications/details/WalletNotificationDetailsView;)V
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/iMe/ui/wallet/notifications/details/WalletNotificationDetailsView$$State$ActionCopyToClipboardCommand;->data:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/iMe/manager/wallet/WalletLinkClickableView;->actionCopyToClipboard(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 133
    check-cast p1, Lcom/iMe/ui/wallet/notifications/details/WalletNotificationDetailsView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/notifications/details/WalletNotificationDetailsView$$State$ActionCopyToClipboardCommand;->apply(Lcom/iMe/ui/wallet/notifications/details/WalletNotificationDetailsView;)V

    return-void
.end method
