.class public interface abstract Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsView;
.super Ljava/lang/Object;
.source "WalletTokenDetailsView.kt"

# interfaces
.implements Lcom/iMe/ui/base/mvp/base/BaseView;
.implements Lcom/iMe/manager/wallet/create/WalletCreateManagerView;
.implements Lcom/iMe/ui/base/mvp/SwipeRefreshView;


# annotations
.annotation runtime Lmoxy/viewstate/strategy/alias/OneExecution;
.end annotation


# virtual methods
.method public abstract onSetupNavigationRouter()V
    .annotation runtime Lmoxy/viewstate/strategy/alias/AddToEndSingle;
    .end annotation
.end method

.method public abstract onTabSelected(I)V
    .annotation runtime Lmoxy/viewstate/strategy/alias/AddToEndSingle;
    .end annotation
.end method

.method public abstract openBinanceReceiveScreen(Lcom/iMe/model/wallet/select/SelectableToken;)V
.end method

.method public abstract openBinanceReplenishScreen(Lcom/iMe/storage/domain/model/wallet/token/TokenCode;Lcom/iMe/storage/domain/model/crypto/NetworkType;)V
.end method

.method public abstract openBinanceSwapScreen(Lcom/iMe/model/wallet/select/SelectableToken;)V
.end method

.method public abstract openBuyScreen(Lcom/iMe/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;)V
.end method

.method public abstract openReceiveScreen(Lcom/iMe/storage/domain/model/wallet/token/TokenCode;Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/NetworkType;)V
.end method

.method public abstract openSendScreen(Lcom/iMe/storage/domain/model/wallet/token/TokenCode;Lcom/iMe/storage/domain/model/crypto/NetworkType;)V
.end method

.method public abstract openStakingCalculatorScreen(Lcom/iMe/model/staking/StakingDetailsItem;)V
.end method

.method public abstract openStakingProfitScreen(Lcom/iMe/model/staking/StakingDetailsItem;)V
.end method

.method public abstract openStakingReplenishScreen(Lcom/iMe/model/staking/StakingDetailsItem;)V
.end method

.method public abstract openStakingWithdrawScreen(Lcom/iMe/model/staking/StakingDetailsItem;)V
.end method

.method public abstract setupHorizontalActionButtons(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/iMe/model/wallet/home/HorizontalActionButtonItem;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lmoxy/viewstate/strategy/alias/AddToEndSingle;
    .end annotation
.end method

.method public abstract setupRankBadge(ZLcom/iMe/storage/domain/model/crypto/level/AccountLevel;)V
    .annotation runtime Lmoxy/viewstate/strategy/alias/AddToEndSingle;
    .end annotation
.end method

.method public abstract setupStakingDetailsScreen(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/iMe/model/staking/StakingProgrammeStatus;)V
    .annotation runtime Lmoxy/viewstate/strategy/alias/AddToEndSingle;
    .end annotation
.end method

.method public abstract setupTransactionsScreen(Lcom/iMe/model/wallet/details/TokenDetailsArgs;)V
    .annotation runtime Lmoxy/viewstate/strategy/alias/AddToEndSingle;
    .end annotation
.end method

.method public abstract showAccountLevelDialog(Lcom/iMe/storage/domain/model/crypto/level/AccountLevelInformation;)V
.end method

.method public abstract showLevelRequiredDialog(Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;)V
.end method

.method public abstract showRequiredVerifyDialog()V
.end method

.method public abstract showRequiredWalletCreatedDialog(Lcom/iMe/fork/utils/Callbacks$Callback;)V
.end method

.method public abstract showStakingConditionsDialog(Lcom/iMe/model/staking/StakingDetailsItem;)V
.end method

.method public abstract showStatisticDialog(Lcom/iMe/model/statistic/StatisticDiagramModel;)V
.end method