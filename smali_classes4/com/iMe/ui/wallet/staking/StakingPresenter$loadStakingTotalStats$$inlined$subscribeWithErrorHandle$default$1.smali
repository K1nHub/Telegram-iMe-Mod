.class public final Lcom/iMe/ui/wallet/staking/StakingPresenter$loadStakingTotalStats$$inlined$subscribeWithErrorHandle$default$1;
.super Lkotlin/jvm/internal/Lambda;
.source "RxExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/staking/StakingPresenter;->loadStakingTotalStats(Z)V
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
        "Lcom/iMe/storage/domain/model/staking/StakingTotalStats;",
        ">;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRxExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxExt.kt\ncom/iMe/utils/extentions/rx/RxExtKt$subscribeWithErrorHandle$2\n+ 2 StakingPresenter.kt\ncom/iMe/ui/wallet/staking/StakingPresenter\n*L\n1#1,132:1\n82#2,17:133\n*E\n"
.end annotation


# instance fields
.field final synthetic $isInitialLoad$inlined:Z

.field final synthetic this$0:Lcom/iMe/ui/wallet/staking/StakingPresenter;


# direct methods
.method public constructor <init>(Lcom/iMe/ui/wallet/staking/StakingPresenter;Z)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/staking/StakingPresenter$loadStakingTotalStats$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/staking/StakingPresenter;

    iput-boolean p2, p0, Lcom/iMe/ui/wallet/staking/StakingPresenter$loadStakingTotalStats$$inlined$subscribeWithErrorHandle$default$1;->$isInitialLoad$inlined:Z

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 68
    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/staking/StakingPresenter$loadStakingTotalStats$$inlined$subscribeWithErrorHandle$default$1;->invoke(Ljava/lang/Object;)V

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
            "Lcom/iMe/storage/domain/model/staking/StakingTotalStats;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "it"

    .line 69
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/iMe/storage/domain/model/Result;

    .line 133
    iget-object v0, p0, Lcom/iMe/ui/wallet/staking/StakingPresenter$loadStakingTotalStats$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/staking/StakingPresenter;

    instance-of v1, p1, Lcom/iMe/storage/domain/model/Result$Loading;

    invoke-static {v0, v1}, Lcom/iMe/ui/wallet/staking/StakingPresenter;->access$setDashboardRefreshing$p(Lcom/iMe/ui/wallet/staking/StakingPresenter;Z)V

    .line 134
    iget-object v0, p0, Lcom/iMe/ui/wallet/staking/StakingPresenter$loadStakingTotalStats$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/staking/StakingPresenter;

    invoke-static {v0}, Lcom/iMe/ui/wallet/staking/StakingPresenter;->access$updateRefreshState(Lcom/iMe/ui/wallet/staking/StakingPresenter;)V

    .line 136
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Success;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/iMe/storage/domain/model/Result$Success;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/Result$Success;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/iMe/storage/domain/model/staking/StakingTotalStats;

    .line 137
    iget-object v0, p0, Lcom/iMe/ui/wallet/staking/StakingPresenter$loadStakingTotalStats$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/staking/StakingPresenter;

    invoke-virtual {v0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/staking/StakingView;

    .line 138
    new-instance v1, Lcom/iMe/model/staking/StakingDashboardItem$Data;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/staking/StakingTotalStats;->getTotalStakedUsd()F

    move-result v2

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/staking/StakingTotalStats;->getTotalProfitUsd()F

    move-result p1

    invoke-direct {v1, v2, p1}, Lcom/iMe/model/staking/StakingDashboardItem$Data;-><init>(FF)V

    .line 137
    invoke-interface {v0, v1}, Lcom/iMe/ui/wallet/staking/StakingView;->updateDashboardItem(Lcom/iMe/model/staking/StakingDashboardItem;)V

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    .line 142
    iget-boolean p1, p0, Lcom/iMe/ui/wallet/staking/StakingPresenter$loadStakingTotalStats$$inlined$subscribeWithErrorHandle$default$1;->$isInitialLoad$inlined:Z

    if-eqz p1, :cond_2

    .line 143
    iget-object p1, p0, Lcom/iMe/ui/wallet/staking/StakingPresenter$loadStakingTotalStats$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/staking/StakingPresenter;

    invoke-virtual {p1}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/wallet/staking/StakingView;

    sget-object v0, Lcom/iMe/model/staking/StakingDashboardItem$Loading;->INSTANCE:Lcom/iMe/model/staking/StakingDashboardItem$Loading;

    invoke-interface {p1, v0}, Lcom/iMe/ui/wallet/staking/StakingView;->updateDashboardItem(Lcom/iMe/model/staking/StakingDashboardItem;)V

    goto :goto_0

    .line 146
    :cond_1
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Error;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/iMe/ui/wallet/staking/StakingPresenter$loadStakingTotalStats$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/staking/StakingPresenter;

    invoke-virtual {v0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/staking/StakingView;

    check-cast p1, Lcom/iMe/storage/domain/model/Result$Error;

    iget-object v1, p0, Lcom/iMe/ui/wallet/staking/StakingPresenter$loadStakingTotalStats$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/staking/StakingPresenter;

    invoke-static {v1}, Lcom/iMe/ui/wallet/staking/StakingPresenter;->access$getResourceManager$p(Lcom/iMe/ui/wallet/staking/StakingPresenter;)Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/iMe/ui/base/mvp/base/BaseView;->showErrorToast(Lcom/iMe/storage/domain/model/Result$Error;Lcom/iMe/storage/domain/utils/system/ResourceManager;)V

    :cond_2
    :goto_0
    return-void
.end method
