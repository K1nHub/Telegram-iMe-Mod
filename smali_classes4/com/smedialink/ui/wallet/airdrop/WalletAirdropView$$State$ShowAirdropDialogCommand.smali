.class public Lcom/smedialink/ui/wallet/airdrop/WalletAirdropView$$State$ShowAirdropDialogCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "WalletAirdropView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/ui/wallet/airdrop/WalletAirdropView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowAirdropDialogCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/smedialink/ui/wallet/airdrop/WalletAirdropView;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/smedialink/ui/wallet/airdrop/WalletAirdropView$$State;)V
    .locals 1

    .line 112
    const-class p1, Lmoxy/viewstate/strategy/OneExecutionStateStrategy;

    const-string v0, "showAirdropDialog"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public apply(Lcom/smedialink/ui/wallet/airdrop/WalletAirdropView;)V
    .locals 0

    .line 117
    invoke-interface {p1}, Lcom/smedialink/ui/wallet/airdrop/WalletAirdropView;->showAirdropDialog()V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 110
    check-cast p1, Lcom/smedialink/ui/wallet/airdrop/WalletAirdropView;

    invoke-virtual {p0, p1}, Lcom/smedialink/ui/wallet/airdrop/WalletAirdropView$$State$ShowAirdropDialogCommand;->apply(Lcom/smedialink/ui/wallet/airdrop/WalletAirdropView;)V

    return-void
.end method
