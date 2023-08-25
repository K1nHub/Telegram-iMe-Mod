.class final Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter$loadCryptoBoxActions$1;
.super Lkotlin/jvm/internal/Lambda;
.source "WalletTransactionsPresenter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;->loadCryptoBoxActions(Z)V
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
        "Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxAction;",
        ">;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $isReload:Z

.field final synthetic this$0:Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;Z)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter$loadCryptoBoxActions$1;->this$0:Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;

    iput-boolean p2, p0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter$loadCryptoBoxActions$1;->$isReload:Z

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 211
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter$loadCryptoBoxActions$1;->invoke(Ljava/util/List;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxAction;",
            ">;)V"
        }
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 216
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 217
    iget-object v0, p0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter$loadCryptoBoxActions$1;->this$0:Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;

    invoke-static {v0, p1}, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;->access$mapCryptoBoxActionsToGroups(Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 218
    iget-boolean v0, p0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter$loadCryptoBoxActions$1;->$isReload:Z

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter$loadCryptoBoxActions$1;->this$0:Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;

    invoke-virtual {v0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsView;

    invoke-interface {v0, p1}, Lcom/iMe/ui/wallet/transaction/WalletTransactionsView;->renderItems(Ljava/util/List;)V

    goto :goto_0

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter$loadCryptoBoxActions$1;->this$0:Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;

    invoke-virtual {v0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsView;

    invoke-interface {v0, p1}, Lcom/iMe/ui/wallet/transaction/WalletTransactionsView;->renderInitialItems(Ljava/util/List;)V

    goto :goto_0

    .line 224
    :cond_1
    iget-object p1, p0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter$loadCryptoBoxActions$1;->this$0:Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;

    sget-object v0, Lcom/iMe/model/state/GlobalState$Empty$Common;->INSTANCE:Lcom/iMe/model/state/GlobalState$Empty$Common;

    invoke-static {p1, v0}, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;->access$renderGlobalState(Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;Lcom/iMe/model/state/GlobalState;)V

    .line 226
    :goto_0
    iget-object p1, p0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter$loadCryptoBoxActions$1;->this$0:Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;

    invoke-virtual {p1}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/wallet/transaction/WalletTransactionsView;

    invoke-interface {p1}, Lcom/iMe/ui/base/mvp/LoadMoreView;->onLoadMoreComplete()V

    return-void
.end method
