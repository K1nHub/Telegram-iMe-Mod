.class public final Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter$loadCryptoBoxes$$inlined$subscribeWithErrorHandle$default$1;
.super Lkotlin/jvm/internal/Lambda;
.source "RxExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter;->loadCryptoBoxes(Z)V
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
        "Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;",
        ">;>;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRxExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxExt.kt\ncom/iMe/utils/extentions/rx/RxExtKt$subscribeWithErrorHandle$2\n+ 2 CryptoBoxesPresenter.kt\ncom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter\n*L\n1#1,132:1\n126#2,23:133\n*E\n"
.end annotation


# instance fields
.field final synthetic $isSwipeToRefresh$inlined:Z

.field final synthetic this$0:Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter;


# direct methods
.method public constructor <init>(Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter;Z)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter$loadCryptoBoxes$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter;

    iput-boolean p2, p0, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter$loadCryptoBoxes$$inlined$subscribeWithErrorHandle$default$1;->$isSwipeToRefresh$inlined:Z

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 68
    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter$loadCryptoBoxes$$inlined$subscribeWithErrorHandle$default$1;->invoke(Ljava/lang/Object;)V

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
            "Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "it"

    .line 69
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/iMe/storage/domain/model/Result;

    .line 134
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Success;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter$loadCryptoBoxes$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter;

    check-cast p1, Lcom/iMe/storage/domain/model/Result$Success;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/Result$Success;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-static {v0, p1}, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter;->access$renderCryptoBoxesItems(Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter;Ljava/util/List;)V

    .line 136
    iget-object p1, p0, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter$loadCryptoBoxes$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter;

    invoke-virtual {p1}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesView;

    invoke-interface {p1, v1}, Lcom/iMe/ui/base/mvp/SwipeRefreshView;->showRefreshing(Z)V

    goto :goto_1

    .line 139
    :cond_0
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Loading;

    if-eqz v0, :cond_1

    iget-boolean p1, p0, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter$loadCryptoBoxes$$inlined$subscribeWithErrorHandle$default$1;->$isSwipeToRefresh$inlined:Z

    if-nez p1, :cond_3

    .line 140
    iget-object p1, p0, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter$loadCryptoBoxes$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter;

    sget-object v0, Lcom/iMe/model/state/GlobalState$Progress;->INSTANCE:Lcom/iMe/model/state/GlobalState$Progress;

    invoke-static {p1, v0}, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter;->access$renderGlobalState(Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter;Lcom/iMe/model/state/GlobalState;)V

    goto :goto_1

    .line 143
    :cond_1
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Error;

    if-eqz v0, :cond_3

    .line 144
    iget-object v0, p0, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter$loadCryptoBoxes$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter;

    .line 146
    check-cast p1, Lcom/iMe/storage/domain/model/Result$Error;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/Result$Error;->getError()Lcom/iMe/storage/data/network/model/error/ErrorModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iMe/storage/data/network/model/error/ErrorModel;->isNoConnectionStatus()Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lcom/iMe/model/state/GlobalState$NoInternet;->INSTANCE:Lcom/iMe/model/state/GlobalState$NoInternet;

    goto :goto_0

    .line 147
    :cond_2
    sget-object p1, Lcom/iMe/model/state/GlobalState$Unexpected;->INSTANCE:Lcom/iMe/model/state/GlobalState$Unexpected;

    .line 144
    :goto_0
    invoke-static {v0, p1}, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter;->access$renderGlobalState(Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter;Lcom/iMe/model/state/GlobalState;)V

    .line 150
    iget-object p1, p0, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter$loadCryptoBoxes$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesPresenter;

    invoke-virtual {p1}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/wallet/cryptobox/CryptoBoxesView;

    invoke-interface {p1, v1}, Lcom/iMe/ui/base/mvp/SwipeRefreshView;->showRefreshing(Z)V

    :cond_3
    :goto_1
    return-void
.end method
