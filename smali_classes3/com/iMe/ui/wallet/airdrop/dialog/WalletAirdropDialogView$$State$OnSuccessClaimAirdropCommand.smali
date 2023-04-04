.class public Lcom/iMe/ui/wallet/airdrop/dialog/WalletAirdropDialogView$$State$OnSuccessClaimAirdropCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "WalletAirdropDialogView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/airdrop/dialog/WalletAirdropDialogView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OnSuccessClaimAirdropCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/wallet/airdrop/dialog/WalletAirdropDialogView;",
        ">;"
    }
.end annotation


# instance fields
.field public final description:Ljava/lang/String;

.field public final title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/airdrop/dialog/WalletAirdropDialogView$$State;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 159
    const-class p1, Lmoxy/viewstate/strategy/OneExecutionStateStrategy;

    const-string v0, "onSuccessClaimAirdrop"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 161
    iput-object p2, p0, Lcom/iMe/ui/wallet/airdrop/dialog/WalletAirdropDialogView$$State$OnSuccessClaimAirdropCommand;->title:Ljava/lang/String;

    .line 162
    iput-object p3, p0, Lcom/iMe/ui/wallet/airdrop/dialog/WalletAirdropDialogView$$State$OnSuccessClaimAirdropCommand;->description:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/airdrop/dialog/WalletAirdropDialogView;)V
    .locals 2

    .line 167
    iget-object v0, p0, Lcom/iMe/ui/wallet/airdrop/dialog/WalletAirdropDialogView$$State$OnSuccessClaimAirdropCommand;->title:Ljava/lang/String;

    iget-object v1, p0, Lcom/iMe/ui/wallet/airdrop/dialog/WalletAirdropDialogView$$State$OnSuccessClaimAirdropCommand;->description:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/iMe/ui/wallet/airdrop/dialog/WalletAirdropDialogView;->onSuccessClaimAirdrop(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 153
    check-cast p1, Lcom/iMe/ui/wallet/airdrop/dialog/WalletAirdropDialogView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/airdrop/dialog/WalletAirdropDialogView$$State$OnSuccessClaimAirdropCommand;->apply(Lcom/iMe/ui/wallet/airdrop/dialog/WalletAirdropDialogView;)V

    return-void
.end method
