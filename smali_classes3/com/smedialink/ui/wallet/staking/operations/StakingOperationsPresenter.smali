.class public final Lcom/smedialink/ui/wallet/staking/operations/StakingOperationsPresenter;
.super Lcom/smedialink/ui/base/mvp/base/BasePresenter;
.source "StakingOperationsPresenter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/smedialink/ui/base/mvp/base/BasePresenter<",
        "Lcom/smedialink/ui/wallet/staking/operations/StakingOperationsView;",
        ">;"
    }
.end annotation

.annotation runtime Lmoxy/InjectViewState;
.end annotation


# instance fields
.field private final rxEventBus:Lcom/smedialink/storage/domain/utils/rx/RxEventBus;

.field private selectedNetworkType:Lcom/smedialink/storage/domain/model/crypto/NetworkType;


# direct methods
.method public constructor <init>(Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;Lcom/smedialink/storage/domain/utils/rx/RxEventBus;)V
    .locals 1

    const-string v0, "cryptoPreferenceHelper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rxEventBus"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Lcom/smedialink/ui/base/mvp/base/BasePresenter;-><init>()V

    .line 13
    iput-object p2, p0, Lcom/smedialink/ui/wallet/staking/operations/StakingOperationsPresenter;->rxEventBus:Lcom/smedialink/storage/domain/utils/rx/RxEventBus;

    .line 17
    invoke-interface {p1}, Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;->getNetworkType()Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object p2

    invoke-virtual {p2}, Lcom/smedialink/storage/domain/model/crypto/NetworkType;->isEVM()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 18
    invoke-interface {p1}, Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;->getNetworkType()Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object p1

    goto :goto_0

    .line 20
    :cond_0
    sget-object p1, Lcom/smedialink/storage/domain/model/crypto/NetworkType;->Companion:Lcom/smedialink/storage/domain/model/crypto/NetworkType$Companion;

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/crypto/NetworkType$Companion;->getEVMNetworks()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    .line 17
    :goto_0
    iput-object p1, p0, Lcom/smedialink/ui/wallet/staking/operations/StakingOperationsPresenter;->selectedNetworkType:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    return-void
.end method

.method public static final synthetic access$getRxEventBus$p(Lcom/smedialink/ui/wallet/staking/operations/StakingOperationsPresenter;)Lcom/smedialink/storage/domain/utils/rx/RxEventBus;
    .locals 0

    .line 10
    iget-object p0, p0, Lcom/smedialink/ui/wallet/staking/operations/StakingOperationsPresenter;->rxEventBus:Lcom/smedialink/storage/domain/utils/rx/RxEventBus;

    return-object p0
.end method

.method public static final synthetic access$getSelectedNetworkType$p(Lcom/smedialink/ui/wallet/staking/operations/StakingOperationsPresenter;)Lcom/smedialink/storage/domain/model/crypto/NetworkType;
    .locals 0

    .line 10
    iget-object p0, p0, Lcom/smedialink/ui/wallet/staking/operations/StakingOperationsPresenter;->selectedNetworkType:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    return-object p0
.end method

.method public static final synthetic access$setSelectedNetworkType$p(Lcom/smedialink/ui/wallet/staking/operations/StakingOperationsPresenter;Lcom/smedialink/storage/domain/model/crypto/NetworkType;)V
    .locals 0

    .line 10
    iput-object p1, p0, Lcom/smedialink/ui/wallet/staking/operations/StakingOperationsPresenter;->selectedNetworkType:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    return-void
.end method


# virtual methods
.method protected onFirstViewAttach()V
    .locals 2

    .line 26
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/wallet/staking/operations/StakingOperationsView;

    iget-object v1, p0, Lcom/smedialink/ui/wallet/staking/operations/StakingOperationsPresenter;->selectedNetworkType:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    invoke-interface {v0, v1}, Lcom/smedialink/ui/base/mvp/SwitchNetworkView;->setupNetworkType(Lcom/smedialink/storage/domain/model/crypto/NetworkType;)V

    return-void
.end method

.method public final selectTab(I)V
    .locals 1

    .line 38
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/wallet/staking/operations/StakingOperationsView;

    invoke-interface {v0, p1}, Lcom/smedialink/ui/wallet/staking/operations/StakingOperationsView;->onTabSelected(I)V

    return-void
.end method

.method public final setupNavigationRouter()V
    .locals 1

    .line 34
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/wallet/staking/operations/StakingOperationsView;

    invoke-interface {v0}, Lcom/smedialink/ui/wallet/staking/operations/StakingOperationsView;->onSetupNavigationRouter()V

    return-void
.end method

.method public final startChooseNetworkDialog()V
    .locals 4

    .line 42
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/wallet/staking/operations/StakingOperationsView;

    .line 43
    iget-object v1, p0, Lcom/smedialink/ui/wallet/staking/operations/StakingOperationsPresenter;->selectedNetworkType:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    .line 44
    sget-object v2, Lcom/smedialink/storage/domain/model/crypto/NetworkType;->Companion:Lcom/smedialink/storage/domain/model/crypto/NetworkType$Companion;

    invoke-virtual {v2}, Lcom/smedialink/storage/domain/model/crypto/NetworkType$Companion;->getEVMNetworks()Ljava/util/List;

    move-result-object v2

    .line 42
    new-instance v3, Lcom/smedialink/ui/wallet/staking/operations/StakingOperationsPresenter$startChooseNetworkDialog$1;

    invoke-direct {v3, p0}, Lcom/smedialink/ui/wallet/staking/operations/StakingOperationsPresenter$startChooseNetworkDialog$1;-><init>(Lcom/smedialink/ui/wallet/staking/operations/StakingOperationsPresenter;)V

    invoke-interface {v0, v1, v2, v3}, Lcom/smedialink/ui/base/mvp/SwitchNetworkView;->showChooseNetworkDialog(Lcom/smedialink/storage/domain/model/crypto/NetworkType;Ljava/util/List;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method
