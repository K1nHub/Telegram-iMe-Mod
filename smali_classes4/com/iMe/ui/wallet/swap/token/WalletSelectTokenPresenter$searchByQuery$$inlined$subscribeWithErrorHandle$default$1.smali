.class public final Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter$searchByQuery$$inlined$subscribeWithErrorHandle$default$1;
.super Lkotlin/jvm/internal/Lambda;
.source "RxExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter;->searchByQuery(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
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
        "Lcom/iMe/model/wallet/select/SelectableTokenItem;",
        ">;>;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRxExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxExt.kt\ncom/iMe/utils/extentions/rx/RxExtKt$subscribeWithErrorHandle$2\n+ 2 WalletSelectTokenPresenter.kt\ncom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter\n*L\n1#1,111:1\n78#2,15:112\n*E\n"
.end annotation


# instance fields
.field final synthetic $isLoadMore$inlined:Z

.field final synthetic $isReload$inlined:Z

.field final synthetic this$0:Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter;


# direct methods
.method public constructor <init>(Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter;ZZ)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter$searchByQuery$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter;

    iput-boolean p2, p0, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter$searchByQuery$$inlined$subscribeWithErrorHandle$default$1;->$isLoadMore$inlined:Z

    iput-boolean p3, p0, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter$searchByQuery$$inlined$subscribeWithErrorHandle$default$1;->$isReload$inlined:Z

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter$searchByQuery$$inlined$subscribeWithErrorHandle$default$1;->invoke(Ljava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/Result<",
            "+",
            "Ljava/util/List<",
            "+",
            "Lcom/iMe/model/wallet/select/SelectableTokenItem;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "it"

    .line 48
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/iMe/storage/domain/model/Result;

    .line 113
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Success;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter$searchByQuery$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter;

    check-cast p1, Lcom/iMe/storage/domain/model/Result$Success;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/Result$Success;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iget-boolean v1, p0, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter$searchByQuery$$inlined$subscribeWithErrorHandle$default$1;->$isLoadMore$inlined:Z

    invoke-static {v0, p1, v1}, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter;->access$onSwapTokensSuccess(Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter;Ljava/util/List;Z)V

    goto :goto_0

    .line 114
    :cond_0
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Loading;

    if-eqz v0, :cond_1

    iget-boolean p1, p0, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter$searchByQuery$$inlined$subscribeWithErrorHandle$default$1;->$isReload$inlined:Z

    if-eqz p1, :cond_4

    .line 115
    iget-object p1, p0, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter$searchByQuery$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter;

    invoke-virtual {p1}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenView;

    invoke-interface {p1}, Lcom/iMe/ui/custom/state/GlobalStateView;->onLoadingState()V

    goto :goto_0

    .line 118
    :cond_1
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Error;

    if-eqz v0, :cond_4

    .line 119
    iget-boolean v0, p0, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter$searchByQuery$$inlined$subscribeWithErrorHandle$default$1;->$isLoadMore$inlined:Z

    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter$searchByQuery$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter;

    invoke-virtual {p1}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenView;

    invoke-interface {p1}, Lcom/iMe/ui/base/mvp/LoadMoreView;->onLoadMoreError()V

    goto :goto_0

    .line 120
    :cond_2
    check-cast p1, Lcom/iMe/storage/domain/model/Result$Error;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/Result$Error;->getError()Lcom/iMe/storage/data/network/model/error/ErrorModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iMe/storage/data/network/model/error/ErrorModel;->isNoConnectionStatus()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter$searchByQuery$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter;

    invoke-virtual {p1}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenView;

    invoke-interface {p1}, Lcom/iMe/ui/custom/state/GlobalStateView;->onNoInternetErrorState()V

    goto :goto_0

    .line 121
    :cond_3
    iget-object p1, p0, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter$searchByQuery$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter;

    invoke-virtual {p1}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenView;

    invoke-interface {p1}, Lcom/iMe/ui/custom/state/GlobalStateView;->onUnexpectedErrorState()V

    :cond_4
    :goto_0
    return-void
.end method
