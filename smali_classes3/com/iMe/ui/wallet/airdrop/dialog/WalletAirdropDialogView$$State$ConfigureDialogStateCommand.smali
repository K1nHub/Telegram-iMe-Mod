.class public Lcom/iMe/ui/wallet/airdrop/dialog/WalletAirdropDialogView$$State$ConfigureDialogStateCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "WalletAirdropDialogView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/airdrop/dialog/WalletAirdropDialogView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ConfigureDialogStateCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/wallet/airdrop/dialog/WalletAirdropDialogView;",
        ">;"
    }
.end annotation


# instance fields
.field public final amount:I

.field public final isBotActivated:Z

.field public final isCryptoWalletCreated:Z

.field public final step:Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropStep;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/airdrop/dialog/WalletAirdropDialogView$$State;ZZLcom/iMe/storage/domain/model/crypto/airdrop/AirdropStep;I)V
    .locals 1

    .line 157
    const-class p1, Lmoxy/viewstate/strategy/OneExecutionStateStrategy;

    const-string v0, "configureDialogState"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 159
    iput-boolean p2, p0, Lcom/iMe/ui/wallet/airdrop/dialog/WalletAirdropDialogView$$State$ConfigureDialogStateCommand;->isBotActivated:Z

    .line 160
    iput-boolean p3, p0, Lcom/iMe/ui/wallet/airdrop/dialog/WalletAirdropDialogView$$State$ConfigureDialogStateCommand;->isCryptoWalletCreated:Z

    .line 161
    iput-object p4, p0, Lcom/iMe/ui/wallet/airdrop/dialog/WalletAirdropDialogView$$State$ConfigureDialogStateCommand;->step:Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropStep;

    .line 162
    iput p5, p0, Lcom/iMe/ui/wallet/airdrop/dialog/WalletAirdropDialogView$$State$ConfigureDialogStateCommand;->amount:I

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/airdrop/dialog/WalletAirdropDialogView;)V
    .locals 4

    .line 167
    iget-boolean v0, p0, Lcom/iMe/ui/wallet/airdrop/dialog/WalletAirdropDialogView$$State$ConfigureDialogStateCommand;->isBotActivated:Z

    iget-boolean v1, p0, Lcom/iMe/ui/wallet/airdrop/dialog/WalletAirdropDialogView$$State$ConfigureDialogStateCommand;->isCryptoWalletCreated:Z

    iget-object v2, p0, Lcom/iMe/ui/wallet/airdrop/dialog/WalletAirdropDialogView$$State$ConfigureDialogStateCommand;->step:Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropStep;

    iget v3, p0, Lcom/iMe/ui/wallet/airdrop/dialog/WalletAirdropDialogView$$State$ConfigureDialogStateCommand;->amount:I

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/iMe/ui/wallet/airdrop/dialog/WalletAirdropDialogView;->configureDialogState(ZZLcom/iMe/storage/domain/model/crypto/airdrop/AirdropStep;I)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 146
    check-cast p1, Lcom/iMe/ui/wallet/airdrop/dialog/WalletAirdropDialogView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/airdrop/dialog/WalletAirdropDialogView$$State$ConfigureDialogStateCommand;->apply(Lcom/iMe/ui/wallet/airdrop/dialog/WalletAirdropDialogView;)V

    return-void
.end method
