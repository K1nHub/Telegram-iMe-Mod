.class public Lcom/iMe/ui/wallet/notifications/details/WalletNotificationDetailsView$$State$ShowClickableTextDialogCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "WalletNotificationDetailsView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/notifications/details/WalletNotificationDetailsView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowClickableTextDialogCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/wallet/notifications/details/WalletNotificationDetailsView;",
        ">;"
    }
.end annotation


# instance fields
.field public final action:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field public final items:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/notifications/details/WalletNotificationDetailsView$$State;[Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 197
    const-class p1, Lmoxy/viewstate/strategy/OneExecutionStateStrategy;

    const-string/jumbo v0, "showClickableTextDialog"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 199
    iput-object p2, p0, Lcom/iMe/ui/wallet/notifications/details/WalletNotificationDetailsView$$State$ShowClickableTextDialogCommand;->items:[Ljava/lang/String;

    .line 200
    iput-object p3, p0, Lcom/iMe/ui/wallet/notifications/details/WalletNotificationDetailsView$$State$ShowClickableTextDialogCommand;->action:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/notifications/details/WalletNotificationDetailsView;)V
    .locals 2

    .line 205
    iget-object v0, p0, Lcom/iMe/ui/wallet/notifications/details/WalletNotificationDetailsView$$State$ShowClickableTextDialogCommand;->items:[Ljava/lang/String;

    iget-object v1, p0, Lcom/iMe/ui/wallet/notifications/details/WalletNotificationDetailsView$$State$ShowClickableTextDialogCommand;->action:Lkotlin/jvm/functions/Function1;

    invoke-interface {p1, v0, v1}, Lcom/iMe/manager/wallet/WalletLinkClickableView;->showClickableTextDialog([Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 191
    check-cast p1, Lcom/iMe/ui/wallet/notifications/details/WalletNotificationDetailsView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/notifications/details/WalletNotificationDetailsView$$State$ShowClickableTextDialogCommand;->apply(Lcom/iMe/ui/wallet/notifications/details/WalletNotificationDetailsView;)V

    return-void
.end method
