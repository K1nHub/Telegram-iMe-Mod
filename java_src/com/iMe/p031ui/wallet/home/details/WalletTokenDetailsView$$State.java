package com.iMe.p031ui.wallet.home.details;

import android.content.DialogInterface;
import com.iMe.fork.utils.Callbacks$Callback;
import com.iMe.model.dialog.DialogModel;
import com.iMe.model.staking.StakingDetailsItem;
import com.iMe.model.staking.StakingProgrammeStatus;
import com.iMe.model.statistic.StatisticDiagramModel;
import com.iMe.model.wallet.crypto.TokenItem;
import com.iMe.model.wallet.crypto.create.WalletCreationType;
import com.iMe.model.wallet.details.TokenDetailsArgs;
import com.iMe.model.wallet.home.HorizontalActionButtonItem;
import com.iMe.navigation.wallet.coordinator.args.TokenBuyCoordinatorArgs;
import com.iMe.p031ui.base.mvp.base.BaseView;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.level.AccountLevel;
import com.iMe.storage.domain.model.crypto.level.AccountLevelInformation;
import com.iMe.storage.domain.model.wallet.token.TokenDetailed;
import com.iMe.storage.domain.utils.system.ResourceManager;
import io.reactivex.disposables.Disposable;
import java.util.List;
import moxy.viewstate.MvpViewState;
import moxy.viewstate.ViewCommand;
import moxy.viewstate.strategy.AddToEndSingleStrategy;
import moxy.viewstate.strategy.OneExecutionStateStrategy;
/* renamed from: com.iMe.ui.wallet.home.details.WalletTokenDetailsView$$State */
/* loaded from: classes4.dex */
public class WalletTokenDetailsView$$State extends MvpViewState<WalletTokenDetailsView> implements WalletTokenDetailsView {
    @Override // com.iMe.p031ui.base.mvp.base.BaseView
    public /* synthetic */ void finishScreen() {
        BaseView.CC.$default$finishScreen(this);
    }

    @Override // com.iMe.p031ui.wallet.home.details.WalletTokenDetailsView
    public void setupTransactionsScreen(TokenDetailsArgs tokenDetailsArgs) {
        SetupTransactionsScreenCommand setupTransactionsScreenCommand = new SetupTransactionsScreenCommand(this, tokenDetailsArgs);
        this.viewCommands.beforeApply(setupTransactionsScreenCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.setupTransactionsScreen(tokenDetailsArgs);
        }
        this.viewCommands.afterApply(setupTransactionsScreenCommand);
    }

    @Override // com.iMe.p031ui.wallet.home.details.WalletTokenDetailsView
    public void setupStakingDetailsScreen(String str, String str2, String str3, String str4, String str5, String str6, boolean z, StakingProgrammeStatus stakingProgrammeStatus) {
        SetupStakingDetailsScreenCommand setupStakingDetailsScreenCommand = new SetupStakingDetailsScreenCommand(this, str, str2, str3, str4, str5, str6, z, stakingProgrammeStatus);
        this.viewCommands.beforeApply(setupStakingDetailsScreenCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.setupStakingDetailsScreen(str, str2, str3, str4, str5, str6, z, stakingProgrammeStatus);
        }
        this.viewCommands.afterApply(setupStakingDetailsScreenCommand);
    }

    @Override // com.iMe.p031ui.wallet.home.details.WalletTokenDetailsView
    public void setupHorizontalActionButtons(List<HorizontalActionButtonItem> list) {
        SetupHorizontalActionButtonsCommand setupHorizontalActionButtonsCommand = new SetupHorizontalActionButtonsCommand(this, list);
        this.viewCommands.beforeApply(setupHorizontalActionButtonsCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.setupHorizontalActionButtons(list);
        }
        this.viewCommands.afterApply(setupHorizontalActionButtonsCommand);
    }

    @Override // com.iMe.p031ui.wallet.home.details.WalletTokenDetailsView
    public void setupRankBadge(boolean z, AccountLevel accountLevel) {
        SetupRankBadgeCommand setupRankBadgeCommand = new SetupRankBadgeCommand(this, z, accountLevel);
        this.viewCommands.beforeApply(setupRankBadgeCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.setupRankBadge(z, accountLevel);
        }
        this.viewCommands.afterApply(setupRankBadgeCommand);
    }

    @Override // com.iMe.p031ui.wallet.home.details.WalletTokenDetailsView
    public void onTabSelected(int i) {
        OnTabSelectedCommand onTabSelectedCommand = new OnTabSelectedCommand(this, i);
        this.viewCommands.beforeApply(onTabSelectedCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.onTabSelected(i);
        }
        this.viewCommands.afterApply(onTabSelectedCommand);
    }

    @Override // com.iMe.p031ui.wallet.home.details.WalletTokenDetailsView
    public void onSetupNavigationRouter() {
        OnSetupNavigationRouterCommand onSetupNavigationRouterCommand = new OnSetupNavigationRouterCommand(this);
        this.viewCommands.beforeApply(onSetupNavigationRouterCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.onSetupNavigationRouter();
        }
        this.viewCommands.afterApply(onSetupNavigationRouterCommand);
    }

    @Override // com.iMe.p031ui.wallet.home.details.WalletTokenDetailsView
    public void showAccountLevelDialog(AccountLevelInformation accountLevelInformation) {
        ShowAccountLevelDialogCommand showAccountLevelDialogCommand = new ShowAccountLevelDialogCommand(this, accountLevelInformation);
        this.viewCommands.beforeApply(showAccountLevelDialogCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.showAccountLevelDialog(accountLevelInformation);
        }
        this.viewCommands.afterApply(showAccountLevelDialogCommand);
    }

