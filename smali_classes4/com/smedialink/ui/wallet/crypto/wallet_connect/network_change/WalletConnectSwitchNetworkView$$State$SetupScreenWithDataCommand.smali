.class public Lcom/smedialink/ui/wallet/crypto/wallet_connect/network_change/WalletConnectSwitchNetworkView$$State$SetupScreenWithDataCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "WalletConnectSwitchNetworkView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/ui/wallet/crypto/wallet_connect/network_change/WalletConnectSwitchNetworkView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SetupScreenWithDataCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/smedialink/ui/wallet/crypto/wallet_connect/network_change/WalletConnectSwitchNetworkView;",
        ">;"
    }
.end annotation


# instance fields
.field public final iconUrl:Ljava/lang/String;

.field public final name:Ljava/lang/String;

.field public final networkIconResId:I

.field public final networkName:Ljava/lang/String;

.field public final url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/smedialink/ui/wallet/crypto/wallet_connect/network_change/WalletConnectSwitchNetworkView$$State;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    .line 109
    const-class p1, Lmoxy/viewstate/strategy/AddToEndSingleStrategy;

    const-string v0, "setupScreenWithData"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 111
    iput-object p2, p0, Lcom/smedialink/ui/wallet/crypto/wallet_connect/network_change/WalletConnectSwitchNetworkView$$State$SetupScreenWithDataCommand;->iconUrl:Ljava/lang/String;

    .line 112
    iput-object p3, p0, Lcom/smedialink/ui/wallet/crypto/wallet_connect/network_change/WalletConnectSwitchNetworkView$$State$SetupScreenWithDataCommand;->name:Ljava/lang/String;

    .line 113
    iput-object p4, p0, Lcom/smedialink/ui/wallet/crypto/wallet_connect/network_change/WalletConnectSwitchNetworkView$$State$SetupScreenWithDataCommand;->url:Ljava/lang/String;

    .line 114
    iput p5, p0, Lcom/smedialink/ui/wallet/crypto/wallet_connect/network_change/WalletConnectSwitchNetworkView$$State$SetupScreenWithDataCommand;->networkIconResId:I

    .line 115
    iput-object p6, p0, Lcom/smedialink/ui/wallet/crypto/wallet_connect/network_change/WalletConnectSwitchNetworkView$$State$SetupScreenWithDataCommand;->networkName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public apply(Lcom/smedialink/ui/wallet/crypto/wallet_connect/network_change/WalletConnectSwitchNetworkView;)V
    .locals 6

    .line 120
    iget-object v1, p0, Lcom/smedialink/ui/wallet/crypto/wallet_connect/network_change/WalletConnectSwitchNetworkView$$State$SetupScreenWithDataCommand;->iconUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/smedialink/ui/wallet/crypto/wallet_connect/network_change/WalletConnectSwitchNetworkView$$State$SetupScreenWithDataCommand;->name:Ljava/lang/String;

    iget-object v3, p0, Lcom/smedialink/ui/wallet/crypto/wallet_connect/network_change/WalletConnectSwitchNetworkView$$State$SetupScreenWithDataCommand;->url:Ljava/lang/String;

    iget v4, p0, Lcom/smedialink/ui/wallet/crypto/wallet_connect/network_change/WalletConnectSwitchNetworkView$$State$SetupScreenWithDataCommand;->networkIconResId:I

    iget-object v5, p0, Lcom/smedialink/ui/wallet/crypto/wallet_connect/network_change/WalletConnectSwitchNetworkView$$State$SetupScreenWithDataCommand;->networkName:Ljava/lang/String;

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lcom/smedialink/ui/wallet/crypto/wallet_connect/network_change/WalletConnectSwitchNetworkView;->setupScreenWithData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 96
    check-cast p1, Lcom/smedialink/ui/wallet/crypto/wallet_connect/network_change/WalletConnectSwitchNetworkView;

    invoke-virtual {p0, p1}, Lcom/smedialink/ui/wallet/crypto/wallet_connect/network_change/WalletConnectSwitchNetworkView$$State$SetupScreenWithDataCommand;->apply(Lcom/smedialink/ui/wallet/crypto/wallet_connect/network_change/WalletConnectSwitchNetworkView;)V

    return-void
.end method
