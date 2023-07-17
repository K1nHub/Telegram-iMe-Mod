.class public final Lcom/iMe/ui/wallet/staking/operations/StakingOperationsPresenter;
.super Lcom/iMe/ui/base/mvp/base/BasePresenter;
.source "StakingOperationsPresenter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/iMe/ui/base/mvp/base/BasePresenter<",
        "Lcom/iMe/ui/wallet/staking/operations/StakingOperationsView;",
        ">;"
    }
.end annotation

.annotation runtime Lmoxy/InjectViewState;
.end annotation


# instance fields
.field private final rxEventBus:Lcom/iMe/storage/domain/utils/rx/RxEventBus;

.field private selectedNetwork:Lcom/iMe/storage/domain/model/crypto/Network;


# direct methods
.method public constructor <init>(Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;Lcom/iMe/storage/domain/utils/rx/RxEventBus;)V
    .locals 1

    const-string v0, "cryptoPreferenceHelper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "rxEventBus"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Lcom/iMe/ui/base/mvp/base/BasePresenter;-><init>()V

    .line 14
    iput-object p2, p0, Lcom/iMe/ui/wallet/staking/operations/StakingOperationsPresenter;->rxEventBus:Lcom/iMe/storage/domain/utils/rx/RxEventBus;

    .line 18
    invoke-interface {p1}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->getNetwork()Lcom/iMe/storage/domain/model/crypto/Network;

    move-result-object p2

    invoke-virtual {p2}, Lcom/iMe/storage/domain/model/crypto/Network;->getBlockchainType()Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    move-result-object p2

    sget-object v0, Lcom/iMe/storage/domain/model/crypto/BlockchainType;->EVM:Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    if-ne p2, v0, :cond_0

    .line 19
    invoke-interface {p1}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->getNetwork()Lcom/iMe/storage/domain/model/crypto/Network;

    move-result-object p1

    goto :goto_0

    .line 21
    :cond_0
    sget-object p1, Lcom/iMe/storage/data/utils/crypto/NetworksHelper;->INSTANCE:Lcom/iMe/storage/data/utils/crypto/NetworksHelper;

    invoke-virtual {p1}, Lcom/iMe/storage/data/utils/crypto/NetworksHelper;->getEVMNetworks()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/iMe/storage/domain/model/crypto/Network;

    .line 18
    :goto_0
    iput-object p1, p0, Lcom/iMe/ui/wallet/staking/operations/StakingOperationsPresenter;->selectedNetwork:Lcom/iMe/storage/domain/model/crypto/Network;

    return-void
.end method

.method public static final synthetic access$getRxEventBus$p(Lcom/iMe/ui/wallet/staking/operations/StakingOperationsPresenter;)Lcom/iMe/storage/domain/utils/rx/RxEventBus;
    .locals 0

    .line 11
    iget-object p0, p0, Lcom/iMe/ui/wallet/staking/operations/StakingOperationsPresenter;->rxEventBus:Lcom/iMe/storage/domain/utils/rx/RxEventBus;

    return-object p0
.end method

.method public static final synthetic access$getSelectedNetwork$p(Lcom/iMe/ui/wallet/staking/operations/StakingOperationsPresenter;)Lcom/iMe/storage/domain/model/crypto/Network;
    .locals 0

    .line 11
    iget-object p0, p0, Lcom/iMe/ui/wallet/staking/operations/StakingOperationsPresenter;->selectedNetwork:Lcom/iMe/storage/domain/model/crypto/Network;

    return-object p0
.end method

.method public static final synthetic access$setSelectedNetwork$p(Lcom/iMe/ui/wallet/staking/operations/StakingOperationsPresenter;Lcom/iMe/storage/domain/model/crypto/Network;)V
    .locals 0

    .line 11
    iput-object p1, p0, Lcom/iMe/ui/wallet/staking/operations/StakingOperationsPresenter;->selectedNetwork:Lcom/iMe/storage/domain/model/crypto/Network;

    return-void
.end method


# virtual methods
.method protected onFirstViewAttach()V
    .locals 2

    .line 27
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/staking/operations/StakingOperationsView;

    iget-object v1, p0, Lcom/iMe/ui/wallet/staking/operations/StakingOperationsPresenter;->selectedNetwork:Lcom/iMe/storage/domain/model/crypto/Network;

    invoke-interface {v0, v1}, Lcom/iMe/ui/base/mvp/SwitchNetworkView;->setupNetwork(Lcom/iMe/storage/domain/model/crypto/Network;)V

    return-void
.end method

.method public final selectTab(I)V
    .locals 1

    .line 39
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/staking/operations/StakingOperationsView;

    invoke-interface {v0, p1}, Lcom/iMe/ui/wallet/staking/operations/StakingOperationsView;->onTabSelected(I)V

    return-void
.end method

.method public final setupNavigationRouter()V
    .locals 1

    .line 35
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/staking/operations/StakingOperationsView;

    invoke-interface {v0}, Lcom/iMe/ui/wallet/staking/operations/StakingOperationsView;->onSetupNavigationRouter()V

    return-void
.end method

.method public final startChooseNetworkDialog()V
    .locals 4

    .line 43
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/staking/operations/StakingOperationsView;

    .line 44
    iget-object v1, p0, Lcom/iMe/ui/wallet/staking/operations/StakingOperationsPresenter;->selectedNetwork:Lcom/iMe/storage/domain/model/crypto/Network;

    .line 45
    sget-object v2, Lcom/iMe/storage/data/utils/crypto/NetworksHelper;->INSTANCE:Lcom/iMe/storage/data/utils/crypto/NetworksHelper;

    invoke-virtual {v2}, Lcom/iMe/storage/data/utils/crypto/NetworksHelper;->getEVMNetworks()Ljava/util/List;

    move-result-object v2

    .line 43
    new-instance v3, Lcom/iMe/ui/wallet/staking/operations/StakingOperationsPresenter$startChooseNetworkDialog$1;

    invoke-direct {v3, p0}, Lcom/iMe/ui/wallet/staking/operations/StakingOperationsPresenter$startChooseNetworkDialog$1;-><init>(Lcom/iMe/ui/wallet/staking/operations/StakingOperationsPresenter;)V

    invoke-interface {v0, v1, v2, v3}, Lcom/iMe/ui/base/mvp/SwitchNetworkView;->showChooseNetworkDialog(Lcom/iMe/storage/domain/model/crypto/Network;Ljava/util/List;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method