    @Override // com.iMe.p031ui.wallet.home.details.WalletTokenDetailsView
    public void showStakingConditionsDialog(StakingDetailsItem stakingDetailsItem) {
        ShowStakingConditionsDialogCommand showStakingConditionsDialogCommand = new ShowStakingConditionsDialogCommand(this, stakingDetailsItem);
        this.viewCommands.beforeApply(showStakingConditionsDialogCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.showStakingConditionsDialog(stakingDetailsItem);
        }
        this.viewCommands.afterApply(showStakingConditionsDialogCommand);
    }

    @Override // com.iMe.p031ui.wallet.home.details.WalletTokenDetailsView
    public void showStatisticDialog(StatisticDiagramModel statisticDiagramModel) {
        ShowStatisticDialogCommand showStatisticDialogCommand = new ShowStatisticDialogCommand(this, statisticDiagramModel);
        this.viewCommands.beforeApply(showStatisticDialogCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.showStatisticDialog(statisticDiagramModel);
        }
        this.viewCommands.afterApply(showStatisticDialogCommand);
    }

    @Override // com.iMe.p031ui.wallet.home.details.WalletTokenDetailsView
    public void showLevelRequiredDialog(AccountLevel accountLevel, TokenDetailed tokenDetailed) {
        ShowLevelRequiredDialogCommand showLevelRequiredDialogCommand = new ShowLevelRequiredDialogCommand(this, accountLevel, tokenDetailed);
        this.viewCommands.beforeApply(showLevelRequiredDialogCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.showLevelRequiredDialog(accountLevel, tokenDetailed);
        }
        this.viewCommands.afterApply(showLevelRequiredDialogCommand);
    }

    @Override // com.iMe.p031ui.wallet.home.details.WalletTokenDetailsView
    public void openStakingReplenishScreen(StakingDetailsItem stakingDetailsItem) {
        OpenStakingReplenishScreenCommand openStakingReplenishScreenCommand = new OpenStakingReplenishScreenCommand(this, stakingDetailsItem);
        this.viewCommands.beforeApply(openStakingReplenishScreenCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.openStakingReplenishScreen(stakingDetailsItem);
        }
        this.viewCommands.afterApply(openStakingReplenishScreenCommand);
    }

    @Override // com.iMe.p031ui.wallet.home.details.WalletTokenDetailsView
    public void openStakingProfitScreen(StakingDetailsItem stakingDetailsItem) {
        OpenStakingProfitScreenCommand openStakingProfitScreenCommand = new OpenStakingProfitScreenCommand(this, stakingDetailsItem);
        this.viewCommands.beforeApply(openStakingProfitScreenCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.openStakingProfitScreen(stakingDetailsItem);
        }
        this.viewCommands.afterApply(openStakingProfitScreenCommand);
    }

    @Override // com.iMe.p031ui.wallet.home.details.WalletTokenDetailsView
    public void openStakingWithdrawScreen(StakingDetailsItem stakingDetailsItem) {
        OpenStakingWithdrawScreenCommand openStakingWithdrawScreenCommand = new OpenStakingWithdrawScreenCommand(this, stakingDetailsItem);
        this.viewCommands.beforeApply(openStakingWithdrawScreenCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.openStakingWithdrawScreen(stakingDetailsItem);
        }
        this.viewCommands.afterApply(openStakingWithdrawScreenCommand);
    }

    @Override // com.iMe.p031ui.wallet.home.details.WalletTokenDetailsView
    public void openStakingCalculatorScreen(StakingDetailsItem stakingDetailsItem) {
        OpenStakingCalculatorScreenCommand openStakingCalculatorScreenCommand = new OpenStakingCalculatorScreenCommand(this, stakingDetailsItem);
        this.viewCommands.beforeApply(openStakingCalculatorScreenCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.openStakingCalculatorScreen(stakingDetailsItem);
        }
        this.viewCommands.afterApply(openStakingCalculatorScreenCommand);
    }

    @Override // com.iMe.p031ui.wallet.home.details.WalletTokenDetailsView
    public void openBuyScreen(TokenBuyCoordinatorArgs tokenBuyCoordinatorArgs) {
        OpenBuyScreenCommand openBuyScreenCommand = new OpenBuyScreenCommand(this, tokenBuyCoordinatorArgs);
        this.viewCommands.beforeApply(openBuyScreenCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.openBuyScreen(tokenBuyCoordinatorArgs);
        }
        this.viewCommands.afterApply(openBuyScreenCommand);
    }

    @Override // com.iMe.p031ui.wallet.home.details.WalletTokenDetailsView
    public void openSendScreen(TokenItem tokenItem, String str) {
        OpenSendScreenCommand openSendScreenCommand = new OpenSendScreenCommand(this, tokenItem, str);
        this.viewCommands.beforeApply(openSendScreenCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.openSendScreen(tokenItem, str);
        }
        this.viewCommands.afterApply(openSendScreenCommand);
    }

    @Override // com.iMe.p031ui.wallet.home.details.WalletTokenDetailsView
    public void openReceiveScreen(String str, String str2, String str3) {
        OpenReceiveScreenCommand openReceiveScreenCommand = new OpenReceiveScreenCommand(this, str, str2, str3);
        this.viewCommands.beforeApply(openReceiveScreenCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.openReceiveScreen(str, str2, str3);
        }
        this.viewCommands.afterApply(openReceiveScreenCommand);
    }

