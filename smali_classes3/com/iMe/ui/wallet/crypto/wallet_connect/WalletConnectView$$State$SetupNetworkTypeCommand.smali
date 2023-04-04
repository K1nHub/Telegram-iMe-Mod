.class public Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectView$$State$SetupNetworkTypeCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "WalletConnectView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SetupNetworkTypeCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectView;",
        ">;"
    }
.end annotation


# instance fields
.field public final networkType:Lcom/iMe/storage/domain/model/crypto/NetworkType;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectView$$State;Lcom/iMe/storage/domain/model/crypto/NetworkType;)V
    .locals 1

    .line 251
    const-class p1, Lmoxy/viewstate/strategy/AddToEndSingleStrategy;

    const-string v0, "setupNetworkType"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 253
    iput-object p2, p0, Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectView$$State$SetupNetworkTypeCommand;->networkType:Lcom/iMe/storage/domain/model/crypto/NetworkType;

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectView;)V
    .locals 1

    .line 258
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectView$$State$SetupNetworkTypeCommand;->networkType:Lcom/iMe/storage/domain/model/crypto/NetworkType;

    invoke-interface {p1, v0}, Lcom/iMe/ui/base/mvp/SwitchNetworkView;->setupNetworkType(Lcom/iMe/storage/domain/model/crypto/NetworkType;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 247
    check-cast p1, Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectView$$State$SetupNetworkTypeCommand;->apply(Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectView;)V

    return-void
.end method
