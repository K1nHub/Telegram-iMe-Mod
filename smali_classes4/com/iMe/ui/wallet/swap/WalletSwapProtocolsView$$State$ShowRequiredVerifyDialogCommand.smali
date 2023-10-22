.class public Lcom/iMe/ui/wallet/swap/WalletSwapProtocolsView$$State$ShowRequiredVerifyDialogCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "WalletSwapProtocolsView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/swap/WalletSwapProtocolsView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowRequiredVerifyDialogCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/wallet/swap/WalletSwapProtocolsView;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/swap/WalletSwapProtocolsView$$State;)V
    .locals 1

    .line 197
    const-class p1, Lmoxy/viewstate/strategy/OneExecutionStateStrategy;

    const-string/jumbo v0, "showRequiredVerifyDialog"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/swap/WalletSwapProtocolsView;)V
    .locals 0

    .line 202
    invoke-interface {p1}, Lcom/iMe/ui/wallet/swap/WalletSwapProtocolsView;->showRequiredVerifyDialog()V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 195
    check-cast p1, Lcom/iMe/ui/wallet/swap/WalletSwapProtocolsView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/swap/WalletSwapProtocolsView$$State$ShowRequiredVerifyDialogCommand;->apply(Lcom/iMe/ui/wallet/swap/WalletSwapProtocolsView;)V

    return-void
.end method
