.class public Lcom/iMe/ui/wallet/home/attach/WalletAttachAlertView$$State$OnNoInternetErrorStateCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "WalletAttachAlertView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/home/attach/WalletAttachAlertView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OnNoInternetErrorStateCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/wallet/home/attach/WalletAttachAlertView;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/home/attach/WalletAttachAlertView$$State;)V
    .locals 1

    .line 574
    const-class p1, Lmoxy/viewstate/strategy/AddToEndSingleStrategy;

    const-string/jumbo v0, "onNoInternetErrorState"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/home/attach/WalletAttachAlertView;)V
    .locals 0

    .line 579
    invoke-interface {p1}, Lcom/iMe/ui/custom/state/GlobalStateView;->onNoInternetErrorState()V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 572
    check-cast p1, Lcom/iMe/ui/wallet/home/attach/WalletAttachAlertView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/home/attach/WalletAttachAlertView$$State$OnNoInternetErrorStateCommand;->apply(Lcom/iMe/ui/wallet/home/attach/WalletAttachAlertView;)V

    return-void
.end method
