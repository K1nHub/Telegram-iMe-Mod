.class public Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoView$$State$ShowQrReceiveDialogCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "WalletHomeCryptoView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowQrReceiveDialogCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoView;",
        ">;"
    }
.end annotation


# instance fields
.field public final address:Ljava/lang/String;

.field public final blockchainType:Lcom/smedialink/storage/domain/model/crypto/BlockchainType;


# direct methods
.method constructor <init>(Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoView$$State;Ljava/lang/String;Lcom/smedialink/storage/domain/model/crypto/BlockchainType;)V
    .locals 1

    .line 427
    const-class p1, Lmoxy/viewstate/strategy/OneExecutionStateStrategy;

    const-string v0, "showQrReceiveDialog"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 429
    iput-object p2, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoView$$State$ShowQrReceiveDialogCommand;->address:Ljava/lang/String;

    .line 430
    iput-object p3, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoView$$State$ShowQrReceiveDialogCommand;->blockchainType:Lcom/smedialink/storage/domain/model/crypto/BlockchainType;

    return-void
.end method


# virtual methods
.method public apply(Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoView;)V
    .locals 2

    .line 435
    iget-object v0, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoView$$State$ShowQrReceiveDialogCommand;->address:Ljava/lang/String;

    iget-object v1, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoView$$State$ShowQrReceiveDialogCommand;->blockchainType:Lcom/smedialink/storage/domain/model/crypto/BlockchainType;

    invoke-interface {p1, v0, v1}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoView;->showQrReceiveDialog(Ljava/lang/String;Lcom/smedialink/storage/domain/model/crypto/BlockchainType;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 421
    check-cast p1, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoView;

    invoke-virtual {p0, p1}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoView$$State$ShowQrReceiveDialogCommand;->apply(Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoView;)V

    return-void
.end method
