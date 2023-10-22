.class public Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesView$$State$ShowChooseNetworkDialogCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "CryptoBoxesView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowChooseNetworkDialogCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesView;",
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
.method constructor <init>(Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesView$$State;Lcom/iMe/model/wallet/crypto/NetworkItem;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/model/wallet/crypto/NetworkItem;",
            "Ljava/util/List<",
            "+",
            "Lcom/iMe/model/wallet/crypto/NetworkItem;",
            ">;)V"
        }
    .end annotation

    .line 493
    const-class p1, Lmoxy/viewstate/strategy/OneExecutionStateStrategy;

    const-string v0, "showChooseNetworkDialog"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 495
    iput-object p2, p0, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesView$$State$ShowChooseNetworkDialogCommand;->network:Lcom/iMe/model/wallet/crypto/NetworkItem;

    .line 496
    iput-object p3, p0, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesView$$State$ShowChooseNetworkDialogCommand;->availableNetworks:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesView;)V
    .locals 2

    .line 501
    iget-object v0, p0, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesView$$State$ShowChooseNetworkDialogCommand;->network:Lcom/iMe/model/wallet/crypto/NetworkItem;

    iget-object v1, p0, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesView$$State$ShowChooseNetworkDialogCommand;->availableNetworks:Ljava/util/List;

    invoke-interface {p1, v0, v1}, Lcom/iMe/ui/base/mvp/SwitchNetworkView;->showChooseNetworkDialog(Lcom/iMe/model/wallet/crypto/NetworkItem;Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 486
    check-cast p1, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesView$$State$ShowChooseNetworkDialogCommand;->apply(Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesView;)V

    return-void
.end method
