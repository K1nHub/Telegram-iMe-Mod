.class public Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectView$$State$ShowChangeNetworkHintCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "WalletConnectView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowChangeNetworkHintCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectView;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectView$$State;)V
    .locals 1

    .line 198
    const-class p1, Lmoxy/viewstate/strategy/OneExecutionStateStrategy;

    const-string v0, "showChangeNetworkHint"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectView;)V
    .locals 0

    .line 203
    invoke-interface {p1}, Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectView;->showChangeNetworkHint()V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 196
    check-cast p1, Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectView$$State$ShowChangeNetworkHintCommand;->apply(Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectView;)V

    return-void
.end method
