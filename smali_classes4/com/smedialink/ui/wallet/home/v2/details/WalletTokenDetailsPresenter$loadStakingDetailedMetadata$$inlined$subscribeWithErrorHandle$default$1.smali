.class public final Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter$loadStakingDetailedMetadata$$inlined$subscribeWithErrorHandle$default$1;
.super Ljava/lang/Object;
.source "RxExt.kt"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;->loadStakingDetailedMetadata()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRxExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxExt.kt\ncom/smedialink/utils/extentions/rx/RxExtKt$subscribeWithErrorHandle$2\n+ 2 WalletTokenDetailsPresenter.kt\ncom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter\n*L\n1#1,111:1\n177#2,16:112\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;


# direct methods
.method public constructor <init>(Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter$loadStakingDetailedMetadata$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const-string v0, "it"

    .line 45
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/smedialink/storage/domain/model/Result;

    .line 113
    instance-of v0, p1, Lcom/smedialink/storage/domain/model/Result$Success;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter$loadStakingDetailedMetadata$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;

    invoke-static {v0}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;->access$getRxEventBus$p(Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;)Lcom/smedialink/storage/domain/utils/rx/RxEventBus;

    move-result-object v0

    sget-object v2, Lcom/smedialink/storage/domain/utils/rx/event/DomainRxEvents$RefreshTransactions;->INSTANCE:Lcom/smedialink/storage/domain/utils/rx/event/DomainRxEvents$RefreshTransactions;

    invoke-virtual {v0, v2}, Lcom/smedialink/storage/domain/utils/rx/RxEventBus;->publish(Lcom/smedialink/storage/domain/utils/rx/event/RxEvent;)V

    .line 115
    iget-object v0, p0, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter$loadStakingDetailedMetadata$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;

    invoke-virtual {v0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsView;

    invoke-interface {v0, v1}, Lcom/smedialink/ui/base/mvp/SwipeRefreshView;->showRefreshing(Z)V

    .line 116
    iget-object v0, p0, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter$loadStakingDetailedMetadata$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;

    check-cast p1, Lcom/smedialink/storage/domain/model/Result$Success;

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/Result$Success;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smedialink/storage/domain/model/staking/StakingDetailedMetadata;

    invoke-static {v0, v1}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;->access$setStakingMetadata$p(Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;Lcom/smedialink/storage/domain/model/staking/StakingDetailedMetadata;)V

    .line 117
    iget-object v0, p0, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter$loadStakingDetailedMetadata$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;

    invoke-static {v0}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;->access$getArgs$p(Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;)Lcom/smedialink/model/wallet/details/TokenDetailsArgs;

    move-result-object v0

    check-cast v0, Lcom/smedialink/model/wallet/details/TokenDetailsArgs$Staking;

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/Result$Success;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/smedialink/storage/domain/model/staking/StakingDetailedMetadata;

    invoke-static {p1}, Lcom/smedialink/mapper/staking/StakingDetailedMetadataUiMappingKt;->mapToUi(Lcom/smedialink/storage/domain/model/staking/StakingDetailedMetadata;)Lcom/smedialink/model/staking/StakingDetailsItem;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/smedialink/model/wallet/details/TokenDetailsArgs$Staking;->setStakingDetails(Lcom/smedialink/model/staking/StakingDetailsItem;)V

    .line 118
    iget-object p1, p0, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter$loadStakingDetailedMetadata$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;

    invoke-static {p1}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;->access$getArgs$p(Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;)Lcom/smedialink/model/wallet/details/TokenDetailsArgs;

    move-result-object v0

    check-cast v0, Lcom/smedialink/model/wallet/details/TokenDetailsArgs$Staking;

    invoke-virtual {v0}, Lcom/smedialink/model/wallet/details/TokenDetailsArgs$Staking;->getStakingDetails()Lcom/smedialink/model/staking/StakingDetailsItem;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;->access$setupStakingDetailsScreen(Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;Lcom/smedialink/model/staking/StakingDetailsItem;)V

    .line 119
    iget-object p1, p0, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter$loadStakingDetailedMetadata$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;

    invoke-static {p1}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;->access$setupHorizontalActionButtons(Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;)V

    goto :goto_0

    .line 121
    :cond_0
    instance-of v0, p1, Lcom/smedialink/storage/domain/model/Result$Loading;

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter$loadStakingDetailedMetadata$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;

    invoke-virtual {p1}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsView;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/smedialink/ui/base/mvp/SwipeRefreshView;->showRefreshing(Z)V

    goto :goto_0

    .line 122
    :cond_1
    instance-of v0, p1, Lcom/smedialink/storage/domain/model/Result$Error;

    if-eqz v0, :cond_2

    .line 123
    iget-object v0, p0, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter$loadStakingDetailedMetadata$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;

    invoke-virtual {v0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsView;

    invoke-interface {v0, v1}, Lcom/smedialink/ui/base/mvp/SwipeRefreshView;->showRefreshing(Z)V

    .line 124
    iget-object v0, p0, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter$loadStakingDetailedMetadata$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;

    invoke-virtual {v0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsView;

    check-cast p1, Lcom/smedialink/storage/domain/model/Result$Error;

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/Result$Error;->getError()Lcom/smedialink/storage/data/network/model/error/ErrorModel;

    move-result-object p1

    iget-object v1, p0, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter$loadStakingDetailedMetadata$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;

    invoke-static {v1}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;->access$getResourceManager$p(Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;)Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/smedialink/storage/data/network/model/error/ErrorModel;->getMessage(Lcom/smedialink/storage/domain/utils/system/ResourceManager;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/smedialink/ui/base/mvp/base/BaseView;->showToast(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method
