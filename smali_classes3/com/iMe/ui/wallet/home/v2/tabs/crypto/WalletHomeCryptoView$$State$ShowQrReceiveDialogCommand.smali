.class public Lcom/iMe/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoView$$State$ShowQrReceiveDialogCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "WalletHomeCryptoView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowQrReceiveDialogCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoView;",
        ">;"
    }
.end annotation


# instance fields
.field public final address:Ljava/lang/String;

.field public final blockchainType:Lcom/iMe/storage/domain/model/crypto/BlockchainType;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoView$$State;Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/BlockchainType;)V
    .locals 1

    .line 443
    const-class p1, Lmoxy/viewstate/strategy/OneExecutionStateStrategy;

    const-string v0, "showQrReceiveDialog"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 445
    iput-object p2, p0, Lcom/iMe/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoView$$State$ShowQrReceiveDialogCommand;->address:Ljava/lang/String;

    .line 446
    iput-object p3, p0, Lcom/iMe/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoView$$State$ShowQrReceiveDialogCommand;->blockchainType:Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoView;)V
    .locals 2

    .line 451
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoView$$State$ShowQrReceiveDialogCommand;->address:Ljava/lang/String;

    iget-object v1, p0, Lcom/iMe/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoView$$State$ShowQrReceiveDialogCommand;->blockchainType:Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    invoke-interface {p1, v0, v1}, Lcom/iMe/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoView;->showQrReceiveDialog(Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/BlockchainType;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 437
    check-cast p1, Lcom/iMe/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoView$$State$ShowQrReceiveDialogCommand;->apply(Lcom/iMe/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoView;)V

    return-void
.end method