    @Override // com.iMe.p031ui.wallet.home.details.WalletTokenDetailsView
    public void openBinanceReplenishScreen(TokenItem tokenItem, String str) {
        OpenBinanceReplenishScreenCommand openBinanceReplenishScreenCommand = new OpenBinanceReplenishScreenCommand(this, tokenItem, str);
        this.viewCommands.beforeApply(openBinanceReplenishScreenCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.openBinanceReplenishScreen(tokenItem, str);
        }
        this.viewCommands.afterApply(openBinanceReplenishScreenCommand);
    }

    @Override // com.iMe.p031ui.wallet.home.details.WalletTokenDetailsView
    public void openBinanceSwapScreen(TokenDetailed tokenDetailed) {
        OpenBinanceSwapScreenCommand openBinanceSwapScreenCommand = new OpenBinanceSwapScreenCommand(this, tokenDetailed);
        this.viewCommands.beforeApply(openBinanceSwapScreenCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.openBinanceSwapScreen(tokenDetailed);
        }
        this.viewCommands.afterApply(openBinanceSwapScreenCommand);
    }

    @Override // com.iMe.p031ui.wallet.home.details.WalletTokenDetailsView
    public void openBinanceReceiveScreen(TokenItem tokenItem) {
        OpenBinanceReceiveScreenCommand openBinanceReceiveScreenCommand = new OpenBinanceReceiveScreenCommand(this, tokenItem);
        this.viewCommands.beforeApply(openBinanceReceiveScreenCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.openBinanceReceiveScreen(tokenItem);
        }
        this.viewCommands.afterApply(openBinanceReceiveScreenCommand);
    }

    @Override // com.iMe.p031ui.wallet.home.details.WalletTokenDetailsView
    public void openTokenInformationScreen(TokenDetailed tokenDetailed) {
        OpenTokenInformationScreenCommand openTokenInformationScreenCommand = new OpenTokenInformationScreenCommand(this, tokenDetailed);
        this.viewCommands.beforeApply(openTokenInformationScreenCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.openTokenInformationScreen(tokenDetailed);
        }
        this.viewCommands.afterApply(openTokenInformationScreenCommand);
    }

    @Override // com.iMe.p031ui.wallet.home.details.WalletTokenDetailsView
    public void showRequiredVerifyDialog() {
        ShowRequiredVerifyDialogCommand showRequiredVerifyDialogCommand = new ShowRequiredVerifyDialogCommand(this);
        this.viewCommands.beforeApply(showRequiredVerifyDialogCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.showRequiredVerifyDialog();
        }
        this.viewCommands.afterApply(showRequiredVerifyDialogCommand);
    }

    @Override // com.iMe.p031ui.wallet.home.details.WalletTokenDetailsView
    public void showRequiredWalletCreatedDialog(Callbacks$Callback callbacks$Callback) {
        ShowRequiredWalletCreatedDialogCommand showRequiredWalletCreatedDialogCommand = new ShowRequiredWalletCreatedDialogCommand(this, callbacks$Callback);
        this.viewCommands.beforeApply(showRequiredWalletCreatedDialogCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.showRequiredWalletCreatedDialog(callbacks$Callback);
        }
        this.viewCommands.afterApply(showRequiredWalletCreatedDialogCommand);
    }

    @Override // com.iMe.p031ui.base.mvp.base.BaseView
    public void showToast(String str) {
        ShowToastCommand showToastCommand = new ShowToastCommand(this, str);
        this.viewCommands.beforeApply(showToastCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.showToast(str);
        }
        this.viewCommands.afterApply(showToastCommand);
    }

    @Override // com.iMe.p031ui.base.mvp.base.BaseView
    public void showLoadingDialog(boolean z, boolean z2, Disposable disposable) {
        ShowLoadingDialogCommand showLoadingDialogCommand = new ShowLoadingDialogCommand(this, z, z2, disposable);
        this.viewCommands.beforeApply(showLoadingDialogCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.showLoadingDialog(z, z2, disposable);
        }
        this.viewCommands.afterApply(showLoadingDialogCommand);
    }

    @Override // com.iMe.p031ui.base.mvp.base.BaseView
    public <T> void showErrorToast(Result.Error<? extends T> error, ResourceManager resourceManager) {
        ShowErrorToastCommand showErrorToastCommand = new ShowErrorToastCommand(this, error, resourceManager);
        this.viewCommands.beforeApply(showErrorToastCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.showErrorToast(error, resourceManager);
        }
        this.viewCommands.afterApply(showErrorToastCommand);
    }

    @Override // com.iMe.p031ui.base.mvp.base.BaseView
    public void removeSelfFromStackImmediately() {
        RemoveSelfFromStackImmediatelyCommand removeSelfFromStackImmediatelyCommand = new RemoveSelfFromStackImmediatelyCommand(this);
        this.viewCommands.beforeApply(removeSelfFromStackImmediatelyCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.removeSelfFromStackImmediately();
        }
        this.viewCommands.afterApply(removeSelfFromStackImmediatelyCommand);
    }

    @Override // com.iMe.manager.wallet.create.WalletCreateManagerView
    public void showActivationConfirmationDialog(DialogModel dialogModel, Callbacks$Callback callbacks$Callback) {
        ShowActivationConfirmationDialogCommand showActivationConfirmationDialogCommand = new ShowActivationConfirmationDialogCommand(this, dialogModel, callbacks$Callback);
        this.viewCommands.beforeApply(showActivationConfirmationDialogCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.showActivationConfirmationDialog(dialogModel, callbacks$Callback);
        }
        this.viewCommands.afterApply(showActivationConfirmationDialogCommand);
    }

