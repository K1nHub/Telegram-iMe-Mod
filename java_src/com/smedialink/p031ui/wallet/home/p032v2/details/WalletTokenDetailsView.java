package com.smedialink.p031ui.wallet.home.p032v2.details;

import com.smedialink.manager.wallet.create.WalletCreateManagerView;
import com.smedialink.model.staking.StakingDetailsItem;
import com.smedialink.model.staking.StakingProgrammeStatus;
import com.smedialink.model.statistic.StatisticDiagramModel;
import com.smedialink.model.wallet.details.TokenDetailsArgs;
import com.smedialink.model.wallet.home.HorizontalActionButtonItem;
import com.smedialink.model.wallet.select.SelectableToken;
import com.smedialink.navigation.wallet.coordinator.args.TokenBuyCoordinatorArgs;
import com.smedialink.p031ui.base.mvp.SwipeRefreshView;
import com.smedialink.p031ui.base.mvp.base.BaseView;
import com.smedialink.storage.domain.model.crypto.NetworkType;
import com.smedialink.storage.domain.model.crypto.level.AccountLevel;
import com.smedialink.storage.domain.model.crypto.level.AccountLevelInformation;
import com.smedialink.storage.domain.model.wallet.token.TokenCode;
import java.util.List;
import moxy.viewstate.strategy.alias.AddToEndSingle;
import moxy.viewstate.strategy.alias.OneExecution;
import org.fork.utils.Callbacks$Callback;
/* compiled from: WalletTokenDetailsView.kt */
@OneExecution
/* renamed from: com.smedialink.ui.wallet.home.v2.details.WalletTokenDetailsView */
/* loaded from: classes3.dex */
public interface WalletTokenDetailsView extends BaseView, WalletCreateManagerView, SwipeRefreshView {
    @AddToEndSingle
    void onSetupNavigationRouter();

    @AddToEndSingle
    void onTabSelected(int i);

    void openBinanceReceiveScreen(SelectableToken selectableToken);

    void openBinanceReplenishScreen(TokenCode tokenCode, NetworkType networkType);

    void openBinanceSwapScreen(SelectableToken selectableToken);

    void openBuyScreen(TokenBuyCoordinatorArgs tokenBuyCoordinatorArgs);

    void openReceiveScreen(TokenCode tokenCode, String str, NetworkType networkType);

    void openSendScreen(TokenCode tokenCode, NetworkType networkType);

    void openStakingCalculatorScreen(StakingDetailsItem stakingDetailsItem);

    void openStakingProfitScreen(StakingDetailsItem stakingDetailsItem);

    void openStakingReplenishScreen(StakingDetailsItem stakingDetailsItem);

    void openStakingWithdrawScreen(StakingDetailsItem stakingDetailsItem);

    @AddToEndSingle
    void setupHorizontalActionButtons(List<HorizontalActionButtonItem> list);

    @AddToEndSingle
    void setupRankBadge(boolean z, AccountLevel accountLevel);

    @AddToEndSingle
    void setupStakingDetailsScreen(int i, String str, String str2, String str3, String str4, String str5, boolean z, StakingProgrammeStatus stakingProgrammeStatus);

    @AddToEndSingle
    void setupTransactionsScreen(TokenDetailsArgs tokenDetailsArgs);

    void showAccountLevelDialog(AccountLevelInformation accountLevelInformation);

    void showLevelRequiredDialog(AccountLevel accountLevel);

    void showRequiredVerifyDialog();

    void showRequiredWalletCreatedDialog(Callbacks$Callback callbacks$Callback);

    void showStakingConditionsDialog(StakingDetailsItem stakingDetailsItem);

    void showStatisticDialog(StatisticDiagramModel statisticDiagramModel);
}
