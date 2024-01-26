.class public Lcom/iMe/ui/wallet/send/WalletSendView$$State$ShowChooseNetworkDialogCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "WalletSendView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/send/WalletSendView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowChooseNetworkDialogCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/wallet/send/WalletSendView;",
        ">;"
    }
.end annotation


# instance fields
.field public final availableNetworks:Ljava/util/List;
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


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/send/WalletSendView$$State;Ljava/util/List;Lcom/iMe/model/wallet/crypto/NetworkItem;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/iMe/model/wallet/crypto/NetworkItem;",
            ">;",
            "Lcom/iMe/model/wallet/crypto/NetworkItem;",
            ")V"
        }
    .end annotation

    .line 628
    const-class p1, Lmoxy/viewstate/strategy/OneExecutionStateStrategy;

    const-string/jumbo v0, "showChooseNetworkDialog"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 630
    iput-object p2, p0, Lcom/iMe/ui/wallet/send/WalletSendView$$State$ShowChooseNetworkDialogCommand;->availableNetworks:Ljava/util/List;

    .line 631
    iput-object p3, p0, Lcom/iMe/ui/wallet/send/WalletSendView$$State$ShowChooseNetworkDialogCommand;->network:Lcom/iMe/model/wallet/crypto/NetworkItem;

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/send/WalletSendView;)V
    .locals 2

    .line 636
    iget-object v0, p0, Lcom/iMe/ui/wallet/send/WalletSendView$$State$ShowChooseNetworkDialogCommand;->availableNetworks:Ljava/util/List;

    iget-object v1, p0, Lcom/iMe/ui/wallet/send/WalletSendView$$State$ShowChooseNetworkDialogCommand;->network:Lcom/iMe/model/wallet/crypto/NetworkItem;

    invoke-interface {p1, v0, v1}, Lcom/iMe/ui/wallet/send/WalletSendView;->showChooseNetworkDialog(Ljava/util/List;Lcom/iMe/model/wallet/crypto/NetworkItem;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 621
    check-cast p1, Lcom/iMe/ui/wallet/send/WalletSendView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/send/WalletSendView$$State$ShowChooseNetworkDialogCommand;->apply(Lcom/iMe/ui/wallet/send/WalletSendView;)V

    return-void
.end method
