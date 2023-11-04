.class public final Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter$loadProducts$$inlined$subscribeWithErrorHandle$default$1;
.super Lkotlin/jvm/internal/Lambda;
.source "RxExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter;->loadProducts(Z)V
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
        "Lcom/iMe/storage/domain/model/crypto/ton/TonFragmentProduct;",
        ">;>;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRxExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxExt.kt\ncom/iMe/utils/extentions/rx/RxExtKt$subscribeWithErrorHandle$2\n+ 2 FragmentUsernamesPresenter.kt\ncom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter\n*L\n1#1,132:1\n112#2,19:133\n*E\n"
.end annotation


# instance fields
.field final synthetic $isSwipeToRefresh$inlined:Z

.field final synthetic this$0:Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter;


# direct methods
.method public constructor <init>(Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter;Z)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter$loadProducts$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter;

    iput-boolean p2, p0, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter$loadProducts$$inlined$subscribeWithErrorHandle$default$1;->$isSwipeToRefresh$inlined:Z

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 68
    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter$loadProducts$$inlined$subscribeWithErrorHandle$default$1;->invoke(Ljava/lang/Object;)V

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
            "Lcom/iMe/storage/domain/model/crypto/ton/TonFragmentProduct;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "it"

    .line 69
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/iMe/storage/domain/model/Result;

    .line 133
    iget-object v0, p0, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter$loadProducts$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter;

    invoke-virtual {v0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesView;

    iget-boolean v1, p0, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter$loadProducts$$inlined$subscribeWithErrorHandle$default$1;->$isSwipeToRefresh$inlined:Z

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/Result;->isLoading()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0, v1}, Lcom/iMe/ui/base/mvp/SwipeRefreshView;->showRefreshing(Z)V

    .line 135
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Success;

    if-eqz v0, :cond_1

    .line 136
    iget-object v0, p0, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter$loadProducts$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter;

    check-cast p1, Lcom/iMe/storage/domain/model/Result$Success;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/Result$Success;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-static {v0, p1}, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter;->access$onLoadProductsSuccess(Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter;Ljava/util/List;)V

    goto :goto_1

    .line 139
    :cond_1
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Loading;

    if-eqz v0, :cond_2

    .line 140
    iget-boolean p1, p0, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter$loadProducts$$inlined$subscribeWithErrorHandle$default$1;->$isSwipeToRefresh$inlined:Z

    if-nez p1, :cond_3

    .line 141
    iget-object p1, p0, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter$loadProducts$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter;

    sget-object v0, Lcom/iMe/model/state/GlobalState$Progress;->INSTANCE:Lcom/iMe/model/state/GlobalState$Progress;

    invoke-static {p1, v0}, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter;->access$renderGlobalState(Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter;Lcom/iMe/model/state/GlobalState;)V

    goto :goto_1

    .line 145
    :cond_2
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Error;

    if-eqz v0, :cond_3

    .line 146
    iget-object v0, p0, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter$loadProducts$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter;

    check-cast p1, Lcom/iMe/storage/domain/model/Result$Error;

    invoke-static {v0, p1}, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter;->access$onLoadProductsError(Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter;Lcom/iMe/storage/domain/model/Result$Error;)V

    :cond_3
    :goto_1
    return-void
.end method
