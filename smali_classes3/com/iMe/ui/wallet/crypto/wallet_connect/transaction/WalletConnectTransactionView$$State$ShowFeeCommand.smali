.class public Lcom/iMe/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionView$$State$ShowFeeCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "WalletConnectTransactionView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowFeeCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionView;",
        ">;"
    }
.end annotation


# instance fields
.field public final feeType:Lcom/iMe/model/wallet/crypto/send/fee/FeeType;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionView$$State;Lcom/iMe/model/wallet/crypto/send/fee/FeeType;)V
    .locals 1

    .line 206
    const-class p1, Lmoxy/viewstate/strategy/AddToEndSingleStrategy;

    const-string v0, "showFee"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 208
    iput-object p2, p0, Lcom/iMe/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionView$$State$ShowFeeCommand;->feeType:Lcom/iMe/model/wallet/crypto/send/fee/FeeType;

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionView;)V
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionView$$State$ShowFeeCommand;->feeType:Lcom/iMe/model/wallet/crypto/send/fee/FeeType;

    invoke-interface {p1, v0}, Lcom/iMe/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionView;->showFee(Lcom/iMe/model/wallet/crypto/send/fee/FeeType;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 202
    check-cast p1, Lcom/iMe/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionView$$State$ShowFeeCommand;->apply(Lcom/iMe/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionView;)V

    return-void
.end method
