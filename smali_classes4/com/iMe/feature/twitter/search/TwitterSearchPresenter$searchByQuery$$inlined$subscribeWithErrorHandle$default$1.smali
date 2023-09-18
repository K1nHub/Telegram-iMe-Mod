.class public final Lcom/iMe/feature/twitter/search/TwitterSearchPresenter$searchByQuery$$inlined$subscribeWithErrorHandle$default$1;
.super Lkotlin/jvm/internal/Lambda;
.source "RxExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/feature/twitter/search/TwitterSearchPresenter;->searchByQuery(Z)V
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
        "Lcom/chad/library/adapter/base/entity/node/BaseNode;",
        ">;>;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRxExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxExt.kt\ncom/iMe/utils/extentions/rx/RxExtKt$subscribeWithErrorHandle$2\n+ 2 TwitterSearchPresenter.kt\ncom/iMe/feature/twitter/search/TwitterSearchPresenter\n*L\n1#1,132:1\n75#2,15:133\n*E\n"
.end annotation


# instance fields
.field final synthetic $isLoadMore$inlined:Z

.field final synthetic $isReload$inlined:Z

.field final synthetic this$0:Lcom/iMe/feature/twitter/search/TwitterSearchPresenter;


# direct methods
.method public constructor <init>(Lcom/iMe/feature/twitter/search/TwitterSearchPresenter;ZZ)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/feature/twitter/search/TwitterSearchPresenter$searchByQuery$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/feature/twitter/search/TwitterSearchPresenter;

    iput-boolean p2, p0, Lcom/iMe/feature/twitter/search/TwitterSearchPresenter$searchByQuery$$inlined$subscribeWithErrorHandle$default$1;->$isLoadMore$inlined:Z

    iput-boolean p3, p0, Lcom/iMe/feature/twitter/search/TwitterSearchPresenter$searchByQuery$$inlined$subscribeWithErrorHandle$default$1;->$isReload$inlined:Z

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 68
    invoke-virtual {p0, p1}, Lcom/iMe/feature/twitter/search/TwitterSearchPresenter$searchByQuery$$inlined$subscribeWithErrorHandle$default$1;->invoke(Ljava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/Result<",
            "+",
            "Ljava/util/List<",
            "+",
            "Lcom/chad/library/adapter/base/entity/node/BaseNode;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "it"

    .line 69
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/iMe/storage/domain/model/Result;

    .line 134
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Success;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iMe/feature/twitter/search/TwitterSearchPresenter$searchByQuery$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/feature/twitter/search/TwitterSearchPresenter;

    check-cast p1, Lcom/iMe/storage/domain/model/Result$Success;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/Result$Success;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iget-boolean v1, p0, Lcom/iMe/feature/twitter/search/TwitterSearchPresenter$searchByQuery$$inlined$subscribeWithErrorHandle$default$1;->$isLoadMore$inlined:Z

    iget-boolean v2, p0, Lcom/iMe/feature/twitter/search/TwitterSearchPresenter$searchByQuery$$inlined$subscribeWithErrorHandle$default$1;->$isReload$inlined:Z

    invoke-static {v0, p1, v1, v2}, Lcom/iMe/feature/twitter/search/TwitterSearchPresenter;->access$onSearchSuccess(Lcom/iMe/feature/twitter/search/TwitterSearchPresenter;Ljava/util/List;ZZ)V

    goto :goto_0

    .line 135
    :cond_0
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Loading;

    if-eqz v0, :cond_1

    iget-boolean p1, p0, Lcom/iMe/feature/twitter/search/TwitterSearchPresenter$searchByQuery$$inlined$subscribeWithErrorHandle$default$1;->$isReload$inlined:Z

    if-eqz p1, :cond_4

    .line 136
    iget-object p1, p0, Lcom/iMe/feature/twitter/search/TwitterSearchPresenter$searchByQuery$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/feature/twitter/search/TwitterSearchPresenter;

    sget-object v0, Lcom/iMe/model/state/GlobalState$Progress;->INSTANCE:Lcom/iMe/model/state/GlobalState$Progress;

    invoke-static {p1, v0}, Lcom/iMe/feature/twitter/search/TwitterSearchPresenter;->access$renderGlobalState(Lcom/iMe/feature/twitter/search/TwitterSearchPresenter;Lcom/iMe/model/state/GlobalState;)V

    goto :goto_0

    .line 139
    :cond_1
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Error;

    if-eqz v0, :cond_4

    .line 140
    iget-boolean v0, p0, Lcom/iMe/feature/twitter/search/TwitterSearchPresenter$searchByQuery$$inlined$subscribeWithErrorHandle$default$1;->$isLoadMore$inlined:Z

    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/iMe/feature/twitter/search/TwitterSearchPresenter$searchByQuery$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/feature/twitter/search/TwitterSearchPresenter;

    invoke-virtual {p1}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/feature/twitter/search/TwitterSearchView;

    invoke-interface {p1}, Lcom/iMe/ui/base/mvp/LoadMoreView;->onLoadMoreError()V

    goto :goto_0

    .line 141
    :cond_2
    check-cast p1, Lcom/iMe/storage/domain/model/Result$Error;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/Result$Error;->getError()Lcom/iMe/storage/data/network/model/error/ErrorModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iMe/storage/data/network/model/error/ErrorModel;->isNoConnectionStatus()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/iMe/feature/twitter/search/TwitterSearchPresenter$searchByQuery$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/feature/twitter/search/TwitterSearchPresenter;

    sget-object v0, Lcom/iMe/model/state/GlobalState$NoInternet;->INSTANCE:Lcom/iMe/model/state/GlobalState$NoInternet;

    invoke-static {p1, v0}, Lcom/iMe/feature/twitter/search/TwitterSearchPresenter;->access$renderGlobalState(Lcom/iMe/feature/twitter/search/TwitterSearchPresenter;Lcom/iMe/model/state/GlobalState;)V

    goto :goto_0

    .line 142
    :cond_3
    iget-object p1, p0, Lcom/iMe/feature/twitter/search/TwitterSearchPresenter$searchByQuery$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/feature/twitter/search/TwitterSearchPresenter;

    sget-object v0, Lcom/iMe/model/state/GlobalState$Unexpected;->INSTANCE:Lcom/iMe/model/state/GlobalState$Unexpected;

    invoke-static {p1, v0}, Lcom/iMe/feature/twitter/search/TwitterSearchPresenter;->access$renderGlobalState(Lcom/iMe/feature/twitter/search/TwitterSearchPresenter;Lcom/iMe/model/state/GlobalState;)V

    :cond_4
    :goto_0
    return-void
.end method