    @Override // com.iMe.manager.wallet.create.WalletCreateManagerView
    public void openCreateWalletIntroScreen(String str, WalletCreationType.Initial initial) {
        OpenCreateWalletIntroScreenCommand openCreateWalletIntroScreenCommand = new OpenCreateWalletIntroScreenCommand(this, str, initial);
        this.viewCommands.beforeApply(openCreateWalletIntroScreenCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.openCreateWalletIntroScreen(str, initial);
        }
        this.viewCommands.afterApply(openCreateWalletIntroScreenCommand);
    }

    @Override // com.iMe.manager.wallet.create.WalletCreateManagerView
    public void showSelectOptionsDialog(String str, String[] strArr, DialogInterface.OnClickListener onClickListener) {
        ShowSelectOptionsDialogCommand showSelectOptionsDialogCommand = new ShowSelectOptionsDialogCommand(this, str, strArr, onClickListener);
        this.viewCommands.beforeApply(showSelectOptionsDialogCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.showSelectOptionsDialog(str, strArr, onClickListener);
        }
        this.viewCommands.afterApply(showSelectOptionsDialogCommand);
    }

    @Override // com.iMe.p031ui.base.mvp.SwipeRefreshView
    public void showRefreshing(boolean z) {
        ShowRefreshingCommand showRefreshingCommand = new ShowRefreshingCommand(this, z);
        this.viewCommands.beforeApply(showRefreshingCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.showRefreshing(z);
        }
        this.viewCommands.afterApply(showRefreshingCommand);
    }

    /* compiled from: WalletTokenDetailsView$$State.java */
    /* renamed from: com.iMe.ui.wallet.home.details.WalletTokenDetailsView$$State$SetupTransactionsScreenCommand */
    /* loaded from: classes4.dex */
    public class SetupTransactionsScreenCommand extends ViewCommand<WalletTokenDetailsView> {
        public final TokenDetailsArgs args;

        SetupTransactionsScreenCommand(WalletTokenDetailsView$$State walletTokenDetailsView$$State, TokenDetailsArgs tokenDetailsArgs) {
            super("setupTransactionsScreen", AddToEndSingleStrategy.class);
            this.args = tokenDetailsArgs;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletTokenDetailsView walletTokenDetailsView) {
            walletTokenDetailsView.setupTransactionsScreen(this.args);
        }
    }

    /* compiled from: WalletTokenDetailsView$$State.java */
    /* renamed from: com.iMe.ui.wallet.home.details.WalletTokenDetailsView$$State$SetupStakingDetailsScreenCommand */
    /* loaded from: classes4.dex */
    public class SetupStakingDetailsScreenCommand extends ViewCommand<WalletTokenDetailsView> {
        public final String annualTitleText;
        public final String annualValueText;
        public final String balanceText;
        public final String logoImageUrl;
        public final String profitText;
        public final boolean shouldColorProfitText;
        public final StakingProgrammeStatus status;
        public final String titleText;

        SetupStakingDetailsScreenCommand(WalletTokenDetailsView$$State walletTokenDetailsView$$State, String str, String str2, String str3, String str4, String str5, String str6, boolean z, StakingProgrammeStatus stakingProgrammeStatus) {
            super("setupStakingDetailsScreen", AddToEndSingleStrategy.class);
            this.logoImageUrl = str;
            this.titleText = str2;
            this.balanceText = str3;
            this.annualTitleText = str4;
            this.annualValueText = str5;
            this.profitText = str6;
            this.shouldColorProfitText = z;
            this.status = stakingProgrammeStatus;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletTokenDetailsView walletTokenDetailsView) {
            walletTokenDetailsView.setupStakingDetailsScreen(this.logoImageUrl, this.titleText, this.balanceText, this.annualTitleText, this.annualValueText, this.profitText, this.shouldColorProfitText, this.status);
        }
    }

    /* compiled from: WalletTokenDetailsView$$State.java */
    /* renamed from: com.iMe.ui.wallet.home.details.WalletTokenDetailsView$$State$SetupHorizontalActionButtonsCommand */
    /* loaded from: classes4.dex */
    public class SetupHorizontalActionButtonsCommand extends ViewCommand<WalletTokenDetailsView> {
        public final List<HorizontalActionButtonItem> actionsItems;

        SetupHorizontalActionButtonsCommand(WalletTokenDetailsView$$State walletTokenDetailsView$$State, List<HorizontalActionButtonItem> list) {
            super("setupHorizontalActionButtons", AddToEndSingleStrategy.class);
            this.actionsItems = list;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletTokenDetailsView walletTokenDetailsView) {
            walletTokenDetailsView.setupHorizontalActionButtons(this.actionsItems);
        }
    }

    /* compiled from: WalletTokenDetailsView$$State.java */
    /* renamed from: com.iMe.ui.wallet.home.details.WalletTokenDetailsView$$State$SetupRankBadgeCommand */
    /* loaded from: classes4.dex */
    public class SetupRankBadgeCommand extends ViewCommand<WalletTokenDetailsView> {
        public final AccountLevel accountLevel;
        public final boolean isBadgeVisible;

        SetupRankBadgeCommand(WalletTokenDetailsView$$State walletTokenDetailsView$$State, boolean z, AccountLevel accountLevel) {
            super("setupRankBadge", AddToEndSingleStrategy.class);
            this.isBadgeVisible = z;
            this.accountLevel = accountLevel;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletTokenDetailsView walletTokenDetailsView) {
            walletTokenDetailsView.setupRankBadge(this.isBadgeVisible, this.accountLevel);
        }
    }

