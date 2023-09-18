.class public Lcom/iMe/ui/wallet/transaction/WalletTransactionsView$$State$OpenCryptoBoxActionDetailsCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "WalletTransactionsView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/transaction/WalletTransactionsView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OpenCryptoBoxActionDetailsCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/wallet/transaction/WalletTransactionsView;",
        ">;"
    }
.end annotation


# instance fields
.field public final item:Lcom/iMe/model/wallet/transaction/CryptoBoxActionItem;

.field public final network:Lcom/iMe/storage/domain/model/crypto/Network;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/transaction/WalletTransactionsView$$State;Lcom/iMe/model/wallet/transaction/CryptoBoxActionItem;Lcom/iMe/storage/domain/model/crypto/Network;)V
    .locals 1

    .line 347
    const-class p1, Lmoxy/viewstate/strategy/OneExecutionStateStrategy;

    const-string/jumbo v0, "openCryptoBoxActionDetails"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 349
    iput-object p2, p0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsView$$State$OpenCryptoBoxActionDetailsCommand;->item:Lcom/iMe/model/wallet/transaction/CryptoBoxActionItem;

    .line 350
    iput-object p3, p0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsView$$State$OpenCryptoBoxActionDetailsCommand;->network:Lcom/iMe/storage/domain/model/crypto/Network;

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/transaction/WalletTransactionsView;)V
    .locals 2

    .line 355
    iget-object v0, p0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsView$$State$OpenCryptoBoxActionDetailsCommand;->item:Lcom/iMe/model/wallet/transaction/CryptoBoxActionItem;

    iget-object v1, p0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsView$$State$OpenCryptoBoxActionDetailsCommand;->network:Lcom/iMe/storage/domain/model/crypto/Network;

    invoke-interface {p1, v0, v1}, Lcom/iMe/ui/wallet/transaction/WalletTransactionsView;->openCryptoBoxActionDetails(Lcom/iMe/model/wallet/transaction/CryptoBoxActionItem;Lcom/iMe/storage/domain/model/crypto/Network;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 341
    check-cast p1, Lcom/iMe/ui/wallet/transaction/WalletTransactionsView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/transaction/WalletTransactionsView$$State$OpenCryptoBoxActionDetailsCommand;->apply(Lcom/iMe/ui/wallet/transaction/WalletTransactionsView;)V

    return-void
.end method
