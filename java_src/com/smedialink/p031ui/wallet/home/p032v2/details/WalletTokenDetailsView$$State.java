package com.smedialink.p031ui.wallet.home.p032v2.details;

import android.content.DialogInterface;
import com.smedialink.model.dialog.AnimatedSpannableDialogModel;
import com.smedialink.model.dialog.DialogModel;
import com.smedialink.model.staking.StakingDetailsItem;
import com.smedialink.model.staking.StakingProgrammeStatus;
import com.smedialink.model.statistic.StatisticDiagramModel;
import com.smedialink.model.wallet.details.TokenDetailsArgs;
import com.smedialink.model.wallet.home.HorizontalActionButtonItem;
import com.smedialink.model.wallet.select.SelectableToken;
import com.smedialink.navigation.wallet.coordinator.args.TokenBuyCoordinatorArgs;
import com.smedialink.storage.domain.model.crypto.NetworkType;
import com.smedialink.storage.domain.model.crypto.level.AccountLevel;
import com.smedialink.storage.domain.model.crypto.level.AccountLevelInformation;
import com.smedialink.storage.domain.model.wallet.token.TokenCode;
import io.reactivex.disposables.Disposable;
import java.util.List;
import moxy.viewstate.MvpViewState;
import moxy.viewstate.ViewCommand;
import moxy.viewstate.strategy.AddToEndSingleStrategy;
import moxy.viewstate.strategy.OneExecutionStateStrategy;
import org.fork.utils.Callbacks$Callback;
/* renamed from: com.smedialink.ui.wallet.home.v2.details.WalletTokenDetailsView$$State */
/* loaded from: classes3.dex */
public class WalletTokenDetailsView$$State extends MvpViewState<WalletTokenDetailsView> implements WalletTokenDetailsView {
    @Override // com.smedialink.p031ui.wallet.home.p032v2.details.WalletTokenDetailsView
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

    @Override // com.smedialink.p031ui.wallet.home.p032v2.details.WalletTokenDetailsView
    public void setupStakingDetailsScreen(int i, String str, String str2, String str3, String str4, String str5, boolean z, StakingProgrammeStatus stakingProgrammeStatus) {
        SetupStakingDetailsScreenCommand setupStakingDetailsScreenCommand = new SetupStakingDetailsScreenCommand(this, i, str, str2, str3, str4, str5, z, stakingProgrammeStatus);
        this.viewCommands.beforeApply(setupStakingDetailsScreenCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.setupStakingDetailsScreen(i, str, str2, str3, str4, str5, z, stakingProgrammeStatus);
        }
        this.viewCommands.afterApply(setupStakingDetailsScreenCommand);
    }

    @Override // com.smedialink.p031ui.wallet.home.p032v2.details.WalletTokenDetailsView
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

    @Override // com.smedialink.p031ui.wallet.home.p032v2.details.WalletTokenDetailsView
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

    @Override // com.smedialink.p031ui.wallet.home.p032v2.details.WalletTokenDetailsView
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

    @Override // com.smedialink.p031ui.wallet.home.p032v2.details.WalletTokenDetailsView
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

    @Override // com.smedialink.p031ui.wallet.home.p032v2.details.WalletTokenDetailsView
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

    @Override // com.smedialink.p031ui.wallet.home.p032v2.details.WalletTokenDetailsView
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

    @Override // com.smedialink.p031ui.wallet.home.p032v2.details.WalletTokenDetailsView
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

    @Override // com.smedialink.p031ui.wallet.home.p032v2.details.WalletTokenDetailsView
    public void showLevelRequiredDialog(AccountLevel accountLevel) {
        ShowLevelRequiredDialogCommand showLevelRequiredDialogCommand = new ShowLevelRequiredDialogCommand(this, accountLevel);
        this.viewCommands.beforeApply(showLevelRequiredDialogCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.showLevelRequiredDialog(accountLevel);
        }
        this.viewCommands.afterApply(showLevelRequiredDialogCommand);
    }

    @Override // com.smedialink.p031ui.wallet.home.p032v2.details.WalletTokenDetailsView
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

