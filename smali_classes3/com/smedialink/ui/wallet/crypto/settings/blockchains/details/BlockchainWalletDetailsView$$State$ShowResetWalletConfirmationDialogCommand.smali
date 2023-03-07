.class public Lcom/smedialink/ui/wallet/crypto/settings/blockchains/details/BlockchainWalletDetailsView$$State$ShowResetWalletConfirmationDialogCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "BlockchainWalletDetailsView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/ui/wallet/crypto/settings/blockchains/details/BlockchainWalletDetailsView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowResetWalletConfirmationDialogCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/smedialink/ui/wallet/crypto/settings/blockchains/details/BlockchainWalletDetailsView;",
        ">;"
    }
.end annotation


# instance fields
.field public final dialogModel:Lcom/smedialink/model/dialog/DialogModel;


# direct methods
.method constructor <init>(Lcom/smedialink/ui/wallet/crypto/settings/blockchains/details/BlockchainWalletDetailsView$$State;Lcom/smedialink/model/dialog/DialogModel;)V
    .locals 1

    .line 144
    const-class p1, Lmoxy/viewstate/strategy/OneExecutionStateStrategy;

    const-string v0, "showResetWalletConfirmationDialog"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 146
    iput-object p2, p0, Lcom/smedialink/ui/wallet/crypto/settings/blockchains/details/BlockchainWalletDetailsView$$State$ShowResetWalletConfirmationDialogCommand;->dialogModel:Lcom/smedialink/model/dialog/DialogModel;

    return-void
.end method


# virtual methods
.method public apply(Lcom/smedialink/ui/wallet/crypto/settings/blockchains/details/BlockchainWalletDetailsView;)V
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/settings/blockchains/details/BlockchainWalletDetailsView$$State$ShowResetWalletConfirmationDialogCommand;->dialogModel:Lcom/smedialink/model/dialog/DialogModel;

    invoke-interface {p1, v0}, Lcom/smedialink/ui/wallet/crypto/settings/blockchains/details/BlockchainWalletDetailsView;->showResetWalletConfirmationDialog(Lcom/smedialink/model/dialog/DialogModel;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 140
    check-cast p1, Lcom/smedialink/ui/wallet/crypto/settings/blockchains/details/BlockchainWalletDetailsView;

    invoke-virtual {p0, p1}, Lcom/smedialink/ui/wallet/crypto/settings/blockchains/details/BlockchainWalletDetailsView$$State$ShowResetWalletConfirmationDialogCommand;->apply(Lcom/smedialink/ui/wallet/crypto/settings/blockchains/details/BlockchainWalletDetailsView;)V

    return-void
.end method