    /* compiled from: WalletTokenDetailsView$$State.java */
    /* renamed from: com.iMe.ui.wallet.home.details.WalletTokenDetailsView$$State$OnTabSelectedCommand */
    /* loaded from: classes4.dex */
    public class OnTabSelectedCommand extends ViewCommand<WalletTokenDetailsView> {
        public final int position;

        OnTabSelectedCommand(WalletTokenDetailsView$$State walletTokenDetailsView$$State, int i) {
            super("onTabSelected", AddToEndSingleStrategy.class);
            this.position = i;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletTokenDetailsView walletTokenDetailsView) {
            walletTokenDetailsView.onTabSelected(this.position);
        }
    }

    /* compiled from: WalletTokenDetailsView$$State.java */
    /* renamed from: com.iMe.ui.wallet.home.details.WalletTokenDetailsView$$State$OnSetupNavigationRouterCommand */
    /* loaded from: classes4.dex */
    public class OnSetupNavigationRouterCommand extends ViewCommand<WalletTokenDetailsView> {
        OnSetupNavigationRouterCommand(WalletTokenDetailsView$$State walletTokenDetailsView$$State) {
            super("onSetupNavigationRouter", AddToEndSingleStrategy.class);
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletTokenDetailsView walletTokenDetailsView) {
            walletTokenDetailsView.onSetupNavigationRouter();
        }
    }

    /* compiled from: WalletTokenDetailsView$$State.java */
    /* renamed from: com.iMe.ui.wallet.home.details.WalletTokenDetailsView$$State$ShowAccountLevelDialogCommand */
    /* loaded from: classes4.dex */
    public class ShowAccountLevelDialogCommand extends ViewCommand<WalletTokenDetailsView> {
        public final AccountLevelInformation level;

        ShowAccountLevelDialogCommand(WalletTokenDetailsView$$State walletTokenDetailsView$$State, AccountLevelInformation accountLevelInformation) {
            super("showAccountLevelDialog", OneExecutionStateStrategy.class);
            this.level = accountLevelInformation;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletTokenDetailsView walletTokenDetailsView) {
            walletTokenDetailsView.showAccountLevelDialog(this.level);
        }
    }

    /* compiled from: WalletTokenDetailsView$$State.java */
    /* renamed from: com.iMe.ui.wallet.home.details.WalletTokenDetailsView$$State$ShowStakingConditionsDialogCommand */
    /* loaded from: classes4.dex */
    public class ShowStakingConditionsDialogCommand extends ViewCommand<WalletTokenDetailsView> {
        public final StakingDetailsItem stakingDetails;

        ShowStakingConditionsDialogCommand(WalletTokenDetailsView$$State walletTokenDetailsView$$State, StakingDetailsItem stakingDetailsItem) {
            super("showStakingConditionsDialog", OneExecutionStateStrategy.class);
            this.stakingDetails = stakingDetailsItem;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletTokenDetailsView walletTokenDetailsView) {
            walletTokenDetailsView.showStakingConditionsDialog(this.stakingDetails);
        }
    }

    /* compiled from: WalletTokenDetailsView$$State.java */
    /* renamed from: com.iMe.ui.wallet.home.details.WalletTokenDetailsView$$State$ShowStatisticDialogCommand */
    /* loaded from: classes4.dex */
    public class ShowStatisticDialogCommand extends ViewCommand<WalletTokenDetailsView> {
        public final StatisticDiagramModel distributionDiagramModel;

        ShowStatisticDialogCommand(WalletTokenDetailsView$$State walletTokenDetailsView$$State, StatisticDiagramModel statisticDiagramModel) {
            super("showStatisticDialog", OneExecutionStateStrategy.class);
            this.distributionDiagramModel = statisticDiagramModel;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletTokenDetailsView walletTokenDetailsView) {
            walletTokenDetailsView.showStatisticDialog(this.distributionDiagramModel);
        }
    }

    /* compiled from: WalletTokenDetailsView$$State.java */
    /* renamed from: com.iMe.ui.wallet.home.details.WalletTokenDetailsView$$State$ShowLevelRequiredDialogCommand */
    /* loaded from: classes4.dex */
    public class ShowLevelRequiredDialogCommand extends ViewCommand<WalletTokenDetailsView> {
        public final AccountLevel minimalRank;
        public final TokenDetailed token;

        ShowLevelRequiredDialogCommand(WalletTokenDetailsView$$State walletTokenDetailsView$$State, AccountLevel accountLevel, TokenDetailed tokenDetailed) {
            super("showLevelRequiredDialog", OneExecutionStateStrategy.class);
            this.minimalRank = accountLevel;
            this.token = tokenDetailed;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletTokenDetailsView walletTokenDetailsView) {
            walletTokenDetailsView.showLevelRequiredDialog(this.minimalRank, this.token);
        }
    }

    /* compiled from: WalletTokenDetailsView$$State.java */
    /* renamed from: com.iMe.ui.wallet.home.details.WalletTokenDetailsView$$State$OpenStakingReplenishScreenCommand */
    /* loaded from: classes4.dex */
    public class OpenStakingReplenishScreenCommand extends ViewCommand<WalletTokenDetailsView> {
        public final StakingDetailsItem stakingDetails;

        OpenStakingReplenishScreenCommand(WalletTokenDetailsView$$State walletTokenDetailsView$$State, StakingDetailsItem stakingDetailsItem) {
            super("openStakingReplenishScreen", OneExecutionStateStrategy.class);
            this.stakingDetails = stakingDetailsItem;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletTokenDetailsView walletTokenDetailsView) {
            walletTokenDetailsView.openStakingReplenishScreen(this.stakingDetails);
        }
    }

