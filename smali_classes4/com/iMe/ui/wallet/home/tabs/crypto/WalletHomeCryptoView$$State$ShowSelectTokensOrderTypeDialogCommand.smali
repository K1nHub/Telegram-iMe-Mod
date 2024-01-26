.class public Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView$$State$ShowSelectTokensOrderTypeDialogCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "WalletHomeCryptoView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowSelectTokensOrderTypeDialogCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView;",
        ">;"
    }
.end annotation


# instance fields
.field public final isAllNetworksSelected:Z

.field public final tokensOrderType:Lcom/iMe/model/wallet/home/TokenSortingData;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView$$State;Lcom/iMe/model/wallet/home/TokenSortingData;Z)V
    .locals 1

    .line 614
    const-class p1, Lmoxy/viewstate/strategy/OneExecutionStateStrategy;

    const-string/jumbo v0, "showSelectTokensOrderTypeDialog"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 616
    iput-object p2, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView$$State$ShowSelectTokensOrderTypeDialogCommand;->tokensOrderType:Lcom/iMe/model/wallet/home/TokenSortingData;

    .line 617
    iput-boolean p3, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView$$State$ShowSelectTokensOrderTypeDialogCommand;->isAllNetworksSelected:Z

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView;)V
    .locals 2

    .line 622
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView$$State$ShowSelectTokensOrderTypeDialogCommand;->tokensOrderType:Lcom/iMe/model/wallet/home/TokenSortingData;

    iget-boolean v1, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView$$State$ShowSelectTokensOrderTypeDialogCommand;->isAllNetworksSelected:Z

    invoke-interface {p1, v0, v1}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView;->showSelectTokensOrderTypeDialog(Lcom/iMe/model/wallet/home/TokenSortingData;Z)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 607
    check-cast p1, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView$$State$ShowSelectTokensOrderTypeDialogCommand;->apply(Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView;)V

    return-void
.end method
