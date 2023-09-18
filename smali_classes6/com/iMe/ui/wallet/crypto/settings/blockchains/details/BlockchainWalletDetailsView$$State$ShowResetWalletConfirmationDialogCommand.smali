.class public Lcom/iMe/ui/wallet/crypto/settings/blockchains/details/BlockchainWalletDetailsView$$State$ShowResetWalletConfirmationDialogCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "BlockchainWalletDetailsView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/crypto/settings/blockchains/details/BlockchainWalletDetailsView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowResetWalletConfirmationDialogCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/wallet/crypto/settings/blockchains/details/BlockchainWalletDetailsView;",
        ">;"
    }
.end annotation


# instance fields
.field public final dialogModel:Lcom/iMe/model/dialog/DialogModel;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/crypto/settings/blockchains/details/BlockchainWalletDetailsView$$State;Lcom/iMe/model/dialog/DialogModel;)V
    .locals 1

    .line 178
    const-class p1, Lmoxy/viewstate/strategy/OneExecutionStateStrategy;

    const-string/jumbo v0, "showResetWalletConfirmationDialog"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 180
    iput-object p2, p0, Lcom/iMe/ui/wallet/crypto/settings/blockchains/details/BlockchainWalletDetailsView$$State$ShowResetWalletConfirmationDialogCommand;->dialogModel:Lcom/iMe/model/dialog/DialogModel;

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/crypto/settings/blockchains/details/BlockchainWalletDetailsView;)V
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/settings/blockchains/details/BlockchainWalletDetailsView$$State$ShowResetWalletConfirmationDialogCommand;->dialogModel:Lcom/iMe/model/dialog/DialogModel;

    invoke-interface {p1, v0}, Lcom/iMe/ui/wallet/crypto/settings/blockchains/details/BlockchainWalletDetailsView;->showResetWalletConfirmationDialog(Lcom/iMe/model/dialog/DialogModel;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 174
    check-cast p1, Lcom/iMe/ui/wallet/crypto/settings/blockchains/details/BlockchainWalletDetailsView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/crypto/settings/blockchains/details/BlockchainWalletDetailsView$$State$ShowResetWalletConfirmationDialogCommand;->apply(Lcom/iMe/ui/wallet/crypto/settings/blockchains/details/BlockchainWalletDetailsView;)V

    return-void
.end method