    @Override // com.smedialink.p031ui.wallet.home.p032v2.details.WalletTokenDetailsView
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

    @Override // com.smedialink.p031ui.wallet.home.p032v2.details.WalletTokenDetailsView
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

    @Override // com.smedialink.p031ui.wallet.home.p032v2.details.WalletTokenDetailsView
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

    @Override // com.smedialink.p031ui.wallet.home.p032v2.details.WalletTokenDetailsView
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

    @Override // com.smedialink.p031ui.wallet.home.p032v2.details.WalletTokenDetailsView
    public void openSendScreen(TokenCode tokenCode, NetworkType networkType) {
        OpenSendScreenCommand openSendScreenCommand = new OpenSendScreenCommand(this, tokenCode, networkType);
        this.viewCommands.beforeApply(openSendScreenCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.openSendScreen(tokenCode, networkType);
        }
        this.viewCommands.afterApply(openSendScreenCommand);
    }

    @Override // com.smedialink.p031ui.wallet.home.p032v2.details.WalletTokenDetailsView
    public void openReceiveScreen(TokenCode tokenCode, String str, NetworkType networkType) {
        OpenReceiveScreenCommand openReceiveScreenCommand = new OpenReceiveScreenCommand(this, tokenCode, str, networkType);
        this.viewCommands.beforeApply(openReceiveScreenCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.openReceiveScreen(tokenCode, str, networkType);
        }
        this.viewCommands.afterApply(openReceiveScreenCommand);
    }

    @Override // com.smedialink.p031ui.wallet.home.p032v2.details.WalletTokenDetailsView
    public void openBinanceReplenishScreen(TokenCode tokenCode, NetworkType networkType) {
        OpenBinanceReplenishScreenCommand openBinanceReplenishScreenCommand = new OpenBinanceReplenishScreenCommand(this, tokenCode, networkType);
        this.viewCommands.beforeApply(openBinanceReplenishScreenCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.openBinanceReplenishScreen(tokenCode, networkType);
        }
        this.viewCommands.afterApply(openBinanceReplenishScreenCommand);
    }

    @Override // com.smedialink.p031ui.wallet.home.p032v2.details.WalletTokenDetailsView
    public void openBinanceSwapScreen(SelectableToken selectableToken) {
        OpenBinanceSwapScreenCommand openBinanceSwapScreenCommand = new OpenBinanceSwapScreenCommand(this, selectableToken);
        this.viewCommands.beforeApply(openBinanceSwapScreenCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.openBinanceSwapScreen(selectableToken);
        }
        this.viewCommands.afterApply(openBinanceSwapScreenCommand);
    }

    @Override // com.smedialink.p031ui.wallet.home.p032v2.details.WalletTokenDetailsView
    public void openBinanceReceiveScreen(SelectableToken selectableToken) {
        OpenBinanceReceiveScreenCommand openBinanceReceiveScreenCommand = new OpenBinanceReceiveScreenCommand(this, selectableToken);
        this.viewCommands.beforeApply(openBinanceReceiveScreenCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.openBinanceReceiveScreen(selectableToken);
        }
        this.viewCommands.afterApply(openBinanceReceiveScreenCommand);
    }

    @Override // com.smedialink.p031ui.wallet.home.p032v2.details.WalletTokenDetailsView
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

    @Override // com.smedialink.p031ui.wallet.home.p032v2.details.WalletTokenDetailsView
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

    @Override // com.smedialink.p031ui.base.mvp.base.BaseView
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

    @Override // com.smedialink.p031ui.base.mvp.base.BaseView
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

    @Override // com.smedialink.manager.wallet.create.WalletCreateManagerView
    public void showAnimatedDialog(AnimatedSpannableDialogModel animatedSpannableDialogModel, Callbacks$Callback callbacks$Callback) {
        ShowAnimatedDialogCommand showAnimatedDialogCommand = new ShowAnimatedDialogCommand(this, animatedSpannableDialogModel, callbacks$Callback);
        this.viewCommands.beforeApply(showAnimatedDialogCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.showAnimatedDialog(animatedSpannableDialogModel, callbacks$Callback);
        }
        this.viewCommands.afterApply(showAnimatedDialogCommand);
    }