    /* compiled from: WalletTokenDetailsView$$State.java */
    /* renamed from: com.iMe.ui.wallet.home.details.WalletTokenDetailsView$$State$OpenStakingProfitScreenCommand */
    /* loaded from: classes4.dex */
    public class OpenStakingProfitScreenCommand extends ViewCommand<WalletTokenDetailsView> {
        public final StakingDetailsItem stakingDetails;

        OpenStakingProfitScreenCommand(WalletTokenDetailsView$$State walletTokenDetailsView$$State, StakingDetailsItem stakingDetailsItem) {
            super("openStakingProfitScreen", OneExecutionStateStrategy.class);
            this.stakingDetails = stakingDetailsItem;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletTokenDetailsView walletTokenDetailsView) {
            walletTokenDetailsView.openStakingProfitScreen(this.stakingDetails);
        }
    }

    /* compiled from: WalletTokenDetailsView$$State.java */
    /* renamed from: com.iMe.ui.wallet.home.details.WalletTokenDetailsView$$State$OpenStakingWithdrawScreenCommand */
    /* loaded from: classes4.dex */
    public class OpenStakingWithdrawScreenCommand extends ViewCommand<WalletTokenDetailsView> {
        public final StakingDetailsItem stakingDetails;

        OpenStakingWithdrawScreenCommand(WalletTokenDetailsView$$State walletTokenDetailsView$$State, StakingDetailsItem stakingDetailsItem) {
            super("openStakingWithdrawScreen", OneExecutionStateStrategy.class);
            this.stakingDetails = stakingDetailsItem;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletTokenDetailsView walletTokenDetailsView) {
            walletTokenDetailsView.openStakingWithdrawScreen(this.stakingDetails);
        }
    }

    /* compiled from: WalletTokenDetailsView$$State.java */
    /* renamed from: com.iMe.ui.wallet.home.details.WalletTokenDetailsView$$State$OpenStakingCalculatorScreenCommand */
    /* loaded from: classes4.dex */
    public class OpenStakingCalculatorScreenCommand extends ViewCommand<WalletTokenDetailsView> {
        public final StakingDetailsItem stakingDetails;

        OpenStakingCalculatorScreenCommand(WalletTokenDetailsView$$State walletTokenDetailsView$$State, StakingDetailsItem stakingDetailsItem) {
            super("openStakingCalculatorScreen", OneExecutionStateStrategy.class);
            this.stakingDetails = stakingDetailsItem;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletTokenDetailsView walletTokenDetailsView) {
            walletTokenDetailsView.openStakingCalculatorScreen(this.stakingDetails);
        }
    }

    /* compiled from: WalletTokenDetailsView$$State.java */
    /* renamed from: com.iMe.ui.wallet.home.details.WalletTokenDetailsView$$State$OpenBuyScreenCommand */
    /* loaded from: classes4.dex */
    public class OpenBuyScreenCommand extends ViewCommand<WalletTokenDetailsView> {
        public final TokenBuyCoordinatorArgs args;

        OpenBuyScreenCommand(WalletTokenDetailsView$$State walletTokenDetailsView$$State, TokenBuyCoordinatorArgs tokenBuyCoordinatorArgs) {
            super("openBuyScreen", OneExecutionStateStrategy.class);
            this.args = tokenBuyCoordinatorArgs;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletTokenDetailsView walletTokenDetailsView) {
            walletTokenDetailsView.openBuyScreen(this.args);
        }
    }

    /* compiled from: WalletTokenDetailsView$$State.java */
    /* renamed from: com.iMe.ui.wallet.home.details.WalletTokenDetailsView$$State$OpenSendScreenCommand */
    /* loaded from: classes4.dex */
    public class OpenSendScreenCommand extends ViewCommand<WalletTokenDetailsView> {
        public final String networkId;
        public final TokenItem tokenItem;

        OpenSendScreenCommand(WalletTokenDetailsView$$State walletTokenDetailsView$$State, TokenItem tokenItem, String str) {
            super("openSendScreen", OneExecutionStateStrategy.class);
            this.tokenItem = tokenItem;
            this.networkId = str;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletTokenDetailsView walletTokenDetailsView) {
            walletTokenDetailsView.openSendScreen(this.tokenItem, this.networkId);
        }
    }

    /* compiled from: WalletTokenDetailsView$$State.java */
    /* renamed from: com.iMe.ui.wallet.home.details.WalletTokenDetailsView$$State$OpenReceiveScreenCommand */
    /* loaded from: classes4.dex */
    public class OpenReceiveScreenCommand extends ViewCommand<WalletTokenDetailsView> {
        public final String address;
        public final String qrFormattedAddress;
        public final String tokenLogoUrl;

        OpenReceiveScreenCommand(WalletTokenDetailsView$$State walletTokenDetailsView$$State, String str, String str2, String str3) {
            super("openReceiveScreen", OneExecutionStateStrategy.class);
            this.address = str;
            this.qrFormattedAddress = str2;
            this.tokenLogoUrl = str3;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletTokenDetailsView walletTokenDetailsView) {
            walletTokenDetailsView.openReceiveScreen(this.address, this.qrFormattedAddress, this.tokenLogoUrl);
        }
    }

    /* compiled from: WalletTokenDetailsView$$State.java */
    /* renamed from: com.iMe.ui.wallet.home.details.WalletTokenDetailsView$$State$OpenBinanceReplenishScreenCommand */
    /* loaded from: classes4.dex */
    public class OpenBinanceReplenishScreenCommand extends ViewCommand<WalletTokenDetailsView> {
        public final String networkId;
        public final TokenItem tokenItem;

