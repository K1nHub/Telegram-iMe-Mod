.class public Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView$$State$ShowChooseNetworkDialogCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "WalletHomeCryptoView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowChooseNetworkDialogCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView;",
        ">;"
    }
.end annotation


# instance fields
.field public final availableNetworksItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/iMe/model/wallet/crypto/NetworkItem;",
            ">;"
        }
    .end annotation
.end field

.field public final network:Lcom/iMe/model/wallet/crypto/NetworkItem;

.field public final purpose:Lcom/iMe/model/wallet/home/NetworkChoosePurpose;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView$$State;Lcom/iMe/model/wallet/crypto/NetworkItem;Ljava/util/List;Lcom/iMe/model/wallet/home/NetworkChoosePurpose;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/model/wallet/crypto/NetworkItem;",
            "Ljava/util/List<",
            "+",
            "Lcom/iMe/model/wallet/crypto/NetworkItem;",
            ">;",
            "Lcom/iMe/model/wallet/home/NetworkChoosePurpose;",
            ")V"
        }
    .end annotation

    .line 586
    const-class p1, Lmoxy/viewstate/strategy/OneExecutionStateStrategy;

    const-string/jumbo v0, "showChooseNetworkDialog"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 588
    iput-object p2, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView$$State$ShowChooseNetworkDialogCommand;->network:Lcom/iMe/model/wallet/crypto/NetworkItem;

    .line 589
    iput-object p3, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView$$State$ShowChooseNetworkDialogCommand;->availableNetworksItems:Ljava/util/List;

    .line 590
    iput-object p4, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView$$State$ShowChooseNetworkDialogCommand;->purpose:Lcom/iMe/model/wallet/home/NetworkChoosePurpose;

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView;)V
    .locals 3

    .line 595
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView$$State$ShowChooseNetworkDialogCommand;->network:Lcom/iMe/model/wallet/crypto/NetworkItem;

    iget-object v1, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView$$State$ShowChooseNetworkDialogCommand;->availableNetworksItems:Ljava/util/List;

    iget-object v2, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView$$State$ShowChooseNetworkDialogCommand;->purpose:Lcom/iMe/model/wallet/home/NetworkChoosePurpose;

    invoke-interface {p1, v0, v1, v2}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView;->showChooseNetworkDialog(Lcom/iMe/model/wallet/crypto/NetworkItem;Ljava/util/List;Lcom/iMe/model/wallet/home/NetworkChoosePurpose;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 577
    check-cast p1, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView$$State$ShowChooseNetworkDialogCommand;->apply(Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoView;)V

    return-void
.end method