    @Override // com.smedialink.manager.wallet.create.WalletCreateManagerView
    public void showAlreadyCreatedWalletWarningDialog(DialogModel dialogModel, String str, Callbacks$Callback callbacks$Callback) {
        ShowAlreadyCreatedWalletWarningDialogCommand showAlreadyCreatedWalletWarningDialogCommand = new ShowAlreadyCreatedWalletWarningDialogCommand(this, dialogModel, str, callbacks$Callback);
        this.viewCommands.beforeApply(showAlreadyCreatedWalletWarningDialogCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.showAlreadyCreatedWalletWarningDialog(dialogModel, str, callbacks$Callback);
        }
        this.viewCommands.afterApply(showAlreadyCreatedWalletWarningDialogCommand);
    }

    @Override // com.smedialink.manager.wallet.create.WalletCreateManagerView
    public void openImportWalletScreen(String str, String str2) {
        OpenImportWalletScreenCommand openImportWalletScreenCommand = new OpenImportWalletScreenCommand(this, str, str2);
        this.viewCommands.beforeApply(openImportWalletScreenCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.openImportWalletScreen(str, str2);
        }
        this.viewCommands.afterApply(openImportWalletScreenCommand);
    }

    @Override // com.smedialink.manager.wallet.create.WalletCreateManagerView
    public void openCreateWalletScreen(List<String> list, String str) {
        OpenCreateWalletScreenCommand openCreateWalletScreenCommand = new OpenCreateWalletScreenCommand(this, list, str);
        this.viewCommands.beforeApply(openCreateWalletScreenCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.openCreateWalletScreen(list, str);
        }
        this.viewCommands.afterApply(openCreateWalletScreenCommand);
    }

    @Override // com.smedialink.manager.wallet.create.WalletCreateManagerView
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

    @Override // com.smedialink.p031ui.base.mvp.SwipeRefreshView
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
    /* renamed from: com.smedialink.ui.wallet.home.v2.details.WalletTokenDetailsView$$State$SetupTransactionsScreenCommand */
    /* loaded from: classes3.dex */
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
    /* renamed from: com.smedialink.ui.wallet.home.v2.details.WalletTokenDetailsView$$State$SetupStakingDetailsScreenCommand */
    /* loaded from: classes3.dex */
    public class SetupStakingDetailsScreenCommand extends ViewCommand<WalletTokenDetailsView> {
        public final String annualTitleText;
        public final String annualValueText;
        public final String balanceText;
        public final int logoImageResId;
        public final String profitText;
        public final boolean shouldColorProfitText;
        public final StakingProgrammeStatus status;
        public final String titleText;

        SetupStakingDetailsScreenCommand(WalletTokenDetailsView$$State walletTokenDetailsView$$State, int i, String str, String str2, String str3, String str4, String str5, boolean z, StakingProgrammeStatus stakingProgrammeStatus) {
            super("setupStakingDetailsScreen", AddToEndSingleStrategy.class);
            this.logoImageResId = i;
            this.titleText = str;
            this.balanceText = str2;
            this.annualTitleText = str3;
            this.annualValueText = str4;
            this.profitText = str5;
            this.shouldColorProfitText = z;
            this.status = stakingProgrammeStatus;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletTokenDetailsView walletTokenDetailsView) {
            walletTokenDetailsView.setupStakingDetailsScreen(this.logoImageResId, this.titleText, this.balanceText, this.annualTitleText, this.annualValueText, this.profitText, this.shouldColorProfitText, this.status);
        }
    }

