.class public Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsView$$State$ShowAlreadyCreatedWalletWarningDialogCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "WalletTokenDetailsView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowAlreadyCreatedWalletWarningDialogCommand"
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

.field public final dialogModel:Lcom/smedialink/model/dialog/DialogModel;

.field public final walletAddress:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsView$$State;Lcom/smedialink/model/dialog/DialogModel;Ljava/lang/String;Lorg/fork/utils/Callbacks$Callback;)V
    .locals 1

    .line 1035
    const-class p1, Lmoxy/viewstate/strategy/OneExecutionStateStrategy;

    const-string v0, "showAlreadyCreatedWalletWarningDialog"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 1037
    iput-object p2, p0, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsView$$State$ShowAlreadyCreatedWalletWarningDialogCommand;->dialogModel:Lcom/smedialink/model/dialog/DialogModel;

    .line 1038
    iput-object p3, p0, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsView$$State$ShowAlreadyCreatedWalletWarningDialogCommand;->walletAddress:Ljava/lang/String;

    .line 1039
    iput-object p4, p0, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsView$$State$ShowAlreadyCreatedWalletWarningDialogCommand;->action:Lorg/fork/utils/Callbacks$Callback;

    return-void
.end method


# virtual methods
.method public apply(Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsView;)V
    .locals 3

    .line 1044
    iget-object v0, p0, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsView$$State$ShowAlreadyCreatedWalletWarningDialogCommand;->dialogModel:Lcom/smedialink/model/dialog/DialogModel;

    iget-object v1, p0, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsView$$State$ShowAlreadyCreatedWalletWarningDialogCommand;->walletAddress:Ljava/lang/String;

    iget-object v2, p0, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsView$$State$ShowAlreadyCreatedWalletWarningDialogCommand;->action:Lorg/fork/utils/Callbacks$Callback;

    invoke-interface {p1, v0, v1, v2}, Lcom/smedialink/manager/wallet/create/WalletCreateManagerView;->showAlreadyCreatedWalletWarningDialog(Lcom/smedialink/model/dialog/DialogModel;Ljava/lang/String;Lorg/fork/utils/Callbacks$Callback;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 1026
    check-cast p1, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsView;

    invoke-virtual {p0, p1}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsView$$State$ShowAlreadyCreatedWalletWarningDialogCommand;->apply(Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsView;)V

    return-void
.end method
