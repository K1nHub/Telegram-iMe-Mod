.class public Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesView$$State$ShowRequiredWalletCreatedDialogCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "WalletHomeServicesView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowRequiredWalletCreatedDialogCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesView;",
        ">;"
    }
.end annotation


# instance fields
.field public final blockchainType:Lcom/iMe/storage/domain/model/crypto/BlockchainType;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesView$$State;Lcom/iMe/storage/domain/model/crypto/BlockchainType;)V
    .locals 1

    .line 318
    const-class p1, Lmoxy/viewstate/strategy/OneExecutionStateStrategy;

    const-string/jumbo v0, "showRequiredWalletCreatedDialog"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 320
    iput-object p2, p0, Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesView$$State$ShowRequiredWalletCreatedDialogCommand;->blockchainType:Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesView;)V
    .locals 1

    .line 325
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesView$$State$ShowRequiredWalletCreatedDialogCommand;->blockchainType:Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    invoke-interface {p1, v0}, Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesView;->showRequiredWalletCreatedDialog(Lcom/iMe/storage/domain/model/crypto/BlockchainType;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 314
    check-cast p1, Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesView$$State$ShowRequiredWalletCreatedDialogCommand;->apply(Lcom/iMe/ui/wallet/home/tabs/services/WalletHomeServicesView;)V

    return-void
.end method