    /* compiled from: WalletTokenDetailsView$$State.java */
    /* renamed from: com.smedialink.ui.wallet.home.v2.details.WalletTokenDetailsView$$State$SetupHorizontalActionButtonsCommand */
    /* loaded from: classes3.dex */
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
    /* renamed from: com.smedialink.ui.wallet.home.v2.details.WalletTokenDetailsView$$State$SetupRankBadgeCommand */
    /* loaded from: classes3.dex */
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
    /* renamed from: com.smedialink.ui.wallet.home.v2.details.WalletTokenDetailsView$$State$OnTabSelectedCommand */
    /* loaded from: classes3.dex */
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
    /* renamed from: com.smedialink.ui.wallet.home.v2.details.WalletTokenDetailsView$$State$OnSetupNavigationRouterCommand */
    /* loaded from: classes3.dex */
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
    /* renamed from: com.smedialink.ui.wallet.home.v2.details.WalletTokenDetailsView$$State$ShowAccountLevelDialogCommand */
    /* loaded from: classes3.dex */
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
    /* renamed from: com.smedialink.ui.wallet.home.v2.details.WalletTokenDetailsView$$State$ShowStakingConditionsDialogCommand */
    /* loaded from: classes3.dex */
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
    /* renamed from: com.smedialink.ui.wallet.home.v2.details.WalletTokenDetailsView$$State$ShowStatisticDialogCommand */
    /* loaded from: classes3.dex */
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
    /* renamed from: com.smedialink.ui.wallet.home.v2.details.WalletTokenDetailsView$$State$ShowLevelRequiredDialogCommand */
    /* loaded from: classes3.dex */
    public class ShowLevelRequiredDialogCommand extends ViewCommand<WalletTokenDetailsView> {
        public final AccountLevel minimalRank;

        ShowLevelRequiredDialogCommand(WalletTokenDetailsView$$State walletTokenDetailsView$$State, AccountLevel accountLevel) {
            super("showLevelRequiredDialog", OneExecutionStateStrategy.class);
            this.minimalRank = accountLevel;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletTokenDetailsView walletTokenDetailsView) {
            walletTokenDetailsView.showLevelRequiredDialog(this.minimalRank);
        }
    }

    /* compiled from: WalletTokenDetailsView$$State.java */
    /* renamed from: com.smedialink.ui.wallet.home.v2.details.WalletTokenDetailsView$$State$OpenStakingReplenishScreenCommand */
    /* loaded from: classes3.dex */
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
    /* renamed from: com.smedialink.ui.wallet.home.v2.details.WalletTokenDetailsView$$State$OpenStakingProfitScreenCommand */
    /* loaded from: classes3.dex */
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
    /* renamed from: com.smedialink.ui.wallet.home.v2.details.WalletTokenDetailsView$$State$OpenStakingWithdrawScreenCommand */
    /* loaded from: classes3.dex */
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
    /* renamed from: com.smedialink.ui.wallet.home.v2.details.WalletTokenDetailsView$$State$OpenStakingCalculatorScreenCommand */
    /* loaded from: classes3.dex */
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
    /* renamed from: com.smedialink.ui.wallet.home.v2.details.WalletTokenDetailsView$$State$OpenBuyScreenCommand */
    /* loaded from: classes3.dex */
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
    /* renamed from: com.smedialink.ui.wallet.home.v2.details.WalletTokenDetailsView$$State$OpenSendScreenCommand */
    /* loaded from: classes3.dex */
    public class OpenSendScreenCommand extends ViewCommand<WalletTokenDetailsView> {
        public final TokenCode code;
        public final NetworkType networkType;

        OpenSendScreenCommand(WalletTokenDetailsView$$State walletTokenDetailsView$$State, TokenCode tokenCode, NetworkType networkType) {
            super("openSendScreen", OneExecutionStateStrategy.class);
            this.code = tokenCode;
            this.networkType = networkType;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletTokenDetailsView walletTokenDetailsView) {
            walletTokenDetailsView.openSendScreen(this.code, this.networkType);
        }
    }

    /* compiled from: WalletTokenDetailsView$$State.java */
    /* renamed from: com.smedialink.ui.wallet.home.v2.details.WalletTokenDetailsView$$State$OpenReceiveScreenCommand */
    /* loaded from: classes3.dex */
    public class OpenReceiveScreenCommand extends ViewCommand<WalletTokenDetailsView> {
        public final String address;
        public final TokenCode code;
        public final NetworkType networkType;

