.class public Lcom/iMe/ui/wallet/donations/WalletDonationsView$$State$ShowConfirmDialogCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "WalletDonationsView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/donations/WalletDonationsView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowConfirmDialogCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/wallet/donations/WalletDonationsView;",
        ">;"
    }
.end annotation


# instance fields
.field public final action:Lcom/iMe/fork/utils/Callbacks$Callback;

.field public final dialogModel:Lcom/iMe/model/dialog/DialogModel;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/donations/WalletDonationsView$$State;Lcom/iMe/model/dialog/DialogModel;Lcom/iMe/fork/utils/Callbacks$Callback;)V
    .locals 1

    .line 210
    const-class p1, Lmoxy/viewstate/strategy/AddToEndSingleStrategy;

    const-string v0, "showConfirmDialog"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 212
    iput-object p2, p0, Lcom/iMe/ui/wallet/donations/WalletDonationsView$$State$ShowConfirmDialogCommand;->dialogModel:Lcom/iMe/model/dialog/DialogModel;

    .line 213
    iput-object p3, p0, Lcom/iMe/ui/wallet/donations/WalletDonationsView$$State$ShowConfirmDialogCommand;->action:Lcom/iMe/fork/utils/Callbacks$Callback;

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/donations/WalletDonationsView;)V
    .locals 2

    .line 218
    iget-object v0, p0, Lcom/iMe/ui/wallet/donations/WalletDonationsView$$State$ShowConfirmDialogCommand;->dialogModel:Lcom/iMe/model/dialog/DialogModel;

    iget-object v1, p0, Lcom/iMe/ui/wallet/donations/WalletDonationsView$$State$ShowConfirmDialogCommand;->action:Lcom/iMe/fork/utils/Callbacks$Callback;

    invoke-interface {p1, v0, v1}, Lcom/iMe/ui/wallet/donations/WalletDonationsView;->showConfirmDialog(Lcom/iMe/model/dialog/DialogModel;Lcom/iMe/fork/utils/Callbacks$Callback;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 204
    check-cast p1, Lcom/iMe/ui/wallet/donations/WalletDonationsView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/donations/WalletDonationsView$$State$ShowConfirmDialogCommand;->apply(Lcom/iMe/ui/wallet/donations/WalletDonationsView;)V

    return-void
.end method
