.class public Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsView$$State$ShowAnimatedDialogCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "WalletTokenDetailsView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowAnimatedDialogCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsView;",
        ">;"
    }
.end annotation


# instance fields
.field public final action:Lorg/fork/utils/Callbacks$Callback;

.field public final model:Lcom/smedialink/model/dialog/AnimatedSpannableDialogModel;


# direct methods
.method constructor <init>(Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsView$$State;Lcom/smedialink/model/dialog/AnimatedSpannableDialogModel;Lorg/fork/utils/Callbacks$Callback;)V
    .locals 1

    .line 1014
    const-class p1, Lmoxy/viewstate/strategy/OneExecutionStateStrategy;

    const-string v0, "showAnimatedDialog"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 1016
    iput-object p2, p0, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsView$$State$ShowAnimatedDialogCommand;->model:Lcom/smedialink/model/dialog/AnimatedSpannableDialogModel;

    .line 1017
    iput-object p3, p0, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsView$$State$ShowAnimatedDialogCommand;->action:Lorg/fork/utils/Callbacks$Callback;

    return-void
.end method


# virtual methods
.method public apply(Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsView;)V
    .locals 2

    .line 1022
    iget-object v0, p0, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsView$$State$ShowAnimatedDialogCommand;->model:Lcom/smedialink/model/dialog/AnimatedSpannableDialogModel;

    iget-object v1, p0, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsView$$State$ShowAnimatedDialogCommand;->action:Lorg/fork/utils/Callbacks$Callback;

    invoke-interface {p1, v0, v1}, Lcom/smedialink/manager/wallet/create/WalletCreateManagerView;->showAnimatedDialog(Lcom/smedialink/model/dialog/AnimatedSpannableDialogModel;Lorg/fork/utils/Callbacks$Callback;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 1008
    check-cast p1, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsView;

    invoke-virtual {p0, p1}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsView$$State$ShowAnimatedDialogCommand;->apply(Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsView;)V

    return-void
.end method