        OpenReceiveScreenCommand(WalletTokenDetailsView$$State walletTokenDetailsView$$State, TokenCode tokenCode, String str, NetworkType networkType) {
            super("openReceiveScreen", OneExecutionStateStrategy.class);
            this.code = tokenCode;
            this.address = str;
            this.networkType = networkType;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletTokenDetailsView walletTokenDetailsView) {
            walletTokenDetailsView.openReceiveScreen(this.code, this.address, this.networkType);
        }
    }

    /* compiled from: WalletTokenDetailsView$$State.java */
    /* renamed from: com.smedialink.ui.wallet.home.v2.details.WalletTokenDetailsView$$State$OpenBinanceReplenishScreenCommand */
    /* loaded from: classes3.dex */
    public class OpenBinanceReplenishScreenCommand extends ViewCommand<WalletTokenDetailsView> {
        public final NetworkType networkType;
        public final TokenCode token;

        OpenBinanceReplenishScreenCommand(WalletTokenDetailsView$$State walletTokenDetailsView$$State, TokenCode tokenCode, NetworkType networkType) {
            super("openBinanceReplenishScreen", OneExecutionStateStrategy.class);
            this.token = tokenCode;
            this.networkType = networkType;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletTokenDetailsView walletTokenDetailsView) {
            walletTokenDetailsView.openBinanceReplenishScreen(this.token, this.networkType);
        }
    }

    /* compiled from: WalletTokenDetailsView$$State.java */
    /* renamed from: com.smedialink.ui.wallet.home.v2.details.WalletTokenDetailsView$$State$OpenBinanceSwapScreenCommand */
    /* loaded from: classes3.dex */
    public class OpenBinanceSwapScreenCommand extends ViewCommand<WalletTokenDetailsView> {
        public final SelectableToken token;

        OpenBinanceSwapScreenCommand(WalletTokenDetailsView$$State walletTokenDetailsView$$State, SelectableToken selectableToken) {
            super("openBinanceSwapScreen", OneExecutionStateStrategy.class);
            this.token = selectableToken;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletTokenDetailsView walletTokenDetailsView) {
            walletTokenDetailsView.openBinanceSwapScreen(this.token);
        }
    }

    /* compiled from: WalletTokenDetailsView$$State.java */
    /* renamed from: com.smedialink.ui.wallet.home.v2.details.WalletTokenDetailsView$$State$OpenBinanceReceiveScreenCommand */
    /* loaded from: classes3.dex */
    public class OpenBinanceReceiveScreenCommand extends ViewCommand<WalletTokenDetailsView> {
        public final SelectableToken token;

        OpenBinanceReceiveScreenCommand(WalletTokenDetailsView$$State walletTokenDetailsView$$State, SelectableToken selectableToken) {
            super("openBinanceReceiveScreen", OneExecutionStateStrategy.class);
            this.token = selectableToken;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletTokenDetailsView walletTokenDetailsView) {
            walletTokenDetailsView.openBinanceReceiveScreen(this.token);
        }
    }

    /* compiled from: WalletTokenDetailsView$$State.java */
    /* renamed from: com.smedialink.ui.wallet.home.v2.details.WalletTokenDetailsView$$State$ShowRequiredVerifyDialogCommand */
    /* loaded from: classes3.dex */
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
    /* renamed from: com.smedialink.ui.wallet.home.v2.details.WalletTokenDetailsView$$State$ShowRequiredWalletCreatedDialogCommand */
    /* loaded from: classes3.dex */
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
    /* renamed from: com.smedialink.ui.wallet.home.v2.details.WalletTokenDetailsView$$State$ShowToastCommand */
    /* loaded from: classes3.dex */
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
    /* renamed from: com.smedialink.ui.wallet.home.v2.details.WalletTokenDetailsView$$State$ShowLoadingDialogCommand */
    /* loaded from: classes3.dex */
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
    /* renamed from: com.smedialink.ui.wallet.home.v2.details.WalletTokenDetailsView$$State$ShowAnimatedDialogCommand */
    /* loaded from: classes3.dex */
    public class ShowAnimatedDialogCommand extends ViewCommand<WalletTokenDetailsView> {
        public final Callbacks$Callback action;
        public final AnimatedSpannableDialogModel model;

