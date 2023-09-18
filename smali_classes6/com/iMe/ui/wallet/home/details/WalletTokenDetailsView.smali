.class public interface abstract Lcom/iMe/ui/wallet/home/details/WalletTokenDetailsView;
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
.method public abstract actionCopyToClipboard(Ljava/lang/String;)V
.end method

.method public abstract onSetupNavigationRouter()V
    .annotation runtime Lmoxy/viewstate/strategy/alias/AddToEndSingle;
    .end annotation
.end method

.method public abstract onTabSelected(I)V
    .annotation runtime Lmoxy/viewstate/strategy/alias/AddToEndSingle;
    .end annotation
.end method

.method public abstract openAddAdminScreen(JJLjava/lang/String;)V
.end method

.method public abstract openBinanceReceiveScreen(Lcom/iMe/model/wallet/crypto/TokenItem;)V
.end method

.method public abstract openBinanceReplenishScreen(Lcom/iMe/model/wallet/crypto/TokenItem;Ljava/lang/String;)V
.end method

.method public abstract openBinanceSwapScreen(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V
.end method

.method public abstract openBuyScreen(Lcom/iMe/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;)V
.end method

.method public abstract openReceiveScreen(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract openSendScreen(Lcom/iMe/model/wallet/crypto/TokenItem;Ljava/lang/String;)V
.end method

.method public abstract openStakingCalculatorScreen(Lcom/iMe/model/staking/StakingDetailsItem;)V
.end method

.method public abstract openStakingProfitScreen(Lcom/iMe/model/staking/StakingDetailsItem;)V
.end method

.method public abstract openStakingReplenishScreen(Lcom/iMe/model/staking/StakingDetailsItem;)V
.end method

.method public abstract openStakingWithdrawScreen(Lcom/iMe/model/staking/StakingDetailsItem;)V
.end method

.method public abstract openTokenInformationScreen(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V
.end method

.method public abstract renderHorizontalActionButtons(Ljava/util/List;)V
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

.method public abstract setupCryptoBoxDetailsScreen(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxStatus;)V
    .annotation runtime Lmoxy/viewstate/strategy/alias/AddToEndSingle;
    .end annotation
.end method

.method public abstract setupRankBadge(ZLcom/iMe/storage/domain/model/crypto/level/AccountLevel;)V
    .annotation runtime Lmoxy/viewstate/strategy/alias/AddToEndSingle;
    .end annotation
.end method

.method public abstract setupStakingDetailsScreen(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/iMe/model/staking/StakingProgrammeStatus;)V
    .annotation runtime Lmoxy/viewstate/strategy/alias/AddToEndSingle;
    .end annotation
.end method

.method public abstract setupTransactionsScreen(Lcom/iMe/model/wallet/details/TokenDetailsArgs;)V
    .annotation runtime Lmoxy/viewstate/strategy/alias/AddToEndSingle;
    .end annotation
.end method

.method public abstract showAccountLevelDialog(Lcom/iMe/storage/domain/model/crypto/level/AccountLevelInformation;)V
.end method

.method public abstract showActionError(Ljava/lang/String;)V
.end method

.method public abstract showConfirmationDialog(Lcom/iMe/model/dialog/DialogModel;Lcom/iMe/fork/utils/Callbacks$Callback;)V
.end method

.method public abstract showCryptoBoxConditionsDialog(Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;)V
.end method

.method public abstract showCryptoBoxRefreshSuccess()V
.end method

.method public abstract showCryptoBoxSuspensionDialog(Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTransactionAction;)V
.end method

.method public abstract showLevelRequiredDialog(Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V
.end method

.method public abstract showRequiredVerifyDialog()V
.end method

.method public abstract showRequiredWalletCreatedDialog(Lcom/iMe/fork/utils/Callbacks$Callback;)V
.end method

.method public abstract showStakingConditionsDialog(Lcom/iMe/model/staking/StakingDetailsItem;)V
.end method

.method public abstract showStatisticDialog(Lcom/iMe/model/statistic/StatisticDiagramModel;)V
.end method
