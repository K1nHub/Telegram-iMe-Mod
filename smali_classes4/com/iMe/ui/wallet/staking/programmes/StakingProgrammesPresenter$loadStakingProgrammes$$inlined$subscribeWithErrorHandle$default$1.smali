.class public final Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesPresenter$loadStakingProgrammes$$inlined$subscribeWithErrorHandle$default$1;
.super Lkotlin/jvm/internal/Lambda;
.source "RxExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesPresenter;->loadStakingProgrammes(ZZ)V
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
        "Lcom/iMe/storage/domain/model/staking/StakingProgrammes;",
        ">;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRxExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxExt.kt\ncom/iMe/utils/extentions/rx/RxExtKt$subscribeWithErrorHandle$2\n+ 2 StakingProgrammesPresenter.kt\ncom/iMe/ui/wallet/staking/programmes/StakingProgrammesPresenter\n*L\n1#1,111:1\n89#2,21:112\n*E\n"
.end annotation


# instance fields
.field final synthetic $isInitialLoad$inlined:Z

.field final synthetic $isLoadMore$inlined:Z

.field final synthetic $isReload$inlined:Z

.field final synthetic this$0:Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesPresenter;


# direct methods
.method public constructor <init>(ZLcom/iMe/ui/wallet/staking/programmes/StakingProgrammesPresenter;ZZ)V
    .locals 0

    iput-boolean p1, p0, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesPresenter$loadStakingProgrammes$$inlined$subscribeWithErrorHandle$default$1;->$isReload$inlined:Z

    iput-object p2, p0, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesPresenter$loadStakingProgrammes$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesPresenter;

    iput-boolean p3, p0, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesPresenter$loadStakingProgrammes$$inlined$subscribeWithErrorHandle$default$1;->$isInitialLoad$inlined:Z

    iput-boolean p4, p0, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesPresenter$loadStakingProgrammes$$inlined$subscribeWithErrorHandle$default$1;->$isLoadMore$inlined:Z

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 44
    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesPresenter$loadStakingProgrammes$$inlined$subscribeWithErrorHandle$default$1;->invoke(Ljava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/Result<",
            "+",
            "Lcom/iMe/storage/domain/model/staking/StakingProgrammes;",
            ">;)V"
        }
    .end annotation

    const-string v0, "it"

    .line 45
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/iMe/storage/domain/model/Result;

    .line 112
    iget-boolean v0, p0, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesPresenter$loadStakingProgrammes$$inlined$subscribeWithErrorHandle$default$1;->$isReload$inlined:Z

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesPresenter$loadStakingProgrammes$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesPresenter;

    invoke-static {v0}, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesPresenter;->access$getRxEventBus$p(Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesPresenter;)Lcom/iMe/storage/domain/utils/rx/RxEventBus;

    move-result-object v0

    new-instance v1, Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents$StakingTabRefreshStateChanged;

    .line 114
    iget-object v2, p0, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesPresenter$loadStakingProgrammes$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesPresenter;

    invoke-static {v2}, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesPresenter;->access$getStakingTabType$p(Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesPresenter;)Lcom/iMe/storage/domain/model/staking/StakingTabType;

    move-result-object v2

    .line 115
    instance-of v3, p1, Lcom/iMe/storage/domain/model/Result$Loading;

    .line 113
    invoke-direct {v1, v2, v3}, Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents$StakingTabRefreshStateChanged;-><init>(Lcom/iMe/storage/domain/model/staking/StakingTabType;Z)V

    invoke-virtual {v0, v1}, Lcom/iMe/storage/domain/utils/rx/RxEventBus;->publish(Lcom/iMe/storage/domain/utils/rx/event/RxEvent;)V

    .line 119
    :cond_0
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Success;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/iMe/storage/domain/model/Result$Success;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/Result$Success;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/iMe/storage/domain/model/staking/StakingProgrammes;

    .line 120
    iget-object v0, p0, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesPresenter$loadStakingProgrammes$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesPresenter;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/staking/StakingProgrammes;->getProgrammes()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/staking/StakingProgrammes;->getTotal()I

    move-result p1

    iget-boolean v2, p0, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesPresenter$loadStakingProgrammes$$inlined$subscribeWithErrorHandle$default$1;->$isLoadMore$inlined:Z

    invoke-static {v0, v1, p1, v2}, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesPresenter;->access$onProgrammesDataObtained(Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesPresenter;Ljava/util/List;IZ)V

    goto :goto_0

    .line 122
    :cond_1
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Loading;

    if-eqz v0, :cond_2

    iget-boolean p1, p0, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesPresenter$loadStakingProgrammes$$inlined$subscribeWithErrorHandle$default$1;->$isInitialLoad$inlined:Z

    if-eqz p1, :cond_5

    .line 123
    iget-object p1, p0, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesPresenter$loadStakingProgrammes$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesPresenter;

    sget-object v0, Lcom/iMe/model/state/GlobalState$Progress;->INSTANCE:Lcom/iMe/model/state/GlobalState$Progress;

    invoke-static {p1, v0}, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesPresenter;->access$renderGlobalStateItemsList(Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesPresenter;Lcom/iMe/model/state/GlobalState;)V

    goto :goto_0

    .line 125
    :cond_2
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Error;

    if-eqz v0, :cond_5

    .line 126
    iget-boolean v0, p0, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesPresenter$loadStakingProgrammes$$inlined$subscribeWithErrorHandle$default$1;->$isLoadMore$inlined:Z

    if-eqz v0, :cond_3

    iget-object p1, p0, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesPresenter$loadStakingProgrammes$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesPresenter;

    invoke-virtual {p1}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesView;

    invoke-interface {p1}, Lcom/iMe/ui/base/mvp/LoadMoreView;->onLoadMoreError()V

    goto :goto_0

    .line 127
    :cond_3
    check-cast p1, Lcom/iMe/storage/domain/model/Result$Error;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/Result$Error;->getError()Lcom/iMe/storage/data/network/model/error/ErrorModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iMe/storage/data/network/model/error/ErrorModel;->isNoConnectionStatus()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesPresenter$loadStakingProgrammes$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesPresenter;

    sget-object v0, Lcom/iMe/model/state/GlobalState$NoInternet;->INSTANCE:Lcom/iMe/model/state/GlobalState$NoInternet;

    invoke-static {p1, v0}, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesPresenter;->access$renderGlobalStateItemsList(Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesPresenter;Lcom/iMe/model/state/GlobalState;)V

    goto :goto_0

    .line 128
    :cond_4
    iget-object p1, p0, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesPresenter$loadStakingProgrammes$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesPresenter;

    sget-object v0, Lcom/iMe/model/state/GlobalState$Unexpected;->INSTANCE:Lcom/iMe/model/state/GlobalState$Unexpected;

    invoke-static {p1, v0}, Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesPresenter;->access$renderGlobalStateItemsList(Lcom/iMe/ui/wallet/staking/programmes/StakingProgrammesPresenter;Lcom/iMe/model/state/GlobalState;)V

    :cond_5
    :goto_0
    return-void
.end method
