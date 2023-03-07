.class public Lcom/smedialink/ui/wallet/crypto/settings/blockchains/BlockchainsManagementView$$State$ShowWalletDetailsDialogCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "BlockchainsManagementView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/ui/wallet/crypto/settings/blockchains/BlockchainsManagementView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowWalletDetailsDialogCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/smedialink/ui/wallet/crypto/settings/blockchains/BlockchainsManagementView;",
        ">;"
    }
.end annotation


# instance fields
.field public final infoDialogModel:Lcom/smedialink/model/dialog/DialogModel;

.field public final walletItem:Lcom/smedialink/model/wallet/crypto/settings/BlockchainWalletItem;


# direct methods
.method constructor <init>(Lcom/smedialink/ui/wallet/crypto/settings/blockchains/BlockchainsManagementView$$State;Lcom/smedialink/model/wallet/crypto/settings/BlockchainWalletItem;Lcom/smedialink/model/dialog/DialogModel;)V
    .locals 1

    .line 197
    const-class p1, Lmoxy/viewstate/strategy/OneExecutionStateStrategy;

    const-string v0, "showWalletDetailsDialog"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 199
    iput-object p2, p0, Lcom/smedialink/ui/wallet/crypto/settings/blockchains/BlockchainsManagementView$$State$ShowWalletDetailsDialogCommand;->walletItem:Lcom/smedialink/model/wallet/crypto/settings/BlockchainWalletItem;

    .line 200
    iput-object p3, p0, Lcom/smedialink/ui/wallet/crypto/settings/blockchains/BlockchainsManagementView$$State$ShowWalletDetailsDialogCommand;->infoDialogModel:Lcom/smedialink/model/dialog/DialogModel;

    return-void
.end method


# virtual methods
.method public apply(Lcom/smedialink/ui/wallet/crypto/settings/blockchains/BlockchainsManagementView;)V
    .locals 2

    .line 205
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/settings/blockchains/BlockchainsManagementView$$State$ShowWalletDetailsDialogCommand;->walletItem:Lcom/smedialink/model/wallet/crypto/settings/BlockchainWalletItem;

    iget-object v1, p0, Lcom/smedialink/ui/wallet/crypto/settings/blockchains/BlockchainsManagementView$$State$ShowWalletDetailsDialogCommand;->infoDialogModel:Lcom/smedialink/model/dialog/DialogModel;

    invoke-interface {p1, v0, v1}, Lcom/smedialink/ui/wallet/crypto/settings/blockchains/BlockchainsManagementView;->showWalletDetailsDialog(Lcom/smedialink/model/wallet/crypto/settings/BlockchainWalletItem;Lcom/smedialink/model/dialog/DialogModel;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 191
    check-cast p1, Lcom/smedialink/ui/wallet/crypto/settings/blockchains/BlockchainsManagementView;

    invoke-virtual {p0, p1}, Lcom/smedialink/ui/wallet/crypto/settings/blockchains/BlockchainsManagementView$$State$ShowWalletDetailsDialogCommand;->apply(Lcom/smedialink/ui/wallet/crypto/settings/blockchains/BlockchainsManagementView;)V

    return-void
.end method
