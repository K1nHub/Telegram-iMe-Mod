.class public Lcom/smedialink/ui/wallet/airdrop/dialog/WalletAirdropDialogView$$State$ConfigureDialogStateCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "WalletAirdropDialogView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/ui/wallet/airdrop/dialog/WalletAirdropDialogView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ConfigureDialogStateCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/smedialink/ui/wallet/airdrop/dialog/WalletAirdropDialogView;",
        ">;"
    }
.end annotation


# instance fields
.field public final amount:I

.field public final isBotActivated:Z

.field public final isCryptoWalletCreated:Z

.field public final step:Lcom/smedialink/storage/domain/model/crypto/airdrop/AirdropStep;


# direct methods
.method constructor <init>(Lcom/smedialink/ui/wallet/airdrop/dialog/WalletAirdropDialogView$$State;ZZLcom/smedialink/storage/domain/model/crypto/airdrop/AirdropStep;I)V
    .locals 1

    .line 139
    const-class p1, Lmoxy/viewstate/strategy/OneExecutionStateStrategy;

    const-string v0, "configureDialogState"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 141
    iput-boolean p2, p0, Lcom/smedialink/ui/wallet/airdrop/dialog/WalletAirdropDialogView$$State$ConfigureDialogStateCommand;->isBotActivated:Z

    .line 142
    iput-boolean p3, p0, Lcom/smedialink/ui/wallet/airdrop/dialog/WalletAirdropDialogView$$State$ConfigureDialogStateCommand;->isCryptoWalletCreated:Z

    .line 143
    iput-object p4, p0, Lcom/smedialink/ui/wallet/airdrop/dialog/WalletAirdropDialogView$$State$ConfigureDialogStateCommand;->step:Lcom/smedialink/storage/domain/model/crypto/airdrop/AirdropStep;

    .line 144
    iput p5, p0, Lcom/smedialink/ui/wallet/airdrop/dialog/WalletAirdropDialogView$$State$ConfigureDialogStateCommand;->amount:I

    return-void
.end method


# virtual methods
.method public apply(Lcom/smedialink/ui/wallet/airdrop/dialog/WalletAirdropDialogView;)V
    .locals 4

    .line 149
    iget-boolean v0, p0, Lcom/smedialink/ui/wallet/airdrop/dialog/WalletAirdropDialogView$$State$ConfigureDialogStateCommand;->isBotActivated:Z

    iget-boolean v1, p0, Lcom/smedialink/ui/wallet/airdrop/dialog/WalletAirdropDialogView$$State$ConfigureDialogStateCommand;->isCryptoWalletCreated:Z

    iget-object v2, p0, Lcom/smedialink/ui/wallet/airdrop/dialog/WalletAirdropDialogView$$State$ConfigureDialogStateCommand;->step:Lcom/smedialink/storage/domain/model/crypto/airdrop/AirdropStep;

    iget v3, p0, Lcom/smedialink/ui/wallet/airdrop/dialog/WalletAirdropDialogView$$State$ConfigureDialogStateCommand;->amount:I

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/smedialink/ui/wallet/airdrop/dialog/WalletAirdropDialogView;->configureDialogState(ZZLcom/smedialink/storage/domain/model/crypto/airdrop/AirdropStep;I)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 128
    check-cast p1, Lcom/smedialink/ui/wallet/airdrop/dialog/WalletAirdropDialogView;

    invoke-virtual {p0, p1}, Lcom/smedialink/ui/wallet/airdrop/dialog/WalletAirdropDialogView$$State$ConfigureDialogStateCommand;->apply(Lcom/smedialink/ui/wallet/airdrop/dialog/WalletAirdropDialogView;)V

    return-void
.end method
