.class public Lcom/smedialink/ui/wallet/airdrop/dialog/WalletAirdropDialogView$$State$FinishScreenCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "WalletAirdropDialogView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/ui/wallet/airdrop/dialog/WalletAirdropDialogView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FinishScreenCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/smedialink/ui/wallet/airdrop/dialog/WalletAirdropDialogView;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/smedialink/ui/wallet/airdrop/dialog/WalletAirdropDialogView$$State;)V
    .locals 1

    .line 220
    const-class p1, Lmoxy/viewstate/strategy/OneExecutionStateStrategy;

    const-string v0, "finishScreen"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public apply(Lcom/smedialink/ui/wallet/airdrop/dialog/WalletAirdropDialogView;)V
    .locals 0

    .line 225
    invoke-interface {p1}, Lcom/smedialink/ui/base/mvp/base/BaseView;->finishScreen()V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 218
    check-cast p1, Lcom/smedialink/ui/wallet/airdrop/dialog/WalletAirdropDialogView;

    invoke-virtual {p0, p1}, Lcom/smedialink/ui/wallet/airdrop/dialog/WalletAirdropDialogView$$State$FinishScreenCommand;->apply(Lcom/smedialink/ui/wallet/airdrop/dialog/WalletAirdropDialogView;)V

    return-void
.end method
