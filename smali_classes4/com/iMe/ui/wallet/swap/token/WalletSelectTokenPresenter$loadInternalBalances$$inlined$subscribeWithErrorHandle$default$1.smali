.class public final Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter$loadInternalBalances$$inlined$subscribeWithErrorHandle$default$1;
.super Lkotlin/jvm/internal/Lambda;
.source "RxExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter;->loadInternalBalances(Ljava/util/List;)V
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
        "Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;",
        ">;>;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRxExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxExt.kt\ncom/iMe/utils/extentions/rx/RxExtKt$subscribeWithErrorHandle$2\n+ 2 WalletSelectTokenPresenter.kt\ncom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,132:1\n187#2,6:133\n193#2:141\n196#2:146\n197#2,9:157\n208#2,19:169\n766#3:139\n857#3:140\n1747#3,3:142\n858#3:145\n1603#3,9:147\n1855#3:156\n1856#3:167\n1612#3:168\n1#4:166\n*S KotlinDebug\n*F\n+ 1 WalletSelectTokenPresenter.kt\ncom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter\n*L\n192#1:139\n192#1:140\n193#1:142,3\n192#1:145\n196#1:147,9\n196#1:156\n196#1:167\n196#1:168\n196#1:166\n*E\n"
.end annotation


# instance fields
.field final synthetic $availableTokens$inlined:Ljava/util/List;

.field final synthetic this$0:Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter$loadInternalBalances$$inlined$subscribeWithErrorHandle$default$1;->$availableTokens$inlined:Ljava/util/List;

    iput-object p2, p0, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter$loadInternalBalances$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 68
    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter$loadInternalBalances$$inlined$subscribeWithErrorHandle$default$1;->invoke(Ljava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/Result<",
            "+",
            "Ljava/util/List<",
            "+",
            "Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;",
            ">;>;)V"
        }
    .end annotation

    const-string/jumbo v0, "it"

    .line 69
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/iMe/storage/domain/model/Result;

    .line 134
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Success;

    if-eqz v0, :cond_b

    .line 135
    check-cast p1, Lcom/iMe/storage/domain/model/Result$Success;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/Result$Success;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 136
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_a

    .line 137
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter$loadInternalBalances$$inlined$subscribeWithErrorHandle$default$1;->$availableTokens$inlined:Ljava/util/List;

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    .line 766
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 857
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    .line 141
    iget-object v5, p0, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter$loadInternalBalances$$inlined$subscribeWithErrorHandle$default$1;->$availableTokens$inlined:Ljava/util/List;

    .line 1747
    instance-of v6, v5, Ljava/util/Collection;

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_1
    move v4, v2

    goto :goto_1

    .line 1748
    :cond_2
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    .line 141
    invoke-virtual {v6}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getTicker()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->getToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v7

    invoke-virtual {v7}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getTicker()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    move v4, v1

    :goto_1
    if-eqz v4, :cond_0

    .line 857
    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    move-object p1, v0

    .line 1603
    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1855
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1611
    check-cast v1, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    .line 158
    iget-object v3, p0, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter$loadInternalBalances$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter;

    invoke-static {v3}, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter;->access$getOnlyPositiveBalance$p(Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->getTotal()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-static {v3}, Lcom/iMe/storage/data/utils/extentions/NumberExtKt;->isZero(Ljava/lang/Number;)Z

    move-result v3

    if-nez v3, :cond_7

    goto :goto_3

    :cond_7
    const/4 v1, 0x0

    goto :goto_4

    .line 159
    :cond_8
    :goto_3
    new-instance v3, Lcom/iMe/model/wallet/select/SelectableTokenItem;

    .line 161
    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->getToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v4

    .line 162
    invoke-static {v1}, Lcom/iMe/mapper/wallet/select/SelectableMappingKt;->mapToSelectableBalance(Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;)Lcom/iMe/model/wallet/select/SelectableTokenBalance;

    move-result-object v1

    .line 159
    invoke-direct {v3, v2, v4, v1}, Lcom/iMe/model/wallet/select/SelectableTokenItem;-><init>(ZLcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Lcom/iMe/model/wallet/select/SelectableTokenBalance;)V

    move-object v1, v3

    :goto_4
    if-eqz v1, :cond_6

    .line 1611
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 169
    :cond_9
    iget-object p1, p0, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter$loadInternalBalances$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter;

    invoke-virtual {p1}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenView;

    iget-object v1, p0, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter$loadInternalBalances$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter;

    invoke-static {v1, v0}, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter;->access$withExcludedSelectedToken(Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenView;->renderItems(Ljava/util/List;)V

    goto :goto_6

    .line 171
    :cond_a
    iget-object p1, p0, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter$loadInternalBalances$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter;

    invoke-virtual {p1}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenView;

    invoke-interface {p1}, Lcom/iMe/ui/custom/state/GlobalStateView;->onEmptyState()V

    goto :goto_6

    .line 175
    :cond_b
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Loading;

    if-eqz v0, :cond_c

    iget-object p1, p0, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter$loadInternalBalances$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter;

    invoke-virtual {p1}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenView;

    invoke-interface {p1}, Lcom/iMe/ui/custom/state/GlobalStateView;->onLoadingState()V

    goto :goto_6

    .line 177
    :cond_c
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Error;

    if-eqz v0, :cond_e

    .line 179
    check-cast p1, Lcom/iMe/storage/domain/model/Result$Error;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/Result$Error;->getError()Lcom/iMe/storage/data/network/model/error/ErrorModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/storage/data/network/model/error/ErrorModel;->isNoConnectionStatus()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter$loadInternalBalances$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter;

    invoke-virtual {v0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenView;

    invoke-interface {v0}, Lcom/iMe/ui/custom/state/GlobalStateView;->onNoInternetErrorState()V

    goto :goto_5

    .line 180
    :cond_d
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter$loadInternalBalances$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter;

    invoke-virtual {v0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenView;

    invoke-interface {v0}, Lcom/iMe/ui/custom/state/GlobalStateView;->onUnexpectedErrorState()V

    .line 182
    :goto_5
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter$loadInternalBalances$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter;

    invoke-virtual {v0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenView;

    iget-object v1, p0, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter$loadInternalBalances$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter;

    invoke-static {v1}, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter;->access$getResourceManager$p(Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter;)Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/iMe/ui/base/mvp/base/BaseView;->showErrorToast(Lcom/iMe/storage/domain/model/Result$Error;Lcom/iMe/storage/domain/utils/system/ResourceManager;)V

    :cond_e
    :goto_6
    return-void
.end method
