.class public Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView$$State$OnSuccessValidationCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "WalletSendAmountView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OnSuccessValidationCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView;",
        ">;"
    }
.end annotation


# instance fields
.field public final amount:Lcom/iMe/model/dialog/DialogModel;

.field public final isAllowSendInfoToChat:Z


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView$$State;Lcom/iMe/model/dialog/DialogModel;Z)V
    .locals 1

    .line 465
    const-class p1, Lmoxy/viewstate/strategy/AddToEndSingleStrategy;

    const-string v0, "onSuccessValidation"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 467
    iput-object p2, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView$$State$OnSuccessValidationCommand;->amount:Lcom/iMe/model/dialog/DialogModel;

    .line 468
    iput-boolean p3, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView$$State$OnSuccessValidationCommand;->isAllowSendInfoToChat:Z

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView;)V
    .locals 2

    .line 473
    iget-object v0, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView$$State$OnSuccessValidationCommand;->amount:Lcom/iMe/model/dialog/DialogModel;

    iget-boolean v1, p0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView$$State$OnSuccessValidationCommand;->isAllowSendInfoToChat:Z

    invoke-interface {p1, v0, v1}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView;->onSuccessValidation(Lcom/iMe/model/dialog/DialogModel;Z)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 459
    check-cast p1, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView$$State$OnSuccessValidationCommand;->apply(Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView;)V

    return-void
.end method
