.class final Lcom/smedialink/ui/wallet/staking/operations/StakingOperationsPresenter$startChooseNetworkDialog$1;
.super Lkotlin/jvm/internal/Lambda;
.source "StakingOperationsPresenter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/ui/wallet/staking/operations/StakingOperationsPresenter;->startChooseNetworkDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/smedialink/storage/domain/model/crypto/NetworkType;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smedialink/ui/wallet/staking/operations/StakingOperationsPresenter;


# direct methods
.method constructor <init>(Lcom/smedialink/ui/wallet/staking/operations/StakingOperationsPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/ui/wallet/staking/operations/StakingOperationsPresenter$startChooseNetworkDialog$1;->this$0:Lcom/smedialink/ui/wallet/staking/operations/StakingOperationsPresenter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 42
    check-cast p1, Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    invoke-virtual {p0, p1}, Lcom/smedialink/ui/wallet/staking/operations/StakingOperationsPresenter$startChooseNetworkDialog$1;->invoke(Lcom/smedialink/storage/domain/model/crypto/NetworkType;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/smedialink/storage/domain/model/crypto/NetworkType;)V
    .locals 2

    const-string v0, "networkType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lcom/smedialink/ui/wallet/staking/operations/StakingOperationsPresenter$startChooseNetworkDialog$1;->this$0:Lcom/smedialink/ui/wallet/staking/operations/StakingOperationsPresenter;

    invoke-static {v0, p1}, Lcom/smedialink/ui/wallet/staking/operations/StakingOperationsPresenter;->access$setSelectedNetworkType$p(Lcom/smedialink/ui/wallet/staking/operations/StakingOperationsPresenter;Lcom/smedialink/storage/domain/model/crypto/NetworkType;)V

    .line 47
    iget-object p1, p0, Lcom/smedialink/ui/wallet/staking/operations/StakingOperationsPresenter$startChooseNetworkDialog$1;->this$0:Lcom/smedialink/ui/wallet/staking/operations/StakingOperationsPresenter;

    invoke-static {p1}, Lcom/smedialink/ui/wallet/staking/operations/StakingOperationsPresenter;->access$getRxEventBus$p(Lcom/smedialink/ui/wallet/staking/operations/StakingOperationsPresenter;)Lcom/smedialink/storage/domain/utils/rx/RxEventBus;

    move-result-object p1

    new-instance v0, Lcom/smedialink/storage/domain/utils/rx/event/DomainRxEvents$StakingOperationsReload;

    iget-object v1, p0, Lcom/smedialink/ui/wallet/staking/operations/StakingOperationsPresenter$startChooseNetworkDialog$1;->this$0:Lcom/smedialink/ui/wallet/staking/operations/StakingOperationsPresenter;

    invoke-static {v1}, Lcom/smedialink/ui/wallet/staking/operations/StakingOperationsPresenter;->access$getSelectedNetworkType$p(Lcom/smedialink/ui/wallet/staking/operations/StakingOperationsPresenter;)Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/smedialink/storage/domain/utils/rx/event/DomainRxEvents$StakingOperationsReload;-><init>(Lcom/smedialink/storage/domain/model/crypto/NetworkType;)V

    invoke-virtual {p1, v0}, Lcom/smedialink/storage/domain/utils/rx/RxEventBus;->publish(Lcom/smedialink/storage/domain/utils/rx/event/RxEvent;)V

    .line 48
    iget-object p1, p0, Lcom/smedialink/ui/wallet/staking/operations/StakingOperationsPresenter$startChooseNetworkDialog$1;->this$0:Lcom/smedialink/ui/wallet/staking/operations/StakingOperationsPresenter;

    invoke-virtual {p1}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/smedialink/ui/wallet/staking/operations/StakingOperationsView;

    iget-object v0, p0, Lcom/smedialink/ui/wallet/staking/operations/StakingOperationsPresenter$startChooseNetworkDialog$1;->this$0:Lcom/smedialink/ui/wallet/staking/operations/StakingOperationsPresenter;

    invoke-static {v0}, Lcom/smedialink/ui/wallet/staking/operations/StakingOperationsPresenter;->access$getSelectedNetworkType$p(Lcom/smedialink/ui/wallet/staking/operations/StakingOperationsPresenter;)Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/smedialink/ui/base/mvp/SwitchNetworkView;->setupNetworkType(Lcom/smedialink/storage/domain/model/crypto/NetworkType;)V

    return-void
.end method
