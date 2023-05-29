.class public Lcom/iMe/ui/wallet/crypto/wallet_connect/new_session/WalletConnectNewSessionView$$State$SetupScreenWithDataCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "WalletConnectNewSessionView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/crypto/wallet_connect/new_session/WalletConnectNewSessionView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SetupScreenWithDataCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/wallet/crypto/wallet_connect/new_session/WalletConnectNewSessionView;",
        ">;"
    }
.end annotation


# instance fields
.field public final address:Ljava/lang/String;

.field public final iconUrl:Ljava/lang/String;

.field public final name:Ljava/lang/String;

.field public final network:Ljava/lang/String;

.field public final url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/crypto/wallet_connect/new_session/WalletConnectNewSessionView$$State;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 127
    const-class p1, Lmoxy/viewstate/strategy/AddToEndSingleStrategy;

    const-string/jumbo v0, "setupScreenWithData"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 129
    iput-object p2, p0, Lcom/iMe/ui/wallet/crypto/wallet_connect/new_session/WalletConnectNewSessionView$$State$SetupScreenWithDataCommand;->iconUrl:Ljava/lang/String;

    .line 130
    iput-object p3, p0, Lcom/iMe/ui/wallet/crypto/wallet_connect/new_session/WalletConnectNewSessionView$$State$SetupScreenWithDataCommand;->name:Ljava/lang/String;

    .line 131
    iput-object p4, p0, Lcom/iMe/ui/wallet/crypto/wallet_connect/new_session/WalletConnectNewSessionView$$State$SetupScreenWithDataCommand;->url:Ljava/lang/String;

    .line 132
    iput-object p5, p0, Lcom/iMe/ui/wallet/crypto/wallet_connect/new_session/WalletConnectNewSessionView$$State$SetupScreenWithDataCommand;->address:Ljava/lang/String;

    .line 133
    iput-object p6, p0, Lcom/iMe/ui/wallet/crypto/wallet_connect/new_session/WalletConnectNewSessionView$$State$SetupScreenWithDataCommand;->network:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/crypto/wallet_connect/new_session/WalletConnectNewSessionView;)V
    .locals 6

    .line 138
    iget-object v1, p0, Lcom/iMe/ui/wallet/crypto/wallet_connect/new_session/WalletConnectNewSessionView$$State$SetupScreenWithDataCommand;->iconUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/iMe/ui/wallet/crypto/wallet_connect/new_session/WalletConnectNewSessionView$$State$SetupScreenWithDataCommand;->name:Ljava/lang/String;

    iget-object v3, p0, Lcom/iMe/ui/wallet/crypto/wallet_connect/new_session/WalletConnectNewSessionView$$State$SetupScreenWithDataCommand;->url:Ljava/lang/String;

    iget-object v4, p0, Lcom/iMe/ui/wallet/crypto/wallet_connect/new_session/WalletConnectNewSessionView$$State$SetupScreenWithDataCommand;->address:Ljava/lang/String;

    iget-object v5, p0, Lcom/iMe/ui/wallet/crypto/wallet_connect/new_session/WalletConnectNewSessionView$$State$SetupScreenWithDataCommand;->network:Ljava/lang/String;

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lcom/iMe/ui/wallet/crypto/wallet_connect/new_session/WalletConnectNewSessionView;->setupScreenWithData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 114
    check-cast p1, Lcom/iMe/ui/wallet/crypto/wallet_connect/new_session/WalletConnectNewSessionView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/crypto/wallet_connect/new_session/WalletConnectNewSessionView$$State$SetupScreenWithDataCommand;->apply(Lcom/iMe/ui/wallet/crypto/wallet_connect/new_session/WalletConnectNewSessionView;)V

    return-void
.end method
