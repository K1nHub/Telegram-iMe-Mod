.class public Lcom/smedialink/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionView$$State$ShowFeeCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "WalletConnectTransactionView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowFeeCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/smedialink/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionView;",
        ">;"
    }
.end annotation


# instance fields
.field public final feeType:Lcom/smedialink/ui/custom/FeeView$ChooseFeeType;


# direct methods
.method constructor <init>(Lcom/smedialink/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionView$$State;Lcom/smedialink/ui/custom/FeeView$ChooseFeeType;)V
    .locals 1

    .line 172
    const-class p1, Lmoxy/viewstate/strategy/AddToEndSingleStrategy;

    const-string v0, "showFee"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 174
    iput-object p2, p0, Lcom/smedialink/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionView$$State$ShowFeeCommand;->feeType:Lcom/smedialink/ui/custom/FeeView$ChooseFeeType;

    return-void
.end method


# virtual methods
.method public apply(Lcom/smedialink/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionView;)V
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionView$$State$ShowFeeCommand;->feeType:Lcom/smedialink/ui/custom/FeeView$ChooseFeeType;

    invoke-interface {p1, v0}, Lcom/smedialink/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionView;->showFee(Lcom/smedialink/ui/custom/FeeView$ChooseFeeType;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 168
    check-cast p1, Lcom/smedialink/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionView;

    invoke-virtual {p0, p1}, Lcom/smedialink/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionView$$State$ShowFeeCommand;->apply(Lcom/smedialink/ui/wallet/crypto/wallet_connect/transaction/WalletConnectTransactionView;)V

    return-void
.end method
