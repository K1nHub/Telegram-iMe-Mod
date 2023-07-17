.class public Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectView$$State$SetupNetworkCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "WalletConnectView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SetupNetworkCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectView;",
        ">;"
    }
.end annotation


# instance fields
.field public final network:Lcom/iMe/storage/domain/model/crypto/Network;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectView$$State;Lcom/iMe/storage/domain/model/crypto/Network;)V
    .locals 1

    .line 314
    const-class p1, Lmoxy/viewstate/strategy/AddToEndSingleStrategy;

    const-string/jumbo v0, "setupNetwork"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 316
    iput-object p2, p0, Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectView$$State$SetupNetworkCommand;->network:Lcom/iMe/storage/domain/model/crypto/Network;

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectView;)V
    .locals 1

    .line 321
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectView$$State$SetupNetworkCommand;->network:Lcom/iMe/storage/domain/model/crypto/Network;

    invoke-interface {p1, v0}, Lcom/iMe/ui/base/mvp/SwitchNetworkView;->setupNetwork(Lcom/iMe/storage/domain/model/crypto/Network;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 310
    check-cast p1, Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectView$$State$SetupNetworkCommand;->apply(Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectView;)V

    return-void
.end method
