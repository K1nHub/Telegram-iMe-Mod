.class final Lcom/iMe/ui/wallet/home/attach/WalletAttachAlertPresenter$getWalletTransactions$3;
.super Lkotlin/jvm/internal/Lambda;
.source "WalletAttachAlertPresenter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/home/attach/WalletAttachAlertPresenter;->getWalletTransactions(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Throwable;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/ui/wallet/home/attach/WalletAttachAlertPresenter;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/home/attach/WalletAttachAlertPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/home/attach/WalletAttachAlertPresenter$getWalletTransactions$3;->this$0:Lcom/iMe/ui/wallet/home/attach/WalletAttachAlertPresenter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 146
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/home/attach/WalletAttachAlertPresenter$getWalletTransactions$3;->invoke(Ljava/lang/Throwable;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Throwable;)V
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/attach/WalletAttachAlertPresenter$getWalletTransactions$3;->this$0:Lcom/iMe/ui/wallet/home/attach/WalletAttachAlertPresenter;

    invoke-virtual {v0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/home/attach/WalletAttachAlertView;

    invoke-interface {v0}, Lcom/iMe/ui/custom/state/GlobalStateView;->onUnexpectedErrorState()V

    .line 172
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/attach/WalletAttachAlertPresenter$getWalletTransactions$3;->this$0:Lcom/iMe/ui/wallet/home/attach/WalletAttachAlertPresenter;

    invoke-virtual {v0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/home/attach/WalletAttachAlertView;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    invoke-interface {v0, p1}, Lcom/iMe/ui/base/mvp/base/BaseView;->showToast(Ljava/lang/String;)V

    return-void
.end method
