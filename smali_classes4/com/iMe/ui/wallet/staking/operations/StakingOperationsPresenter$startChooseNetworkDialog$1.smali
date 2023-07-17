.class final Lcom/iMe/ui/wallet/staking/operations/StakingOperationsPresenter$startChooseNetworkDialog$1;
.super Lkotlin/jvm/internal/Lambda;
.source "StakingOperationsPresenter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/staking/operations/StakingOperationsPresenter;->startChooseNetworkDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/iMe/storage/domain/model/crypto/Network;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/ui/wallet/staking/operations/StakingOperationsPresenter;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/staking/operations/StakingOperationsPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/staking/operations/StakingOperationsPresenter$startChooseNetworkDialog$1;->this$0:Lcom/iMe/ui/wallet/staking/operations/StakingOperationsPresenter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 43
    check-cast p1, Lcom/iMe/storage/domain/model/crypto/Network;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/staking/operations/StakingOperationsPresenter$startChooseNetworkDialog$1;->invoke(Lcom/iMe/storage/domain/model/crypto/Network;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/iMe/storage/domain/model/crypto/Network;)V
    .locals 2

    const-string v0, "networkType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lcom/iMe/ui/wallet/staking/operations/StakingOperationsPresenter$startChooseNetworkDialog$1;->this$0:Lcom/iMe/ui/wallet/staking/operations/StakingOperationsPresenter;

    invoke-static {v0, p1}, Lcom/iMe/ui/wallet/staking/operations/StakingOperationsPresenter;->access$setSelectedNetwork$p(Lcom/iMe/ui/wallet/staking/operations/StakingOperationsPresenter;Lcom/iMe/storage/domain/model/crypto/Network;)V

    .line 48
    iget-object p1, p0, Lcom/iMe/ui/wallet/staking/operations/StakingOperationsPresenter$startChooseNetworkDialog$1;->this$0:Lcom/iMe/ui/wallet/staking/operations/StakingOperationsPresenter;

    invoke-static {p1}, Lcom/iMe/ui/wallet/staking/operations/StakingOperationsPresenter;->access$getRxEventBus$p(Lcom/iMe/ui/wallet/staking/operations/StakingOperationsPresenter;)Lcom/iMe/storage/domain/utils/rx/RxEventBus;

    move-result-object p1

    new-instance v0, Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents$StakingOperationsReload;

    iget-object v1, p0, Lcom/iMe/ui/wallet/staking/operations/StakingOperationsPresenter$startChooseNetworkDialog$1;->this$0:Lcom/iMe/ui/wallet/staking/operations/StakingOperationsPresenter;

    invoke-static {v1}, Lcom/iMe/ui/wallet/staking/operations/StakingOperationsPresenter;->access$getSelectedNetwork$p(Lcom/iMe/ui/wallet/staking/operations/StakingOperationsPresenter;)Lcom/iMe/storage/domain/model/crypto/Network;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/crypto/Network;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents$StakingOperationsReload;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/iMe/storage/domain/utils/rx/RxEventBus;->publish(Lcom/iMe/storage/domain/utils/rx/event/RxEvent;)V

    .line 49
    iget-object p1, p0, Lcom/iMe/ui/wallet/staking/operations/StakingOperationsPresenter$startChooseNetworkDialog$1;->this$0:Lcom/iMe/ui/wallet/staking/operations/StakingOperationsPresenter;

    invoke-virtual {p1}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/wallet/staking/operations/StakingOperationsView;

    iget-object v0, p0, Lcom/iMe/ui/wallet/staking/operations/StakingOperationsPresenter$startChooseNetworkDialog$1;->this$0:Lcom/iMe/ui/wallet/staking/operations/StakingOperationsPresenter;

    invoke-static {v0}, Lcom/iMe/ui/wallet/staking/operations/StakingOperationsPresenter;->access$getSelectedNetwork$p(Lcom/iMe/ui/wallet/staking/operations/StakingOperationsPresenter;)Lcom/iMe/storage/domain/model/crypto/Network;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/iMe/ui/base/mvp/SwitchNetworkView;->setupNetwork(Lcom/iMe/storage/domain/model/crypto/Network;)V

    return-void
.end method
