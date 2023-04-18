.class public Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/history/WalletBinancePayHistoryView$$State$ShowSuccessPaymentProcessedDialogCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "WalletBinancePayHistoryView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/history/WalletBinancePayHistoryView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowSuccessPaymentProcessedDialogCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/history/WalletBinancePayHistoryView;",
        ">;"
    }
.end annotation


# instance fields
.field public final btnText:Ljava/lang/String;

.field public final message:Ljava/lang/String;

.field public final title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/history/WalletBinancePayHistoryView$$State;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 545
    const-class p1, Lmoxy/viewstate/strategy/OneExecutionStateStrategy;

    const-string v0, "showSuccessPaymentProcessedDialog"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 547
    iput-object p2, p0, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/history/WalletBinancePayHistoryView$$State$ShowSuccessPaymentProcessedDialogCommand;->title:Ljava/lang/String;

    .line 548
    iput-object p3, p0, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/history/WalletBinancePayHistoryView$$State$ShowSuccessPaymentProcessedDialogCommand;->message:Ljava/lang/String;

    .line 549
    iput-object p4, p0, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/history/WalletBinancePayHistoryView$$State$ShowSuccessPaymentProcessedDialogCommand;->btnText:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/history/WalletBinancePayHistoryView;)V
    .locals 3

    .line 554
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/history/WalletBinancePayHistoryView$$State$ShowSuccessPaymentProcessedDialogCommand;->title:Ljava/lang/String;

    iget-object v1, p0, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/history/WalletBinancePayHistoryView$$State$ShowSuccessPaymentProcessedDialogCommand;->message:Ljava/lang/String;

    iget-object v2, p0, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/history/WalletBinancePayHistoryView$$State$ShowSuccessPaymentProcessedDialogCommand;->btnText:Ljava/lang/String;

    invoke-interface {p1, v0, v1, v2}, Lcom/iMe/manager/crypto/pay/BinancePayProcessView;->showSuccessPaymentProcessedDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 537
    check-cast p1, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/history/WalletBinancePayHistoryView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/history/WalletBinancePayHistoryView$$State$ShowSuccessPaymentProcessedDialogCommand;->apply(Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/history/WalletBinancePayHistoryView;)V

    return-void
.end method
