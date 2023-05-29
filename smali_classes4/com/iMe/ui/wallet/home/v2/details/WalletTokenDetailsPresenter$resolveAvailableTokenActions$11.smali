.class final Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsPresenter$resolveAvailableTokenActions$11;
.super Lkotlin/jvm/internal/Lambda;
.source "WalletTokenDetailsPresenter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;->resolveAvailableTokenActions(Lcom/iMe/model/wallet/details/TokenDetailsArgs;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $args:Lcom/iMe/model/wallet/details/TokenDetailsArgs;

.field final synthetic this$0:Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;Lcom/iMe/model/wallet/details/TokenDetailsArgs;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsPresenter$resolveAvailableTokenActions$11;->this$0:Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;

    iput-object p2, p0, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsPresenter$resolveAvailableTokenActions$11;->$args:Lcom/iMe/model/wallet/details/TokenDetailsArgs;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 388
    invoke-virtual {p0}, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsPresenter$resolveAvailableTokenActions$11;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 2

    .line 411
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsPresenter$resolveAvailableTokenActions$11;->this$0:Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;

    invoke-static {v0}, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;->access$getStakingMetadata$p(Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;)Lcom/iMe/storage/domain/model/staking/StakingDetailedMetadata;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/iMe/mapper/staking/StakingDetailedMetadataUiMappingKt;->mapToUi(Lcom/iMe/storage/domain/model/staking/StakingDetailedMetadata;)Lcom/iMe/model/staking/StakingDetailsItem;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsPresenter$resolveAvailableTokenActions$11;->$args:Lcom/iMe/model/wallet/details/TokenDetailsArgs;

    check-cast v0, Lcom/iMe/model/wallet/details/TokenDetailsArgs$Staking;

    invoke-virtual {v0}, Lcom/iMe/model/wallet/details/TokenDetailsArgs$Staking;->getStakingDetails()Lcom/iMe/model/staking/StakingDetailsItem;

    move-result-object v0

    .line 412
    :cond_1
    iget-object v1, p0, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsPresenter$resolveAvailableTokenActions$11;->this$0:Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;

    invoke-virtual {v1}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    check-cast v1, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView;

    invoke-interface {v1, v0}, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView;->openStakingCalculatorScreen(Lcom/iMe/model/staking/StakingDetailsItem;)V

    return-void
.end method
