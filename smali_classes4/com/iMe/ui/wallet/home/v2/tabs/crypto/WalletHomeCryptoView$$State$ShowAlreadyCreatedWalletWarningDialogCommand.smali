.class public Lcom/iMe/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoView$$State$ShowAlreadyCreatedWalletWarningDialogCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "WalletHomeCryptoView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowAlreadyCreatedWalletWarningDialogCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoView;",
        ">;"
    }
.end annotation


# instance fields
.field public final action:Lcom/iMe/fork/utils/Callbacks$Callback;

.field public final dialogModel:Lcom/iMe/model/dialog/DialogModel;

.field public final walletAddress:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoView$$State;Lcom/iMe/model/dialog/DialogModel;Ljava/lang/String;Lcom/iMe/fork/utils/Callbacks$Callback;)V
    .locals 1

    .line 639
    const-class p1, Lmoxy/viewstate/strategy/OneExecutionStateStrategy;

    const-string v0, "showAlreadyCreatedWalletWarningDialog"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 641
    iput-object p2, p0, Lcom/iMe/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoView$$State$ShowAlreadyCreatedWalletWarningDialogCommand;->dialogModel:Lcom/iMe/model/dialog/DialogModel;

    .line 642
    iput-object p3, p0, Lcom/iMe/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoView$$State$ShowAlreadyCreatedWalletWarningDialogCommand;->walletAddress:Ljava/lang/String;

    .line 643
    iput-object p4, p0, Lcom/iMe/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoView$$State$ShowAlreadyCreatedWalletWarningDialogCommand;->action:Lcom/iMe/fork/utils/Callbacks$Callback;

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoView;)V
    .locals 3

    .line 648
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoView$$State$ShowAlreadyCreatedWalletWarningDialogCommand;->dialogModel:Lcom/iMe/model/dialog/DialogModel;

    iget-object v1, p0, Lcom/iMe/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoView$$State$ShowAlreadyCreatedWalletWarningDialogCommand;->walletAddress:Ljava/lang/String;

    iget-object v2, p0, Lcom/iMe/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoView$$State$ShowAlreadyCreatedWalletWarningDialogCommand;->action:Lcom/iMe/fork/utils/Callbacks$Callback;

    invoke-interface {p1, v0, v1, v2}, Lcom/iMe/manager/wallet/create/WalletCreateManagerView;->showAlreadyCreatedWalletWarningDialog(Lcom/iMe/model/dialog/DialogModel;Ljava/lang/String;Lcom/iMe/fork/utils/Callbacks$Callback;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 630
    check-cast p1, Lcom/iMe/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoView$$State$ShowAlreadyCreatedWalletWarningDialogCommand;->apply(Lcom/iMe/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoView;)V

    return-void
.end method