        OpenBinanceReplenishScreenCommand(WalletTokenDetailsView$$State walletTokenDetailsView$$State, TokenItem tokenItem, String str) {
            super("openBinanceReplenishScreen", OneExecutionStateStrategy.class);
            this.tokenItem = tokenItem;
            this.networkId = str;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletTokenDetailsView walletTokenDetailsView) {
            walletTokenDetailsView.openBinanceReplenishScreen(this.tokenItem, this.networkId);
        }
    }

    /* compiled from: WalletTokenDetailsView$$State.java */
    /* renamed from: com.iMe.ui.wallet.home.details.WalletTokenDetailsView$$State$OpenBinanceSwapScreenCommand */
    /* loaded from: classes4.dex */
    public class OpenBinanceSwapScreenCommand extends ViewCommand<WalletTokenDetailsView> {
        public final TokenDetailed token;

        OpenBinanceSwapScreenCommand(WalletTokenDetailsView$$State walletTokenDetailsView$$State, TokenDetailed tokenDetailed) {
            super("openBinanceSwapScreen", OneExecutionStateStrategy.class);
            this.token = tokenDetailed;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletTokenDetailsView walletTokenDetailsView) {
            walletTokenDetailsView.openBinanceSwapScreen(this.token);
        }
    }

    /* compiled from: WalletTokenDetailsView$$State.java */
    /* renamed from: com.iMe.ui.wallet.home.details.WalletTokenDetailsView$$State$OpenBinanceReceiveScreenCommand */
    /* loaded from: classes4.dex */
    public class OpenBinanceReceiveScreenCommand extends ViewCommand<WalletTokenDetailsView> {
        public final TokenItem tokenItem;

        OpenBinanceReceiveScreenCommand(WalletTokenDetailsView$$State walletTokenDetailsView$$State, TokenItem tokenItem) {
            super("openBinanceReceiveScreen", OneExecutionStateStrategy.class);
            this.tokenItem = tokenItem;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletTokenDetailsView walletTokenDetailsView) {
            walletTokenDetailsView.openBinanceReceiveScreen(this.tokenItem);
        }
    }

    /* compiled from: WalletTokenDetailsView$$State.java */
    /* renamed from: com.iMe.ui.wallet.home.details.WalletTokenDetailsView$$State$OpenTokenInformationScreenCommand */
    /* loaded from: classes4.dex */
    public class OpenTokenInformationScreenCommand extends ViewCommand<WalletTokenDetailsView> {
        public final TokenDetailed token;

        OpenTokenInformationScreenCommand(WalletTokenDetailsView$$State walletTokenDetailsView$$State, TokenDetailed tokenDetailed) {
            super("openTokenInformationScreen", OneExecutionStateStrategy.class);
            this.token = tokenDetailed;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletTokenDetailsView walletTokenDetailsView) {
            walletTokenDetailsView.openTokenInformationScreen(this.token);
        }
    }

    /* compiled from: WalletTokenDetailsView$$State.java */
    /* renamed from: com.iMe.ui.wallet.home.details.WalletTokenDetailsView$$State$ShowRequiredVerifyDialogCommand */
    /* loaded from: classes4.dex */
    public class ShowRequiredVerifyDialogCommand extends ViewCommand<WalletTokenDetailsView> {
        ShowRequiredVerifyDialogCommand(WalletTokenDetailsView$$State walletTokenDetailsView$$State) {
            super("showRequiredVerifyDialog", OneExecutionStateStrategy.class);
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletTokenDetailsView walletTokenDetailsView) {
            walletTokenDetailsView.showRequiredVerifyDialog();
        }
    }

    /* compiled from: WalletTokenDetailsView$$State.java */
    /* renamed from: com.iMe.ui.wallet.home.details.WalletTokenDetailsView$$State$ShowRequiredWalletCreatedDialogCommand */
    /* loaded from: classes4.dex */
    public class ShowRequiredWalletCreatedDialogCommand extends ViewCommand<WalletTokenDetailsView> {
        public final Callbacks$Callback action;

        ShowRequiredWalletCreatedDialogCommand(WalletTokenDetailsView$$State walletTokenDetailsView$$State, Callbacks$Callback callbacks$Callback) {
            super("showRequiredWalletCreatedDialog", OneExecutionStateStrategy.class);
            this.action = callbacks$Callback;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletTokenDetailsView walletTokenDetailsView) {
            walletTokenDetailsView.showRequiredWalletCreatedDialog(this.action);
        }
    }

    /* compiled from: WalletTokenDetailsView$$State.java */
    /* renamed from: com.iMe.ui.wallet.home.details.WalletTokenDetailsView$$State$ShowToastCommand */
    /* loaded from: classes4.dex */
    public class ShowToastCommand extends ViewCommand<WalletTokenDetailsView> {
        public final String text;

        ShowToastCommand(WalletTokenDetailsView$$State walletTokenDetailsView$$State, String str) {
            super("showToast", OneExecutionStateStrategy.class);
            this.text = str;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletTokenDetailsView walletTokenDetailsView) {
            walletTokenDetailsView.showToast(this.text);
        }
    }

    /* compiled from: WalletTokenDetailsView$$State.java */
    /* renamed from: com.iMe.ui.wallet.home.details.WalletTokenDetailsView$$State$ShowLoadingDialogCommand */
    /* loaded from: classes4.dex */
    public class ShowLoadingDialogCommand extends ViewCommand<WalletTokenDetailsView> {
        public final Disposable actionToCancel;
        public final boolean cancellable;
        public final boolean show;

