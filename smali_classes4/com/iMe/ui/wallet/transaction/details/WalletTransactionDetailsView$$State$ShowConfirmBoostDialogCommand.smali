.class public Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsView$$State$ShowConfirmBoostDialogCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "WalletTransactionDetailsView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowConfirmBoostDialogCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsView;",
        ">;"
    }
.end annotation


# instance fields
.field public final action:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field public final dialogModel:Lcom/iMe/model/dialog/DialogModel;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsView$$State;Lcom/iMe/model/dialog/DialogModel;Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/model/dialog/DialogModel;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 461
    const-class p1, Lmoxy/viewstate/strategy/OneExecutionStateStrategy;

    const-string v0, "showConfirmBoostDialog"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 463
    iput-object p2, p0, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsView$$State$ShowConfirmBoostDialogCommand;->dialogModel:Lcom/iMe/model/dialog/DialogModel;

    .line 464
    iput-object p3, p0, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsView$$State$ShowConfirmBoostDialogCommand;->action:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsView;)V
    .locals 2

    .line 469
    iget-object v0, p0, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsView$$State$ShowConfirmBoostDialogCommand;->dialogModel:Lcom/iMe/model/dialog/DialogModel;

    iget-object v1, p0, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsView$$State$ShowConfirmBoostDialogCommand;->action:Lkotlin/jvm/functions/Function0;

    invoke-interface {p1, v0, v1}, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsView;->showConfirmBoostDialog(Lcom/iMe/model/dialog/DialogModel;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 455
    check-cast p1, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsView$$State$ShowConfirmBoostDialogCommand;->apply(Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsView;)V

    return-void
.end method
