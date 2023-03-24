.class final Lcom/smedialink/ui/wallet/transaction/WalletTransactionsPresenter$loadTransactions$1;
.super Lkotlin/jvm/internal/Lambda;
.source "WalletTransactionsPresenter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/ui/wallet/transaction/WalletTransactionsPresenter;->loadTransactions(ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/util/List<",
        "+",
        "Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction;",
        ">;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $forceUpdate:Z

.field final synthetic $isLoadMore:Z

.field final synthetic this$0:Lcom/smedialink/ui/wallet/transaction/WalletTransactionsPresenter;


# direct methods
.method constructor <init>(Lcom/smedialink/ui/wallet/transaction/WalletTransactionsPresenter;ZZ)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/ui/wallet/transaction/WalletTransactionsPresenter$loadTransactions$1;->this$0:Lcom/smedialink/ui/wallet/transaction/WalletTransactionsPresenter;

    iput-boolean p2, p0, Lcom/smedialink/ui/wallet/transaction/WalletTransactionsPresenter$loadTransactions$1;->$isLoadMore:Z

    iput-boolean p3, p0, Lcom/smedialink/ui/wallet/transaction/WalletTransactionsPresenter$loadTransactions$1;->$forceUpdate:Z

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 117
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/smedialink/ui/wallet/transaction/WalletTransactionsPresenter$loadTransactions$1;->invoke(Ljava/util/List;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction;",
            ">;)V"
        }
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/smedialink/ui/wallet/transaction/WalletTransactionsPresenter$loadTransactions$1;->this$0:Lcom/smedialink/ui/wallet/transaction/WalletTransactionsPresenter;

    invoke-static {v0, p1}, Lcom/smedialink/ui/wallet/transaction/WalletTransactionsPresenter;->access$filterTransactionsByTypeIfNeeded(Lcom/smedialink/ui/wallet/transaction/WalletTransactionsPresenter;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 128
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 129
    iget-boolean p1, p0, Lcom/smedialink/ui/wallet/transaction/WalletTransactionsPresenter$loadTransactions$1;->$isLoadMore:Z

    if-nez p1, :cond_0

    .line 130
    iget-object p1, p0, Lcom/smedialink/ui/wallet/transaction/WalletTransactionsPresenter$loadTransactions$1;->this$0:Lcom/smedialink/ui/wallet/transaction/WalletTransactionsPresenter;

    sget-object v0, Lcom/smedialink/model/state/GlobalState$Empty$Common;->INSTANCE:Lcom/smedialink/model/state/GlobalState$Empty$Common;

    invoke-static {p1, v0}, Lcom/smedialink/ui/wallet/transaction/WalletTransactionsPresenter;->access$renderGlobalState(Lcom/smedialink/ui/wallet/transaction/WalletTransactionsPresenter;Lcom/smedialink/model/state/GlobalState;)V

    .line 132
    :cond_0
    iget-object p1, p0, Lcom/smedialink/ui/wallet/transaction/WalletTransactionsPresenter$loadTransactions$1;->this$0:Lcom/smedialink/ui/wallet/transaction/WalletTransactionsPresenter;

    invoke-virtual {p1}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/smedialink/ui/wallet/transaction/WalletTransactionsView;

    invoke-interface {p1}, Lcom/smedialink/ui/base/mvp/LoadMoreView;->onLoadMoreComplete()V

    goto :goto_0

    .line 134
    :cond_1
    iget-object v0, p0, Lcom/smedialink/ui/wallet/transaction/WalletTransactionsPresenter$loadTransactions$1;->this$0:Lcom/smedialink/ui/wallet/transaction/WalletTransactionsPresenter;

    invoke-static {v0, p1}, Lcom/smedialink/ui/wallet/transaction/WalletTransactionsPresenter;->access$mapTransactionsToGroups(Lcom/smedialink/ui/wallet/transaction/WalletTransactionsPresenter;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 136
    iget-boolean v0, p0, Lcom/smedialink/ui/wallet/transaction/WalletTransactionsPresenter$loadTransactions$1;->$isLoadMore:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/smedialink/ui/wallet/transaction/WalletTransactionsPresenter$loadTransactions$1;->this$0:Lcom/smedialink/ui/wallet/transaction/WalletTransactionsPresenter;

    invoke-virtual {v0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/wallet/transaction/WalletTransactionsView;

    invoke-interface {v0, p1}, Lcom/smedialink/ui/base/mvp/LoadMoreView;->onLoadMoreItems(Ljava/util/List;)V

    goto :goto_0

    .line 137
    :cond_2
    iget-boolean v0, p0, Lcom/smedialink/ui/wallet/transaction/WalletTransactionsPresenter$loadTransactions$1;->$forceUpdate:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/smedialink/ui/wallet/transaction/WalletTransactionsPresenter$loadTransactions$1;->this$0:Lcom/smedialink/ui/wallet/transaction/WalletTransactionsPresenter;

    invoke-virtual {v0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/wallet/transaction/WalletTransactionsView;

    invoke-interface {v0, p1}, Lcom/smedialink/ui/wallet/transaction/WalletTransactionsView;->renderInitialItems(Ljava/util/List;)V

    goto :goto_0

    .line 138
    :cond_3
    iget-object v0, p0, Lcom/smedialink/ui/wallet/transaction/WalletTransactionsPresenter$loadTransactions$1;->this$0:Lcom/smedialink/ui/wallet/transaction/WalletTransactionsPresenter;

    invoke-virtual {v0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/wallet/transaction/WalletTransactionsView;

    invoke-interface {v0, p1}, Lcom/smedialink/ui/wallet/transaction/WalletTransactionsView;->renderItems(Ljava/util/List;)V

    :goto_0
    return-void
.end method
