.class public Lcom/iMe/ui/wallet/crypto/wallet_connect/message_sign/WalletConnectMessageSignView$$State$SetupScreenWithDataCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "WalletConnectMessageSignView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/crypto/wallet_connect/message_sign/WalletConnectMessageSignView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SetupScreenWithDataCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/wallet/crypto/wallet_connect/message_sign/WalletConnectMessageSignView;",
        ">;"
    }
.end annotation


# instance fields
.field public final from:Ljava/lang/String;

.field public final message:Ljava/lang/String;

.field public final peerUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/crypto/wallet_connect/message_sign/WalletConnectMessageSignView$$State;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 121
    const-class p1, Lmoxy/viewstate/strategy/AddToEndSingleStrategy;

    const-string/jumbo v0, "setupScreenWithData"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 123
    iput-object p2, p0, Lcom/iMe/ui/wallet/crypto/wallet_connect/message_sign/WalletConnectMessageSignView$$State$SetupScreenWithDataCommand;->message:Ljava/lang/String;

    .line 124
    iput-object p3, p0, Lcom/iMe/ui/wallet/crypto/wallet_connect/message_sign/WalletConnectMessageSignView$$State$SetupScreenWithDataCommand;->from:Ljava/lang/String;

    .line 125
    iput-object p4, p0, Lcom/iMe/ui/wallet/crypto/wallet_connect/message_sign/WalletConnectMessageSignView$$State$SetupScreenWithDataCommand;->peerUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/crypto/wallet_connect/message_sign/WalletConnectMessageSignView;)V
    .locals 3

    .line 130
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/wallet_connect/message_sign/WalletConnectMessageSignView$$State$SetupScreenWithDataCommand;->message:Ljava/lang/String;

    iget-object v1, p0, Lcom/iMe/ui/wallet/crypto/wallet_connect/message_sign/WalletConnectMessageSignView$$State$SetupScreenWithDataCommand;->from:Ljava/lang/String;

    iget-object v2, p0, Lcom/iMe/ui/wallet/crypto/wallet_connect/message_sign/WalletConnectMessageSignView$$State$SetupScreenWithDataCommand;->peerUrl:Ljava/lang/String;

    invoke-interface {p1, v0, v1, v2}, Lcom/iMe/ui/wallet/crypto/wallet_connect/message_sign/WalletConnectMessageSignView;->setupScreenWithData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 113
    check-cast p1, Lcom/iMe/ui/wallet/crypto/wallet_connect/message_sign/WalletConnectMessageSignView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/crypto/wallet_connect/message_sign/WalletConnectMessageSignView$$State$SetupScreenWithDataCommand;->apply(Lcom/iMe/ui/wallet/crypto/wallet_connect/message_sign/WalletConnectMessageSignView;)V

    return-void
.end method
