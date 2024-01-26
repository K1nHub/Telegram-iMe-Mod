.class public Lcom/iMe/ui/wallet/send/WalletSendView$$State$OnSuccessValidationCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "WalletSendView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/send/WalletSendView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OnSuccessValidationCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/wallet/send/WalletSendView;",
        ">;"
    }
.end annotation


# instance fields
.field public final isAllowSendInfoToChat:Z

.field public final model:Lcom/iMe/model/dialog/DialogModel;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/send/WalletSendView$$State;Lcom/iMe/model/dialog/DialogModel;Z)V
    .locals 1

    .line 719
    const-class p1, Lmoxy/viewstate/strategy/AddToEndSingleStrategy;

    const-string/jumbo v0, "onSuccessValidation"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 721
    iput-object p2, p0, Lcom/iMe/ui/wallet/send/WalletSendView$$State$OnSuccessValidationCommand;->model:Lcom/iMe/model/dialog/DialogModel;

    .line 722
    iput-boolean p3, p0, Lcom/iMe/ui/wallet/send/WalletSendView$$State$OnSuccessValidationCommand;->isAllowSendInfoToChat:Z

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/send/WalletSendView;)V
    .locals 2

    .line 727
    iget-object v0, p0, Lcom/iMe/ui/wallet/send/WalletSendView$$State$OnSuccessValidationCommand;->model:Lcom/iMe/model/dialog/DialogModel;

    iget-boolean v1, p0, Lcom/iMe/ui/wallet/send/WalletSendView$$State$OnSuccessValidationCommand;->isAllowSendInfoToChat:Z

    invoke-interface {p1, v0, v1}, Lcom/iMe/ui/wallet/send/WalletSendView;->onSuccessValidation(Lcom/iMe/model/dialog/DialogModel;Z)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 713
    check-cast p1, Lcom/iMe/ui/wallet/send/WalletSendView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/send/WalletSendView$$State$OnSuccessValidationCommand;->apply(Lcom/iMe/ui/wallet/send/WalletSendView;)V

    return-void
.end method