        ShowAnimatedDialogCommand(WalletTokenDetailsView$$State walletTokenDetailsView$$State, AnimatedSpannableDialogModel animatedSpannableDialogModel, Callbacks$Callback callbacks$Callback) {
            super("showAnimatedDialog", OneExecutionStateStrategy.class);
            this.model = animatedSpannableDialogModel;
            this.action = callbacks$Callback;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletTokenDetailsView walletTokenDetailsView) {
            walletTokenDetailsView.showAnimatedDialog(this.model, this.action);
        }
    }

    /* compiled from: WalletTokenDetailsView$$State.java */
    /* renamed from: com.smedialink.ui.wallet.home.v2.details.WalletTokenDetailsView$$State$ShowAlreadyCreatedWalletWarningDialogCommand */
    /* loaded from: classes3.dex */
    public class ShowAlreadyCreatedWalletWarningDialogCommand extends ViewCommand<WalletTokenDetailsView> {
        public final Callbacks$Callback action;
        public final DialogModel dialogModel;
        public final String walletAddress;

        ShowAlreadyCreatedWalletWarningDialogCommand(WalletTokenDetailsView$$State walletTokenDetailsView$$State, DialogModel dialogModel, String str, Callbacks$Callback callbacks$Callback) {
            super("showAlreadyCreatedWalletWarningDialog", OneExecutionStateStrategy.class);
            this.dialogModel = dialogModel;
            this.walletAddress = str;
            this.action = callbacks$Callback;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletTokenDetailsView walletTokenDetailsView) {
            walletTokenDetailsView.showAlreadyCreatedWalletWarningDialog(this.dialogModel, this.walletAddress, this.action);
        }
    }

    /* compiled from: WalletTokenDetailsView$$State.java */
    /* renamed from: com.smedialink.ui.wallet.home.v2.details.WalletTokenDetailsView$$State$OpenImportWalletScreenCommand */
    /* loaded from: classes3.dex */
    public class OpenImportWalletScreenCommand extends ViewCommand<WalletTokenDetailsView> {
        public final String password;
        public final String walletAddress;

        OpenImportWalletScreenCommand(WalletTokenDetailsView$$State walletTokenDetailsView$$State, String str, String str2) {
            super("openImportWalletScreen", OneExecutionStateStrategy.class);
            this.password = str;
            this.walletAddress = str2;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletTokenDetailsView walletTokenDetailsView) {
            walletTokenDetailsView.openImportWalletScreen(this.password, this.walletAddress);
        }
    }

    /* compiled from: WalletTokenDetailsView$$State.java */
    /* renamed from: com.smedialink.ui.wallet.home.v2.details.WalletTokenDetailsView$$State$OpenCreateWalletScreenCommand */
    /* loaded from: classes3.dex */
    public class OpenCreateWalletScreenCommand extends ViewCommand<WalletTokenDetailsView> {
        public final String password;
        public final List<String> words;

        OpenCreateWalletScreenCommand(WalletTokenDetailsView$$State walletTokenDetailsView$$State, List<String> list, String str) {
            super("openCreateWalletScreen", OneExecutionStateStrategy.class);
            this.words = list;
            this.password = str;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletTokenDetailsView walletTokenDetailsView) {
            walletTokenDetailsView.openCreateWalletScreen(this.words, this.password);
        }
    }

    /* compiled from: WalletTokenDetailsView$$State.java */
    /* renamed from: com.smedialink.ui.wallet.home.v2.details.WalletTokenDetailsView$$State$ShowSelectOptionsDialogCommand */
    /* loaded from: classes3.dex */
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
    /* renamed from: com.smedialink.ui.wallet.home.v2.details.WalletTokenDetailsView$$State$ShowRefreshingCommand */
    /* loaded from: classes3.dex */
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
