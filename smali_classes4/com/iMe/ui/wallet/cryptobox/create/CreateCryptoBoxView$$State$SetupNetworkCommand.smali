.class public Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView$$State$SetupNetworkCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "CreateCryptoBoxView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SetupNetworkCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView;",
        ">;"
    }
.end annotation


# instance fields
.field public final networkItem:Lcom/iMe/model/wallet/crypto/NetworkItem;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView$$State;Lcom/iMe/model/wallet/crypto/NetworkItem;)V
    .locals 1

    .line 749
    const-class p1, Lmoxy/viewstate/strategy/AddToEndSingleStrategy;

    const-string/jumbo v0, "setupNetwork"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 751
    iput-object p2, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView$$State$SetupNetworkCommand;->networkItem:Lcom/iMe/model/wallet/crypto/NetworkItem;

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView;)V
    .locals 1

    .line 756
    iget-object v0, p0, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView$$State$SetupNetworkCommand;->networkItem:Lcom/iMe/model/wallet/crypto/NetworkItem;

    invoke-interface {p1, v0}, Lcom/iMe/ui/base/mvp/SwitchNetworkView;->setupNetwork(Lcom/iMe/model/wallet/crypto/NetworkItem;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 745
    check-cast p1, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView$$State$SetupNetworkCommand;->apply(Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxView;)V

    return-void
.end method
