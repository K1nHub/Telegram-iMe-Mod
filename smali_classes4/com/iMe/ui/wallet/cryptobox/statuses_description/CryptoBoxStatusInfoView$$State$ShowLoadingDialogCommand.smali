.class public Lcom/iMe/ui/wallet/cryptobox/statuses_description/CryptoBoxStatusInfoView$$State$ShowLoadingDialogCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "CryptoBoxStatusInfoView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/cryptobox/statuses_description/CryptoBoxStatusInfoView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowLoadingDialogCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/wallet/cryptobox/statuses_description/CryptoBoxStatusInfoView;",
        ">;"
    }
.end annotation


# instance fields
.field public final actionToCancel:Lio/reactivex/disposables/Disposable;

.field public final cancellable:Z

.field public final show:Z


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/cryptobox/statuses_description/CryptoBoxStatusInfoView$$State;ZZLio/reactivex/disposables/Disposable;)V
    .locals 1

    .line 169
    const-class p1, Lmoxy/viewstate/strategy/OneExecutionStateStrategy;

    const-string/jumbo v0, "showLoadingDialog"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 171
    iput-boolean p2, p0, Lcom/iMe/ui/wallet/cryptobox/statuses_description/CryptoBoxStatusInfoView$$State$ShowLoadingDialogCommand;->show:Z

    .line 172
    iput-boolean p3, p0, Lcom/iMe/ui/wallet/cryptobox/statuses_description/CryptoBoxStatusInfoView$$State$ShowLoadingDialogCommand;->cancellable:Z

    .line 173
    iput-object p4, p0, Lcom/iMe/ui/wallet/cryptobox/statuses_description/CryptoBoxStatusInfoView$$State$ShowLoadingDialogCommand;->actionToCancel:Lio/reactivex/disposables/Disposable;

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/cryptobox/statuses_description/CryptoBoxStatusInfoView;)V
    .locals 3

    .line 178
    iget-boolean v0, p0, Lcom/iMe/ui/wallet/cryptobox/statuses_description/CryptoBoxStatusInfoView$$State$ShowLoadingDialogCommand;->show:Z

    iget-boolean v1, p0, Lcom/iMe/ui/wallet/cryptobox/statuses_description/CryptoBoxStatusInfoView$$State$ShowLoadingDialogCommand;->cancellable:Z

    iget-object v2, p0, Lcom/iMe/ui/wallet/cryptobox/statuses_description/CryptoBoxStatusInfoView$$State$ShowLoadingDialogCommand;->actionToCancel:Lio/reactivex/disposables/Disposable;

    invoke-interface {p1, v0, v1, v2}, Lcom/iMe/ui/base/mvp/base/BaseView;->showLoadingDialog(ZZLio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 161
    check-cast p1, Lcom/iMe/ui/wallet/cryptobox/statuses_description/CryptoBoxStatusInfoView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/cryptobox/statuses_description/CryptoBoxStatusInfoView$$State$ShowLoadingDialogCommand;->apply(Lcom/iMe/ui/wallet/cryptobox/statuses_description/CryptoBoxStatusInfoView;)V

    return-void
.end method
