.class final Lcom/iMe/ui/wallet/home/old/WalletAttachAlertPresenter$getWalletTransactions$2;
.super Lkotlin/jvm/internal/Lambda;
.source "WalletAttachAlertPresenter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/home/old/WalletAttachAlertPresenter;->getWalletTransactions(Lcom/iMe/storage/domain/model/wallet/token/TokenCode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/iMe/storage/domain/model/Result<",
        "+",
        "Ljava/util/List<",
        "+",
        "Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;",
        ">;>;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $selectedTokenCode:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

.field final synthetic this$0:Lcom/iMe/ui/wallet/home/old/WalletAttachAlertPresenter;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/home/old/WalletAttachAlertPresenter;Lcom/iMe/storage/domain/model/wallet/token/TokenCode;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/home/old/WalletAttachAlertPresenter$getWalletTransactions$2;->this$0:Lcom/iMe/ui/wallet/home/old/WalletAttachAlertPresenter;

    iput-object p2, p0, Lcom/iMe/ui/wallet/home/old/WalletAttachAlertPresenter$getWalletTransactions$2;->$selectedTokenCode:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 140
    check-cast p1, Lcom/iMe/storage/domain/model/Result;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/home/old/WalletAttachAlertPresenter$getWalletTransactions$2;->invoke(Lcom/iMe/storage/domain/model/Result;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/iMe/storage/domain/model/Result;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/Result<",
            "+",
            "Ljava/util/List<",
            "+",
            "Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;",
            ">;>;)V"
        }
    .end annotation

    .line 142
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Success;

    if-eqz v0, :cond_1

    .line 143
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/old/WalletAttachAlertPresenter$getWalletTransactions$2;->this$0:Lcom/iMe/ui/wallet/home/old/WalletAttachAlertPresenter;

    invoke-static {v0}, Lcom/iMe/ui/wallet/home/old/WalletAttachAlertPresenter;->access$getCachedTransactions$p(Lcom/iMe/ui/wallet/home/old/WalletAttachAlertPresenter;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/iMe/ui/wallet/home/old/WalletAttachAlertPresenter$getWalletTransactions$2;->$selectedTokenCode:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    check-cast p1, Lcom/iMe/storage/domain/model/Result$Success;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/Result$Success;->getData()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/old/WalletAttachAlertPresenter$getWalletTransactions$2;->this$0:Lcom/iMe/ui/wallet/home/old/WalletAttachAlertPresenter;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/Result$Success;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-static {v0, p1}, Lcom/iMe/ui/wallet/home/old/WalletAttachAlertPresenter;->access$mapTransactionsToGroups(Lcom/iMe/ui/wallet/home/old/WalletAttachAlertPresenter;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 146
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/iMe/ui/wallet/home/old/WalletAttachAlertPresenter$getWalletTransactions$2;->this$0:Lcom/iMe/ui/wallet/home/old/WalletAttachAlertPresenter;

    invoke-virtual {p1}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/wallet/home/old/WalletAttachAlertView;

    invoke-interface {p1}, Lcom/iMe/ui/custom/state/GlobalStateView;->onEmptyState()V

    goto :goto_1

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/old/WalletAttachAlertPresenter$getWalletTransactions$2;->this$0:Lcom/iMe/ui/wallet/home/old/WalletAttachAlertPresenter;

    invoke-virtual {v0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/home/old/WalletAttachAlertView;

    invoke-interface {v0, p1}, Lcom/iMe/ui/wallet/home/old/WalletAttachAlertView;->showTransactions(Ljava/util/List;)V

    goto :goto_1

    .line 149
    :cond_1
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Error;

    if-eqz v0, :cond_3

    .line 150
    move-object v0, p1

    check-cast v0, Lcom/iMe/storage/domain/model/Result$Error;

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/Result$Error;->getError()Lcom/iMe/storage/data/network/model/error/ErrorModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/storage/data/network/model/error/ErrorModel;->getStatus()Lcom/iMe/storage/data/network/model/error/IErrorStatus;

    move-result-object v1

    .line 151
    sget-object v2, Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler$ErrorStatus;->NO_CONNECTION:Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler$ErrorStatus;

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/iMe/ui/wallet/home/old/WalletAttachAlertPresenter$getWalletTransactions$2;->this$0:Lcom/iMe/ui/wallet/home/old/WalletAttachAlertPresenter;

    invoke-virtual {v1}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    check-cast v1, Lcom/iMe/ui/wallet/home/old/WalletAttachAlertView;

    invoke-interface {v1}, Lcom/iMe/ui/custom/state/GlobalStateView;->onNoInternetErrorState()V

    goto :goto_0

    .line 152
    :cond_2
    iget-object v1, p0, Lcom/iMe/ui/wallet/home/old/WalletAttachAlertPresenter$getWalletTransactions$2;->this$0:Lcom/iMe/ui/wallet/home/old/WalletAttachAlertPresenter;

    invoke-virtual {v1}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    check-cast v1, Lcom/iMe/ui/wallet/home/old/WalletAttachAlertView;

    invoke-interface {v1}, Lcom/iMe/ui/custom/state/GlobalStateView;->onUnexpectedErrorState()V

    .line 154
    :goto_0
    iget-object v1, p0, Lcom/iMe/ui/wallet/home/old/WalletAttachAlertPresenter$getWalletTransactions$2;->this$0:Lcom/iMe/ui/wallet/home/old/WalletAttachAlertPresenter;

    invoke-virtual {v1}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    check-cast v1, Lcom/iMe/ui/wallet/home/old/WalletAttachAlertView;

    const-string v2, "result"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/iMe/ui/wallet/home/old/WalletAttachAlertPresenter$getWalletTransactions$2;->this$0:Lcom/iMe/ui/wallet/home/old/WalletAttachAlertPresenter;

    invoke-static {p1}, Lcom/iMe/ui/wallet/home/old/WalletAttachAlertPresenter;->access$getResourceManager$p(Lcom/iMe/ui/wallet/home/old/WalletAttachAlertPresenter;)Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object p1

    invoke-interface {v1, v0, p1}, Lcom/iMe/ui/base/mvp/base/BaseView;->showErrorToast(Lcom/iMe/storage/domain/model/Result$Error;Lcom/iMe/storage/domain/utils/system/ResourceManager;)V

    goto :goto_1

    .line 156
    :cond_3
    instance-of p1, p1, Lcom/iMe/storage/domain/model/Result$Loading;

    if-eqz p1, :cond_4

    .line 157
    iget-object p1, p0, Lcom/iMe/ui/wallet/home/old/WalletAttachAlertPresenter$getWalletTransactions$2;->this$0:Lcom/iMe/ui/wallet/home/old/WalletAttachAlertPresenter;

    invoke-virtual {p1}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/wallet/home/old/WalletAttachAlertView;

    invoke-interface {p1}, Lcom/iMe/ui/custom/state/GlobalStateView;->onLoadingState()V

    :cond_4
    :goto_1
    return-void
.end method