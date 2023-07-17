package com.iMe.p031ui.wallet.home.details;

import com.iMe.fork.utils.Callbacks$Callback;
import com.iMe.manager.wallet.create.WalletCreateManagerView;
import com.iMe.model.staking.StakingDetailsItem;
import com.iMe.model.staking.StakingProgrammeStatus;
import com.iMe.model.statistic.StatisticDiagramModel;
import com.iMe.model.wallet.crypto.TokenItem;
import com.iMe.model.wallet.details.TokenDetailsArgs;
import com.iMe.model.wallet.home.HorizontalActionButtonItem;
import com.iMe.navigation.wallet.coordinator.args.TokenBuyCoordinatorArgs;
import com.iMe.p031ui.base.mvp.SwipeRefreshView;
import com.iMe.p031ui.base.mvp.base.BaseView;
import com.iMe.storage.domain.model.crypto.level.AccountLevel;
import com.iMe.storage.domain.model.crypto.level.AccountLevelInformation;
import com.iMe.storage.domain.model.wallet.token.TokenDetailed;
import java.util.List;
import moxy.viewstate.strategy.alias.AddToEndSingle;
import moxy.viewstate.strategy.alias.OneExecution;
/* compiled from: WalletTokenDetailsView.kt */
@OneExecution
/* renamed from: com.iMe.ui.wallet.home.details.WalletTokenDetailsView */
/* loaded from: classes4.dex */
public interface WalletTokenDetailsView extends BaseView, WalletCreateManagerView, SwipeRefreshView {
    @AddToEndSingle
    void onSetupNavigationRouter();

    @AddToEndSingle
    void onTabSelected(int i);

    void openBinanceReceiveScreen(TokenItem tokenItem);

    void openBinanceReplenishScreen(TokenItem tokenItem, String str);

    void openBinanceSwapScreen(TokenDetailed tokenDetailed);

    void openBuyScreen(TokenBuyCoordinatorArgs tokenBuyCoordinatorArgs);

    void openReceiveScreen(String str, String str2, String str3);

    void openSendScreen(TokenItem tokenItem, String str);

    void openStakingCalculatorScreen(StakingDetailsItem stakingDetailsItem);

    void openStakingProfitScreen(StakingDetailsItem stakingDetailsItem);

    void openStakingReplenishScreen(StakingDetailsItem stakingDetailsItem);

    void openStakingWithdrawScreen(StakingDetailsItem stakingDetailsItem);

    void openTokenInformationScreen(TokenDetailed tokenDetailed);

    @AddToEndSingle
    void setupHorizontalActionButtons(List<HorizontalActionButtonItem> list);

    @AddToEndSingle
    void setupRankBadge(boolean z, AccountLevel accountLevel);

    @AddToEndSingle
    void setupStakingDetailsScreen(String str, String str2, String str3, String str4, String str5, String str6, boolean z, StakingProgrammeStatus stakingProgrammeStatus);

    @AddToEndSingle
    void setupTransactionsScreen(TokenDetailsArgs tokenDetailsArgs);

    void showAccountLevelDialog(AccountLevelInformation accountLevelInformation);

    void showLevelRequiredDialog(AccountLevel accountLevel, TokenDetailed tokenDetailed);

    void showRequiredVerifyDialog();

    void showRequiredWalletCreatedDialog(Callbacks$Callback callbacks$Callback);

    void showStakingConditionsDialog(StakingDetailsItem stakingDetailsItem);

    void showStatisticDialog(StatisticDiagramModel statisticDiagramModel);
}
