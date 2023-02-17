.class public interface abstract Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsView;
.super Ljava/lang/Object;
.source "WalletTokenDetailsView.kt"

# interfaces
.implements Lcom/smedialink/ui/base/mvp/base/BaseView;
.implements Lcom/smedialink/manager/wallet/create/WalletCreateManagerView;
.implements Lcom/smedialink/ui/base/mvp/SwipeRefreshView;


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

.method public abstract openBinanceReceiveScreen(Lcom/smedialink/model/wallet/select/SelectableToken;)V
.end method

.method public abstract openBinanceReplenishScreen(Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Lcom/smedialink/storage/domain/model/crypto/NetworkType;)V
.end method

.method public abstract openBinanceSwapScreen(Lcom/smedialink/model/wallet/select/SelectableToken;)V
.end method

.method public abstract openBuyScreen(Lcom/smedialink/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;)V
.end method

.method public abstract openReceiveScreen(Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Ljava/lang/String;Lcom/smedialink/storage/domain/model/crypto/NetworkType;)V
.end method

.method public abstract openSendScreen(Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Lcom/smedialink/storage/domain/model/crypto/NetworkType;)V
.end method

.method public abstract openStakingCalculatorScreen(Lcom/smedialink/model/staking/StakingDetailsItem;)V
.end method

.method public abstract openStakingProfitScreen(Lcom/smedialink/model/staking/StakingDetailsItem;)V
.end method

.method public abstract openStakingReplenishScreen(Lcom/smedialink/model/staking/StakingDetailsItem;)V
.end method

.method public abstract openStakingWithdrawScreen(Lcom/smedialink/model/staking/StakingDetailsItem;)V
.end method

.method public abstract setupHorizontalActionButtons(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/smedialink/model/wallet/home/HorizontalActionButtonItem;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lmoxy/viewstate/strategy/alias/AddToEndSingle;
    .end annotation
.end method

.method public abstract setupRankBadge(ZLcom/smedialink/storage/domain/model/crypto/level/AccountLevel;)V
    .annotation runtime Lmoxy/viewstate/strategy/alias/AddToEndSingle;
    .end annotation
.end method

.method public abstract setupStakingDetailsScreen(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/smedialink/model/staking/StakingProgrammeStatus;)V
    .annotation runtime Lmoxy/viewstate/strategy/alias/AddToEndSingle;
    .end annotation
.end method

.method public abstract setupTransactionsScreen(Lcom/smedialink/model/wallet/details/TokenDetailsArgs;)V
    .annotation runtime Lmoxy/viewstate/strategy/alias/AddToEndSingle;
    .end annotation
.end method

.method public abstract showAccountLevelDialog(Lcom/smedialink/storage/domain/model/crypto/level/AccountLevelInformation;)V
.end method

.method public abstract showLevelRequiredDialog(Lcom/smedialink/storage/domain/model/crypto/level/AccountLevel;)V
.end method

.method public abstract showRequiredVerifyDialog()V
.end method

.method public abstract showRequiredWalletCreatedDialog(Lorg/fork/utils/Callbacks$Callback;)V
.end method

.method public abstract showStakingConditionsDialog(Lcom/smedialink/model/staking/StakingDetailsItem;)V
.end method

.method public abstract showStatisticDialog(Lcom/smedialink/model/statistic/StatisticDiagramModel;)V
.end method
