.class public Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/history/WalletBinancePayHistoryView$$State$ShowConfirmPaymentDialogCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "WalletBinancePayHistoryView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/history/WalletBinancePayHistoryView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowConfirmPaymentDialogCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/history/WalletBinancePayHistoryView;",
        ">;"
    }
.end annotation


# instance fields
.field public final action:Lcom/iMe/fork/utils/Callbacks$Callback;

.field public final model:Lcom/iMe/model/dialog/DialogModel;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/history/WalletBinancePayHistoryView$$State;Lcom/iMe/model/dialog/DialogModel;Lcom/iMe/fork/utils/Callbacks$Callback;)V
    .locals 1

    .line 525
    const-class p1, Lmoxy/viewstate/strategy/OneExecutionStateStrategy;

    const-string v0, "showConfirmPaymentDialog"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 527
    iput-object p2, p0, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/history/WalletBinancePayHistoryView$$State$ShowConfirmPaymentDialogCommand;->model:Lcom/iMe/model/dialog/DialogModel;

    .line 528
    iput-object p3, p0, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/history/WalletBinancePayHistoryView$$State$ShowConfirmPaymentDialogCommand;->action:Lcom/iMe/fork/utils/Callbacks$Callback;

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/history/WalletBinancePayHistoryView;)V
    .locals 2

    .line 533
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/history/WalletBinancePayHistoryView$$State$ShowConfirmPaymentDialogCommand;->model:Lcom/iMe/model/dialog/DialogModel;

    iget-object v1, p0, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/history/WalletBinancePayHistoryView$$State$ShowConfirmPaymentDialogCommand;->action:Lcom/iMe/fork/utils/Callbacks$Callback;

    invoke-interface {p1, v0, v1}, Lcom/iMe/manager/crypto/pay/BinancePayProcessView;->showConfirmPaymentDialog(Lcom/iMe/model/dialog/DialogModel;Lcom/iMe/fork/utils/Callbacks$Callback;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 519
    check-cast p1, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/history/WalletBinancePayHistoryView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/history/WalletBinancePayHistoryView$$State$ShowConfirmPaymentDialogCommand;->apply(Lcom/iMe/ui/wallet/home/v2/tabs/binancepay/history/WalletBinancePayHistoryView;)V

    return-void
.end method