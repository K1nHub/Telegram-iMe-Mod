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

.field private selectedNetworkItem:Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;


# direct methods
.method public constructor <init>(Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;Lcom/iMe/storage/domain/utils/rx/RxEventBus;)V
    .locals 1

    const-string v0, "cryptoPreferenceHelper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "rxEventBus"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Lcom/iMe/ui/base/mvp/base/BasePresenter;-><init>()V

    .line 16
    iput-object p2, p0, Lcom/iMe/ui/wallet/staking/operations/StakingOperationsPresenter;->rxEventBus:Lcom/iMe/storage/domain/utils/rx/RxEventBus;

    .line 20
    invoke-interface {p1}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->getNetwork()Lcom/iMe/storage/domain/model/crypto/Network;

    move-result-object p2

    invoke-virtual {p2}, Lcom/iMe/storage/domain/model/crypto/Network;->getBlockchainType()Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    move-result-object p2

    sget-object v0, Lcom/iMe/storage/domain/model/crypto/BlockchainType;->EVM:Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    if-ne p2, v0, :cond_0

    .line 21
    invoke-interface {p1}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->getNetwork()Lcom/iMe/storage/domain/model/crypto/Network;

    move-result-object p1

    goto :goto_0

    .line 23
    :cond_0
    sget-object p1, Lcom/iMe/storage/data/utils/crypto/NetworksHelper;->INSTANCE:Lcom/iMe/storage/data/utils/crypto/NetworksHelper;

    invoke-virtual {p1}, Lcom/iMe/storage/data/utils/crypto/NetworksHelper;->getEVMNetworks()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/iMe/storage/domain/model/crypto/Network;

    .line 24
    :goto_0
    invoke-static {p1}, Lcom/iMe/mapper/wallet/NetworkUiMappingKt;->mapToUI(Lcom/iMe/storage/domain/model/crypto/Network;)Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/wallet/staking/operations/StakingOperationsPresenter;->selectedNetworkItem:Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;

    return-void
.end method


# virtual methods
.method protected onFirstViewAttach()V
    .locals 2

    .line 48
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/staking/operations/StakingOperationsView;

    iget-object v1, p0, Lcom/iMe/ui/wallet/staking/operations/StakingOperationsPresenter;->selectedNetworkItem:Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;

    invoke-interface {v0, v1}, Lcom/iMe/ui/base/mvp/SwitchNetworkView;->setupNetwork(Lcom/iMe/model/wallet/crypto/NetworkItem;)V

    return-void
.end method

.method public final onNetworkSelected(Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 42
    :cond_0
    iput-object p1, p0, Lcom/iMe/ui/wallet/staking/operations/StakingOperationsPresenter;->selectedNetworkItem:Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;

    .line 43
    iget-object v0, p0, Lcom/iMe/ui/wallet/staking/operations/StakingOperationsPresenter;->rxEventBus:Lcom/iMe/storage/domain/utils/rx/RxEventBus;

    new-instance v1, Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents$StakingOperationsReload;

    invoke-virtual {p1}, Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;->getNetworkId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents$StakingOperationsReload;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/iMe/storage/domain/utils/rx/RxEventBus;->publish(Lcom/iMe/storage/domain/utils/rx/event/RxEvent;)V

    .line 44
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/wallet/staking/operations/StakingOperationsView;

    iget-object v0, p0, Lcom/iMe/ui/wallet/staking/operations/StakingOperationsPresenter;->selectedNetworkItem:Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;

    invoke-interface {p1, v0}, Lcom/iMe/ui/base/mvp/SwitchNetworkView;->setupNetwork(Lcom/iMe/model/wallet/crypto/NetworkItem;)V

    return-void
.end method

.method public final selectTab(I)V
    .locals 1

    .line 31
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/staking/operations/StakingOperationsView;

    invoke-interface {v0, p1}, Lcom/iMe/ui/wallet/staking/operations/StakingOperationsView;->onTabSelected(I)V

    return-void
.end method

.method public final setupNavigationRouter()V
    .locals 1

    .line 27
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/staking/operations/StakingOperationsView;

    invoke-interface {v0}, Lcom/iMe/ui/wallet/staking/operations/StakingOperationsView;->onSetupNavigationRouter()V

    return-void
.end method

.method public final startChooseNetworkDialog()V
    .locals 3

    .line 35
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/staking/operations/StakingOperationsView;

    .line 36
    iget-object v1, p0, Lcom/iMe/ui/wallet/staking/operations/StakingOperationsPresenter;->selectedNetworkItem:Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;

    .line 37
    sget-object v2, Lcom/iMe/storage/data/utils/crypto/NetworksHelper;->INSTANCE:Lcom/iMe/storage/data/utils/crypto/NetworksHelper;

    invoke-virtual {v2}, Lcom/iMe/storage/data/utils/crypto/NetworksHelper;->getEVMNetworks()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/iMe/mapper/wallet/NetworkUiMappingKt;->mapToUI(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 35
    invoke-interface {v0, v1, v2}, Lcom/iMe/ui/base/mvp/SwitchNetworkView;->showChooseNetworkDialog(Lcom/iMe/model/wallet/crypto/NetworkItem;Ljava/util/List;)V

    return-void
.end method