        ShowLoadingDialogCommand(WalletTokenDetailsView$$State walletTokenDetailsView$$State, boolean z, boolean z2, Disposable disposable) {
            super("showLoadingDialog", OneExecutionStateStrategy.class);
            this.show = z;
            this.cancellable = z2;
            this.actionToCancel = disposable;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletTokenDetailsView walletTokenDetailsView) {
            walletTokenDetailsView.showLoadingDialog(this.show, this.cancellable, this.actionToCancel);
        }
    }

    /* compiled from: WalletTokenDetailsView$$State.java */
    /* renamed from: com.iMe.ui.wallet.home.details.WalletTokenDetailsView$$State$ShowErrorToastCommand */
    /* loaded from: classes4.dex */
    public class ShowErrorToastCommand<T> extends ViewCommand<WalletTokenDetailsView> {
        public final ResourceManager resourceManager;
        public final Result.Error<? extends T> result;

        ShowErrorToastCommand(WalletTokenDetailsView$$State walletTokenDetailsView$$State, Result.Error<? extends T> error, ResourceManager resourceManager) {
            super("showErrorToast", OneExecutionStateStrategy.class);
            this.result = error;
            this.resourceManager = resourceManager;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletTokenDetailsView walletTokenDetailsView) {
            walletTokenDetailsView.showErrorToast(this.result, this.resourceManager);
        }
    }

    /* compiled from: WalletTokenDetailsView$$State.java */
    /* renamed from: com.iMe.ui.wallet.home.details.WalletTokenDetailsView$$State$RemoveSelfFromStackImmediatelyCommand */
    /* loaded from: classes4.dex */
    public class RemoveSelfFromStackImmediatelyCommand extends ViewCommand<WalletTokenDetailsView> {
        RemoveSelfFromStackImmediatelyCommand(WalletTokenDetailsView$$State walletTokenDetailsView$$State) {
            super("removeSelfFromStackImmediately", OneExecutionStateStrategy.class);
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletTokenDetailsView walletTokenDetailsView) {
            walletTokenDetailsView.removeSelfFromStackImmediately();
        }
    }

    /* compiled from: WalletTokenDetailsView$$State.java */
    /* renamed from: com.iMe.ui.wallet.home.details.WalletTokenDetailsView$$State$ShowActivationConfirmationDialogCommand */
    /* loaded from: classes4.dex */
    public class ShowActivationConfirmationDialogCommand extends ViewCommand<WalletTokenDetailsView> {
        public final Callbacks$Callback action;
        public final DialogModel dialogModel;

        ShowActivationConfirmationDialogCommand(WalletTokenDetailsView$$State walletTokenDetailsView$$State, DialogModel dialogModel, Callbacks$Callback callbacks$Callback) {
            super("showActivationConfirmationDialog", OneExecutionStateStrategy.class);
            this.dialogModel = dialogModel;
            this.action = callbacks$Callback;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletTokenDetailsView walletTokenDetailsView) {
            walletTokenDetailsView.showActivationConfirmationDialog(this.dialogModel, this.action);
        }
    }

    /* compiled from: WalletTokenDetailsView$$State.java */
    /* renamed from: com.iMe.ui.wallet.home.details.WalletTokenDetailsView$$State$OpenCreateWalletIntroScreenCommand */
    /* loaded from: classes4.dex */
    public class OpenCreateWalletIntroScreenCommand extends ViewCommand<WalletTokenDetailsView> {
        public final String linkedWalletAddress;
        public final WalletCreationType.Initial walletCreationType;

        OpenCreateWalletIntroScreenCommand(WalletTokenDetailsView$$State walletTokenDetailsView$$State, String str, WalletCreationType.Initial initial) {
            super("openCreateWalletIntroScreen", OneExecutionStateStrategy.class);
            this.linkedWalletAddress = str;
            this.walletCreationType = initial;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletTokenDetailsView walletTokenDetailsView) {
            walletTokenDetailsView.openCreateWalletIntroScreen(this.linkedWalletAddress, this.walletCreationType);
        }
    }

    /* compiled from: WalletTokenDetailsView$$State.java */
    /* renamed from: com.iMe.ui.wallet.home.details.WalletTokenDetailsView$$State$ShowSelectOptionsDialogCommand */
    /* loaded from: classes4.dex */
    public class ShowSelectOptionsDialogCommand extends ViewCommand<WalletTokenDetailsView> {
        public final String[] items;
        public final DialogInterface.OnClickListener listener;
        public final String title;

        ShowSelectOptionsDialogCommand(WalletTokenDetailsView$$State walletTokenDetailsView$$State, String str, String[] strArr, DialogInterface.OnClickListener onClickListener) {
            super("showSelectOptionsDialog", OneExecutionStateStrategy.class);
            this.title = str;
            this.items = strArr;
            this.listener = onClickListener;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletTokenDetailsView walletTokenDetailsView) {
            walletTokenDetailsView.showSelectOptionsDialog(this.title, this.items, this.listener);
        }
    }

    /* compiled from: WalletTokenDetailsView$$State.java */
    /* renamed from: com.iMe.ui.wallet.home.details.WalletTokenDetailsView$$State$ShowRefreshingCommand */
    /* loaded from: classes4.dex */
    public class ShowRefreshingCommand extends ViewCommand<WalletTokenDetailsView> {
        public final boolean show;

        ShowRefreshingCommand(WalletTokenDetailsView$$State walletTokenDetailsView$$State, boolean z) {
            super("showRefreshing", AddToEndSingleStrategy.class);
            this.show = z;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletTokenDetailsView walletTokenDetailsView) {
            walletTokenDetailsView.showRefreshing(this.show);
        }
    }
}
