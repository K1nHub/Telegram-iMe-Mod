.class public Lcom/iMe/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionView$$State$SetupScreenWithDataCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "WalletConnectTransactionView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SetupScreenWithDataCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionView;",
        ">;"
    }
.end annotation


# instance fields
.field public final from:Ljava/lang/String;

.field public final network:Ljava/lang/String;

.field public final peerUrl:Ljava/lang/String;

.field public final to:Ljava/lang/String;

.field public final transactionAmount:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionView$$State;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 171
    const-class p1, Lmoxy/viewstate/strategy/AddToEndSingleStrategy;

    const-string v0, "setupScreenWithData"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 173
    iput-object p2, p0, Lcom/iMe/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionView$$State$SetupScreenWithDataCommand;->transactionAmount:Ljava/lang/String;

    .line 174
    iput-object p3, p0, Lcom/iMe/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionView$$State$SetupScreenWithDataCommand;->network:Ljava/lang/String;

    .line 175
    iput-object p4, p0, Lcom/iMe/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionView$$State$SetupScreenWithDataCommand;->from:Ljava/lang/String;

    .line 176
    iput-object p5, p0, Lcom/iMe/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionView$$State$SetupScreenWithDataCommand;->to:Ljava/lang/String;

    .line 177
    iput-object p6, p0, Lcom/iMe/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionView$$State$SetupScreenWithDataCommand;->peerUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionView;)V
    .locals 6

    .line 182
    iget-object v1, p0, Lcom/iMe/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionView$$State$SetupScreenWithDataCommand;->transactionAmount:Ljava/lang/String;

    iget-object v2, p0, Lcom/iMe/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionView$$State$SetupScreenWithDataCommand;->network:Ljava/lang/String;

    iget-object v3, p0, Lcom/iMe/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionView$$State$SetupScreenWithDataCommand;->from:Ljava/lang/String;

    iget-object v4, p0, Lcom/iMe/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionView$$State$SetupScreenWithDataCommand;->to:Ljava/lang/String;

    iget-object v5, p0, Lcom/iMe/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionView$$State$SetupScreenWithDataCommand;->peerUrl:Ljava/lang/String;

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lcom/iMe/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionView;->setupScreenWithData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 158
    check-cast p1, Lcom/iMe/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionView$$State$SetupScreenWithDataCommand;->apply(Lcom/iMe/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionView;)V

    return-void
.end method
